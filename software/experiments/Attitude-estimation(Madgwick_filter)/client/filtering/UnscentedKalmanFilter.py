import numpy as np 
from numpy import eye, zeros, dot, isscalar, outer
from numpy.linalg import inv
from copy import deepcopy   
from numba import jit, jitclass, float64, int64


# @jit(nopython=True)
def unscented_transform(sigmas, Wm, Wc, noise_cov):    
    """
        Described in "Kalman and bayesian filters in Python".
        evaluation of a formula with sum described in texbook.

        best to not touch this ...  
    """
    k_max, n = sigmas.shape
    x = np.dot(Wm, sigmas)
    y = sigmas - x.reshape(1, -1)  
    P = np.zeros((n, n)) + noise_cov

    for k in range(k_max):
        y = sigmas[k] - x
        P += Wc[k] *  (y.reshape(-1,1) @ y.reshape(-1, 1).T) 

    return (x, P)

"""
    Code below is modified/adapted from filterpy, described in "Kalman and bayesian filters in Python" 
    ( fantastic book, all credit to the authors and their amazing contribution)

    High level overview of the Unscented Kalman filter

    ### Predict 
    - 2.1 Generate sigma points and corresponding weight matrices ( necessary for mean and covariance calculation )
    - 2.2 pass sigma points through non-linear ( or linear, if linear should perform as well as linear kalman ) function 
    - 2.3 compute mean and covariace of those transformed points using unscented transform 

    ### Update
    - 3.1 convert the transformed points into measurement space ( same as $\textbf{Hx}$ in 3.2 but measurement can be non-linear)<br>
    - 3.2 compute the mean and covariance points from 3.1 using the unscented transform. 
    - 3.3 Calculate residuals ( differences )
    - 3.4 Calculate cross covariace of th state and the measurements
    - 3.5 Calculate Kalman gain
    - 3.6 update the state 
    - 3.7 calculate the covariance ( adjust belief ) 
"""


@jit(nopython=True)
def cross_variance(x, z, sigmas_f, sigmas_h, Wc):
        Pxz = zeros((sigmas_f.shape[1], sigmas_h.shape[1]))
        N = sigmas_f.shape[0]
        for i in range(N):
            dx = sigmas_f[i] - x
            dz = sigmas_h[i] - z
            Pxz += Wc[i] * outer(dx, dz)
        return Pxz    

@jit(nopython=True)
def compute_process_sigmas(dt, points_fn, x, P, fx, sigmas_f):
    # Step 2.1
    # calculate sigma points for given mean and covariance
    sigmas = points_fn.sigma_points(x, P)

    # Step 2.2
    for i, s in enumerate(sigmas):
        sigmas_f[i] = fx(s, dt)


