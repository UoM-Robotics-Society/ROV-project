//
// Created by acze on 02.03.2022.
//

#ifndef STM32F411_SOFTWARE_COMMUNICATION_H
#define STM32F411_SOFTWARE_COMMUNICATION_H

#include <stdint.h>
#include <stdbool.h>

enum Peripheral {
    STM32_CONFIG            = 0,
    MOTOR_CONTROL           = 1,
    LED                     = 2,
    LEAK_DETECTOR           = 3,
    TEMPERATURE_SENSOR      = 4,
    PRESSURE_SENSOR         = 5,
    RADIATION_SENSOR        = 6,
    CHLOROPHYLL_SENSOR      = 7,
    ACCELERATION_SENSOR     = 8,
    GYROSCOPE_SENSOR        = 9,
    MAGNETOMETER_SENSOR     = 10,
    CURRENT_MEASUREMENT     = 11,
    HYDROPHONE_SENSOR       = 12,
    NOT_RECOGNIZED = 0xff
};

struct command
{
    enum Peripheral peripheral;
    bool RW;
    uint8_t type;
    uint8_t channel;
    uint16_t data;
};

void decodeMessage(struct command *cmd, char *buf, int size);
enum Peripheral getPeripheral(char peripheralByte);


#endif //STM32F411_SOFTWARE_COMMUNICATION_H
