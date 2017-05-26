section .text
        global ft_bzero

ft_bzero:

.part64:
        cmp     rsi, 64
        jl      ft_bzero.part8
        mov     qword[rdi], 0
        mov     qword[rdi + 8], 0
        mov     qword[rdi + 16], 0
        mov     qword[rdi + 24], 0
        mov     qword[rdi + 32], 0
        mov     qword[rdi + 40], 0
        mov     qword[rdi + 48], 0
        mov     qword[rdi + 56], 0
        sub     rsi, 64
        add     rdi, 64
        jmp     ft_bzero.part64

.part8:
        cmp     rsi, 8
        jl      ft_bzero.part1
        mov     qword[rdi], 0
        sub     rsi, 8
        add     rdi, 8
        jmp     ft_bzero.part8

.part1:
        cmp     rsi, 0
        jle     ft_bzero.end
        mov     byte[rdi], 0
        dec     rsi
        inc     rdi
        jmp     ft_bzero.part1

.end:
        ret