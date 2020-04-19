	.text
	; NARC header
	.ascii "NARC"
	.short 0xFFFE ; byte order
	.short 0x0100 ; version
	.word 0x00025274 ; size
	.short 0x0010 ; chunk size
	.short 3 ; number following chunks

	; BTAF header
	.ascii "BTAF"
	.word 0x0000004C ; chunk size
	.short 8 ; number of files
	.balign 4
	.word 0x00000000, 0x00023C84
	.word 0x00023C84, 0x00023F20
	.word 0x00023F20, 0x000241BC
	.word 0x000241BC, 0x00024458
	.word 0x00024458, 0x000246F4
	.word 0x000246F4, 0x000247B4
	.word 0x000247B4, 0x000249DC
	.word 0x000249DC, 0x00025200

	; BTNF header
	.ascii "BTNF"
	.word 0x00000010 ; chunk size
	.word 0x00000004 ; offset to first dir
	.short 0 ; first file
	.short 1 ; number of directories

	; GMIF header
	.ascii "GMIF"
	.word 0x00025208 ; chunk size
	.incbin "baserom.nds", 0x0, 0x23C84
	.incbin "baserom.nds", 0x23C84, 0x29C
	.incbin "baserom.nds", 0x23F20, 0x29C
	.incbin "baserom.nds", 0x241BC, 0x29C
	.incbin "baserom.nds", 0x24458, 0x29C
	.incbin "baserom.nds", 0x246F4, 0xC0
	.incbin "baserom.nds", 0x247B4, 0x228
	.incbin "baserom.nds", 0x249DC, 0x824
	.balign 4, 255
