
libfuncs.a: func1.o func2.o
	ar rv libfuncs.a func1.o func2.o

func1.o: func1.c
	gcc -I../include func1.c -o func1.o -c -g

func2.o: func2.c
	gcc -I../include func2.c -o func2.o -c -g
clean:
	rm -f func1.o func2.o libfuncs.a
