section.text:

global _ft_strlen

_ft_strlen:

mov rax, 0x0;

_start_loop:
	cmp byte[rdi + rax], 0x0;
	jz _end_loop ;
	inc rax;
	jmp _start_loop;

_end_loop:

ret 


