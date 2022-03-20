/************************************************************************
*                          EEPROM Interface                             *
*************************************************************************
* FileName:         app_utils.c                                         *
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
#include "app_utils.h"

/************************************************************************
* Defines
************************************************************************/

/************************************************************************
* Typedefs
************************************************************************/

/************************************************************************
* LOCAL Variables
************************************************************************/

/************************************************************************
* GLOBAL Variables
************************************************************************/

/************************************************************************
* LOCAL Function Prototypes
************************************************************************/

/************************************************************************
* LOCAL Function Implementations
************************************************************************/

/************************************************************************
* GLOBAL Function Implementations
************************************************************************/

/**
 * @brief 
 * 
 */
// max 255 seconds
// counter variable should be static/globally defined
bool secondsAppTimer(uint8_t seconds, uint16_t* counter, bool isCyclic)
{
    bool isExpired = true;
    uint16_t destinationTicks = (uint16_t) (seconds * 1000) / MY_APP_TASK_PERIOD_MS;

    if (*counter < destinationTicks)
    {
        *counter += 1;
        isExpired = false;
    }
    if (*counter == destinationTicks)
    {
        if (isCyclic)
        {
            *counter = 0;
        }
        else
        {
            *counter = 0xFFFF;
        }
    }
    return isExpired;
}

/**
 * @brief 
 * 
 * @param seconds 
 * @param blinkTicks 
 */
void blinkForSeconds(uint8_t seconds, uint16_t* blinkTicks)
{
    if (secondsAppTimer(seconds, blinkTicks, false))
    {
        Led_SetLedStatus(LED_1, LED_STS_ON);
    }
    else
    {
       Led_SetLedStatus(LED_1, LED_STS_BLINK); 
    }
}
