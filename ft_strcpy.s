section.text:
	global _ft_strcpy

_ft_strcpy:
	xor rax, rax;
	xor rcx,rcx;
	 cmp rsi, byte 0;
	jz _is_null;
_start_loop:
	mov dl, byte [rsi + rcx];
	mov byte[rdi + rcx] , dl ;	
	cmp byte [rdi + rcx] , 0;
	jz _end_loop ;
	inc rcx;
	jmp _start_loop ;
_end_loop:
	mov rax, rdi:
	ret
_is_null:
	mov rax, rsi
	ret