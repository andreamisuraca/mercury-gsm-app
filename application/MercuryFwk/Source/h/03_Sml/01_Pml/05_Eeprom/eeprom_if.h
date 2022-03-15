/************************************************************************
*                          EEPROM Interface                             *
*************************************************************************
* FileName:         eeprom_if.h                                         *
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
* A.Misuraca   15/03/21    1.0          First release                   *
************************************************************************/

#ifndef EEPROM_IF_H
#define	EEPROM_IF_H

/************************************************************************
* Includes
************************************************************************/
#include "i2c_slv.h"

/************************************************************************
* EXPORTED Defines
************************************************************************/

/************************************************************************
* EXPORTED Typedef
************************************************************************/
typedef enum _EepromSts
{
    OP_SUCCESS = 0,
    OP_FAILED,
    OP_PENDING
} EepromStsType;

/************************************************************************
* EXPORTED Variables
************************************************************************/

/************************************************************************
* EXPORTED Functions
************************************************************************/

/* API used to write data in NvM given a specific address. */
UINT8 Eeprom_Write (UINT8 MemoryAddress, UINT8* WriteBuffer, UINT8 DataLength);

/* API used to read data from NvM given a specific address. */
EepromStsType Eeprom_Read (UINT8 MemoryAddress, UINT8* ReadBuffer, UINT8 DataLength);

#endif    /* EEPROM_IF_H */
