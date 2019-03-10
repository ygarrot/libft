section .text
	global ft_abs

ft_abs:
	enter 0, 0
	mov rax, rdi
	cdq
	xor eax, edx
	sub eax, edx
	leave
	ret
