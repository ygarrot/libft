section .text
	global ft_isalnum
	extern ft_isalpha
	extern ft_isdigit

ft_isalnum:
	enter 0, 0
	call ft_isdigit
	cmp rax, 1
	je ret
	call ft_isalpha

ret:
	leave
	ret
