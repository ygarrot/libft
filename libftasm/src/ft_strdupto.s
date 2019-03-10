section .text
global ft_strdupto
extern ft_strlento
extern ft_memcpy
extern malloc

ft_strdupto:
	enter 16, 0 ;alignement de la stack
	push rdi ; save argv[1] sur la stack

.strlen:
	call ft_strlento
	;move return value into malloc argument
	mov rdi, rax
	inc rdi ;string length + '\0'
	push rdi ; save on the stack

.malloc:
	call malloc
	cmp rax, 0 ;if(rax == NULL)
	jz .ret    ;return

	pop rdx    ;rdx = rdi(saved the stack)
	mov rdi, rax ;memcpy arg1 = malloc(len)
	;memcpy arg2 = arg1(saved on stack)
	pop rsi
	call ft_memcpy
	cmp dx, 0 
	je .lower
	mov byte[rax+rdx-1], 0
	jmp .ret

.lower:
	mov byte[rax], 0

.ret:
	leave ; clean stack
	ret
