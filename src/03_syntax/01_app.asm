; there are three blocks
; .bss (block starting symbl) ---> all variables are declared on this section
; .data ---> all constants are declared on this section.
; .text ---> code is on this section

section .bss                                ; block starting symbol

section .data
    salaam: db "Assalamu Alaikum!", 10      ; string to print
    salaamLen: equ $-salaam                 ; length of string

section .text
    global _start

    _start:
        ; there are four parts
        ; [label]   mnemonic   [operands]   [;comment]
        mov     rax,1                   ; sys_write 
        mov     rdi,1                   ; stdout
        mov     rsi,salaam              ; message to write
        mov     rdx,salaamLen           ; message length
        syscall                         ; call kernel         