segment .bss                                ; block starting symbol

segment .data
    salaam: db "Assalamu Alaikum!", 10      ; string to print
    salaamLen: equ $-salaam                 ; length of string

segment .text
    global _start

    _start:
        mov     rax,1                   ; sys_write 
        mov     rdi,1                   ; stdout
        mov     rsi,salaam              ; message to write
        mov     rdx,salaamLen           ; message length
        syscall                         ; call kernel 

        ; end program
        ; if you don't end program, it will show segmenttaion fault
        
        mov     rax,60                  ; sys_exist
        mov     rdi,0                   ; error code 0 (success)
        syscall                         ; call kernel           