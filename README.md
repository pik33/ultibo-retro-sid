This is .sid and .wav player for Ultibo/RPi3 v. 0.21 alpha

Its main discussion topic is here: https://ultibo.org/forum/viewtopic.php?f=9&t=304

If you want to test this, unpack sidplay.zip file to FAT32 formatted SD, then put the SD into your Raspberry Pi 3 and switch it on.
Place some .sid and .wav on the card to play
At this moment the program can play 44100/16bit stereo and 96000/32bit float stereo wav.
The high quality sound is outputted via analog output. No other sound devices can be used.
When playing .wav you can interact with sprites using the mouse :) 

This version of the program will try to detect the mouse report format and auto-adjust for detected mouse type
This is not finished yet, so key M toggles the mouse debug informations.

The mouse cannot be connected to the same hub with the keyboard (known Ultibo bug)

Use 60 Hz graphics mode 

Key B saves the screen to .bmp file.
The rest of active keyboard functions are displayed in the scroll text.
