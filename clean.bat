@ECHO OFF

SET NAME=flush

DEL /F /Q *.o 2>NUL
DEL /F /Q %NAME%.s 2>NUL

ECHO "clean terminated succesfully"

