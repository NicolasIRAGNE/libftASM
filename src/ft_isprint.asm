section .text:
		global _ft_isdigit

_ft_isdigit:
		cmp 	rdi, 0x20
		jle 	_ft_isdigit.false
		cmp 	rdi, 0x7E
		jge 	_ft_isdigit.false
		mov 	rax, 1
		ret

.false:
		mov 	rax, 0
		ret
