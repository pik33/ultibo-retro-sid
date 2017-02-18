This is the player for Ultibo/RPi3 v. 0.22 alpha

It plays .sid, .dmp, .wav, .mp3, .mp2 ans .s48 files.

The wav can be 44100/16bit or 96000/32bit float; also wav wrapped mp3 streams (subformat 85) are played

Its main discussion topic is here: https://ultibo.org/forum/viewtopic.php?f=9&t=304

If you want to test this, unpack sidplay.zip file to FAT32 formatted SD, then put the SD into your Raspberry Pi 3 and switch it on.
Place some files on the SD card to play. You can also attach external HD or pendrive,

The high quality sound is outputted via analog output. No other sound devices can be used.
When playing .wav or .mp3 you can interact with sprites using the mouse :) 

This version of the program will try to detect the mouse report format and auto-adjust for detected mouse type

The mouse cannot be connected to the same hub with the keyboard (known Ultibo bug)

Use 60 Hz graphics mode 

Key B now tests the box function :) 
The rest of active keyboard functions are displayed in the scroll text.
