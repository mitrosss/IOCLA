%include "io.inc"

%define NUM 5

section .text
global CMAIN
CMAIN:
    mov ebp, esp

    ; TODO 1: replace every push by an equivalent sequence of commands
    
    ; pushing an array on the stack
    mov ecx, NUM
push_nums:
    ;push ecx
    sub esp, 4
    mov [esp], ecx
    loop push_nums

    ; pushing a string on the stack
    ;push 0
    sub esp, 4
    mov byte [esp], 0
    
    ;push "mere"
    sub esp, 4
    mov dword [esp], "mere"
    
    ;push "are "
    sub esp, 4
    mov dword [esp], "are "
    
    ;push "Ana "
    sub esp, 4
    mov dword [esp], "Ana "

    ; TODO 2: print the stack in "address: value" format in the range of [ESP:EBP]
    ; (from low addresses to high addresses, byte by byte)
    lea eax, [esp]
print:
    cmp eax, ebp
    jge print_string
    
    PRINT_STRING ": 0x"
    PRINT_HEX 4, eax
    PRINT_STRING ": "
    PRINT_DEC 1, [eax]
    NEWLINE
    
    add eax, 1
    jmp print
    print_string:
    
    ; TODO 3: print the string byte by byte
    lea ecx, [esp]
    NEWLINE
    
print_string_byte:
    cmp byte [ecx], 0
    je return
    
    PRINT_CHAR [ecx]
    inc ecx
    jmp print_string_byte
    
    ; TODO 4: print the array element by element
    lea ecx, [esp]
    NEWLINE
    
return:
    mov ecx, NUM
    mov eax, esp
    
print_array_element:
    
    PRINT_DEC 4, [eax]
    PRINT_STRING " "
    add eax, 4
    dec ecx
    cmp ecx, 0
    
    jnz print_array_element
    
    

    ; restore the previous value of the EBP (Base Pointer)
    mov esp, ebp

    ; exit without errors
    xor eax, eax
    ret
