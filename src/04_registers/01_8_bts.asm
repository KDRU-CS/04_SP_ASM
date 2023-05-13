section .bss                                ; block starting symbol

section .data
    salaam: db "Assalamu Alaikum!", 10      ; string to print
    salaamLen: equ $-salaam                 ; length of string

section .text
    global _start

    _start:
        mov     al,1                    ; sys_write 
        mov     dil,1                   ; stdout
        mov     sil,salaam              ; message to write
        mov     dl,salaamLen            ; message length
        syscall                         ; call kernel 

        ; end program
        ; if you don't end program, it will show segmenttaion fault
        
        mov     al,60                   ; sys_exist
        mov     dil,0                   ; error code 0 (success)
        syscall                         ; call kernel           