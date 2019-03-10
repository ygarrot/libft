section .text
global ft_strndup
extern ft_strnlen
extern ft_memcpy
extern malloc

ft_strndup:
	enter 16, 0 ;alignement de la stack
	push rdi ; save argv[1] sur la stack
	;push rsi

.strlen:
	call ft_strnlen
	;move return value into malloc argument
	mov rdi, rax
	inc rdi ;string length + '\0'
	push rdi ; save on the stack

.malloc:
	call malloc
	cmp rax, 0 ;if(rax == NULL)
	jz .ret    ;return

	pop rdx    ;rdx = rdi(saved on the stack)
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
