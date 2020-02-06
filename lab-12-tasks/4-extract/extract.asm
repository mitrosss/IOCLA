%include "io.inc"

section .data
    n    dq 421.9461
    print_format1 db "Partea intreaga: %d", 10, 0
    print_format2 db "Partea fractionara: %f", 10, 0

section .text
global CMAIN
CMAIN:

    ; TODO Incarca numarul pe stiva FPU.

    ; TODO Foloseste instructiunea fisttp pentru a salva valoarea
    ; cu trunchiere la intreg.

    ; TODO Afiseaza partea intreaga.

    ; TODO Reincarca numarul pe stiva FPU.

    ; TODO Foloseste instructiunea fisub pentru a scadea din n (varful
    ; stivei FPU) partea intreaga obtinuta anterior.

    ; TODO Extrage partea fractionara si afiseaza rezultatul

    xor eax, eax
    ret
