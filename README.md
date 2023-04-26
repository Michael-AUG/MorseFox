# MorseFox
Morse Fox

This shell script is designed to turn an amateur radio transceiver and a Raspberry Pi into a RF Fox Hunt 'Rabbit'/beacon.

To send the CW (using F2A), I use the morse application (https://gitlab.com/esr/morse-classic) to generate the Morse audio within the Terminal, and use xmlrpc control of Flrig to

a) set the rig mode to FM-D b) key the PTT c) cut the PTT d) return the rig mode to FM

For this to work, you must have Flrig running, and take note of the server port in the Config menu.

An advantage to using this method is that the program will work with any rig, assuming it is connected to Flrig.

In the file fox.sh, be sure to change the port number (set as 54321) to whatever number is in the Config menu. Alternatively change the port number to 54321!

The script is designed to send a text file, which I have just named 'fox'. Before using the script you will need to change the 'fox' file to your callsign etc. Here you can also dictate how long the CQ FOX call is, etc. This file needs to be stored in the same folder as the fox.sh script. Run the file ($ sh fox.sh) choose the overall wordspeed you wish to send at, the rig power (in the UK this is limited to 25w on 2m), and the number of times you want the 'Rabbit' to call CQ.

Note the programme is designed to send 13wpm characters, but these are slowed down using the Farnsworth method to whatever speed you choose at the prompt. If you choose more than 13wpm, you override the Farnsworth setting and it will send at your chosen speed.

If the filename you choose does not exist, the script will return an error. Otherwise the radio should change to FM-D, key up, send the Morse, key down and return to FM.

If you find the power control command is failing, be sure to un-check the 'Pwr' button in the Flrig GUI.

If you've got any questions or queries, please contact me. I am not the writer of the 'morse' software so please direct any 'morse' related queries directly to the team there. This script is a real bodge or fudge, and I don't claim to be overly good at coding. However, if it helps you, please let me know!

73 and happy Morsing!

Michael Topple GM5AUG email: gm5aug@topple.scot
