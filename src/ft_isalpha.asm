section .text
        global _ft_isalpha

_ft_isalpha:
        cmp             rdi, 0x41
        jl              _ft_isalpha.false
        cmp             rdi, 0x7a
        jg              _ft_isalpha.false
        cmp             rdi, 0x61
        jge             _ft_isalpha.true
        cmp             rdi, 0x5A
        jg              _ft_isalpha.false

.true
        mov             eax, 1
        ret

.false:
        mov             eax, 0
        ret
