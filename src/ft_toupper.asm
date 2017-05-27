section .text:
	global _ft_toupper
	extern _ft_islower

_ft_toupper:
	call _ft_islower
	cmp rax, 1
	je _ft_toupper.swap
	mov rax, rdi
	ret

.swap:
	sub rdi, 32
	mov rax, rdi
	ret
