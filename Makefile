#CROSS_COMPILE=  /opt/toolchains/arm-2009q3/bin/arm-none-linux-gnueabi-
CC=	$(CROSS_COMPILE)gcc
CFLAGS  = -g
RM      = rm -f


default: all

all: xmodem

xmodem: xmodem.c
	$(CC) $(CFLAGS)  -static -o xmodem xmodem.c
	
clean :
	$(RM) xmodem
