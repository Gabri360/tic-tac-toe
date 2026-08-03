#CFLAGS=-O3 -pedantic -std=c99
CFLAGS=-g -O3 -Wall -Wextra -Werror -pedantic -Wconversion -std=c99


ifeq ($(OS),Windows_NT)
	TARGET = tic-tac-toe.exe
	CFLAGS += -DNCURSES_STATIC -I../vendor/ncurses-win/include
	LDFLAGS = -L../vendor/ncurses-win/lib
else
	TARGET = tic-tac-toe
	CFLAGS += -I../vendor/ncurses/include
	LDFLAGS = -L../vendor/ncurses/lib
endif

LDFLAGS += -Wl,-Bstatic -lncursesw -Wl,-Bdynamic -lm


CC = $(CROSS)gcc

all: $(TARGET)

$(TARGET): tris.o tris_lib.o
	$(CC) $(CFLAGS) tris.o tris_lib.o -o $@ $(LDFLAGS)

tris.o: ../prg/tris.c
	$(CC) $(CFLAGS) -c ../prg/tris.c

tris_lib.o: ../lib/tris_lib.c ../head/tris_lib.h
	$(CC) $(CFLAGS) -c ../lib/tris_lib.c

c:
	rm -f *.o $(TARGET)
