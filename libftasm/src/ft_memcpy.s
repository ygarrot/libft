section .text
	global ft_memcpy

ft_memcpy:
	enter 16, 0
	cmp rdi, 0
	je ret
	cmp rsi, 0
	je ret
	push rdi
	mov rcx, rdx
	cld
	rep movsb
	pop rax

ret:
	leave
	ret
