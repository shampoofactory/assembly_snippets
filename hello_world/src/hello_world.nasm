        default     rel

        global      _start

        section     .text

_start: mov         rax, 1
        mov         rdi, 1
        lea         rsi, [msg]
        mov         rdx, len
        syscall
        mov         rax, 60
        xor         rdi, rdi
        syscall

        section .data

msg:    db          "Hello World!", 10
len:    equ         $ - msg
