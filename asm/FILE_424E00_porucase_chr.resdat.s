	.include "asm/macros.inc"
	.text
	.incbin "baserom.nds", 0x424E00, 0x4C
	.balign 512, 255
