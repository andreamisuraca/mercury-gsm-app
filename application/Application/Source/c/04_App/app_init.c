/************************************************************************
*                          EEPROM Interface                             *
*************************************************************************
* FileName:         app_init.c                                          *
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
* A.Misuraca   19/03/22    1.0          First release                   *
************************************************************************/

/************************************************************************
* Includes
************************************************************************/
#include "app.h"
#include "app_init.h"

/************************************************************************
* Defines
************************************************************************/

#define PREAMBLE_LENGTH     4
/************************************************************************
* Typedefs
************************************************************************/

typedef enum _modemStates
{
    MODEM_INIT = 0,
    MODEM_DELETE_SMS,
    MODEM_SET_CALLER_ID,
    MODEM_INIT_COMPLETE
} modemStates;

typedef enum _eepromStates
{
    EEPROM_INIT = 0,
    EEPROM_EMPTY,
    EEPROM_NOT_EMPTY
} eepromStates;

typedef enum _initFsmStates
{
    INIT_FSM_MODEM = 0,
    INIT_FSM_EEPROM,
    INIT_FSM_COMPLETE
} initFsmStates;
/************************************************************************
* LOCAL Variables
************************************************************************/

static uint8_t memoryPreamble[PREAMBLE_LENGTH];
/************************************************************************
* GLOBAL Variables
************************************************************************/

bool isMemoryEmpty = true;
/************************************************************************
* LOCAL Function Prototypes
************************************************************************/

/************************************************************************
* LOCAL Function Implementations
************************************************************************/

// max 255 seconds
// counter variable should be static/globally defined
bool secondsAppTimer2(uint8_t seconds, uint16_t* counter, bool isCyclic)
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
 * 
 */
bool initGprsModem(void)
{
    static uint16_t modemCounter = 0;
    static modemStates currentState = MODEM_INIT;
    bool isInitialized = false;

    switch(currentState)
    {
        case MODEM_INIT:
            if (MdmStatus == ModemConfigured || MdmStatus == ModemOn)
            {
                if (secondsAppTimer2(4, &modemCounter, false))
                {
                    Mdm_SetSmsFormat(1);
                    currentState = MODEM_DELETE_SMS;
                }
            }
            break;

        case MODEM_DELETE_SMS:
            Uart_WriteConstString(1,"AT+CMGDA=DEL ALL\r\n");
            currentState = MODEM_SET_CALLER_ID;
            break;

        case MODEM_SET_CALLER_ID:
            Uart_WriteConstString(1,"AT+CLIP=1\r\n");
            currentState = MODEM_INIT_COMPLETE;
            break;

        case MODEM_INIT_COMPLETE:
            isInitialized = true;
            break;

        default:
            break;
    }
    return isInitialized;
}

/**
 * @brief 
 * 
 */
bool initEeprom(void)
{
    const uint8_t addressToRead = 0;
    static eepromStates currentState = EEPROM_INIT;
    EepromStsType memoryOpResult = OP_PENDING;
    bool isInitialized = false;

    switch (currentState)
    {
    case EEPROM_INIT:
        memoryOpResult = Eeprom_Read(0, memoryPreamble, PREAMBLE_LENGTH);
        if (memoryOpResult != OP_PENDING)
        {
            if (memoryPreamble[0] == 'U' &&
            memoryPreamble[1] == 'S' &&
            memoryPreamble[2] == 'I' &&
            memoryPreamble[3] == 'M')
            {
                currentState = EEPROM_NOT_EMPTY;
            }
            else
            {
                currentState = EEPROM_EMPTY;
            }
        }
        break;

    case EEPROM_EMPTY:
        isInitialized = true;
        Led_SetLedStatus(LED_1, LED_STS_BLINK);
        break;

    case EEPROM_NOT_EMPTY:
        isInitialized = true;
        isMemoryEmpty = false;
        Led_SetLedStatus(LED_1, LED_STS_ON);
        break;

    default:
        break;
    }
    return isInitialized;
}
/************************************************************************
* GLOBAL Function Implementations
************************************************************************/

/**
 * @brief 
 * 
 */
bool initFsm(void)
{
    static initFsmStates currentState = INIT_FSM_MODEM;
    bool isInitialized = false;

    switch (currentState)
    {
    case INIT_FSM_MODEM:
        if (initGprsModem())
        {
            currentState = INIT_FSM_EEPROM;
        }
        break;

    case INIT_FSM_EEPROM:
        if (initEeprom())
        {
            currentState = INIT_FSM_COMPLETE;
        }
        break;

    case INIT_FSM_COMPLETE:
        isInitialized = true;
        break;

    default:
        break;
    }
    return isInitialized;
}
