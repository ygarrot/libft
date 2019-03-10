section .text
	global ft_memalloc
	extern malloc
	extern ft_bzero

ft_memalloc:
	enter 8, 0
	push rdi
	call malloc
	cmp rax, 0
	jz ret
	pop rsi
	mov rdi, rax
	call ft_bzero

ret:
	leave
	ret
