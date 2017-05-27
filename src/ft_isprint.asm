section .text:
		global _ft_isprint

_ft_isprint:
		cmp 	rdi, 0x20
		jl  	_ft_isprint.false
		cmp 	rdi, 0x7E
		jg  	_ft_isprint.false
		mov 	rax, 1
		ret

.false:
		mov 	rax, 0
		ret
