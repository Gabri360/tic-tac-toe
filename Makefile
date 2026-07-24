

all:
	cd build && make && mv tris ..
start:
	cd build && make && mv tris .. && cd .. && ./tris
clean:
	cd build && make c