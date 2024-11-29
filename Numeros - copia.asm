section .data
    numbers db "1", 0xA, "2", 0xA, "3", 0xA, "4", 0xA, "5", 0xA
    len equ $ - numbers

section .text
    global _start

_start:
    mov eax, 4       ; syscall write
    mov ebx, 1       ; stdout
    mov ecx, numbers ; datos a imprimir
    mov edx, len     ; longitud de los datos
    int 0x80         ; llamada al kernel

    mov eax, 1       ; syscall exit
    xor ebx, ebx     ; código de salida 0
    int 0x80

