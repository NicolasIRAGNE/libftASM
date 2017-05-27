section .text:
		global _ft_isascii

_ft_isascii:
		cmp 	rdi, 0x0
		jl  	_ft_isascii.false
		cmp 	rdi, 0x7f
		jg  	_ft_isascii.false
		mov 	rax, 1
		ret

.false:
		mov 	rax, 0
		ret
