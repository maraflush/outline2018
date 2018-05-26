@ECHO OFF

SET NAME=flush

CALL clean.bat
 
IF EXIST %NAME%.nes DEL /F /Q %NAME%.nes

ECHO "mrproper terminated succesfully"

