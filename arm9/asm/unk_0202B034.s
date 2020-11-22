	.include "asm/macros.inc"
    .include "global.inc"

	.text

	thumb_func_start FUN_0202B03C
FUN_0202B03C: ; 0x0202B03C
	ldr r3, _0202B048 ; =MIi_CpuClear32
	add r1, r0, #0x0
	mov r0, #0x0
	ldr r2, _0202B04C ; =0x00002AB0
	bx r3
	nop
_0202B048: .word MIi_CpuClear32
_0202B04C: .word 0x00002AB0