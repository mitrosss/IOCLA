%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov eax, 7       ; vrem sa aflam al N-lea numar; N = 7
    ; TODO: calculati al N-lea numar fibonacci (f(0) = 0, f(1) = 1)
    mov ebx, 0
    mov ecx, 1
    
    
    loop1:
    add ebx, ecx
    xchg ecx, ebx
    dec eax
    cmp eax, 2
    jns loop1
    
    PRINT_DEC 4, ecx
    NEWLINE
    ret