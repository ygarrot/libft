section .text
	global ft_strlento
	extern ft_strlen

ft_strlento:
	enter 16, 0

init:
	mov al, sil	; al = 0
	push rdi
	call ft_strlen
	mov rcx, rax	;rcx = value max
	pop rsi
	mov rdi, rsi

len:
	cld
	repne scasb		;tant que [rdi] != al rdi++; rcx--
	sub rdi, rsi	;rdi = rdi - rsi
	dec rdi			;rdi len -1
	mov rax, rdi	;rax = rdi

ret:
	leave
	ret
