%define MACH_SYSCALL(nb) 0x2000000 | nb
%define READ 3
%define WRITE 4
%define STDIN 1

section .data
	buf times 255 db 0
	buf_size equ $ - buf

section .text
	global ft_cat

ft_cat:
	enter 0, 0
	mov r14, rdi
	lea rsi, [rel buf]

	;read(fd, buf, buf_size)
read:
	mov rdi, r14
	mov rdx, buf_size
	mov rax, MACH_SYSCALL(READ)
	syscall
	jc exit
	cmp rax, 0
	jz exit 

	;write(fd, buf, buff_size)
write:
	mov rdi, STDIN
	mov rdx, rax
	mov rax, MACH_SYSCALL(WRITE)
	syscall
	jc exit
	jmp read

exit:
	leave
	ret

