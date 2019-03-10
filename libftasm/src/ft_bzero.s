section .text
	global ft_bzero

ft_bzero:
	enter 16, 0

loop:
	cmp rsi, 0
	je ret
	dec rsi
	mov byte [rdi + rsi], 0
	jmp loop

ret:
	leave
	ret
