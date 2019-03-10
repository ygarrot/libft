%define TRUE 1
%define FALSE 0

%define MIN_DIGIT 48
%define MAX_DIGIT 57

section .text
	global ft_isdigit

ft_isdigit:
	enter 0, 0
	cmp rdi, MIN_DIGIT
	jl smash
	cmp rdi, MAX_DIGIT
	jg smash
	mov rax, TRUE
	jmp ret

smash:
	mov rax, FALSE

ret:
	leave
	ret
