global _ft_write

section.text:

_ft_write:
    cmp rsi, 0x0;
    jz _is_null

    mov rax, 0x2000004
    syscall
    cmp rax, 9
    jz _is_null
    ret

_is_null:
    mov rax, -1
    ret