%define TRUE 1
%define FALSE 0

%define MIN_ASCII 0
%define MAX_ASCII 127

section .text
	global ft_isascii

ft_isascii:
	enter 0, 0
	cmp rdi, MIN_ASCII
	jl smash
	cmp rdi, MAX_ASCII
	jg smash
	mov rax, TRUE
	jmp ret

smash:
	mov rax, FALSE

ret:
	leave
	ret
