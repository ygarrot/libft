section .text
	global ft_strcat
	extern ft_strlen

ft_strcat:
	enter 0, 0
	mov rax, rdi 

strlen:
	cmp byte[rdi], 0
	je copy
	inc rdi
	jmp strlen

copy:
	cmp byte[rsi], 0
	je exit
	mov cl, [rsi]
	mov [rdi], cl 
	inc rdi
	inc rsi
	jmp copy

exit:
	mov byte[rdi], 0
	leave
	ret

