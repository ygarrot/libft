%define TRUE 1
%define FALSE 0

%define MIN_UP_ALPHA 'A' 
%define MAX_UP_ALPHA 'Z'

section .text
	global ft_isupper

ft_isupper:
	enter 0, 0
	cmp rdi, MIN_UP_ALPHA
	jl smash
	cmp rdi, MAX_UP_ALPHA
	jg smash
	mov rax, TRUE
	jmp ret

smash:
	mov rax, FALSE

ret:
	leave
	ret
