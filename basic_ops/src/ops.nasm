        global      add
        global      div
        global      mul
        global      sub

        section     .text

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
