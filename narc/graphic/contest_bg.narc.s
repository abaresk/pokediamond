	.text
	; NARC header
	.ascii "NARC"
	.short 0xFFFE ; byte order
	.short 0x0100 ; version
	.word 0x00013B44 ; size
	.short 0x0010 ; chunk size
	.short 3 ; number following chunks

	; BTAF header
	.ascii "BTAF"
	.word 0x0000014C ; chunk size
	.short 40 ; number of files
	.balign 4
	.word 0x00000000, 0x00000368
	.word 0x00000368, 0x00002598
	.word 0x00002598, 0x00002904
	.word 0x00002904, 0x000042EC
	.word 0x000042EC, 0x00004494
	.word 0x00004494, 0x0000462C
	.word 0x0000462C, 0x0000484C
	.word 0x0000484C, 0x00004B94
	.word 0x00004B94, 0x00004E1C
	.word 0x00004E1C, 0x00006D30
	.word 0x00006D30, 0x00006F44
	.word 0x00006F44, 0x000081A0
	.word 0x000081A0, 0x00008310
	.word 0x00008310, 0x00009618
	.word 0x00009618, 0x00009784
	.word 0x00009784, 0x00009E90
	.word 0x00009E90, 0x0000A394
	.word 0x0000A394, 0x0000B4F4
	.word 0x0000B4F4, 0x0000D2BC
	.word 0x0000D2BC, 0x0000D9E4
	.word 0x0000D9E4, 0x0000DB50
	.word 0x0000DB50, 0x0000DD90
	.word 0x0000DD90, 0x0000F9D8
	.word 0x0000F9D8, 0x00010AA0
	.word 0x00010AA0, 0x00010C60
	.word 0x00010C60, 0x00010DAC
	.word 0x00010DAC, 0x00011F4C
	.word 0x00011F4C, 0x00012078
	.word 0x00012078, 0x00012218
	.word 0x00012218, 0x00012440
	.word 0x00012440, 0x00012668
	.word 0x00012668, 0x00012890
	.word 0x00012890, 0x00012AB8
	.word 0x00012AB8, 0x00012CE0
	.word 0x00012CE0, 0x00012F08
	.word 0x00012F08, 0x00013130
	.word 0x00013130, 0x00013358
	.word 0x00013358, 0x00013580
	.word 0x00013580, 0x000137A8
	.word 0x000137A8, 0x000139D0

	; BTNF header
	.ascii "BTNF"
	.word 0x00000010 ; chunk size
	.word 0x00000004 ; offset to first dir
	.short 0 ; first file
	.short 1 ; number of directories

	; GMIF header
	.ascii "GMIF"
	.word 0x000139D8 ; chunk size
	.incbin "baserom.nds", 0x0, 0x368
	.incbin "baserom.nds", 0x368, 0x2230
	.incbin "baserom.nds", 0x2598, 0x36C
	.incbin "baserom.nds", 0x2904, 0x19E8
	.incbin "baserom.nds", 0x42EC, 0x1A8
	.incbin "baserom.nds", 0x4494, 0x198
	.incbin "baserom.nds", 0x462C, 0x220
	.incbin "baserom.nds", 0x484C, 0x348
	.incbin "baserom.nds", 0x4B94, 0x288
	.incbin "baserom.nds", 0x4E1C, 0x1F14
	.incbin "baserom.nds", 0x6D30, 0x214
	.incbin "baserom.nds", 0x6F44, 0x125C
	.incbin "baserom.nds", 0x81A0, 0x170
	.incbin "baserom.nds", 0x8310, 0x1308
	.incbin "baserom.nds", 0x9618, 0x16C
	.incbin "baserom.nds", 0x9784, 0x70C
	.incbin "baserom.nds", 0x9E90, 0x504
	.incbin "baserom.nds", 0xA394, 0x1160
	.incbin "baserom.nds", 0xB4F4, 0x1DC8
	.incbin "baserom.nds", 0xD2BC, 0x728
	.incbin "baserom.nds", 0xD9E4, 0x16C
	.incbin "baserom.nds", 0xDB50, 0x240
	.incbin "baserom.nds", 0xDD90, 0x1C48
	.incbin "baserom.nds", 0xF9D8, 0x10C8
	.incbin "baserom.nds", 0x10AA0, 0x1C0
	.incbin "baserom.nds", 0x10C60, 0x14C
	.incbin "baserom.nds", 0x10DAC, 0x11A0
	.incbin "baserom.nds", 0x11F4C, 0x12C
	.incbin "baserom.nds", 0x12078, 0x1A0
	.incbin "baserom.nds", 0x12218, 0x228
	.incbin "baserom.nds", 0x12440, 0x228
	.incbin "baserom.nds", 0x12668, 0x228
	.incbin "baserom.nds", 0x12890, 0x228
	.incbin "baserom.nds", 0x12AB8, 0x228
	.incbin "baserom.nds", 0x12CE0, 0x228
	.incbin "baserom.nds", 0x12F08, 0x228
	.incbin "baserom.nds", 0x13130, 0x228
	.incbin "baserom.nds", 0x13358, 0x228
	.incbin "baserom.nds", 0x13580, 0x228
	.incbin "baserom.nds", 0x137A8, 0x228
	.balign 4, 255
