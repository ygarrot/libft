%define TRUE 1
%define FALSE 0

%define MIN_PRINT ' '
%define MAX_PRINT '~'

section .text
	global ft_isprint

ft_isprint:
	enter 0, 0
	cmp rdi, MIN_PRINT
	jl smash
	cmp rdi, MAX_PRINT
	jg smash
	mov rax, TRUE
	jmp ret

smash:
	mov rax, FALSE

ret:
	leave
	ret
