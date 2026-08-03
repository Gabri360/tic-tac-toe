# Tic-tac-toe
## Contents
- [Introduction](#introduction)
- [Project Composition](#project-composition)
- [Project Use](#project-use)
- [Game](#game)
- [Command](#command)
# Introduction
This is a project where I tried to program the game Tic-Tac-Toe using the C language.
For now, the game is in Italian, infact in the title display the name is *TRIS* (tic-tac-toe in italian).
## Project Composition
The project is divided into the following folders:
- `prg/` -----| The main program is located here: ---`tris.c`
- `lib/` -----| The libraries are located here: --------`tris_lib.c`
- `head/` ----| The header file is located here: -------`tris_lib.h`
- `build/` ---| The Makefile is located here, and the compilation results will end up here.
- `vendor/ncurses`---| The only external library used is present here.
- `doc/` -----| Here are the files useful for the README.md.
## Project Use
To use this program is required the library `ncurses.h`, which is present in `vendor/`, also `make` and the compiler `gcc` are required. For *Windows*, I've already placed the compiled binary in the `vendor/` folder. I recommend using the [MSYS2](https://www.msys2.org/) software for the terminal (UCRT64), and downloading `gcc` and `make` within it.

Once the files are been downloaded, either via the browser or by using the command:

```bash
git clone https://github.com/Gabri360/tic-tac-toe.git
```


You need to enter the folder `Tic-tac-toe/` and start the compilation with the command:

```bash
make
```

This will create a `tic-tac-toe` executable file (as well as object files in the `build/` folder) or `tic-tac-toe.exe` if on *Windows*. Then you have to run it from terminal with the command (on linux):
```bash
./tic-tac-toe
```
The game will appear directly on the terminal.

---
Another available commands are:
```bash
make clean
```
which deletes all object files from `build/`
```bash
make start
```
Which compiles and executes the program

## Game
The game offers two modes:
- `Play against CPU` : which means that the opponent's moves are made by an **algorithm**.
- `Play against USER` : which means that the opponent's moves are made by another **person**.

![Descrizione](doc/tris_1.jpeg)
---
If you select CPU mode, you can choose from three different, increasingly difficult levels.

- `EASY`
- `MEDUIM`
- `HARD`

![Descrizione](doc/tris_2.jpeg)
---
When someone wins, the game-over screen will be displayed, featuring a table that tracks previous wins.

![Descrizione](doc/tris_3.jpeg)

## Command
To interact with the game, you can use the following keyboard commands:
- `wasd` or `dir_arrow`: to move the cursor
- `e` or `ENTER` or `SPACE` : to insert the symbol (*X* or *O*)

When the game is ended you ca use:

- `ENTER` : to start another game

You can use the following keyboard commands at any point during the game:
- `q` : to quit
- `r` : to reset the match
