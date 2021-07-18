import serial
import math
from filtering.madgwickahrs import MadgwickAHRS

SENSITIVITY_ACCELEROMETER_2 = 0.000061
SENSITIVITY_ACCELEROMETER_4 = 0.000122
SENSITIVITY_ACCELEROMETER_8 = 0.000244
SENSITIVITY_ACCELEROMETER_16 = 0.000732
SENSITIVITY_GYROSCOPE_245 = 0.00875
SENSITIVITY_GYROSCOPE_500 = 0.0175
SENSITIVITY_GYROSCOPE_2000 = 0.07
SENSITIVITY_MAGNETOMETER_4 = 0.00014
SENSITIVITY_MAGNETOMETER_8 = 0.00029
SENSITIVITY_MAGNETOMETER_12 = 0.00043
SENSITIVITY_MAGNETOMETER_16 = 0.00058


class Subscriber(object):
    def __init__(self):
        pass

    def callback(self, dat):
        raise NotImplementedError


class printSubscriber(Subscriber):
    def callback(self, dat):
        print(dat)


class MARGSubscriber(Subscriber):
    def __init__(self, G_SCALE, A_SCALE, M_SCALE, ODR=100):
        super(MARGSubscriber, self).__init__()
        self.gscale = G_SCALE * math.pi / 180
        self.ascale = A_SCALE
        self.mscale = M_SCALE

        # sampling period in seconds
        self.deltat = 1. / ODR

        # gyroscope measurement error in rad / s
        self.gyroMeasError = math.pi / 180. * 5.0

        # gyroscope measurement error in rad / s / s
        self.gyroMeasDrift = math.pi / 180. * 0.2

        # beta from publication
        self.beta = math.sqrt(3. / 4.) * self.gyroMeasError

        # zeta from publication
        self.zeta = math.sqrt(3. / 4.) * self.gyroMeasDrift

        # accelerometer measurements
        # a_x, a_y, a_z = 0, 0, 0
        # gyroscope measurement in rad / s
        # w_x, w_y, w_z = 0, 0, 0
        # magnetometer measurements
        # m_x, m_y, m_z = 0, 0, 0

        # estimated orientation quaternion elements with initial conditions
        self.SEq_1, self.SEq_2, self.SEq_3, self.SEq_4 = 1, 0, 0, 0

        # reference direction of flux in earth frame
        self.b_x, self.b_z = 1, 0

        # estimate gyroscope biases error
        self.w_bx, self.w_by, self.w_bz = 0, 0, 0

    def callback(self, dat):
        gx, gy, gz, ax, ay, az, mx, my, mz = [int(v) for v in dat.decode().strip().split()]

        # raw measurement to physical values
        gx, gy, gz = self.gscale * gx, self.gscale * gy, self.gscale * gz
        ax, ay, az = self.ascale * ax, self.ascale * ay, self.ascale * az
        mx, my, mz = self.mscale * mx, self.mscale * my, self.mscale * mz

        self.filterUpdate(gx, gy, gz, ax, ay, az, mx, my, mz)

        # print(gx, gy, gz, ax, ay, az, mx,my,mz)
        # print quaternion
        # print(self.SEq_1, self.SEq_2, self.SEq_3, self.SEq_4)

        self.psi = math.atan2(2 * self.SEq_2 * self.SEq_3 - 2 * self.SEq_1 * self.SEq_4,
                              2 * self.SEq_1 ** 2 + 2 * self.SEq_2 ** 2 - 1)
        self.theta = - math.asin(2 * self.SEq_2 * self.SEq_4 + 2 * self.SEq_1 * self.SEq_3)
        self.phi = math.atan2(2 * self.SEq_3 * self.SEq_4 - 2 * self.SEq_1 * self.SEq_2,
                              2 * self.SEq_1 ** 2 + 2 * self.SEq_4 ** 2 - 1)
        print(self.psi, self.theta, self.psi)

    def filterUpdate(self, w_x, w_y, w_z, a_x, a_y, a_z, m_x, m_y, m_z):
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
        f_4 = twob_x * (0.5 - self.SEq_3 * self.SEq_3 - self.SEq_4 * self.SEq_4) + twob_z * (
                    SEq_2SEq_4 - SEq_1SEq_3) - m_x
        f_5 = twob_x * (self.SEq_2 * self.SEq_3 - self.SEq_1 * self.SEq_4) + twob_z * (
                    self.SEq_1 * self.SEq_2 + self.SEq_3 * self.SEq_4) - m_y
        f_6 = twob_x * (SEq_1SEq_3 + SEq_2SEq_4) + twob_z * (
                    0.5 - self.SEq_2 * self.SEq_2 - self.SEq_3 * self.SEq_3) - m_z

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
        norm = math.sqrt(
            self.SEq_1 * self.SEq_1 + self.SEq_2 * self.SEq_2 + self.SEq_3 * self.SEq_3 + self.SEq_4 * self.SEq_4)
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
        self.h_x = twom_x * (0.5 - self.SEq_3 * self.SEq_3 - self.SEq_4 * self.SEq_4) + twom_y * (
                    SEq_2SEq_3 - SEq_1SEq_4) + twom_z * (
                           SEq_2SEq_4 + SEq_1SEq_3)
        self.h_y = twom_x * (SEq_2SEq_3 + SEq_1SEq_4) + twom_y * (
                    0.5 - self.SEq_2 * self.SEq_2 - self.SEq_4 * self.SEq_4) + twom_z * (
                           SEq_3SEq_4 - SEq_1SEq_2)
        self.h_z = twom_x * (SEq_2SEq_4 - SEq_1SEq_3) + twom_y * (SEq_3SEq_4 + SEq_1SEq_2) + twom_z * (
                0.5 - self.SEq_2 * self.SEq_2 - self.SEq_3 * self.SEq_3)

        # normalise the flux vector to have only components in the x and z
        self.b_x = math.sqrt((self.h_x * self.h_x) + (self.h_y * self.h_y))
        self.b_z = self.h_z


