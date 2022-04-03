<div id="top"></div>

# Mercury GSM App
The application allows to trigger a relay with a phone call. A master phone number can grant and revoke permissions to allow other users (phone numbers) to trigger the relay.

## Table of Contents
* [General Info](#general-information)
* [Technologies Used](#technologies-used)
* [Features](#features)
* [Setup](#setup)
    * [First Startup](#first-startup)
    * [Add a phone number](#add-a-phone-number)
    * [Delete a phone number](#delete-a-phone-number)
    * [Reset](#reset)
    * [Relay Trigger](#relay-trigger)
* [Usage](#usage)
* [Room for Improvement](#room-for-improvement)
* [Software Credits](#software-credits)
* [License](#license)
* [Contact](#contact)

## General Information
- The project is a firmware ready to be flashed on the Mercury System.
- For low level drivers an adapted [Mercury Framework](https://github.com/ffich/MercurySystem) is used.
- A typical use case consists of a GSM Gate Opener: you can open your gate with a phone call instead of using the remote.
<p align="right">(<a href="#top">back to top</a>)</p>

## Technologies Used
- Base Board per Sistema Mercury
- Big Relay board per sistema Mercury
- Expansion Dual per Sistema Mercury
- Modem Board GSM per Sistema Mercury
- External Antenna MMCX/M
- Microchip PICKIT™ 3 IN-CIRCUIT DEBUGGER
- Microchip MPLAB® X IDE
<p align="right">(<a href="#top">back to top</a>)</p>

## Features
List the ready features here:
- Set master phone number with phone call or via USB.
- Replace master's phone number via USB.
- Master phone number can add user's phone number in memory.
- Master phone number can delete user's phone number from memory.
- Master phone number can reset the memory and bring the board into its initial state.
- All numbers in memory can trigger the relay.
<p align="right">(<a href="#top">back to top</a>)</p>

## Setup
The project can be open with Microchip's [MPLAB® X IDE](https://www.microchip.com/en-us/tools-resources/develop/mplab-x-ide) that is free to download and multiplatform. At the first start the IDE will detect the compiler version used in the project and will ask the user to download it. The project can then be built and flashed.
<p align="right">(<a href="#top">back to top</a>)</p>

## Usage
### First Startup
When we plugged into an USB port a red and a green LED will turn on. An LED on the modem board will start flashing: it means your SIM card is working.<br>
The very first startup the board memory is empty. A yellow LED will flash for 3 minutes. In this three minutes you can call your SIM card number, and the caller number will be saved as master phone number. When the master phone number is saved, or the 3 minutes elapsed, the LED will not blink anymore.<br>
At any time the master phone number can be changed via USB with a dedicated software.
### Add a phone number
The master phone number can allow other users to trigger the relay. To add a user into the board memory the following command needs to be send via SMS to your SIM card number:
`ADD;<phone_number>`
Replace `<phone_number>` with the number you want to add. The phone number should start with a '+' symbol, e.g.: `ADD;+390123456789`.<br>
The commands need to be written in capital letters and with no spaces. Remember that only the master phone number can add other users.<br>
If the command was successfully performed a yellow LED will blink for 3 seconds, otherwise it will blink for 7 seconds (e.g.: The number was already in memory).
### Delete a phone number
The master phone number can revoke other users permission to trigger the relay. To remove a user from the board memory the following command needs to be send via SMS to your SIM card number:
`DEL;<phone_number>`
Replace `<phone_number>` with the number you want to add. The phone number should start with a '+' symbol, e.g.: `DEL;+390123456789`.<br>
The commands need to be written in capital letters and with no spaces. Remember that only the master phone number can remove other users.<br>
If the command was successfully performed a yellow LED will blink for 3 seconds, otherwise it will blink for 7 seconds (e.g.: The number was not in memory).
### Reset
The master phone number can perform a reset of the board. This will delete all the numbers saved in memory, even the master phone number itself. To remove a user from the board memory the following command needs to be send via SMS to your SIM card number:
`RES;`
The commands need to be written in capital letters and with no spaces. Remember that only the master phone number can perform a reset.<br>
If the command was successfully performed a yellow LED will blink for 3 seconds, otherwise it will blink for 7 seconds. The board will then restart and the yellow LED will blink for 3 minutes so the user can set again the master phone number.
### Relay Trigger
All the numbers saved in memory (not just the master) can trigger the relay. To do that simply call yous SIM card number.<br>
If the command was successfully performed the relay will be triggered for 1 second. A red LED placed on the relay board will be turned for as long as the relay is triggered.
<p align="right">(<a href="#top">back to top</a>)</p>

## Room for Improvement
Room for improvement:
- Add command to set the relay activation time (currently 1 second).
- Support internal phone numbers up to 15 digits.

TODOs:
- Add Unit Tests.
<p align="right">(<a href="#top">back to top</a>)</p>

## Software Credits
The development of this software was made possible using the following components:
- [MercurySystem](https://github.com/ffich/MercurySystem) by Francesco Ficili.
<p align="right">(<a href="#top">back to top</a>)</p>

<!--
## Acknowledgements
Give credit here.
- This project was inspired by...
- This project was based on [this tutorial](https://www.example.com).
- Many thanks to...
-->
## License
Distributed under the GNU General Public License v3.0 License. See `LICENSE` file for more information.
<p align="right">(<a href="#top">back to top</a>)</p>

## Contact
Created by [Andrea Misuraca](mailto:misuracandrea@gmail.com) - feel free to contact me!
<p align="right">(<a href="#top">back to top</a>)</p>
