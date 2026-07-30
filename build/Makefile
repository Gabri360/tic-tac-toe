#CFLAGS=-O3 -pedantic -std=c99
CFLAGS=-g -O3 -Wall -Wextra -Werror -pedantic -Wconversion -std=c99
CFLAGS += -I../vendor/ncurses/include
LDFLAGS += \
    -L../vendor/ncurses/lib -Wl,-Bstatic -lncursesw -Wl,-Bdynamic -lm
all: tris

tris: tris.o tris_lib.o
	$(CC) $(CFLAGS) tris.o tris_lib.o -o $@ $(LDFLAGS)

tris.o: ../prg/tris.c 
	$(CC) $(CFLAGS) -c ../prg/tris.c

tris_lib.o: ../lib/tris_lib.c ../head/tris_lib.h
	$(CC) $(CFLAGS) -c ../lib/tris_lib.c

c:
	find . -type f ! -name "Makefile" -delete

