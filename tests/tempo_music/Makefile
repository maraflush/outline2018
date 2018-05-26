NAME = tempo_music
CFLAGS=-Oi --add-source
LDFLAGS=-C nes.cfg

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
	rm -f common.s
	rm -f $(NAME).s

mrproper:	clean
	rm -f $(NAME).nes
fceux:
	$(shell which fceux) $(NAME).nes

mesen: $(NAME).nes
	Mesen $(NAME).nes

docs:
	make -C docs/

.PHONY: all clean mrproper $(NAME).nes fceux mesen docs