class MARGSubscriber2(Subscriber):
    def __init__(self, G_SCALE, A_SCALE, M_SCALE, ODR=100):
        super(MARGSubscriber2, self).__init__()
        self.gscale = G_SCALE * math.pi / 180
        self.ascale = A_SCALE
        self.mscale = M_SCALE

        self.ahrs = MadgwickAHRS(sampleperiod=1 / ODR)

    def callback(self, dat):
        gx, gy, gz, ax, ay, az, mx, my, mz = [int(v) for v in dat.decode().strip().split()]

        # raw measurement to physical values
        gx, gy, gz = self.gscale * gx, self.gscale * gy, self.gscale * gz
        ax, ay, az = self.ascale * ax, self.ascale * ay, self.ascale * az
        mx, my, mz = self.mscale * mx, self.mscale * my, self.mscale * mz

        self.ahrs.update(gyroscope=[gx, gy, gz], accelerometer=[ax, ay, az], magnetometer=[mx, my, mz])
        print(self.ahrs.quaternion)


class serialReader(object):
    def __init__(self, port, baudrate):
        self.port = port
        self.baudrate = baudrate
        self.dat = None
        self.subscribers = []
        self.ser = serial.Serial(self.port, baudrate=self.baudrate)

    def __del__(self):
        self.ser.close()

    def read_forever(self):
        try:
            while True:
                self.dat = self.ser.readline()
                for callback in self.subscribers:
                    callback(self.dat)
        except Exception as e:
            print(e)

    def read(self):
        try:
            self.dat = self.ser.readline()
            for callback in self.subscribers:
                callback(self.dat)
        except Exception as e:
            print(e)

    def addSubscriber(self, subscriber: Subscriber):
        self.subscribers.append(subscriber.callback)


if __name__ == "__main__":
    s = serialReader("COM3", 115200)
    s1 = MARGSubscriber2(G_SCALE=SENSITIVITY_GYROSCOPE_245, A_SCALE=SENSITIVITY_ACCELEROMETER_2,
                         M_SCALE=SENSITIVITY_MAGNETOMETER_4)
    s.addSubscriber(s1)

    s.read_forever()
