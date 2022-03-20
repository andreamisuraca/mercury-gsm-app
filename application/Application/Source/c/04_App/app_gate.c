/************************************************************************
*                          EEPROM Interface                             *
*************************************************************************
* FileName:         app_gate.c                                          *
* HW:               Mercury System                                      *
* Author:           A.Misuraca                                          *
*                                                                       *
* Software License Agreement:                                           *
*                                                                       *
* THIS SOFTWARE IS PROVIDED IN AN "AS IS" CONDITION. NO WARRANTIES,     *
* WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED     *
* TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A           *
* PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. THE AUTHOR SHALL NOT,      *
* IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL OR            *
* CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.                     *
*                                                                       *
* --------------------------------------------------------------------- *
* Responsible For This File: Andrea Misuraca                            *
*                                                                       *
* --------------------------------------------------------------------- *
* Author       Date        Version      Comment                         *
* ---------------------------------------------------------------------	*
* A.Misuraca   20/03/22    1.0          First release                   *
************************************************************************/

/************************************************************************
* Includes
************************************************************************/
#include "app.h"
#include "app_gate.h"
#include "app_init.h"
#include "app_utils.h"

/************************************************************************
* Defines
************************************************************************/

#define TIMEOUT_SETUP_CALL      30

/************************************************************************
* Typedefs
************************************************************************/

/************************************************************************
* LOCAL Variables
************************************************************************/

static uint16_t setupCallTicks = 0;

/************************************************************************
* GLOBAL Variables
************************************************************************/

/************************************************************************
* LOCAL Function Prototypes
************************************************************************/

/************************************************************************
* LOCAL Function Implementations
************************************************************************/
/**
 * @brief 
 * 
 */
bool getSetupCall(void)
{
    bool isCalledReceived = false;

    if (Mdm_IsRinging())
    {
        Mdm_HangPhoneCall();
        isCalledReceived = true;
    }
    return isCalledReceived;
}

/************************************************************************
* GLOBAL Function Implementations
************************************************************************/
/**
 * @brief 
 * 
 */
bool waitSetupCall(void)
{
    bool isCallArrived = false;
    if (!secondsAppTimer(TIMEOUT_SETUP_CALL, &setupCallTicks, false))
    {
        Led_SetLedStatus(LED_1, LED_STS_BLINK);
        if (getSetupCall())
        {
            isCallArrived = true;
        }
    }
    else
    {
        Led_SetLedStatus(LED_1, LED_STS_ON);
    }
    return isCallArrived;
}

/**
 * @brief 
 * 
 * @param address 
 * @param phoneNumber 
 */
void saveMasterNumber(UINT8 address, UINT8* phoneNumber)
{
    phoneNumber[PHONE_NUMBER_LEN - 1] = 'M';
    Eeprom_Write(address, phoneNumber, PHONE_NUMBER_LEN);
}

/**
 * @brief 
 * 
 */
void updateMemorizedNumbersCount()
{
    Eeprom_Write(0, initPreamble(), PREAMBLE_LENGTH);
}