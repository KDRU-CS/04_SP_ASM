# Run and Compile NASM code
## execute the program with NASM

> nasm -felf64 app.asm

## link the program

> ld app.o -o app

## run the program

> ./app

# Convert C code to NASM

## C program
> Write a c program in a file with extension .c

## Compile C to machine code
> gcc -fno-asynchronous-unwind-tables -s -c -o app.o app.c

## Disassemble the object file to assembly
> objconv -fnasm app.o