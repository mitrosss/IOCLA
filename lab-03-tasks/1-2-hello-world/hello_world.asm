%include "io.inc"

section .data
    myString: db "Hello, World!",0
    myString2: db "Goodbye, World!", 0

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    mov ecx, 6  
    mov ebx, 6
    mov eax, 0
loop1:
                    ; N = valoarea registrului ecx
    add eax, 1
    cmp eax, ebx
    PRINT_STRING myString
    NEWLINE
    jl loop1                  ; TODO1: eax > ebx?
    
    
    PRINT_STRING myString2
                               ; TODO2.2: afisati "Hello, World!" de N ori
                               ; TODO2.1: afisati "Goodbye, World!"

    ret
