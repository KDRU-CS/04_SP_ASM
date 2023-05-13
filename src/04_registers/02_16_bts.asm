section .bss                                ; block starting symbol

section .data
    salaam: db "Assalamu Alaikum!", 10      ; string to print
    salaamLen: equ $-salaam                 ; length of string

section .text
    global _start

    _start:
        mov     ax,1                    ; sys_write 
        mov     di,1                   ; stdout
        mov     si,salaam              ; message to write
        mov     dx,salaamLen            ; message length
        syscall                         ; call kernel 

        ; end program
        ; if you don't end program, it will show segmenttaion fault
        
        mov     ax,60                   ; sys_exist
        mov     di,0                   ; error code 0 (success)
        syscall                         ; call kernel           