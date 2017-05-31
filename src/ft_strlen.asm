section .text
	global _ft_strlen

_ft_strlen:
	mov rax, rdi
.start:
	cmp byte[rax], 0
	je _ft_strlen.end
	inc rax
	jmp _ft_strlen.start

.end:
	sub rax, rdi
	ret
