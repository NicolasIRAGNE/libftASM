section .text:
	global _ft_isalnum
	extern _ft_isalpha
	extern _ft_isdigit

_ft_isalnum:
	call _ft_isalpha
	cmp rax, 1
	je _ft_isalnum.true
	call _ft_isdigit

.true:
	ret
