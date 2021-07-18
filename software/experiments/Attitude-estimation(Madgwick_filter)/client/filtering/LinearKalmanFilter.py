from numpy.linalg import inv
from numpy import identity 
from numpy import dot
from numba import jitclass

from scipy.linalg import block_diag
import numpy as np

"""
    References : 
    - Kalman and Bayesian filters in python
    - Estimation with Applications To Tracking and Navigation
"""


class LinearKalmanFilter(object):
    def __init__(self, x, F, P, Q, R, H):
        """
            x: state vector
            F: state transition matrix ( representation of the system dynamics)
            P: covariance matrix
            Q: covariance of the process
            R: measurement noise matrix
            H: measurement matrix
            x_hat: predicted next state
            P_hat: updated covariance matrix
            K: Kalman gain
            y: residual
        """
        self.x = x
        self.F = F
        self.P = P
        self.Q = Q
        self.R = R
        self.H = H
        
        self.x_hat = None
        self.P_hat = None
        self.K = None
        self.y = None
        
        self.pred = False

    def predict(self):
        
        # 2.1 predict the next state based on the model of system dynamics
        self.x = self.F @ self.x
        
        # 2.2 adjusting belief
        self.P = self.F @ (self.P @self.F.T) + self.Q
        
    def update(self, z):        
        # 3.2 compute the residual 
        self.y = z - self.H @ self.x

        # 3.3 calculate the kalman gain
        self.K = self.P @ self.H.T @ inv(self.H @ self.P @ self.H.T + self.R)
        #print(self.K)
        
        # 3.4 update the state
        self.x = self.x + self.K @ self.y
        
        # 3.5 adjusting belief
        
        I = identity(self.P.shape[0])
        self.P = (I - self.K @ self.H) @ self.P 
        
        self.pred = False


if __name__ == "__main__":
    from mock import constVelSensor

    import matplotlib.pyplot as plt
    from scipy.linalg import block_diag
    import numpy as np

    dt = 1
    process_noise_variance = 0.01
    ivar = 1000. # initial variance
    var_of_measurement = 10

    # initial 
    x = np.array([[0, 0, 0, 0]]).T

    F = np.array([[1, dt, 0, 0],
                [0, 1 , 0, 0],
                [0, 0 , 1, dt],
                [0, 0 , 0, 1]])

    P = np.eye(x.size) * ivar

    q = Q_discrete(dt=dt, var=process_noise_variance)
    print(q)
    Q = block_diag(q, q)

    R = np.array([[var_of_measurement,                  0],
                [0                 , var_of_measurement]])

    H = np.array([[1, 0, 0, 0],
                [0, 0, 1, 0]])

    sensors = constVelSensor(vel = (4,2 ), noise_std=var_of_measurement)
    kalman_filter = LinearKalmanFilter(x, F, P, Q, R, H)


    measurements = []
    filtered = []
    residuals = []

    kalman_filter.predict()
    kalman_filter.update(np.array([[0], [0]]))



    # track for 100 seconds
    for i in range(100):
        
        z = np.array(sensors.get(dt)).reshape(-1, 1)
        
        kalman_filter.predict()
        kalman_filter.update(z)
        
        filtered.append([kalman_filter.x[0], kalman_filter.x[2]])
        measurements.append(z)
        residuals.append(kalman_filter.y)
        
        
        
    measurements = np.array(measurements).reshape(-1, 2)
    filtered = np.array(filtered).reshape(-1, 2)
    residuals = np.array(residuals).reshape(-1, 2)


    plt.figure(figsize=(16, 8))
    plt.title("sensors")
    plt.scatter(measurements[:, 0], measurements[:, 1], c='r', label='sensors')
    plt.plot(filtered[:, 0], filtered[:, 1], label='filtered')
    plt.legend()
    plt.show()