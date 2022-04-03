/************************************************************************
*                           COMMAND DELETE                              *
*************************************************************************
* FileName:         cmd_del.h                                           *
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
* A.Misuraca   20/03/21    1.0          First release                   *
************************************************************************/

#ifndef CMD_DEL_H
#define	CMD_DEL_H

/************************************************************************
* Includes
************************************************************************/

/************************************************************************
* EXPORTED Defines
************************************************************************/

/************************************************************************
* EXPORTED Typedef
************************************************************************/

/************************************************************************
* EXPORTED Variables
************************************************************************/

/************************************************************************
* EXPORTED Functions
************************************************************************/
/**
 * @brief Main state machine triggered when a DEL command is received.
 * 
 * @param receivedNumber Who send the SMS text.
 * @param smsText Content of the SMS text.
 * @param isCmdSuccessfull If the command was complete w/ or w/o errors.
 * @return true If there is no operation in progress.
 * @return false If the operation is still in progress.
 */
bool delCmdFsm(uint8_t* receivedNumber, uint8_t* smsText, bool* isCmdSuccessfull);

#endif    /* CMD_DEL_H */
