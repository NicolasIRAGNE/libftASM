section .text:
	global _ft_isdigit

_ft_isdigit:
	cmp rdi, 0x2F
	jle _ft_isdigit.false
	cmp rdi, 0x3A
	jge _ft_isdigit.false
	mov rax, 1
	ret

.false:
	mov rax, 0
	ret
