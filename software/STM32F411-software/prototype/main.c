#include <stdio.h>
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

enum Peripheral getPeripheral(char peripheralByte)
{
    if (peripheralByte <= 13)
        return (enum Peripheral) peripheralByte;
    return NOT_RECOGNIZED;
}

void decodeMessage(struct command *cmd, char *buf, int size)
{
    cmd->peripheral = getPeripheral(buf[0]);
    cmd->RW      =  (buf[1] & 0b10000000) >> 7;
    cmd->type    =  (buf[1] & 0b01100000) >> 6;
    cmd->channel =  (buf[1] & 0b00011111);
    cmd->data    = (buf[2] << 8) + buf[3];
}


int main()
{
    char buf[] = {'\x00', '\x00', '\x00', '\x00'};
    struct command msg;
    decodeMessage(&msg, buf, 4);
    printf("Peripheral : %d\n", msg.peripheral);
    printf("Read/Write : %d\n", msg.RW);
    printf("Type : %d\n", msg.type);
    printf("channel : %d\n", msg.channel);
    printf("data : %d\n", msg.data);

    return 0;
}
