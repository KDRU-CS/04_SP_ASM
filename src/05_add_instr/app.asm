section .bss
   num1 resb 1
   num2 resb 1
   sum resb 1

section .data
   welcome: db "Welcome to simple calculator!", 10       ; string to print
   welcomeLen: equ $ - welcome                           ; length of string

   input1Msg: db "Enter first number: "                  ; string to print
   input1MsgLen: equ $ - input1Msg                       ; length of string

   input2Msg: db "Enter second number: ",                ; string to print
   input2MsgLen: equ $ - input2Msg                       ; length of string

   outputMsg: db "Addition result is: ",                 ; string to print
   outputMsgLen: equ $ - outputMsg                       ; length of string


section .text

   global _start

   _start:
      mov     rax, 1                   ; sys_write 
      mov     rdi, 1                   ; stdout
      mov     rsi, welcome             ; message to write
      mov     rdx, welcomeLen          ; message length
      syscall                          ; call kernel

      mov     rax, 1                   ; sys_write 
      mov     rdi, 1                   ; stdout
      mov     rsi, input1Msg           ; message to write
      mov     rdx, input1MsgLen        ; message length
      syscall                          ; call kernel

      mov     rax, 3
      mov     rbx, 2                   ; stdin
      mov     rcx, num1
      mov     rdx, 5            
      int 80h

      mov     rax, 1                   ; sys_write 
      mov     rdi, 1                   ; stdout
      mov     rsi, input2Msg           ; message to write
      mov     rdx, input2MsgLen        ; message length
      syscall                          ; call kernel

      mov     rax, 3
      mov     rbx, 2                   ; stdin
      mov     rcx, num2
      mov     rdx, 5            
      int 80h

      mov     rax, [num1]
      sub     rax, '0'
      mov     rbx, [num2]
      sub     rbx, '0'
      add     rax, rbx
      add     rax, '0'

      mov     [sum], rax
      
      mov     rax, 1                   ; sys_write 
      mov     rdi, 1                   ; stdout
      mov     rsi, outputMsg           ; message to write
      mov     rdx, outputMsgLen        ; message length
      syscall                          ; call kernel

      mov     rax, 1                   ; sys_write 
      mov     rdi, 1                   ; stdout
      mov     rsi, sum                 ; message to write
      mov     rdx, 1                   ; message length
      syscall                          ; call kernel

      mov     rax, 60                  ; sys_exist
      mov     rdi, 0                   ; error code 0 (success)
      syscall                          ; call kernel           

