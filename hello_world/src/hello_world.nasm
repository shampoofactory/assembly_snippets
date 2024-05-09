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

add:    lea         rax, [rdi + rsi]
        ret

div:    mov         rax, rdi
        cqo
        idiv        rsi
        ret

mul:    mov         rax, rdi
        imul        rax, rsi
        ret

sub:    mov         rax, rdi
        sub         rax, rsi
        ret

        section .data

msg:    db          "Hello World!", 10
len:    equ         $ - msg
