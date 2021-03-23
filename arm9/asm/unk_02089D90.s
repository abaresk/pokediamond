    .include "asm/macros.inc"
    .include "global.inc"

	.extern gMain

	.section .rodata

	.global UNK_020FF3E4
UNK_020FF3E4: ; 0x020FF3E4
	.byte 0x00, 0x03, 0x03, 0x1A, 0x12, 0x01, 0x23, 0x00

	.global UNK_020FF3EC
UNK_020FF3EC: ; 0x020FF3EC
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_020FF3FC
UNK_020FF3FC: ; 0x020FF3FC
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x06, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_020FF418
UNK_020FF418: ; 0x020FF418
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.text

	thumb_func_start FUN_02089D90
FUN_02089D90: ; 0x02089D90
	push {r3-r6, lr}
	sub sp, #0x1c
	add r4, r0, #0x0
	mov r0, #0x0
	add r1, r0, #0x0
	bl FUN_0200E3A0
	mov r0, #0x1
	mov r1, #0x0
	bl FUN_0200E3A0
	mov r0, #0x0
	add r1, r0, #0x0
	bl Main_SetVBlankIntrCB
	mov r0, #0x0
	add r1, r0, #0x0
	bl FUN_02015F34
	bl GX_DisableEngineALayers
	bl GX_DisableEngineBLayers
	mov r2, #0x1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0x0]
	ldr r0, _02089EF4 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0x0]
	ldr r2, _02089EF8 ; =0x04001000
	ldr r1, [r2, #0x0]
	and r0, r1
	str r0, [r2, #0x0]
	mov r0, #0x4
	mov r1, #0x8
	bl FUN_0201669C
	ldr r0, _02089EFC ; =gMain + 0x60
	mov r1, #0x0
	strb r1, [r0, #0x5]
	bl GX_SwapDisplay
	ldr r3, _02089F00 ; =0x04000050
	mov r0, #0x0
	strh r0, [r3, #0x0]
	ldr r2, _02089F04 ; =0x04001050
	sub r3, #0x50
	strh r0, [r2, #0x0]
	ldr r1, [r3, #0x0]
	ldr r0, _02089F08 ; =0xFFFF1FFF
	sub r2, #0x50
	and r1, r0
	str r1, [r3, #0x0]
	ldr r1, [r2, #0x0]
	and r0, r1
	str r0, [r2, #0x0]
	ldr r0, _02089F0C ; =UNK_020FF418
	bl FUN_0201E66C
	add r0, r4, #0x0
	bl FUN_02016B94
	add r5, r0, #0x0
	ldr r0, _02089F10 ; =UNK_020FF3EC
	bl FUN_02016BBC
	mov r1, #0x0
	ldr r2, _02089F14 ; =UNK_020FF3FC
	add r0, r5, #0x0
	add r3, r1, #0x0
	bl FUN_02016C18
	add r0, r5, #0x0
	mov r1, #0x0
	bl FUN_02018744
	mov r1, #0x0
	str r1, [sp, #0x0]
	ldr r2, _02089F18 ; =0x000001F7
	add r0, r5, #0x0
	mov r3, #0x2
	str r4, [sp, #0x4]
	bl FUN_0200CB00
	mov r0, #0x0
	mov r1, #0x20
	add r2, r4, #0x0
	bl FUN_02002ED0
	mov r0, #0x0
	mov r1, #0x20
	add r2, r0, #0x0
	add r3, r4, #0x0
	bl FUN_02017F18
	ldr r1, _02089F1C ; =0x00006C21
	mov r0, #0x0
	bl FUN_02017FE4
	ldr r1, _02089F1C ; =0x00006C21
	mov r0, #0x4
	bl FUN_02017FE4
	mov r0, #0x1
	mov r1, #0x1a
	mov r2, #0x5
	add r3, r4, #0x0
	bl NewMsgDataFromNarc
	add r6, r0, #0x0
	mov r0, #0x6
	lsl r0, r0, #0x6
	add r1, r4, #0x0
	bl String_ctor
	add r4, r0, #0x0
	bl FUN_0201BD5C
	ldr r2, _02089F20 ; =UNK_020FF3E4
	add r0, r5, #0x0
	add r1, sp, #0xc
	bl FUN_02019150
	mov r0, #0xd0
	str r0, [sp, #0x0]
	mov r0, #0x90
	mov r2, #0x0
	str r0, [sp, #0x4]
	add r0, sp, #0xc
	mov r1, #0xf
	add r3, r2, #0x0
	bl FUN_020196F4
	ldr r2, _02089F18 ; =0x000001F7
	add r0, sp, #0xc
	mov r1, #0x0
	mov r3, #0x2
	bl FUN_0200CCA4
	add r0, r6, #0x0
	mov r1, #0x0
	add r2, r4, #0x0
	bl ReadMsgDataIntoString
	mov r1, #0x0
	str r1, [sp, #0x0]
	str r1, [sp, #0x4]
	add r0, sp, #0xc
	add r2, r4, #0x0
	add r3, r1, #0x0
	str r1, [sp, #0x8]
	bl AddTextPrinterParameterized
	add r0, r4, #0x0
	bl String_dtor
	bl GX_BothDispOn
	mov r0, #0x0
	bl FUN_0200E394
	mov r0, #0x1
	bl FUN_0200E394
	mov r0, #0x0
	mov r1, #0x3f
	mov r2, #0x3
	bl FUN_0200A274
	mov r4, #0x1
_02089EE4:
	bl HandleDSLidAction
	add r0, r4, #0x0
	add r1, r4, #0x0
	bl OS_WaitIrq
	b _02089EE4
	nop
_02089EF4: .word 0xFFFFE0FF
_02089EF8: .word 0x04001000
_02089EFC: .word gMain + 0x60
_02089F00: .word 0x04000050
_02089F04: .word 0x04001050
_02089F08: .word 0xFFFF1FFF
_02089F0C: .word UNK_020FF418
_02089F10: .word UNK_020FF3EC
_02089F14: .word UNK_020FF3FC
_02089F18: .word 0x000001F7
_02089F1C: .word 0x00006C21
_02089F20: .word UNK_020FF3E4
