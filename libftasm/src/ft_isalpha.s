%define TRUE 1
%define FALSE 0

section .text
	global ft_isalpha
	extern ft_islower
	extern ft_isupper

ft_isalpha:
	enter 0, 0
	call ft_islower
	cmp rax, TRUE 
	je pass
	call ft_isupper
	cmp rax, FALSE 
	jz ret

pass:
	mov rax, TRUE

ret:
	leave
	ret
