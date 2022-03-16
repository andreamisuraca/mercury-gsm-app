/************************************************************************
*                              	APP                              		*
*************************************************************************
* FileName:         app.c                                      			*
* HW:               Mercury System                                      *
* Author:           F.Ficili                                            *
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
* Responsible For This File: Francesco Ficili                           *
*                                                                       *
* --------------------------------------------------------------------- *
* Author       Date        Version      Comment                         *
* ---------------------------------------------------------------------	*
* F.Ficili     09/07/17    1.0          First release                   *
************************************************************************/

/************************************************************************
* Includes
************************************************************************/
#include "app.h"
#include "os_sched.h"

/************************************************************************
* Defines
************************************************************************/
#define I2C_TX_BUFFER_LEN												10u

/* I2C slave address #1 */
#define SLAVE_1_ADDRESS                                  ((UINT8)(0x01))
#define SLAVE_2_ADDRESS                                  ((UINT8)(0x02))
/* I2c cmd */
#define SB01_SET_RELAY_STS                               ((UINT8)(0x50))
#define SB01_REQUEST_RELAY_STS                           ((UINT8)(0x60))
/************************************************************************
* Typedefs
************************************************************************/


/************************************************************************
* LOCAL Variables
************************************************************************/
static UINT8 I2cTxBuffer[I2C_TX_BUFFER_LEN];  

static UINT8 RelayB1, RelayB2 = 0;
static UINT8 Relay1, Relay2, Relay3, Relay4 = 0;
static UINT8 TxBuffer[] = {0x00, 0x00};  
static UINT8 I2cReady = FALSE;
/************************************************************************
* GLOBAL Variables
************************************************************************/


/************************************************************************
* LOCAL Function Prototypes
************************************************************************/


/************************************************************************
* LOCAL Function Implementations
************************************************************************/

uint8_t triggerRelay(uint8_t realyId, bool isRelayOn)
{
    uint8_t txBuffer[2] = {SB01_SET_RELAY_STS, 0x00};
    uint8_t res = STD_NOT_OK;
    if (isRelayOn)
    {
       txBuffer[1] = 0x01;
    }
    res = I2cSlv_SendI2cMsg(txBuffer, realyId, 2);
    return res;
}

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

bool initGprsModem()
{
    static uint16_t modemCounter = 0;
    static bool isInitialized = false;
    static uint8_t initMdm = 0;
    
    switch(initMdm)
    {
        case 0:
            if (MdmStatus == ModemConfigured || MdmStatus == ModemOn)
            {
                if (secondsAppTimer(5, &modemCounter, false))
                {
                    Mdm_SetSmsFormat(1);
                    Led_SetLedStatus(LED_1, LED_STS_ON);
                    initMdm = 1;
                }
            }
            break;
        case 1:
            Uart_WriteConstString(1,"AT+CMGDA=DEL ALL\r\n");
            initMdm = 2;
            break;
        case 2:
            Uart_WriteConstString(1,"AT+CLIP=1\r\n");
            initMdm = 3;
            Led_SetLedStatus(LED_1, LED_STS_ON);
            isInitialized = true;
            break;
        default:
            break;
    }
    return isInitialized;
}

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
/************************************************************************
* GLOBAL Function Implementations
************************************************************************/

/************************************************************************
* Function:     MyApp_Task
* Input:        None
* Output:       None
* Author:       F.Ficili
* Description:  My app main task.
* Date:         09/10/16
************************************************************************/
void MyApp_Task (UINT8 Options)
{
    static UINT8 phone[] = {'+', '3', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '\0'};

    static uint16_t blinkTicks = 0xFFFF;
    static uint8_t blinkSeconds = 0;

    uint8_t smsText[MESSAGE_BUFF_LEN];
    uint8_t cmpString[] = {'c', 'a', 't'};

    static uint8_t memoryFlag = 0;
    I2cOpStsType memoryResult = OP_COMPLETE;

    switch (SystemState)
    {
        /* System Initialization Phase */
        case InitializationState:
            /* Make app init. if necesary */ 
            Led_SetLedBlinkTime(LED_1,100,900);
            break;

        /* System Normal operation Phase */
        case RunningState:
            if (initGprsModem())
            {
                /* If ring evt is received */
                if (Mdm_IsRinging())
                {
                    blinkTicks = 0;
                    if (StringCompare(phone, GetCallerNumber(), 14))
                    {
                        blinkSeconds = 5;
                    }
                    blinkSeconds = 3;
                    Mdm_HangPhoneCall();
                    memoryFlag = 1;
                }
                if (Mdm_IsSmsReceived())
                {
                    Mdm_RequestSmsData();
                }
//                if (Mdm_GetSmsData(smsText, phone) == SmsDataReady)
//                {
//                    blinkTicks = 0;
//                    blinkSeconds = 3;
//                    Uart_WriteConstString(1,"AT+CMGD=1,0\r\n");
//                    
//                    if (StringCompare(phone, phone, 14))
//                    {
//                        if (StringCompare(smsText, cmpString, sizeof(cmpString)))
//                        {
//                            blinkSeconds = 6;
//                        }
//                    }
//                    ClearBuffer(smsText, sizeof(smsText));
//                    ClearBuffer(phone, 14);
//                }
                blinkForSeconds(blinkSeconds, &blinkTicks);

                if (memoryFlag == 1)
                {
                    //Eeprom_Write(0, phone, 14);
                    ClearBuffer(phone, 14);
                    memoryFlag++;
                }
                else if (memoryFlag >= 2 && memoryFlag <= 250)
                {
                    if (memoryFlag == 100)
                    {
                        memoryResult = Eeprom_Read(0, phone, 13);
                        if (memoryResult != OP_PENDING)
                        {
                            memoryFlag++;
                        }
                    }
                    else
                    {
                        memoryFlag++;
                    }
                }
            }
            break;

        /* Default */
        default:
            break;
    }
}