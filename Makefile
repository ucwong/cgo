.POSIX:
.SUFFIXES:

all:
	gcc -c -o hello.o src/hello.c
	gcc -c -o sum.o src/sum.c
	ar rcs libcgo.a *.o
	go build -o cgo main.go
clean:
	rm -rf *.a *.o 
