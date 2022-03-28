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
#include "app_utils.h"

/************************************************************************
* Defines
************************************************************************/

#define TIMEOUT_SETUP_CALL_SEC      30
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
    INIT_FSM_WAIT_CMD,
    INIT_FSM_PREAMBLE,
    INIT_FSM_COMPLETE
} initFsmStates;
/************************************************************************
* LOCAL Variables
************************************************************************/

static uint8_t memoryPreamble[PREAMBLE_LENGTH];
static uint16_t setupCallTicks = 0;
static bool isMemoryEmpty = true;
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
                if (secondsAppTimer(5, &modemCounter, false))
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
            currentState = MODEM_INIT;
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
        currentState = EEPROM_INIT;
        break;

    case EEPROM_NOT_EMPTY:
        currentState = EEPROM_INIT;
        isInitialized = true;
        isMemoryEmpty = false;
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

/**
 * @brief 
 * 
 */
bool waitSetupCall(void)
{
    bool isCallArrived = false;
    if (!secondsAppTimer(TIMEOUT_SETUP_CALL_SEC, &setupCallTicks, false))
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

void savePreamble()
{
    Eeprom_Write(0, initPreamble(), PREAMBLE_LENGTH);
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
            currentState = INIT_FSM_WAIT_CMD;
            setupCallTicks = 0;
        }
        break;

    case INIT_FSM_WAIT_CMD:
        if (isMemoryEmpty)
        {
            if (waitSetupCall())
            {
                saveNumberInMemory(MASTER_NUMBER_ADDRESS, GetCallerNumber());
                currentState = INIT_FSM_PREAMBLE;
            }
            // todo: add wait for usb command
        }
        else
        {
            currentState = INIT_FSM_COMPLETE;
        }
        break;

    case INIT_FSM_PREAMBLE:
        savePreamble();
        currentState = INIT_FSM_COMPLETE;
        break;

    case INIT_FSM_COMPLETE:
        Led_SetLedStatus(LED_1, LED_STS_ON);
        currentState = INIT_FSM_MODEM;
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
 * @return uint8_t* 
 */
uint8_t* initPreamble()
{
    memoryPreamble[0] = 'U';
    memoryPreamble[1] = 'S';
    memoryPreamble[2] = 'I';
    memoryPreamble[3] = 'M';
    return memoryPreamble;
}
