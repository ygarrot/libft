section .text
	global ft_strlen

ft_strlen:
	enter 16, 0

init:
	mov rcx, -1	;rcx = value max
	mov rsi, rdi; rsi =rdi
	xor al, al	; al = 0

len:
	cld
	repne scasb		;tant que [rdi] != al rdi++; rcx--
	sub rdi, rsi	;rdi = rdi - rsi
	dec rdi			;rdi len -1
	mov rax, rdi	;rax = rdi

ret:
	leave
	ret
