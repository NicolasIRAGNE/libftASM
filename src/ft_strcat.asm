section .text
        global _ft_strcat
        extern _strlen

_ft_strcat:
        call    _strlen
        mov             r8, rdi
        add             r8, rax

.str:
        cmp             byte[rsi], 0
        je              _ft_strcat.end
        mov             cl, byte[rsi]
        mov             byte[r8], cl
        inc             rsi
        inc             r8
        jmp             _ft_strcat.str

.end:
        mov             byte[r8], 0
        mov             rax, rdi
        ret