#@jitclass
class UnscentedKalmanFilter(object):

    def __init__(self, dim_x, dim_z, dt, hx, fx, points):
        # Initialization of the kalman filter

        # initializtion default values
        self.x = zeros(dim_x)
        self.P = eye(dim_x)
        self.x_prior = np.copy(self.x)
        self.P_prior = np.copy(self.P)
        self.Q = eye(dim_x)
        self.R = eye(dim_z)
        self._dim_x = dim_x
        self._dim_z = dim_z
        self.points_fn = points
        self.dt = dt
        self._num_sigmas = points.num_sigmas()
        self.hx = hx
        self.fx = fx

        # weights for the means and covariances.
        self.Wm, self.Wc = points.Wm, points.Wc

        # sigma points transformed through f(x) and h(x)
        self.sigmas_f = zeros((self._num_sigmas, self._dim_x))
        self.sigmas_h = zeros((self._num_sigmas, self._dim_z))

        # Kalman gain
        self.K = np.zeros((dim_x, dim_z))    

        # residual
        self.y = np.zeros((dim_z))           
        
        # measurement vector
        self.z = np.array([[None]*dim_z]).T

        # system uncertainty
        self.S = np.zeros((dim_z, dim_z))    

        # inverse system uncertainty
        self.SI = np.zeros((dim_z, dim_z))   

        # these will always be a copy of x,P after predict() is called
        self.x_prior = self.x.copy()
        self.P_prior = self.P.copy()

        # these will always be a copy of x,P after update() is called
        self.x_post = self.x.copy()
        self.P_post = self.P.copy()

    def predict(self):

        # Step 2.1 / 2.2
        # calculate sigma points for given mean and covariance
        self.compute_process_sigmas(self.dt)

        # Step 2.3
        # pass sigmas through the unscented transform to compute prior
        self.x, self.P = unscented_transform(self.sigmas_f, self.Wm, self.Wc, self.Q)
        # update sigma points to reflect the new variance of the points
        self.sigmas_f = self.points_fn.sigma_points(self.x, self.P)

        # save prior
        self.x_prior = np.copy(self.x)
        self.P_prior = np.copy(self.P)

    def update(self, z):

        # Step 3.1
        # pass prior sigmas through h(x) to get measurement sigmas
        # the shape of sigmas_h will vary if the shape of z varies, so
        # recreate each time
        sigmas_h = []
        for s in self.sigmas_f:
            sigmas_h.append(self.hx(s))

        # sigmas after passing through h should be at least 2d tensor
        self.sigmas_h = np.atleast_2d(sigmas_h)

        # Step 3.2
        # mean and covariance of prediction passed through unscented transform
        zp, self.S = unscented_transform(self.sigmas_h, self.Wm, self.Wc, self.R)

        # Step 3.3
        # Calculate residual
        self.y = z - zp   

        # Step 3.4
        # compute cross variance of the state and the measurements
        Pxz = self.cross_variance(self.x, zp, self.sigmas_f, self.sigmas_h)

        # Step 3.5
        # Calculate Kalman gain
        self.SI = inv(self.S)
        self.K = dot(Pxz, self.SI)        

        # Step 3.6
        # update the state
        self.x = self.x + dot(self.K, self.y)

        # Step 3.7
        # adjust the belief
        self.P = self.P - dot(self.K, dot(self.S, self.K.T))

        # save measurement and posterior state
        self.z = deepcopy(z)
        self.x_post = self.x.copy()
        self.P_post = self.P.copy()


    def cross_variance(self, x, z, sigmas_f, sigmas_h):
            Pxz = zeros((sigmas_f.shape[1], sigmas_h.shape[1]))
            N = sigmas_f.shape[0]
            for i in range(N):
                dx = sigmas_f[i] - x
                dz = sigmas_h[i] - z
                Pxz += self.Wc[i] * outer(dx, dz)
            return Pxz    

    def compute_process_sigmas(self, dt):
        # Step 2.1
        # calculate sigma points for given mean and covariance
        sigmas = self.points_fn.sigma_points(self.x, self.P)

        # Step 2.2
        for i, s in enumerate(sigmas):
            self.sigmas_f[i] = self.fx(s, dt)


# Test on mock 
if __name__ == "__main__":
    import matplotlib.pyplot as plt
    from common import Q_discrete 
    from filterpy.kalman import MerweScaledSigmaPoints
    from scipy.linalg import block_diag
    from mock import constVelSensor
    from numpy.random import randn

    def fx(x, dt):
        # state transition function - predict next state based
        # on constant velocity model x = vt + x_0
        F = np.array([[1, dt, 0, 0],
                    [0, 1, 0, 0],
                    [0, 0, 1, dt],
                    [0, 0, 0, 1]], dtype=float)
        return np.dot(F, x)

    def hx(x):
        # measurement function - convert state into a measurement
        # where measurements are [x_pos, y_pos]
        return np.array([x[0], x[2]])


     # initial 
    x = np.array([[0, 0, 0, 0]]).T

    dt = 1
    process_noise_variance = 0.01
    ivar = 1000.                        # initial variance
    var_of_measurement = 10

    # covariance matrix 
    P = np.eye(x.size) * ivar

    # process covariance matrix
    q = Q_discrete(dt, process_noise_variance)
    Q = block_diag(q, q)

    # measurement noise matrix
    R = np.array([[var_of_measurement,                  0],
                [0                 , var_of_measurement]])

    # create sigma points to use in the filter. This is standard for Gaussian processes
    points = MerweScaledSigmaPoints(4, alpha=.1, beta=2., kappa=-1)
    sensors = constVelSensor(vel = (4,2 ), noise_std=var_of_measurement)
    

    # create kalman filter and initialize in the default state    
    kf = UnscentedKalmanFilter(dim_x=4, dim_z=2, dt=dt, fx=fx, hx=hx, points=points)
    kf.x = np.array([-1., 1., -1., 1]) # initial state
    kf.P =  P # initial uncertainty
    kf.R =  R
    kf.Q =  Q


    measurements = []
    filtered = []
    residuals = []

    zs = [[4*i+randn()*var_of_measurement, 2*i+randn()*var_of_measurement] for i in range(100)] # measurements

    # main loop : predict, get the measurement, update kalman with measurement
    for z in zs:
    
        kf.predict()
        kf.update(z)
        
        filtered.append([kf.x[0], kf.x[2]])
        measurements.append(z)

    filtered = np.array(filtered)
    measurements = np.array(measurements)

    plt.figure(figsize=(16, 8))
    plt.title("sensors")
    plt.scatter(measurements[:, 0], measurements[:, 1], c='r', label='sensors')
    plt.plot(filtered[:, 0], filtered[:, 1], label='filtered')
    plt.legend()
    plt.show()