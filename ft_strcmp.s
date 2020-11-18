global _ft_strcmp

section.text:

_ft_strcmp:
    xor rax, rax;
    xor rcx, rcx;
    cmp rsi, byte 0;
    jz _is_null;
    cmp rdi, byte 0 ;
    jz _is_null;
    _start_loop:
        cmp [rdi + rcx], byte 0;
		jz _last_char;
		cmp [rsi + rcx], byte 0;
		jz _is_higher;
        mov al, byte[rdi + rcx];
        cmp al, byte[rsi + rcx];
        jg _is_higher;
        jb _is_lower;

        inc rcx;
        jmp _start_loop ;

   
    _end_loop:  

_last_char:
    cmp [rsi + rcx], byte 0;
	jz _is_equal;
	jmp _is_lower;

_is_null:
    cmp rdi, rsi;
    jz _is_equal;
    jg _is_higher;
    jb _is_lower;

_is_equal:
    mov rax, 0;
    ret;
    

_is_lower:
    mov rax, -1;
    ret
_is_higher:
    mov rax, 1;
    ret

