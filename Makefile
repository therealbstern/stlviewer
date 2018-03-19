LDFLAGS=-lm -lglut -lGL -O2
CFLAGS=-Werror -Wall -O2

.PHONY: all clean

all: stlviewer

stlviewer: trackball.o stl.o stl_viewer.o
	$(CC) $(LDFLAGS) -o $@ $^

clean:
	rm -f *.o stlviewer
