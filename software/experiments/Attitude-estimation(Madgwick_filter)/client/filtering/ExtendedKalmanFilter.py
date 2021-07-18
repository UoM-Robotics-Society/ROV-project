from copy import deepcopy
import numpy as np
from numpy.linalg import inv


"""
 Implementation of the Extended Kalman Filter 
 
 
 implementation inspired by filterpy. kudos to the author of the 
 Kalman and bayesian filters in python for extraordinary contribution. 

 algorithm described in lots of places
"""


class ExtendedKalmanFilter(object):
        """
            x: state vector
            dim_x : length of x 
            z: measurement
            dim_z : length of z
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
        def __init__(self, dim_x, dim_z, dim_u=0):

            self.dim_x = dim_x
            self.dim_z = dim_z                
            self.dim_u = dim_u

            # initial state
            self.x = np.zeros((dim_x, 1))

            # Covariance matrix
            self.P = np.eye(dim_x)

            # state transition maitrx
            self.F = np.eye(dim_x)

            # measurement noise matrix
            self.R = np.eye(dim_z)

            # process uncertainty
            self.Q = np.eye(dim_x)

            # residual
            self.y = np.zeros((dim_z, 1))

        def predict_update(self, z, HJacobian, Hx):
            """
                HJacobian : function that computes the Jacobian of the H matrix
                Hx : measurement function
            """
            
            self.H = HJacobian(self.x)

            # predict step
            self.x = self.F @ self.x
            self.P = self.F @ (self.P @ self.F.T) + self.Q

            # update step
            self.PHT = self.P @ self.H.T
            self.S   = self.H @ self.PHT + self.R
            self.SI  = inv(self.S)
            self.K   = self.PHT @ self.SI

            # residual
            self.y = z - Hx(x)
            
            # state update
            self.x = self.x + self.K @ self.y
            
            # adjust belief
            self.I_KH = self._I - self.K @ H 
            self.P = (self.I_KH @ self.P) @ self.I_KH.T + (self.K @ self.R) @ (self.K.T)