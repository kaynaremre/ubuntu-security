all: elf32

target: elf32
elf32: example1.c
	gcc -O0 -fno-builtin -fno-stack-protector -m32 -Wall -std=c11 -ggdb -z execstack -o example1.out example1.c

target: clean
clean: example1.out
	rm example1.out

