all:
	cd build && make && mv tic-tac-toe ..
start:
	cd build && make && mv tic-tac-toe .. && cd .. && ./tic-tac-toe
clean:
	cd build && make c
