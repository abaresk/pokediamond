	.include "asm/macros.inc"
    .include "global.inc"

	.text

	thumb_func_start FUN_0202AAB8
FUN_0202AAB8: ; 0x0202AAB8
	cmp r1, #0x8
	bhi _0202AAF8
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #0x6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0202AAC8: ; jump table (using 16-bit offset)
	.short _0202AAF8 - _0202AAC8 - 2; case 0
	.short _0202AADA - _0202AAC8 - 2; case 1
	.short _0202AADE - _0202AAC8 - 2; case 2
	.short _0202AAE2 - _0202AAC8 - 2; case 3
	.short _0202AAE6 - _0202AAC8 - 2; case 4
	.short _0202AAEA - _0202AAC8 - 2; case 5
	.short _0202AAEE - _0202AAC8 - 2; case 6
	.short _0202AAF2 - _0202AAC8 - 2; case 7
	.short _0202AAF6 - _0202AAC8 - 2; case 8
_0202AADA:
	ldr r0, [r0, #0x0]
	bx lr
_0202AADE:
	ldr r0, [r0, #0x4]
	bx lr
_0202AAE2:
	ldr r0, [r0, #0x8]
	bx lr
_0202AAE6:
	ldrh r0, [r0, #0xc]
	bx lr
_0202AAEA:
	ldrh r0, [r0, #0xe]
	bx lr
_0202AAEE:
	ldrb r0, [r0, #0x10]
	bx lr
_0202AAF2:
	ldrb r0, [r0, #0x11]
	bx lr
_0202AAF6:
	ldrb r0, [r0, #0x12]
_0202AAF8:
	bx lr
	.balign 4

	thumb_func_start FUN_0202AAFC
FUN_0202AAFC: ; 0x0202AAFC
	cmp r1, #0x8
	bhi _0202AB3C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #0x6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0202AB0C: ; jump table (using 16-bit offset)
	.short _0202AB3C - _0202AB0C - 2; case 0
	.short _0202AB1E - _0202AB0C - 2; case 1
	.short _0202AB22 - _0202AB0C - 2; case 2
	.short _0202AB26 - _0202AB0C - 2; case 3
	.short _0202AB2A - _0202AB0C - 2; case 4
	.short _0202AB2E - _0202AB0C - 2; case 5
	.short _0202AB32 - _0202AB0C - 2; case 6
	.short _0202AB36 - _0202AB0C - 2; case 7
	.short _0202AB3A - _0202AB0C - 2; case 8
_0202AB1E:
	str r2, [r0, #0x0]
	bx lr
_0202AB22:
	str r2, [r0, #0x4]
	bx lr
_0202AB26:
	str r2, [r0, #0x8]
	bx lr
_0202AB2A:
	strh r2, [r0, #0xc]
	bx lr
_0202AB2E:
	strh r2, [r0, #0xe]
	bx lr
_0202AB32:
	strb r2, [r0, #0x10]
	bx lr
_0202AB36:
	strb r2, [r0, #0x11]
	bx lr
_0202AB3A:
	strb r2, [r0, #0x12]
_0202AB3C:
	bx lr
	.balign 4

	thumb_func_start FUN_0202AB40
FUN_0202AB40: ; 0x0202AB40
	ldr r1, _0202AB48 ; =0x00000111
	add r0, r0, r1
	bx lr
	nop
_0202AB48: .word 0x00000111

	thumb_func_start FUN_0202AB4C
FUN_0202AB4C: ; 0x0202AB4C
	mov r1, #0x11
	lsl r1, r1, #0x4
	add r0, r0, r1
	bx lr

	thumb_func_start FUN_0202AB54
FUN_0202AB54: ; 0x0202AB54
	mov r1, #0x11
	lsl r1, r1, #0x4
	ldrb r0, [r0, r1]
	cmp r0, #0x0
	bne _0202AB62
	mov r0, #0x1
	bx lr
_0202AB62:
	mov r0, #0x0
	bx lr
	.balign 4

	thumb_func_start FUN_0202AB68
FUN_0202AB68: ; 0x0202AB68
	push {r3-r5, lr}
	add r4, r1, #0x0
	add r5, r0, #0x0
	cmp r4, #0x2
	bls _0202AB76
	bl ErrorHandling
_0202AB76:
	ldr r0, _0202AB7C ; =0x00000112
	strb r4, [r5, r0]
	pop {r3-r5, pc}
	.balign 4
_0202AB7C: .word 0x00000112

	thumb_func_start FUN_0202AB80
FUN_0202AB80: ; 0x0202AB80
	ldr r1, _0202AB88 ; =0x00000112
	ldrb r0, [r0, r1]
	bx lr
	nop
_0202AB88: .word 0x00000112

	thumb_func_start FUN_0202AB8C
FUN_0202AB8C: ; 0x0202AB8C
	push {r3-r5, lr}
	add r5, r1, #0x0
	add r4, r2, #0x0
	bl FUN_0202A9B0
	ldrh r1, [r0, #0xc]
	strh r1, [r5, #0x0]
	ldrh r0, [r0, #0xe]
	strh r0, [r4, #0x0]
	pop {r3-r5, pc}

	thumb_func_start FUN_0202ABA0
FUN_0202ABA0: ; 0x0202ABA0
	push {r3-r5, lr}
	add r5, r1, #0x0
	bl FUN_0202A9B0
	add r4, r0, #0x0
	cmp r5, #0x10
	blo _0202ABB2
	bl ErrorHandling
_0202ABB2:
	ldrh r0, [r4, #0xc]
	strh r0, [r4, #0xe]
	strh r5, [r4, #0xc]
	pop {r3-r5, pc}
	.balign 4
