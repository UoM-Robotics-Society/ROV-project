## Serial communication with the STM32 

|1 Byte | 2 Byte |3 Byte|4 Byte|
|---|---|---|---|
|peripheral|config|data[15:7]|data[7:0]|

### Peripheral
|Peripherals|
|---|
| 0x00 : STM32 config | 
| 0x01 : Motor Control |
| 0x02 : LED |
| 0x03: Leak detection |
| 0x04 : Temperature sensor |
| 0x05 : Pressure sensor |
| 0x06 : Radiation sensor |
| 0x07 : chlorophyll sensor |

### Config
|7th bit|6th bit|5th bit|4th bit|3th bit|2th bit|1th bit|0th bit|
|---|---|---|---|---|---|---|---|
|Write 0<br>Read 1|type bit 1|type bit 0|channel bit 4|channel bit 3|channel bit 2|channel bit 1|channel bit 0|


### Examples
|command|purpose|CLI command|
|---|---|---|
|0x00, 0b00000000, 0x00, 0x00| echo|stm32 write 0 0 0| 
|0x00, 0b00000001, 0x00, 0x01| toggle LED|stm32 write 0 1 0|
|0x01, 0b00000000, 0x00, 0x00| write x to motor channel 0|motor write 0 0 x| 
|0x01, 0b00000001, 0x00, 0x00| write x to motor channel 1|motor write 0 1 x| 
|0x01, 0b00000010, 0x00, 0x00| write x to motor channel 2|motor write 0 2 x| 
