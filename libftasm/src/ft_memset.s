section .text
	global ft_memset

ft_memset:
	enter 0, 0
	push rdi
	mov al, sil
	mov rcx, rdx
	cld
	rep stosb
	pop rax

ret:
	leave
	ret
