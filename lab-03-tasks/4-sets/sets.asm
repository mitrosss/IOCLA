%include "io.inc"

section .text
global CMAIN
CMAIN:
    ;cele doua multimi se gasesc in eax si ebx
    mov eax, 139 
    mov ebx, 169
    PRINT_DEC 4, eax ; afiseaza prima multime
    NEWLINE
    PRINT_DEC 4, ebx ; afiseaza cea de-a doua multime
    NEWLINE

    ; TODO1: reuniunea a doua multimi
    mov eax, 139
    mov ebx, 169
    or eax, ebx
    PRINT_DEC 4, eax
    NEWLINE
    

    ; TODO2: adaugarea unui element in multime
    mov eax, 139
    mov ecx, 1
    shl ecx, 4
    or eax, ecx
    PRINT_DEC 4, eax
    NEWLINE


    ; TODO3: intersectia a doua multimi
    mov eax, 139
    mov ebx, 169
    and eax, ebx
    PRINT_DEC 4, eax
    NEWLINE

    ; TODO4: complementul unei multimi
    mov eax, 139
    not eax
    PRINT_DEC 4, eax 
    NEWLINE


    ; TODO5: eliminarea unui element
    mov eax, 139
    mov ecx, 1
    shl ecx, 3
    not ecx
    and eax, ecx
    PRINT_DEC 4, eax
    NEWLINE


    ; TODO6: diferenta de multimi EAX-EBX
    mov eax, 139
    mov ebx, 169
    mov ecx, eax
    and ecx, ebx
    not ecx
    and ecx, eax
    PRINT_DEC 4, ecx
    NEWLINE


    xor eax, eax
    ret
