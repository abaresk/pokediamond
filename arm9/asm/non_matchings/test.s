.section .text

glabel TestFunc
    push {r4, lr}
    add r4, r0, #0
    cmp r4, #0
    bgt .L1
    bl ErrorHandling
.L1:
    mov r0, #0
    bl GetIGTHours
    add r0, r4, #4
    pop {r4, pc}
