global _ft_strdup

section.text:

    extern _malloc
	extern _ft_strlen
	extern _ft_strcpy
_ft_strdup:
    
    cmp rdi, 0x0;
    jz _is_error;
    push rdi
    call _ft_strlen
    inc rax;
    mov rdi, rax;
    call _malloc
    cmp rax, 0;
    jz _is_error

    pop rsi;
    mov rdi,rax;
    call _ft_strcpy
    ret
    
_is_error:
    mov rax , 0x0
    ret

