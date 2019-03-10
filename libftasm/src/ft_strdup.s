section .text
global ft_strdup
extern ft_strlen
extern ft_memcpy
extern malloc

ft_strdup:
	enter 16, 0 ;alignement de la stack
	push rdi ; save argv[1] sur la stack

.strlen:
	call ft_strlen
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

.ret:
	leave ; clean stack
	ret
