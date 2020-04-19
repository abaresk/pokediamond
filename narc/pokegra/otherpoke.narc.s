	.text
	; NARC header
	.ascii "NARC"
	.short 0xFFFE ; byte order
	.short 0x0100 ; version
	.word 0x000D96EC ; size
	.short 0x0010 ; chunk size
	.short 3 ; number following chunks

	; BTAF header
	.ascii "BTAF"
	.word 0x000006B4 ; chunk size
	.short 213 ; number of files
	.balign 4
	.word 0x00000000, 0x00001930
	.word 0x00001930, 0x00003260
	.word 0x00003260, 0x00004B90
	.word 0x00004B90, 0x000064C0
	.word 0x000064C0, 0x00007DF0
	.word 0x00007DF0, 0x00009720
	.word 0x00009720, 0x0000B050
	.word 0x0000B050, 0x0000C980
	.word 0x0000C980, 0x0000E2B0
	.word 0x0000E2B0, 0x0000FBE0
	.word 0x0000FBE0, 0x00011510
	.word 0x00011510, 0x00012E40
	.word 0x00012E40, 0x00014770
	.word 0x00014770, 0x000160A0
	.word 0x000160A0, 0x000179D0
	.word 0x000179D0, 0x00019300
	.word 0x00019300, 0x0001AC30
	.word 0x0001AC30, 0x0001C560
	.word 0x0001C560, 0x0001DE90
	.word 0x0001DE90, 0x0001F7C0
	.word 0x0001F7C0, 0x000210F0
	.word 0x000210F0, 0x00022A20
	.word 0x00022A20, 0x00024350
	.word 0x00024350, 0x00025C80
	.word 0x00025C80, 0x000275B0
	.word 0x000275B0, 0x00028EE0
	.word 0x00028EE0, 0x0002A810
	.word 0x0002A810, 0x0002C140
	.word 0x0002C140, 0x0002DA70
	.word 0x0002DA70, 0x0002F3A0
	.word 0x0002F3A0, 0x00030CD0
	.word 0x00030CD0, 0x00032600
	.word 0x00032600, 0x00033F30
	.word 0x00033F30, 0x00035860
	.word 0x00035860, 0x00037190
	.word 0x00037190, 0x00038AC0
	.word 0x00038AC0, 0x0003A3F0
	.word 0x0003A3F0, 0x0003BD20
	.word 0x0003BD20, 0x0003D650
	.word 0x0003D650, 0x0003EF80
	.word 0x0003EF80, 0x000408B0
	.word 0x000408B0, 0x000421E0
	.word 0x000421E0, 0x00043B10
	.word 0x00043B10, 0x00045440
	.word 0x00045440, 0x00046D70
	.word 0x00046D70, 0x000486A0
	.word 0x000486A0, 0x00049FD0
	.word 0x00049FD0, 0x0004B900
	.word 0x0004B900, 0x0004D230
	.word 0x0004D230, 0x0004EB60
	.word 0x0004EB60, 0x00050490
	.word 0x00050490, 0x00051DC0
	.word 0x00051DC0, 0x000536F0
	.word 0x000536F0, 0x00055020
	.word 0x00055020, 0x00056950
	.word 0x00056950, 0x00058280
	.word 0x00058280, 0x00059BB0
	.word 0x00059BB0, 0x0005B4E0
	.word 0x0005B4E0, 0x0005CE10
	.word 0x0005CE10, 0x0005E740
	.word 0x0005E740, 0x00060070
	.word 0x00060070, 0x000619A0
	.word 0x000619A0, 0x000632D0
	.word 0x000632D0, 0x00064C00
	.word 0x00064C00, 0x00066530
	.word 0x00066530, 0x00067E60
	.word 0x00067E60, 0x00069790
	.word 0x00069790, 0x0006B0C0
	.word 0x0006B0C0, 0x0006C9F0
	.word 0x0006C9F0, 0x0006E320
	.word 0x0006E320, 0x0006FC50
	.word 0x0006FC50, 0x00071580
	.word 0x00071580, 0x00072EB0
	.word 0x00072EB0, 0x000747E0
	.word 0x000747E0, 0x00076110
	.word 0x00076110, 0x00077A40
	.word 0x00077A40, 0x00079370
	.word 0x00079370, 0x0007ACA0
	.word 0x0007ACA0, 0x0007C5D0
	.word 0x0007C5D0, 0x0007DF00
	.word 0x0007DF00, 0x0007F830
	.word 0x0007F830, 0x00081160
	.word 0x00081160, 0x00082A90
	.word 0x00082A90, 0x000843C0
	.word 0x000843C0, 0x00085CF0
	.word 0x00085CF0, 0x00087620
	.word 0x00087620, 0x00088F50
	.word 0x00088F50, 0x0008A880
	.word 0x0008A880, 0x0008C1B0
	.word 0x0008C1B0, 0x0008DAE0
	.word 0x0008DAE0, 0x0008F410
	.word 0x0008F410, 0x00090D40
	.word 0x00090D40, 0x00092670
	.word 0x00092670, 0x00093FA0
	.word 0x00093FA0, 0x000958D0
	.word 0x000958D0, 0x00097200
	.word 0x00097200, 0x00098B30
	.word 0x00098B30, 0x0009A460
	.word 0x0009A460, 0x0009BD90
	.word 0x0009BD90, 0x0009D6C0
	.word 0x0009D6C0, 0x0009EFF0
	.word 0x0009EFF0, 0x000A0920
	.word 0x000A0920, 0x000A2250
	.word 0x000A2250, 0x000A3B80
	.word 0x000A3B80, 0x000A54B0
	.word 0x000A54B0, 0x000A6DE0
	.word 0x000A6DE0, 0x000A8710
	.word 0x000A8710, 0x000AA040
	.word 0x000AA040, 0x000AB970
	.word 0x000AB970, 0x000AD2A0
	.word 0x000AD2A0, 0x000AEBD0
	.word 0x000AEBD0, 0x000B0500
	.word 0x000B0500, 0x000B1E30
	.word 0x000B1E30, 0x000B3760
	.word 0x000B3760, 0x000B5090
	.word 0x000B5090, 0x000B69C0
	.word 0x000B69C0, 0x000B82F0
	.word 0x000B82F0, 0x000B9C20
	.word 0x000B9C20, 0x000BB550
	.word 0x000BB550, 0x000BCE80
	.word 0x000BCE80, 0x000BE7B0
	.word 0x000BE7B0, 0x000C00E0
	.word 0x000C00E0, 0x000C1A10
	.word 0x000C1A10, 0x000C3340
	.word 0x000C3340, 0x000C4C70
	.word 0x000C4C70, 0x000C65A0
	.word 0x000C65A0, 0x000C7ED0
	.word 0x000C7ED0, 0x000C9800
	.word 0x000C9800, 0x000CB130
	.word 0x000CB130, 0x000CCA60
	.word 0x000CCA60, 0x000CE390
	.word 0x000CE390, 0x000CFCC0
	.word 0x000CFCC0, 0x000D15F0
	.word 0x000D15F0, 0x000D2F20
	.word 0x000D2F20, 0x000D2F68
	.word 0x000D2F68, 0x000D2FB0
	.word 0x000D2FB0, 0x000D2FF8
	.word 0x000D2FF8, 0x000D3040
	.word 0x000D3040, 0x000D3088
	.word 0x000D3088, 0x000D30D0
	.word 0x000D30D0, 0x000D3118
	.word 0x000D3118, 0x000D3160
	.word 0x000D3160, 0x000D31A8
	.word 0x000D31A8, 0x000D31F0
	.word 0x000D31F0, 0x000D3238
	.word 0x000D3238, 0x000D3280
	.word 0x000D3280, 0x000D32C8
	.word 0x000D32C8, 0x000D3310
	.word 0x000D3310, 0x000D3358
	.word 0x000D3358, 0x000D33A0
	.word 0x000D33A0, 0x000D33E8
	.word 0x000D33E8, 0x000D3430
	.word 0x000D3430, 0x000D3478
	.word 0x000D3478, 0x000D34C0
	.word 0x000D34C0, 0x000D3508
	.word 0x000D3508, 0x000D3550
	.word 0x000D3550, 0x000D3598
	.word 0x000D3598, 0x000D35E0
	.word 0x000D35E0, 0x000D3628
	.word 0x000D3628, 0x000D3670
	.word 0x000D3670, 0x000D36B8
	.word 0x000D36B8, 0x000D3700
	.word 0x000D3700, 0x000D3748
	.word 0x000D3748, 0x000D3790
	.word 0x000D3790, 0x000D37D8
	.word 0x000D37D8, 0x000D3820
	.word 0x000D3820, 0x000D3868
	.word 0x000D3868, 0x000D38B0
	.word 0x000D38B0, 0x000D38F8
	.word 0x000D38F8, 0x000D3940
	.word 0x000D3940, 0x000D3988
	.word 0x000D3988, 0x000D39D0
	.word 0x000D39D0, 0x000D3A18
	.word 0x000D3A18, 0x000D3A60
	.word 0x000D3A60, 0x000D3AA8
	.word 0x000D3AA8, 0x000D3AF0
	.word 0x000D3AF0, 0x000D3B38
	.word 0x000D3B38, 0x000D3B80
	.word 0x000D3B80, 0x000D3BC8
	.word 0x000D3BC8, 0x000D3C10
	.word 0x000D3C10, 0x000D3C58
	.word 0x000D3C58, 0x000D3CA0
	.word 0x000D3CA0, 0x000D3CE8
	.word 0x000D3CE8, 0x000D3D30
	.word 0x000D3D30, 0x000D3D78
	.word 0x000D3D78, 0x000D3DC0
	.word 0x000D3DC0, 0x000D3E08
	.word 0x000D3E08, 0x000D3E50
	.word 0x000D3E50, 0x000D3E98
	.word 0x000D3E98, 0x000D3EE0
	.word 0x000D3EE0, 0x000D3F28
	.word 0x000D3F28, 0x000D3F70
	.word 0x000D3F70, 0x000D3FB8
	.word 0x000D3FB8, 0x000D4000
	.word 0x000D4000, 0x000D4048
	.word 0x000D4048, 0x000D4090
	.word 0x000D4090, 0x000D40D8
	.word 0x000D40D8, 0x000D4120
	.word 0x000D4120, 0x000D4168
	.word 0x000D4168, 0x000D41B0
	.word 0x000D41B0, 0x000D41F8
	.word 0x000D41F8, 0x000D4240
	.word 0x000D4240, 0x000D4288
	.word 0x000D4288, 0x000D42D0
	.word 0x000D42D0, 0x000D4318
	.word 0x000D4318, 0x000D4360
	.word 0x000D4360, 0x000D43A8
	.word 0x000D43A8, 0x000D43F0
	.word 0x000D43F0, 0x000D5D20
	.word 0x000D5D20, 0x000D7650
	.word 0x000D7650, 0x000D7698
	.word 0x000D7698, 0x000D8FC8
	.word 0x000D8FC8, 0x000D9010

	; BTNF header
	.ascii "BTNF"
	.word 0x00000010 ; chunk size
	.word 0x00000004 ; offset to first dir
	.short 0 ; first file
	.short 1 ; number of directories

	; GMIF header
	.ascii "GMIF"
	.word 0x000D9018 ; chunk size
	.incbin "baserom.nds", 0x0, 0x1930
	.incbin "baserom.nds", 0x1930, 0x1930
	.incbin "baserom.nds", 0x3260, 0x1930
	.incbin "baserom.nds", 0x4B90, 0x1930
	.incbin "baserom.nds", 0x64C0, 0x1930
	.incbin "baserom.nds", 0x7DF0, 0x1930
	.incbin "baserom.nds", 0x9720, 0x1930
	.incbin "baserom.nds", 0xB050, 0x1930
	.incbin "baserom.nds", 0xC980, 0x1930
	.incbin "baserom.nds", 0xE2B0, 0x1930
	.incbin "baserom.nds", 0xFBE0, 0x1930
	.incbin "baserom.nds", 0x11510, 0x1930
	.incbin "baserom.nds", 0x12E40, 0x1930
	.incbin "baserom.nds", 0x14770, 0x1930
	.incbin "baserom.nds", 0x160A0, 0x1930
	.incbin "baserom.nds", 0x179D0, 0x1930
	.incbin "baserom.nds", 0x19300, 0x1930
	.incbin "baserom.nds", 0x1AC30, 0x1930
	.incbin "baserom.nds", 0x1C560, 0x1930
	.incbin "baserom.nds", 0x1DE90, 0x1930
	.incbin "baserom.nds", 0x1F7C0, 0x1930
	.incbin "baserom.nds", 0x210F0, 0x1930
	.incbin "baserom.nds", 0x22A20, 0x1930
	.incbin "baserom.nds", 0x24350, 0x1930
	.incbin "baserom.nds", 0x25C80, 0x1930
	.incbin "baserom.nds", 0x275B0, 0x1930
	.incbin "baserom.nds", 0x28EE0, 0x1930
	.incbin "baserom.nds", 0x2A810, 0x1930
	.incbin "baserom.nds", 0x2C140, 0x1930
	.incbin "baserom.nds", 0x2DA70, 0x1930
	.incbin "baserom.nds", 0x2F3A0, 0x1930
	.incbin "baserom.nds", 0x30CD0, 0x1930
	.incbin "baserom.nds", 0x32600, 0x1930
	.incbin "baserom.nds", 0x33F30, 0x1930
	.incbin "baserom.nds", 0x35860, 0x1930
	.incbin "baserom.nds", 0x37190, 0x1930
	.incbin "baserom.nds", 0x38AC0, 0x1930
	.incbin "baserom.nds", 0x3A3F0, 0x1930
	.incbin "baserom.nds", 0x3BD20, 0x1930
	.incbin "baserom.nds", 0x3D650, 0x1930
	.incbin "baserom.nds", 0x3EF80, 0x1930
	.incbin "baserom.nds", 0x408B0, 0x1930
	.incbin "baserom.nds", 0x421E0, 0x1930
	.incbin "baserom.nds", 0x43B10, 0x1930
	.incbin "baserom.nds", 0x45440, 0x1930
	.incbin "baserom.nds", 0x46D70, 0x1930
	.incbin "baserom.nds", 0x486A0, 0x1930
	.incbin "baserom.nds", 0x49FD0, 0x1930
	.incbin "baserom.nds", 0x4B900, 0x1930
	.incbin "baserom.nds", 0x4D230, 0x1930
	.incbin "baserom.nds", 0x4EB60, 0x1930
	.incbin "baserom.nds", 0x50490, 0x1930
	.incbin "baserom.nds", 0x51DC0, 0x1930
	.incbin "baserom.nds", 0x536F0, 0x1930
	.incbin "baserom.nds", 0x55020, 0x1930
	.incbin "baserom.nds", 0x56950, 0x1930
	.incbin "baserom.nds", 0x58280, 0x1930
	.incbin "baserom.nds", 0x59BB0, 0x1930
	.incbin "baserom.nds", 0x5B4E0, 0x1930
	.incbin "baserom.nds", 0x5CE10, 0x1930
	.incbin "baserom.nds", 0x5E740, 0x1930
	.incbin "baserom.nds", 0x60070, 0x1930
	.incbin "baserom.nds", 0x619A0, 0x1930
	.incbin "baserom.nds", 0x632D0, 0x1930
	.incbin "baserom.nds", 0x64C00, 0x1930
	.incbin "baserom.nds", 0x66530, 0x1930
	.incbin "baserom.nds", 0x67E60, 0x1930
	.incbin "baserom.nds", 0x69790, 0x1930
	.incbin "baserom.nds", 0x6B0C0, 0x1930
	.incbin "baserom.nds", 0x6C9F0, 0x1930
	.incbin "baserom.nds", 0x6E320, 0x1930
	.incbin "baserom.nds", 0x6FC50, 0x1930
	.incbin "baserom.nds", 0x71580, 0x1930
	.incbin "baserom.nds", 0x72EB0, 0x1930
	.incbin "baserom.nds", 0x747E0, 0x1930
	.incbin "baserom.nds", 0x76110, 0x1930
	.incbin "baserom.nds", 0x77A40, 0x1930
	.incbin "baserom.nds", 0x79370, 0x1930
	.incbin "baserom.nds", 0x7ACA0, 0x1930
	.incbin "baserom.nds", 0x7C5D0, 0x1930
	.incbin "baserom.nds", 0x7DF00, 0x1930
	.incbin "baserom.nds", 0x7F830, 0x1930
	.incbin "baserom.nds", 0x81160, 0x1930
	.incbin "baserom.nds", 0x82A90, 0x1930
	.incbin "baserom.nds", 0x843C0, 0x1930
	.incbin "baserom.nds", 0x85CF0, 0x1930
	.incbin "baserom.nds", 0x87620, 0x1930
	.incbin "baserom.nds", 0x88F50, 0x1930
	.incbin "baserom.nds", 0x8A880, 0x1930
	.incbin "baserom.nds", 0x8C1B0, 0x1930
	.incbin "baserom.nds", 0x8DAE0, 0x1930
	.incbin "baserom.nds", 0x8F410, 0x1930
	.incbin "baserom.nds", 0x90D40, 0x1930
	.incbin "baserom.nds", 0x92670, 0x1930
	.incbin "baserom.nds", 0x93FA0, 0x1930
	.incbin "baserom.nds", 0x958D0, 0x1930
	.incbin "baserom.nds", 0x97200, 0x1930
	.incbin "baserom.nds", 0x98B30, 0x1930
	.incbin "baserom.nds", 0x9A460, 0x1930
	.incbin "baserom.nds", 0x9BD90, 0x1930
	.incbin "baserom.nds", 0x9D6C0, 0x1930
	.incbin "baserom.nds", 0x9EFF0, 0x1930
	.incbin "baserom.nds", 0xA0920, 0x1930
	.incbin "baserom.nds", 0xA2250, 0x1930
	.incbin "baserom.nds", 0xA3B80, 0x1930
	.incbin "baserom.nds", 0xA54B0, 0x1930
	.incbin "baserom.nds", 0xA6DE0, 0x1930
	.incbin "baserom.nds", 0xA8710, 0x1930
	.incbin "baserom.nds", 0xAA040, 0x1930
	.incbin "baserom.nds", 0xAB970, 0x1930
	.incbin "baserom.nds", 0xAD2A0, 0x1930
	.incbin "baserom.nds", 0xAEBD0, 0x1930
	.incbin "baserom.nds", 0xB0500, 0x1930
	.incbin "baserom.nds", 0xB1E30, 0x1930
	.incbin "baserom.nds", 0xB3760, 0x1930
	.incbin "baserom.nds", 0xB5090, 0x1930
	.incbin "baserom.nds", 0xB69C0, 0x1930
	.incbin "baserom.nds", 0xB82F0, 0x1930
	.incbin "baserom.nds", 0xB9C20, 0x1930
	.incbin "baserom.nds", 0xBB550, 0x1930
	.incbin "baserom.nds", 0xBCE80, 0x1930
	.incbin "baserom.nds", 0xBE7B0, 0x1930
	.incbin "baserom.nds", 0xC00E0, 0x1930
	.incbin "baserom.nds", 0xC1A10, 0x1930
	.incbin "baserom.nds", 0xC3340, 0x1930
	.incbin "baserom.nds", 0xC4C70, 0x1930
	.incbin "baserom.nds", 0xC65A0, 0x1930
	.incbin "baserom.nds", 0xC7ED0, 0x1930
	.incbin "baserom.nds", 0xC9800, 0x1930
	.incbin "baserom.nds", 0xCB130, 0x1930
	.incbin "baserom.nds", 0xCCA60, 0x1930
	.incbin "baserom.nds", 0xCE390, 0x1930
	.incbin "baserom.nds", 0xCFCC0, 0x1930
	.incbin "baserom.nds", 0xD15F0, 0x1930
	.incbin "baserom.nds", 0xD2F20, 0x48
	.incbin "baserom.nds", 0xD2F68, 0x48
	.incbin "baserom.nds", 0xD2FB0, 0x48
	.incbin "baserom.nds", 0xD2FF8, 0x48
	.incbin "baserom.nds", 0xD3040, 0x48
	.incbin "baserom.nds", 0xD3088, 0x48
	.incbin "baserom.nds", 0xD30D0, 0x48
	.incbin "baserom.nds", 0xD3118, 0x48
	.incbin "baserom.nds", 0xD3160, 0x48
	.incbin "baserom.nds", 0xD31A8, 0x48
	.incbin "baserom.nds", 0xD31F0, 0x48
	.incbin "baserom.nds", 0xD3238, 0x48
	.incbin "baserom.nds", 0xD3280, 0x48
	.incbin "baserom.nds", 0xD32C8, 0x48
	.incbin "baserom.nds", 0xD3310, 0x48
	.incbin "baserom.nds", 0xD3358, 0x48
	.incbin "baserom.nds", 0xD33A0, 0x48
	.incbin "baserom.nds", 0xD33E8, 0x48
	.incbin "baserom.nds", 0xD3430, 0x48
	.incbin "baserom.nds", 0xD3478, 0x48
	.incbin "baserom.nds", 0xD34C0, 0x48
	.incbin "baserom.nds", 0xD3508, 0x48
	.incbin "baserom.nds", 0xD3550, 0x48
	.incbin "baserom.nds", 0xD3598, 0x48
	.incbin "baserom.nds", 0xD35E0, 0x48
	.incbin "baserom.nds", 0xD3628, 0x48
	.incbin "baserom.nds", 0xD3670, 0x48
	.incbin "baserom.nds", 0xD36B8, 0x48
	.incbin "baserom.nds", 0xD3700, 0x48
	.incbin "baserom.nds", 0xD3748, 0x48
	.incbin "baserom.nds", 0xD3790, 0x48
	.incbin "baserom.nds", 0xD37D8, 0x48
	.incbin "baserom.nds", 0xD3820, 0x48
	.incbin "baserom.nds", 0xD3868, 0x48
	.incbin "baserom.nds", 0xD38B0, 0x48
	.incbin "baserom.nds", 0xD38F8, 0x48
	.incbin "baserom.nds", 0xD3940, 0x48
	.incbin "baserom.nds", 0xD3988, 0x48
	.incbin "baserom.nds", 0xD39D0, 0x48
	.incbin "baserom.nds", 0xD3A18, 0x48
	.incbin "baserom.nds", 0xD3A60, 0x48
	.incbin "baserom.nds", 0xD3AA8, 0x48
	.incbin "baserom.nds", 0xD3AF0, 0x48
	.incbin "baserom.nds", 0xD3B38, 0x48
	.incbin "baserom.nds", 0xD3B80, 0x48
	.incbin "baserom.nds", 0xD3BC8, 0x48
	.incbin "baserom.nds", 0xD3C10, 0x48
	.incbin "baserom.nds", 0xD3C58, 0x48
	.incbin "baserom.nds", 0xD3CA0, 0x48
	.incbin "baserom.nds", 0xD3CE8, 0x48
	.incbin "baserom.nds", 0xD3D30, 0x48
	.incbin "baserom.nds", 0xD3D78, 0x48
	.incbin "baserom.nds", 0xD3DC0, 0x48
	.incbin "baserom.nds", 0xD3E08, 0x48
	.incbin "baserom.nds", 0xD3E50, 0x48
	.incbin "baserom.nds", 0xD3E98, 0x48
	.incbin "baserom.nds", 0xD3EE0, 0x48
	.incbin "baserom.nds", 0xD3F28, 0x48
	.incbin "baserom.nds", 0xD3F70, 0x48
	.incbin "baserom.nds", 0xD3FB8, 0x48
	.incbin "baserom.nds", 0xD4000, 0x48
	.incbin "baserom.nds", 0xD4048, 0x48
	.incbin "baserom.nds", 0xD4090, 0x48
	.incbin "baserom.nds", 0xD40D8, 0x48
	.incbin "baserom.nds", 0xD4120, 0x48
	.incbin "baserom.nds", 0xD4168, 0x48
	.incbin "baserom.nds", 0xD41B0, 0x48
	.incbin "baserom.nds", 0xD41F8, 0x48
	.incbin "baserom.nds", 0xD4240, 0x48
	.incbin "baserom.nds", 0xD4288, 0x48
	.incbin "baserom.nds", 0xD42D0, 0x48
	.incbin "baserom.nds", 0xD4318, 0x48
	.incbin "baserom.nds", 0xD4360, 0x48
	.incbin "baserom.nds", 0xD43A8, 0x48
	.incbin "baserom.nds", 0xD43F0, 0x1930
	.incbin "baserom.nds", 0xD5D20, 0x1930
	.incbin "baserom.nds", 0xD7650, 0x48
	.incbin "baserom.nds", 0xD7698, 0x1930
	.incbin "baserom.nds", 0xD8FC8, 0x48
	.balign 4, 255
