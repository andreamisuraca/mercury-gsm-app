/************************************************************************
*                          EEPROM Interface                             *
*************************************************************************
* FileName:         eeprom_if.c                                         *
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
* A.Misuraca   15/03/22    1.0          First release                   *
************************************************************************/

/************************************************************************
* Includes
************************************************************************/
#include "eeprom_if.h"

/************************************************************************
* Defines
************************************************************************/
/** Maximum number of bytes that is possible to save in NvM with a
 * single operation.
*/
#define MAX_EEPROM_BUFFER    15

/************************************************************************
* Typedefs
************************************************************************/

/************************************************************************
* LOCAL Variables
************************************************************************/
/** Buffer used to write in NvM. */
static UINT8 EepromBuffer[MAX_EEPROM_BUFFER];

/** Address used to read bytes from NvM. */
static UINT8 ReadAddress[1];

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

/************************************************************************
* Function:     Eeprom_Write
* Input:        UINT8 Address
*               UINT8* WriteBuffer
*               UINT8 DataLenght
* Output:       UINT8 - STD_OK (Write OK), STD_NOT_OK (Write failed)
* Author:       A. Misuraca
* Description:  API used to write data in NvM given a specific address.
* Date:         15/03/22
************************************************************************/
UINT8 Eeprom_Write (UINT8 MemoryAddress, UINT8* WriteBuffer, UINT8 DataLength)
{
    const UINT8 SlaveAddress = 0x50;
    const UINT8 CommandLength = DataLength + 1;
    UINT8 WriteSts = STD_NOT_OK;

    if (CommandLength <= MAX_EEPROM_BUFFER)
    {
        EepromBuffer[0] = MemoryAddress;
        StringCopy(WriteBuffer, EepromBuffer + 1, DataLength);

        WriteSts = I2cSlv_SendI2cMsg(EepromBuffer, SlaveAddress, CommandLength);
    }
    return WriteSts;
}

/************************************************************************
* Function:     Eeprom_Read
* Input:        UINT8 Address
*               UINT8* ReadBuffer
*               UINT8 DataLenght
* Output:       UINT8 - STD_OK (Read OK), STD_NOT_OK (Read failed)
* Author:       A. Misuraca
* Description:  API used to read data from NvM given a specific address.
* Date:         15/03/22
************************************************************************/
EepromStsType Eeprom_Read (UINT8 MemoryAddress, UINT8* ReadBuffer, UINT8 DataLength)
{
    const UINT8 SlaveAddress = 0x50;
    I2cOpStsType QuerySts = OP_IN_PROGRESS;
    EepromStsType ReadSts = OP_PENDING;
    ReadAddress[0] = MemoryAddress;

    QuerySts = I2cSlv_QueryI2cData(ReadAddress, 1, ReadBuffer, DataLength, SlaveAddress);
    
    if (QuerySts == OP_COMPLETE)
    {
        ReadSts = OP_SUCCESS;
    }
    else if (QuerySts == OP_TIMEOUT)
    {
        ReadSts = OP_FAILED;
    }
    return ReadSts;
}

/************************************************************************
* Function:     Eeprom_Reset
* Output:       UINT8 - Address of the cleared memory area.
* Author:       A. Misuraca
* Description:  API used to reset the whole memory.
* Date:         27/03/22
************************************************************************/
UINT8 Eeprom_Reset (void)
{
    const UINT8 SlaveAddress = 0x50;
    static UINT8 memoryAddress = 0;

    if (memoryAddress == 0)
    {
        ClearBuffer(EepromBuffer, MAX_EEPROM_BUFFER);
    }

    EepromBuffer[0] = memoryAddress;
    I2cSlv_SendI2cMsg(EepromBuffer, SlaveAddress, MAX_EEPROM_BUFFER);

    memoryAddress += 16;
    if (memoryAddress >= 224)
    {
        EepromBuffer[0] = 0;
        memoryAddress = 0;
    }
    return memoryAddress;
}
