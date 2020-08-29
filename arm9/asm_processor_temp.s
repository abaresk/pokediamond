.macro glabel label
    .global \label
    .thumb
    \label:
.endm

.section .text
glabel _asmpp_func1_asm_start
.section .text
.section .text

glabel TestFunc
    bx lr
    bx lr
    bx lr
    bx lr
    bx lr
    bx lr
glabel _asmpp_func1_asm_end
