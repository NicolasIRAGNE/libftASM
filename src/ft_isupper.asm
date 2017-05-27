section .text:
		global _ft_isupper

_ft_isupper:
		cmp 	rdi, 0x41
		jl  	_ft_isupper.false
		cmp 	rdi, 0x5A
		jg  	_ft_isupper.false
		mov 	rax, 1
		ret

.false:
		mov 	rax, 0
		ret
