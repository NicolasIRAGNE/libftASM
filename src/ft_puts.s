section .text
	global _ft_puts
	extern _ft_strlen

_ft_puts:
	call _ft_strlen
	mov rsi, rdi
	mov rdi, 1
	mov rdx, rax
	mov rax, 0x2000004
	syscall
	cmp rax, 0
	jl _ft_puts.error
	mov r8, rax
	lea rsi, [rel lebackslashn]
	mov rdi, 1
	mov rdx, 1
	mov rax, 0x2000004
	syscall
	cmp rax, 0
	jl _ft_puts.error
	add rax, r8
	ret

.error:
	mov rax, -1
	ret

section .data
lebackslashn: db 10