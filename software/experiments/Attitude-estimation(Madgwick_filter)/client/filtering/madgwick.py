import math



class madgwickFilter(object):
    def __init__(self):
        # sampling period in seconds
        self.deltat = 0.01

        # gyroscope measurement error in rad / s
        self.gyroMeasError = math.pi / 180. * 5.0

        # gyroscope measurement error in rad / s / s
        self.gyroMeasDrift = math.pi / 180. * 0.2

        # beta from publication
        self.beta = math.sqrt(3. / 4.) * self.gyroMeasError

        # zeta from publication
        self.zeta = math.sqrt(3. / 4.) * self.gyroMeasDrift

        # accelerometer measurements
        # self.a_x, self.a_y, self.a_z = 0, 0, 0

        # gyroscope measurement in rad / s
        # self.w_x, self.w_y, self.w_z = 0, 0, 0

        # magnetometer measurements
        # self.m_x, self.m_y, self.m_z = 0, 0, 0

        # estimated orientation quaternion elements with initial conditions
        self.SEq_1, self.SEq_2, self.SEq_3, self.SEq_4 = 1, 0, 0, 0

        # reference direction of flux in earth frame
        self.b_x, self.b_z = 1, 0

        # estimate gyroscope biases error
        self.w_bx, self.w_by, self.w_bz = 0, 0, 0


    def filterUpdate(self, w_x, w_y, w_z, a_x, a_y, a_z, m_x, m_y, m_z):
        # global SEq_1, SEq_2, SEq_3, SEq_4, b_z, b_x, w_bx, w_by, w_bz, deltat
        
        # avoiding repeated calculations
        halfSEq_1 = 0.5 * self.SEq_1
        halfSEq_2 = 0.5 * self.SEq_2
        halfSEq_3 = 0.5 * self.SEq_3
        halfSEq_4 = 0.5 * self.SEq_4
        twoSEq_1 = 2.0 * self.SEq_1
        twoSEq_2 = 2.0 * self.SEq_2
        twoSEq_3 = 2.0 * self.SEq_3
        twoSEq_4 = 2.0 * self.SEq_4
        twob_x = 2.0 * self.b_x
        twob_z = 2.0 * self.b_z
        twob_xSEq_1 = 2.0 * self.b_x * self.SEq_1
        twob_xSEq_2 = 2.0 * self.b_x * self.SEq_2
        twob_xSEq_3 = 2.0 * self.b_x * self.SEq_3
        twob_xSEq_4 = 2.0 * self.b_x * self.SEq_4
        twob_zSEq_1 = 2.0 * self.b_z * self.SEq_1
        twob_zSEq_2 = 2.0 * self.b_z * self.SEq_2
        twob_zSEq_3 = 2.0 * self.b_z * self.SEq_3
        twob_zSEq_4 = 2.0 * self.b_z * self.SEq_4
        SEq_1SEq_3 = self.SEq_1 * self.SEq_3
        SEq_2SEq_4 = self.SEq_2 * self.SEq_4
        twom_x = 2.0 * m_x
        twom_y = 2.0 * m_y
        twom_z = 2.0 * m_z

        # normalise the accelerometer measurement
        norm = math.sqrt(a_x * a_x + a_y * a_y + a_z * a_z);
        a_x /= norm
        a_y /= norm
        a_z /= norm

        # normalise the magnetometer measurement
        norm = math.sqrt(m_x * m_x + m_y * m_y + m_z * m_z);
        m_x /= norm
        m_y /= norm
        m_z /= norm

        # compute the objective function and Jacobian
        f_1 = twoSEq_2 * self.SEq_4 - twoSEq_1 * self.SEq_3 - a_x
        f_2 = twoSEq_1 * self.SEq_2 + twoSEq_3 * self.SEq_4 - a_y
        f_3 = 1.0 - twoSEq_2 * self.SEq_2 - twoSEq_3 * self.SEq_3 - a_z
        f_4 = twob_x * (0.5 - self.SEq_3 * self.SEq_3 - self.SEq_4 * self.SEq_4) + twob_z * (SEq_2SEq_4 - SEq_1SEq_3) - m_x
        f_5 = twob_x * (self.SEq_2 * self.SEq_3 - self.SEq_1 * self.SEq_4) + twob_z * (self.SEq_1 * self.SEq_2 + self.SEq_3 * self.SEq_4) - m_y
        f_6 = twob_x * (SEq_1SEq_3 + SEq_2SEq_4) + twob_z * (0.5 - self.SEq_2 * self.SEq_2 - self.SEq_3 * self.SEq_3) - m_z

        J_11or24 = twoSEq_3  # J_11 negated in matrix multiplication
        J_12or23 = 2.0 * self.SEq_4
        J_13or22 = twoSEq_1  # J_12 negated in matrix multiplication
        J_14or21 = twoSEq_2
        J_32 = 2.0 * J_14or21  # negated in matrix multiplication
        J_33 = 2.0 * J_11or24  # negated in matrix multiplication
        J_41 = twob_zSEq_3  # negated in matrix multiplication
        J_42 = twob_zSEq_4
        J_43 = 2.0 * twob_xSEq_3 + twob_zSEq_1  # negated in matrix multiplication
        J_44 = 2.0 * twob_xSEq_4 - twob_zSEq_2  # negated in matrix multiplication
        J_51 = twob_xSEq_4 - twob_zSEq_2  # negated in matrix multiplication
        J_52 = twob_xSEq_3 + twob_zSEq_1
        J_53 = twob_xSEq_2 + twob_zSEq_4
        J_54 = twob_xSEq_1 - twob_zSEq_3  # negated in matrix multiplication
        J_61 = twob_xSEq_3
        J_62 = twob_xSEq_4 - 2.0 * twob_zSEq_2
        J_63 = twob_xSEq_1 - 2.0 * twob_zSEq_3
        J_64 = twob_xSEq_2

        # compute the gradient (matrix multiplication)
        SEqHatDot_1 = J_14or21 * f_2 - J_11or24 * f_1 - J_41 * f_4 - J_51 * f_5 + J_61 * f_6
        SEqHatDot_2 = J_12or23 * f_1 + J_13or22 * f_2 - J_32 * f_3 + J_42 * f_4 + J_52 * f_5 + J_62 * f_6
        SEqHatDot_3 = J_12or23 * f_2 - J_33 * f_3 - J_13or22 * f_1 - J_43 * f_4 + J_53 * f_5 + J_63 * f_6
        SEqHatDot_4 = J_14or21 * f_1 + J_11or24 * f_2 - J_44 * f_4 - J_54 * f_5 + J_64 * f_6

        # normalise the gradient to estimate direction of the gyroscope error
        norm = math.sqrt(
            SEqHatDot_1 * SEqHatDot_1 + SEqHatDot_2 * SEqHatDot_2 + SEqHatDot_3 * SEqHatDot_3 + SEqHatDot_4 * SEqHatDot_4)
        SEqHatDot_1 = SEqHatDot_1 / norm
        SEqHatDot_2 = SEqHatDot_2 / norm

        SEqHatDot_3 = SEqHatDot_3 / norm
        SEqHatDot_4 = SEqHatDot_4 / norm

        # compute angular estimated direction of the gyroscope error
        w_err_x = twoSEq_1 * SEqHatDot_2 - twoSEq_2 * SEqHatDot_1 - twoSEq_3 * SEqHatDot_4 + twoSEq_4 * SEqHatDot_3
        w_err_y = twoSEq_1 * SEqHatDot_3 + twoSEq_2 * SEqHatDot_4 - twoSEq_3 * SEqHatDot_1 - twoSEq_4 * SEqHatDot_2
        w_err_z = twoSEq_1 * SEqHatDot_4 - twoSEq_2 * SEqHatDot_3 + twoSEq_3 * SEqHatDot_2 - twoSEq_4 * SEqHatDot_1

        # compute and remove the gyroscope baises
        self.w_bx += w_err_x * self.deltat * self.zeta
        self.w_by += w_err_y * self.deltat * self.zeta
        self.w_bz += w_err_z * self.deltat * self.zeta
        w_x -= self.w_bx
        w_y -= self.w_by
        w_z -= self.w_bz

        # compute the quaternion rate measured by gyroscopes
        SEqDot_omega_1 = -halfSEq_2 * w_x - halfSEq_3 * w_y - halfSEq_4 * w_z
        SEqDot_omega_2 = halfSEq_1 * w_x + halfSEq_3 * w_z - halfSEq_4 * w_y
        SEqDot_omega_3 = halfSEq_1 * w_y - halfSEq_2 * w_z + halfSEq_4 * w_x
        SEqDot_omega_4 = halfSEq_1 * w_z + halfSEq_2 * w_y - halfSEq_3 * w_x

        # compute then integrate the estimated quaternion rate
        self.SEq_1 += (SEqDot_omega_1 - (self.beta * SEqHatDot_1)) * self.deltat
        self.SEq_2 += (SEqDot_omega_2 - (self.beta * SEqHatDot_2)) * self.deltat
        self.SEq_3 += (SEqDot_omega_3 - (self.beta * SEqHatDot_3)) * self.deltat
        self.SEq_4 += (SEqDot_omega_4 - (self.beta * SEqHatDot_4)) * self.deltat

        # normalise quaternion
        norm = math.sqrt(self.SEq_1 * self.SEq_1 + self.SEq_2 * self.SEq_2 + self.SEq_3 * self.SEq_3 + self.SEq_4 * self.SEq_4)
        self.SEq_1 /= norm
        self.SEq_2 /= norm
        self.SEq_3 /= norm
        self.SEq_4 /= norm

        # compute flux in the earth frame
        SEq_1SEq_2 = self.SEq_1 * self.SEq_2  # recompute axulirary variables
        SEq_1SEq_3 = self.SEq_1 * self.SEq_3
        SEq_1SEq_4 = self.SEq_1 * self.SEq_4
        SEq_3SEq_4 = self.SEq_3 * self.SEq_4
        SEq_2SEq_3 = self.SEq_2 * self.SEq_3
        SEq_2SEq_4 = self.SEq_2 * self.SEq_4
        self.h_x = twom_x * (0.5 - self.SEq_3 * self.SEq_3 - self.SEq_4 * self.SEq_4) + twom_y * (SEq_2SEq_3 - SEq_1SEq_4) + twom_z * (
                    SEq_2SEq_4 + SEq_1SEq_3)
        self.h_y = twom_x * (SEq_2SEq_3 + SEq_1SEq_4) + twom_y * (0.5 - self.SEq_2 * self.SEq_2 - self.SEq_4 * self.SEq_4) + twom_z * (
                    SEq_3SEq_4 - SEq_1SEq_2)
        self.h_z = twom_x * (SEq_2SEq_4 - SEq_1SEq_3) + twom_y * (SEq_3SEq_4 + SEq_1SEq_2) + twom_z * (
                    0.5 - self.SEq_2 * self.SEq_2 - self.SEq_3 * self.SEq_3)

        # normalise the flux vector to have only components in the x and z
        self.b_x = math.sqrt((self.h_x * self.h_x) + (self.h_y * self.h_y))
        self.b_z = self.h_z
