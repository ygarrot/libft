section .text
	global ft_toupper
	extern ft_islower

ft_toupper:
	enter 0, 0
	call ft_islower
	cmp rax, 0
	mov rax, rdi
	jz ret

to_upper:
	sub rax, 32

ret:
	leave
	ret
