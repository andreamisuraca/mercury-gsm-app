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
    static uint8_t countRelay1 = 1;
    static uint16_t countRelay2 = 1;
    static bool isRelay1On = false;
    static bool isRelay2On = false;
    static uint8_t test = 0;
    uint8_t off[2] = {SB01_SET_RELAY_STS, 0x00};
    uint8_t on[2] = {SB01_SET_RELAY_STS, 0x1};
    

    UINT8 I2cTxBufferTest[] = {0x00, 0x00};
    static UINT8 I2cStsReady = STD_FALSE;
    UINT8 phone[] = {'3', '3', '3', '3', '3', '3', '3', '3', '3', '3'};

    switch (SystemState)
    {
        /* System Initialization Phase */
        case InitializationState:
            /* Make app init. if necesary */ 
            Led_SetLedBlinkTime(LED_1,100,900);
            Led_SetLedStatus(LED_1, LED_STS_BLINK);
            break;

        /* System Normal operation Phase */
        case RunningState:
            /* App periodic calls */
         /* Send intial message on I2C - this is done to solve sw bug 001 */
         if (I2cStsReady == FALSE)
         {
            /* Send message to slave one time */
            //I2cSlv_SendI2cMsg(I2cTxBufferTest, 0x01, 2);
            /* Now I2C is ready */
            I2cStsReady = TRUE;         
            
            
         }
//         else if (++countRelay1 == 30)
//         {
//             if (isRelay1On)
//             {
//                 I2cSlv_SendI2cMsg(on, 1, 2);
//                 isRelay1On = false;
//             }
//             else
//             {
//                 I2cSlv_SendI2cMsg(off, 1, 2);
//                 isRelay1On = true;
//             }
//             
//             countRelay1 = 0;
//         }
         else if (Mdm_IsRinging() == PhoneRinging)
         {
             if (isRelay2On)
             {
                 I2cSlv_SendI2cMsg(on, 2, 2);
                 isRelay2On = false;
             }
             else
             {
                 I2cSlv_SendI2cMsg(off, 2, 2);
                 isRelay2On = true;
             }
         }
//         if (MdmStatus == ModemConfigured || MdmStatus == ModemOn)
//         {
//             Mdm_MakePhoneCall(phone, 10);
//         }

            /* If ring evt is received */
            if (Mdm_IsRinging() == PhoneRinging)
            {
                isRelay1On = !isRelay1On;
                triggerRelay(1, isRelay1On);
            }
//            if ((countRelay1 == 90) && (I2cSlv_GetI2cSts() == I2cTxRxComplete))
//            {
//                isRelay1On = !isRelay1On;
//                UINT8 val = strcmp(PhoneNumber, "+396");
//                if (triggerRelay(1, isRelay1On) && (val == 0))
//                {
//                    countRelay1++;
//                }
//            }
//            else
//            {
//                countRelay1++;
//            }
//
//            if ((countRelay2 == 91) && (I2cSlv_GetI2cSts() == I2cTxRxComplete))
//            {
//                isRelay2On = !isRelay2On;
//                if (triggerRelay(2, isRelay2On))
//                {
//                    countRelay1 = 0;
//                    countRelay2 = 0;
//                }
//            }
//            else
//            {
//                countRelay2++;
//            }
//
            break;

        /* Default */
        default:
            break;
    }
}