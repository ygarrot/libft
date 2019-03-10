section .text
	global ft_max

ft_max:
	enter 0, 0
	cmp rdi, rsi
	jl b 

a:
	mov rax, rdi
	jmp exit

b:
	mov rax, rsi

exit:
	leave
	ret
