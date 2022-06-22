.POSIX:
.SUFFIXES:

all:
	gcc -shared -o libhello.so src/hello.c
	gcc -shared -o libsum.so src/sum.c
	#
	gcc -c -o hello.o src/hello.c
	gcc -c -o sum.o src/sum.c
	ar rcs libcgo.a *.o
	go build -o cgo main.go
#a:
#	gcc -shared -o libhello.so src/hello.c
#	gcc -shared -o libsum.so src/sum.c
#	ar rcs libcgo.a *.o
#	go build -o cgo main.go
#so:
#	gcc -shared -o libhello.so src/hello.c
#	gcc -shared -o libsum.so src/sum.c
#	go build -o cgo main.go
clean:
	go clean -cache
	rm -rf *.a *.o  *.so *.out cgo
