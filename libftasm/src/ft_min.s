section .text
	global ft_min

ft_min:
	enter 0, 0
	cmp rdi, rsi
	jg b 

a:
	mov rax, rdi
	jmp exit

b:
	mov rax, rsi

exit:
	leave
	ret
