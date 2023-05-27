if [ -f $1 ]; then
    rm $1
fi

if [ -f $1.o ]; then
    rm $1.o
fi

nasm -f elf64 $1.asm
ld $1.o -o $1

./$1

if [ -f $1 ]; then
    rm $1
fi

if [ -f $1.o ]; then
    rm $1.o
fi