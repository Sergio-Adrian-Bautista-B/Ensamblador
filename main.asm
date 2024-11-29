section .data
    ; Usamos esta asección para almacenar datos que se usarán durante la ejecución del programa, 
    ; como variables o en este caso, cadenas.
   
    hello db 'Hola Mundo!', 0 ; Se define una cadena de texto que se va a imprimir, seguida de un 0 (que significa fin de la cadena)

section .text                    ; Esta sección se usa para colocar todo el código que va a ser ejecutado
    global _start                ; Declarar el punto de entrada (_start), es decir, es donde se va a empieza a ejecutar el código.

_start:                         ; Donde se empieza el programa

    ; Imprimir Cadena:
    mov rax, 1                  ; Es para usar el sistema Write para escribir algo en pantalla el 
                                ;  número 1 corresponde a la syscall write.
                                  
    mov rdi, 1                  ; El descriptor de archivo 1 es el terminal.
    mov rsi, hello              ; Le pasamos la dirección de la cadena a imprimir.
    mov rdx, 11                ; Para definir la longitud de la cadena.
    syscall                     ; Llamamos al sistema para que imprima en el terminal.

    ; Salir del programa
    mov rax, 60                 ; Con el 60, llamamos a Exit
    xor rdi, rdi                ; Pone 0 en el registro rdi, lo cual significa que el programa termina sin errores.
    syscall                     ; Ejecutamos la llamada para salir del sistema.
                                ; Por: Bautista Barragán Sergio Adrián.