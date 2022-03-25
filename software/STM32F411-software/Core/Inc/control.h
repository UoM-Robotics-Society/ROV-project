#include "stm32f4xx_hal.h"

extern TIM_TypeDef * motorPWMSignal;
extern int maxCCRVal;

void setMotorDutyCycle(uint16_t value, uint8_t channel)
{
	switch(channel)
	{
		case 0:
			motorPWMSignal->CCR1 = value;
			break;
		case 1:
			motorPWMSignal->CCR2 = value;
			break;
		case 2:
			motorPWMSignal->CCR3 = value;
			break;
		case 3:
			motorPWMSignal->CCR4 = value;
	}
}


void setMotorDutyCycleFromPercentage(float percentage, uint8_t channel)
{
	 uint16_t value = percentage / 100.f * (float) maxCCRVal;
	 setMotorDutyCycle(value, channel);
}
