%include "io.inc"

%define NUM_FIBO 10

section .text
global CMAIN
CMAIN:
    
    mov ebp, esp
    xor eax, eax

    ; TODO - replace below instruction with the algorithm for the Fibonacci sequence
    sub esp, NUM_FIBO * 4
    push 1
    push 1

    mov ecx, NUM_FIBO
fibo:
    mov eax, [esp + 4]
    add eax, [esp]
    push eax
    loop fibo 
    mov ecx, NUM_FIBO   
print:
    PRINT_UDEC 4, [esp + (ecx - 1) * 4]
    PRINT_STRING " "
    dec ecx
    cmp ecx, 0
    ja print

    mov esp, ebp
    xor eax, eax
    ret
