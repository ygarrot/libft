section .text
	global ft_strnlen

ft_strnlen:
	enter 16, 0

init:
	mov rcx, rsi	;rcx = value max
	inc rcx
	mov rsi, rdi; rsi =rdi
	xor al, al	; al = 0

len:
	cld
	repne scasb		;tant que [rdi] != al rdi++; rcx--
	sub rdi, rsi	;rdi = rdi - rsi
	dec rdi			;rdi len -1
	mov rax, rdi	;rax = rdi
	jmp ret

ret:
	leave
	ret
