
CFLAGS=-g -Wall
CC=gcc

main: libfuncs.a 
	$(CC) main.c -L. -lfuncs -o main

libfuncs.a: func1.o func2.o
	ar rv libfuncs.a func1.o func2.o

func1.o: func1.c func1.h
	$(CC) -o func1.o func1.c

func2.o: func2.c func2.h
	$(CC) -o func2.o func2.c


clean:
	rm -f main.o func1.o func2.o main
