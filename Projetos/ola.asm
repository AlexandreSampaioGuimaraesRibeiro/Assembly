section .data
    mensagem db "Ola, mundo!", 10
    tamanho equ $ - mensagem

section .text
    global _start

_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, mensagem
    mov rdx, tamanho
    syscall

    mov rax, 60
    xor rdi, rdi
    syscall