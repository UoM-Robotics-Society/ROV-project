//
// Created by acze on 02.03.2022.
//
#include "communication.h"

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