section .text:
		global _ft_islower

_ft_islower:
		cmp 	rdi, 0x61
		jl  	_ft_islower.false
		cmp 	rdi, 0x7a
		jg  	_ft_islower.false
		mov 	rax, 1
		ret

.false:
		mov 	rax, 0
		ret
