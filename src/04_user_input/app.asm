section .bss
    userName: resb 1

section .data

    message: db "Write your name: ", 0      ; string to print
    messageLen: equ $ - message             ; length of string

    salaam: db "Assalamu Alaikum! ", 0      ; string to print
    salaamLen: equ $ - salaam              ; length of string

section .text
    global _start

    _start:

        ; write message
        mov     rax, 1                   ; sys_write 
        mov     rdi, 1                   ; stdout
        mov     rsi, message             ; message to write
        mov     rdx, messageLen          ; message length
        syscall                          ; call kernel

        ; get user name
        mov     rax, 3
        mov     rbx, 2                   ; stdin
        mov     rcx, userName
        mov     rdx, 5            
        int 80h

        ; write salaam
        mov     rax, 1                   ; sys_write 
        mov     rdi, 1                   ; stdout
        mov     rsi, salaam              ; message to write
        mov     rdx, salaamLen           ; message length
        syscall                          ; call kernel

        ; write user input
        mov     rax, 1                   ; sys_write 
        mov     rdi, 1                   ; stdout
        mov     rsi, userName            ; message to write
        mov     rdx, 5                   ; message length
        syscall                          ; call kernel

        ; end program
        ; if you don't end program, it will show segmenttaion fault
        mov     rax, 60                  ; sys_exist
        mov     rdi, 0                   ; error code 0 (success)
        syscall                          ; call kernel           