section .text
	global ft_tolower
	extern ft_isupper

ft_tolower:
	enter 0, 0
	call ft_isupper
	cmp rax, 0 
	mov rax, rdi
	jz ret

to_lower:
	add rax, 32

ret:
	leave
	ret
