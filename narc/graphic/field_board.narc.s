	.text
	; NARC header
	.ascii "NARC"
	.short 0xFFFE ; byte order
	.short 0x0100 ; version
	.word 0x0000A8FC ; size
	.short 0x0010 ; chunk size
	.short 3 ; number following chunks

	; BTAF header
	.ascii "BTAF"
	.word 0x000001AC ; chunk size
	.short 52 ; number of files
	.balign 4
	.word 0x00000000, 0x00000280
	.word 0x00000280, 0x000004A8
	.word 0x000004A8, 0x000007E8
	.word 0x000007E8, 0x00000B28
	.word 0x00000B28, 0x00000E68
	.word 0x00000E68, 0x000011A8
	.word 0x000011A8, 0x000014E8
	.word 0x000014E8, 0x00001828
	.word 0x00001828, 0x00001B68
	.word 0x00001B68, 0x00001EA8
	.word 0x00001EA8, 0x000021E8
	.word 0x000021E8, 0x00002528
	.word 0x00002528, 0x00002868
	.word 0x00002868, 0x00002BA8
	.word 0x00002BA8, 0x00002EE8
	.word 0x00002EE8, 0x00003228
	.word 0x00003228, 0x00003568
	.word 0x00003568, 0x000038A8
	.word 0x000038A8, 0x00003BE8
	.word 0x00003BE8, 0x00003F28
	.word 0x00003F28, 0x00004268
	.word 0x00004268, 0x000045A8
	.word 0x000045A8, 0x000048E8
	.word 0x000048E8, 0x00004C28
	.word 0x00004C28, 0x00004F68
	.word 0x00004F68, 0x000052A8
	.word 0x000052A8, 0x000055E8
	.word 0x000055E8, 0x00005928
	.word 0x00005928, 0x00005C68
	.word 0x00005C68, 0x00005FA8
	.word 0x00005FA8, 0x000062E8
	.word 0x000062E8, 0x00006628
	.word 0x00006628, 0x00006968
	.word 0x00006968, 0x00006CA8
	.word 0x00006CA8, 0x00006FE8
	.word 0x00006FE8, 0x00007328
	.word 0x00007328, 0x00007668
	.word 0x00007668, 0x000079A8
	.word 0x000079A8, 0x00007CE8
	.word 0x00007CE8, 0x00008028
	.word 0x00008028, 0x00008368
	.word 0x00008368, 0x000086A8
	.word 0x000086A8, 0x000089E8
	.word 0x000089E8, 0x00008D28
	.word 0x00008D28, 0x00009068
	.word 0x00009068, 0x000093A8
	.word 0x000093A8, 0x000096E8
	.word 0x000096E8, 0x00009A28
	.word 0x00009A28, 0x00009D68
	.word 0x00009D68, 0x0000A0A8
	.word 0x0000A0A8, 0x0000A3E8
	.word 0x0000A3E8, 0x0000A728

	; BTNF header
	.ascii "BTNF"
	.word 0x00000010 ; chunk size
	.word 0x00000004 ; offset to first dir
	.short 0 ; first file
	.short 1 ; number of directories

	; GMIF header
	.ascii "GMIF"
	.word 0x0000A730 ; chunk size
	.incbin "baserom.nds", 0x0, 0x280
	.incbin "baserom.nds", 0x280, 0x228
	.incbin "baserom.nds", 0x4A8, 0x340
	.incbin "baserom.nds", 0x7E8, 0x340
	.incbin "baserom.nds", 0xB28, 0x340
	.incbin "baserom.nds", 0xE68, 0x340
	.incbin "baserom.nds", 0x11A8, 0x340
	.incbin "baserom.nds", 0x14E8, 0x340
	.incbin "baserom.nds", 0x1828, 0x340
	.incbin "baserom.nds", 0x1B68, 0x340
	.incbin "baserom.nds", 0x1EA8, 0x340
	.incbin "baserom.nds", 0x21E8, 0x340
	.incbin "baserom.nds", 0x2528, 0x340
	.incbin "baserom.nds", 0x2868, 0x340
	.incbin "baserom.nds", 0x2BA8, 0x340
	.incbin "baserom.nds", 0x2EE8, 0x340
	.incbin "baserom.nds", 0x3228, 0x340
	.incbin "baserom.nds", 0x3568, 0x340
	.incbin "baserom.nds", 0x38A8, 0x340
	.incbin "baserom.nds", 0x3BE8, 0x340
	.incbin "baserom.nds", 0x3F28, 0x340
	.incbin "baserom.nds", 0x4268, 0x340
	.incbin "baserom.nds", 0x45A8, 0x340
	.incbin "baserom.nds", 0x48E8, 0x340
	.incbin "baserom.nds", 0x4C28, 0x340
	.incbin "baserom.nds", 0x4F68, 0x340
	.incbin "baserom.nds", 0x52A8, 0x340
	.incbin "baserom.nds", 0x55E8, 0x340
	.incbin "baserom.nds", 0x5928, 0x340
	.incbin "baserom.nds", 0x5C68, 0x340
	.incbin "baserom.nds", 0x5FA8, 0x340
	.incbin "baserom.nds", 0x62E8, 0x340
	.incbin "baserom.nds", 0x6628, 0x340
	.incbin "baserom.nds", 0x6968, 0x340
	.incbin "baserom.nds", 0x6CA8, 0x340
	.incbin "baserom.nds", 0x6FE8, 0x340
	.incbin "baserom.nds", 0x7328, 0x340
	.incbin "baserom.nds", 0x7668, 0x340
	.incbin "baserom.nds", 0x79A8, 0x340
	.incbin "baserom.nds", 0x7CE8, 0x340
	.incbin "baserom.nds", 0x8028, 0x340
	.incbin "baserom.nds", 0x8368, 0x340
	.incbin "baserom.nds", 0x86A8, 0x340
	.incbin "baserom.nds", 0x89E8, 0x340
	.incbin "baserom.nds", 0x8D28, 0x340
	.incbin "baserom.nds", 0x9068, 0x340
	.incbin "baserom.nds", 0x93A8, 0x340
	.incbin "baserom.nds", 0x96E8, 0x340
	.incbin "baserom.nds", 0x9A28, 0x340
	.incbin "baserom.nds", 0x9D68, 0x340
	.incbin "baserom.nds", 0xA0A8, 0x340
	.incbin "baserom.nds", 0xA3E8, 0x340
	.balign 4, 255
