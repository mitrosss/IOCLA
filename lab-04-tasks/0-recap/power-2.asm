%include "io.inc"

section .text
global CMAIN
CMAIN:
    push ebp
    mov ebp, esp

    mov eax, 211    ; to be broken down into powers of 2
    mov ebx, 1      ; stores the current power e
    mov cl, 0

    ; TODO - print the powers of 2 that generate number stored in EAX
bucla:
    mov edx, eax
    and edx, ebx
    jnz afisare
    
continuare:    
    add cl, 1
    shl ebx, 1
    jnz bucla    
    ret        
afisare:
    mov edx, 1
    shl edx , cl
    PRINT_UDEC 4, edx
    NEWLINE
    jmp continuare

    leave
    ret
