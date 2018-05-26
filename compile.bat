@ECHO OFF

SET NAME=flush

SET CFLAGS=-Oi --add-source
SET LDFLAGS=-C nes.cfg
REM to remove the music, just
REM remove the -D enable_music only
SET AFLAGS=-D enable_music
 
call mrproper.bat

cc65 -Oi %NAME%.c --add-source
ca65 -o %NAME%.o %AFLAGS% %NAME%.s
ca65 %AFLAGS% neslib.s
ca65 %AFLAGS% crt0.s
ld65 -C nes.cfg -o %NAME%.nes %NAME%.o neslib.o crt0.o nes.lib

call clean.bat >NUL

ECHO "compile terminated succesfully"
PAUSE
