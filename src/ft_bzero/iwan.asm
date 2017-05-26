section .text
	global _ft_bzero

_ft_bzero:

.partd:
	cmp rsi, 8
	jl _ft_bzero.partb
	mov qword[rdi], 0
	sub rsi, 8
	add rdi, 8
	jmp _ft_bzero.partd

.partb:
	cmp rsi, 0
	jle _ft_bzero.end
	mov byte[rdi], 0
	dec rsi,
	inc rdi
	jmp _ft_bzero.partb

.end:
	ret
