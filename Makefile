NAME = flush
CFLAGS=-Oi --add-source
LDFLAGS=-C nes.cfg
AFLAGS=-D enable_music
# cf => http://www.oreilly.com/openbook/make3/book/ch07.pdf

all: $(NAME).nes

$(NAME).nes:	$(NAME).o neslib.o crt0.o
	ld65 $(LDFLAGS) -o $@ $^ nes.lib
	@echo $(NAME).nes created

%.o:	%.c
	cc65 $(CFLAGS) $<
	ca65 -o $@ $(AFLAGS) $(*).s

%.o:	%.s
	ca65 $(AFLAGS) $<

clean:
	rm -f *.o
	rm -f $(NAME).s

mrproper:	clean
	rm -f $(NAME).nes

fceux:
	$(shell which fceux) $(NAME).nes

mesen: $(NAME).nes
	Mesen $(NAME).nes


.PHONY: all clean mrproper $(NAME).nes fceux mesen
