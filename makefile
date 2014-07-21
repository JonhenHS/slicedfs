CC=gcc
LDLIBS=`pkg-config --libs fuse`
CFLAGS=-Wall `pkg-config --cflags fuse`

slicedfs: main.o
	$(CC) $(LDLIBS) bin/main.o -o bin/slicedfs

main.o: main.c
	$(CC) $(CFLAGS) -c main.c -o bin/main.o

clean:
	rm --force bin/slicedfs
	rm --force bin/*.o
	rm --force *~
