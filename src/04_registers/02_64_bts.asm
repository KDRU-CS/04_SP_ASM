section .bss                                ; block starting symbol

section .data
    salaam: db "Assalamu Alaikum!", 10      ; string to print
    salaamLen: equ $-salaam                 ; length of string

section .text
    global _start

    _start:
        mov     eax,1                    ; sys_write 
        mov     edi,1                   ; stdout
        mov     esi,salaam              ; message to write
        mov     edx,salaamLen            ; message length
        syscall                         ; call kernel 

        ; end program
        ; if you don't end program, it will show segmenttaion fault
        
        mov     eax,60                   ; sys_exist
        mov     edi,0                   ; error code 0 (success)
        syscall                         ; call kernel           