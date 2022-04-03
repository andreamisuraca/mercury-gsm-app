/************************************************************************
*                            COMMAND INIT                               *
*************************************************************************
* FileName:         cmd_init.c                                          *
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
#include "app_main.h"
#include "cmd_init.h"
#include "utils.h"

/************************************************************************
* Defines
************************************************************************/
#define TIMEOUT_SETUP_CALL_SEC      30
#define PREAMBLE_LENGTH             4

/************************************************************************
* Typedefs
************************************************************************/
/**
 * States of the GSM modem init state machine.
 */
typedef enum _modemStates
{
    MODEM_INIT = 0,
    MODEM_DELETE_SMS,
    MODEM_SET_CALLER_ID,
    MODEM_INIT_COMPLETE
} modemStates;

/**
 * States of the EEPROM init state machine.
 */
typedef enum _eepromStates
{
    EEPROM_INIT = 0,
    EEPROM_EMPTY,
    EEPROM_NOT_EMPTY
} eepromStates;

/**
 * States of the INIT command state machine.
 */
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
/**
 * @brief The preamble that will be saved in memory at init phase.
 */
static uint8_t memoryPreamble[PREAMBLE_LENGTH];

/**
 * @brief Counter to allow setup call only for a short period of time.
 */
static uint16_t setupCallTicks = 0;

/**
 * @brief Variable to determine is the memory is empty or not.
 */
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
 * @brief Preamble used identify is something is present or not in memory.
 * 
 * @return uint8_t* Return hardcoded the preable.
 */
uint8_t* initPreamble()
{
    memoryPreamble[0] = 'U';
    memoryPreamble[1] = 'S';
    memoryPreamble[2] = 'I';
    memoryPreamble[3] = 'M';
    return memoryPreamble;
}

/**
 * @brief Main state machine the initialized the GSM modem.
 * 
 * @return true Initialization completed.
 * @return false Operation pending.
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
 * @brief Main state machine the initialized the EEPROM.
 * 
 * @return true Initialization completed.
 * @return false Operation pending.
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
        currentState = EEPROM_INIT;
        isInitialized = true;
        isMemoryEmpty = true;
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
 * @brief Check if there is an incoming call.
 * 
 * @return true A phone call has been received.
 * @return false No call received.
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
 * @brief Wait for master phone number to be set via phone call in 3 minutes.
 * 
 * @return true Master phone number set via phone call.
 * @return false Master phone number not set via phone call.
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

/**
 * @brief Save the preambe in NvM.
 */
void savePreamble()
{
    Eeprom_Write(0, initPreamble(), PREAMBLE_LENGTH);
}
/************************************************************************
* GLOBAL Function Implementations
************************************************************************/
/**
 * @brief Main state machine triggered when an INIT command is received.
 * 
 * @param isCmdSuccessfull If the command was complete w/ or w/o errors.
 * @return true If there is no operation in progress.
 * @return false If the operation is still in progress.
 */
bool initFsm(bool* isCmdSuccessfull)
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
            if (detectUsbNumber(isCmdSuccessfull))
            {
                currentState = INIT_FSM_PREAMBLE;
            }
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
 * @brief Replace master phone number when a new one is received via USB.
 * 
 * @param isCmdSuccessfull If the command was complete w/ or w/o errors.
 * @return true If there is no operation in progress.
 * @return false If the operation is still in progress.
 */
bool detectUsbNumber(bool* isCmdSuccessfull)
{
    bool isActionPerformed = false;

    if (IsUsbNumberReceived == TRUE)
    {
        saveNumberInMemory(MASTER_NUMBER_ADDRESS, UsbMasterPhoneNumber);
        *isCmdSuccessfull = true;
        isActionPerformed = true;
        IsUsbNumberReceived = FALSE;
    }
    return isActionPerformed;
}
