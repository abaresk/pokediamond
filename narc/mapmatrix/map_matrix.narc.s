	.text
	; NARC header
	.ascii "NARC"
	.short 0xFFFE ; byte order
	.short 0x0100 ; version
	.word 0x00002E18 ; size
	.short 0x0010 ; chunk size
	.short 3 ; number following chunks

	; BTAF header
	.ascii "BTAF"
	.word 0x000007B4 ; chunk size
	.short 245 ; number of files
	.balign 4
	.word 0x00000000, 0x0000119C
	.word 0x0000119C, 0x000011A9
	.word 0x000011AC, 0x00001378
	.word 0x00001378, 0x00001389
	.word 0x0000138C, 0x0000139F
	.word 0x000013A0, 0x000013B1
	.word 0x000013B4, 0x000013C5
	.word 0x000013C8, 0x000013E9
	.word 0x000013EC, 0x000013FF
	.word 0x00001400, 0x00001411
	.word 0x00001414, 0x00001427
	.word 0x00001428, 0x00001439
	.word 0x0000143C, 0x00001453
	.word 0x00001454, 0x0000146B
	.word 0x0000146C, 0x0000147F
	.word 0x00001480, 0x00001491
	.word 0x00001494, 0x000014A5
	.word 0x000014A8, 0x000014B9
	.word 0x000014BC, 0x000014CF
	.word 0x000014D0, 0x000014E1
	.word 0x000014E4, 0x000014F7
	.word 0x000014F8, 0x0000150B
	.word 0x0000150C, 0x00001523
	.word 0x00001524, 0x0000153B
	.word 0x0000153C, 0x00001557
	.word 0x00001558, 0x00001569
	.word 0x0000156C, 0x0000157D
	.word 0x00001580, 0x00001591
	.word 0x00001594, 0x000015A5
	.word 0x000015A8, 0x000015B9
	.word 0x000015BC, 0x000015CD
	.word 0x000015D0, 0x000015E1
	.word 0x000015E4, 0x000015F5
	.word 0x000015F8, 0x00001609
	.word 0x0000160C, 0x0000161D
	.word 0x00001620, 0x00001631
	.word 0x00001634, 0x00001645
	.word 0x00001648, 0x00001659
	.word 0x0000165C, 0x0000166D
	.word 0x00001670, 0x00001681
	.word 0x00001684, 0x00001695
	.word 0x00001698, 0x000016A9
	.word 0x000016AC, 0x000016BD
	.word 0x000016C0, 0x000016DB
	.word 0x000016DC, 0x000016F3
	.word 0x000016F4, 0x0000170B
	.word 0x0000170C, 0x00001723
	.word 0x00001724, 0x00001735
	.word 0x00001738, 0x00001749
	.word 0x0000174C, 0x00001763
	.word 0x00001764, 0x0000177B
	.word 0x0000177C, 0x0000178F
	.word 0x00001790, 0x000017A7
	.word 0x000017A8, 0x000017B9
	.word 0x000017BC, 0x000017D3
	.word 0x000017D4, 0x000017EB
	.word 0x000017EC, 0x000017FD
	.word 0x00001800, 0x00001813
	.word 0x00001814, 0x00001835
	.word 0x00001838, 0x00001849
	.word 0x0000184C, 0x00001863
	.word 0x00001864, 0x00001875
	.word 0x00001878, 0x00001889
	.word 0x0000188C, 0x0000189D
	.word 0x000018A0, 0x000018B1
	.word 0x000018B4, 0x000018C5
	.word 0x000018C8, 0x000018D9
	.word 0x000018DC, 0x000018ED
	.word 0x000018F0, 0x00001901
	.word 0x00001904, 0x00001915
	.word 0x00001918, 0x00001929
	.word 0x0000192C, 0x0000193D
	.word 0x00001940, 0x00001951
	.word 0x00001954, 0x00001965
	.word 0x00001968, 0x00001983
	.word 0x00001984, 0x0000199B
	.word 0x0000199C, 0x000019AD
	.word 0x000019B0, 0x000019C3
	.word 0x000019C4, 0x000019D9
	.word 0x000019DC, 0x000019ED
	.word 0x000019F0, 0x00001A01
	.word 0x00001A04, 0x00001A15
	.word 0x00001A18, 0x00001A29
	.word 0x00001A2C, 0x00001A3D
	.word 0x00001A40, 0x00001A57
	.word 0x00001A58, 0x00001A69
	.word 0x00001A6C, 0x00001A7D
	.word 0x00001A80, 0x00001A93
	.word 0x00001A94, 0x00001AA5
	.word 0x00001AA8, 0x00001ABB
	.word 0x00001ABC, 0x00001ACD
	.word 0x00001AD0, 0x00001AE1
	.word 0x00001AE4, 0x00001AF5
	.word 0x00001AF8, 0x00001B09
	.word 0x00001B0C, 0x00001B1D
	.word 0x00001B20, 0x00001B33
	.word 0x00001B34, 0x00001B47
	.word 0x00001B48, 0x00001B5B
	.word 0x00001B5C, 0x00001B6D
	.word 0x00001B70, 0x00001B85
	.word 0x00001B88, 0x00001B99
	.word 0x00001B9C, 0x00001BB7
	.word 0x00001BB8, 0x00001BD3
	.word 0x00001BD4, 0x00001BE5
	.word 0x00001BE8, 0x00001BFF
	.word 0x00001C00, 0x00001C17
	.word 0x00001C18, 0x00001C29
	.word 0x00001C2C, 0x00001C43
	.word 0x00001C44, 0x00001C5B
	.word 0x00001C5C, 0x00001C6D
	.word 0x00001C70, 0x00001C81
	.word 0x00001C84, 0x00001C95
	.word 0x00001C98, 0x00001CA7
	.word 0x00001CA8, 0x00001CB7
	.word 0x00001CB8, 0x00001CC7
	.word 0x00001CC8, 0x00001CD7
	.word 0x00001CD8, 0x00001CE6
	.word 0x00001CE8, 0x00001CF6
	.word 0x00001CF8, 0x00001D06
	.word 0x00001D08, 0x00001D16
	.word 0x00001D18, 0x00001D26
	.word 0x00001D28, 0x00001D36
	.word 0x00001D38, 0x00001D46
	.word 0x00001D48, 0x00001D55
	.word 0x00001D58, 0x00001D65
	.word 0x00001D68, 0x00001D75
	.word 0x00001D78, 0x00001D88
	.word 0x00001D88, 0x00001D98
	.word 0x00001D98, 0x00001DA8
	.word 0x00001DA8, 0x00001DB8
	.word 0x00001DB8, 0x00001DC8
	.word 0x00001DC8, 0x00001DD8
	.word 0x00001DD8, 0x00001DE8
	.word 0x00001DE8, 0x00001DF8
	.word 0x00001DF8, 0x00001E08
	.word 0x00001E08, 0x00001E18
	.word 0x00001E18, 0x00001E28
	.word 0x00001E28, 0x00001E38
	.word 0x00001E38, 0x00001E48
	.word 0x00001E48, 0x00001E58
	.word 0x00001E58, 0x00001E68
	.word 0x00001E68, 0x00001E78
	.word 0x00001E78, 0x00001E88
	.word 0x00001E88, 0x00001E98
	.word 0x00001E98, 0x00001EA8
	.word 0x00001EA8, 0x00001EB9
	.word 0x00001EBC, 0x00001ECD
	.word 0x00001ED0, 0x00001EE1
	.word 0x00001EE4, 0x00001EF2
	.word 0x00001EF4, 0x00001F02
	.word 0x00001F04, 0x00001F12
	.word 0x00001F14, 0x00001F22
	.word 0x00001F24, 0x00001F32
	.word 0x00001F34, 0x00001F42
	.word 0x00001F44, 0x00001F52
	.word 0x00001F54, 0x00001F64
	.word 0x00001F64, 0x00001F74
	.word 0x00001F74, 0x00001F84
	.word 0x00001F84, 0x00001F94
	.word 0x00001F94, 0x00001FA4
	.word 0x00001FA4, 0x00001FB4
	.word 0x00001FB4, 0x00001FC5
	.word 0x00001FC8, 0x00001FD9
	.word 0x00001FDC, 0x00001FED
	.word 0x00001FF0, 0x00002001
	.word 0x00002004, 0x00002014
	.word 0x00002014, 0x00002026
	.word 0x00002028, 0x00002038
	.word 0x00002038, 0x00002048
	.word 0x00002048, 0x0000205A
	.word 0x0000205C, 0x0000206C
	.word 0x0000206C, 0x0000207D
	.word 0x00002080, 0x00002092
	.word 0x00002094, 0x000020A6
	.word 0x000020A8, 0x000020BA
	.word 0x000020BC, 0x000020CE
	.word 0x000020D0, 0x000020E2
	.word 0x000020E4, 0x000020F6
	.word 0x000020F8, 0x0000210A
	.word 0x0000210C, 0x0000211C
	.word 0x0000211C, 0x0000212C
	.word 0x0000212C, 0x0000213C
	.word 0x0000213C, 0x0000214C
	.word 0x0000214C, 0x0000215D
	.word 0x00002160, 0x00002171
	.word 0x00002174, 0x00002185
	.word 0x00002188, 0x00002199
	.word 0x0000219C, 0x000021AD
	.word 0x000021B0, 0x000021C1
	.word 0x000021C4, 0x000021D5
	.word 0x000021D8, 0x000021E9
	.word 0x000021EC, 0x000021FE
	.word 0x00002200, 0x00002212
	.word 0x00002214, 0x00002225
	.word 0x00002228, 0x00002239
	.word 0x0000223C, 0x0000224D
	.word 0x00002250, 0x00002261
	.word 0x00002264, 0x00002275
	.word 0x00002278, 0x00002289
	.word 0x0000228C, 0x0000229D
	.word 0x000022A0, 0x000022B1
	.word 0x000022B4, 0x000022C4
	.word 0x000022C4, 0x000022D4
	.word 0x000022D4, 0x000022E6
	.word 0x000022E8, 0x000022F8
	.word 0x000022F8, 0x00002308
	.word 0x00002308, 0x00002316
	.word 0x00002318, 0x00002326
	.word 0x00002328, 0x00002338
	.word 0x00002338, 0x00002348
	.word 0x00002348, 0x00002358
	.word 0x00002358, 0x00002368
	.word 0x00002368, 0x00002378
	.word 0x00002378, 0x00002388
	.word 0x00002388, 0x00002398
	.word 0x00002398, 0x000023A8
	.word 0x000023A8, 0x000023B8
	.word 0x000023B8, 0x000023C9
	.word 0x000023CC, 0x000023DD
	.word 0x000023E0, 0x000023F1
	.word 0x000023F4, 0x00002405
	.word 0x00002408, 0x00002419
	.word 0x0000241C, 0x0000242D
	.word 0x00002430, 0x00002441
	.word 0x00002444, 0x00002455
	.word 0x00002458, 0x00002469
	.word 0x0000246C, 0x0000247D
	.word 0x00002480, 0x00002491
	.word 0x00002494, 0x000024A5
	.word 0x000024A8, 0x000024BF
	.word 0x000024C0, 0x000024D2
	.word 0x000024D4, 0x000024E3
	.word 0x000024E4, 0x000024F3
	.word 0x000024F4, 0x00002503
	.word 0x00002504, 0x00002516
	.word 0x00002518, 0x00002526
	.word 0x00002528, 0x0000253A
	.word 0x0000253C, 0x0000254E
	.word 0x00002550, 0x00002561
	.word 0x00002564, 0x00002577
	.word 0x00002578, 0x000025EB
	.word 0x000025EC, 0x00002603
	.word 0x00002604, 0x0000261B
	.word 0x0000261C, 0x00002629
	.word 0x0000262C, 0x00002639

	; BTNF header
	.ascii "BTNF"
	.word 0x00000010 ; chunk size
	.word 0x00000004 ; offset to first dir
	.short 0 ; first file
	.short 1 ; number of directories

	; GMIF header
	.ascii "GMIF"
	.word 0x00002644 ; chunk size
	.incbin "baserom.nds", 0x0, 0x119C
	.incbin "baserom.nds", 0x119C, 0xD
	.incbin "baserom.nds", 0x11AC, 0x1CC
	.incbin "baserom.nds", 0x1378, 0x11
	.incbin "baserom.nds", 0x138C, 0x13
	.incbin "baserom.nds", 0x13A0, 0x11
	.incbin "baserom.nds", 0x13B4, 0x11
	.incbin "baserom.nds", 0x13C8, 0x21
	.incbin "baserom.nds", 0x13EC, 0x13
	.incbin "baserom.nds", 0x1400, 0x11
	.incbin "baserom.nds", 0x1414, 0x13
	.incbin "baserom.nds", 0x1428, 0x11
	.incbin "baserom.nds", 0x143C, 0x17
	.incbin "baserom.nds", 0x1454, 0x17
	.incbin "baserom.nds", 0x146C, 0x13
	.incbin "baserom.nds", 0x1480, 0x11
	.incbin "baserom.nds", 0x1494, 0x11
	.incbin "baserom.nds", 0x14A8, 0x11
	.incbin "baserom.nds", 0x14BC, 0x13
	.incbin "baserom.nds", 0x14D0, 0x11
	.incbin "baserom.nds", 0x14E4, 0x13
	.incbin "baserom.nds", 0x14F8, 0x13
	.incbin "baserom.nds", 0x150C, 0x17
	.incbin "baserom.nds", 0x1524, 0x17
	.incbin "baserom.nds", 0x153C, 0x1B
	.incbin "baserom.nds", 0x1558, 0x11
	.incbin "baserom.nds", 0x156C, 0x11
	.incbin "baserom.nds", 0x1580, 0x11
	.incbin "baserom.nds", 0x1594, 0x11
	.incbin "baserom.nds", 0x15A8, 0x11
	.incbin "baserom.nds", 0x15BC, 0x11
	.incbin "baserom.nds", 0x15D0, 0x11
	.incbin "baserom.nds", 0x15E4, 0x11
	.incbin "baserom.nds", 0x15F8, 0x11
	.incbin "baserom.nds", 0x160C, 0x11
	.incbin "baserom.nds", 0x1620, 0x11
	.incbin "baserom.nds", 0x1634, 0x11
	.incbin "baserom.nds", 0x1648, 0x11
	.incbin "baserom.nds", 0x165C, 0x11
	.incbin "baserom.nds", 0x1670, 0x11
	.incbin "baserom.nds", 0x1684, 0x11
	.incbin "baserom.nds", 0x1698, 0x11
	.incbin "baserom.nds", 0x16AC, 0x11
	.incbin "baserom.nds", 0x16C0, 0x1B
	.incbin "baserom.nds", 0x16DC, 0x17
	.incbin "baserom.nds", 0x16F4, 0x17
	.incbin "baserom.nds", 0x170C, 0x17
	.incbin "baserom.nds", 0x1724, 0x11
	.incbin "baserom.nds", 0x1738, 0x11
	.incbin "baserom.nds", 0x174C, 0x17
	.incbin "baserom.nds", 0x1764, 0x17
	.incbin "baserom.nds", 0x177C, 0x13
	.incbin "baserom.nds", 0x1790, 0x17
	.incbin "baserom.nds", 0x17A8, 0x11
	.incbin "baserom.nds", 0x17BC, 0x17
	.incbin "baserom.nds", 0x17D4, 0x17
	.incbin "baserom.nds", 0x17EC, 0x11
	.incbin "baserom.nds", 0x1800, 0x13
	.incbin "baserom.nds", 0x1814, 0x21
	.incbin "baserom.nds", 0x1838, 0x11
	.incbin "baserom.nds", 0x184C, 0x17
	.incbin "baserom.nds", 0x1864, 0x11
	.incbin "baserom.nds", 0x1878, 0x11
	.incbin "baserom.nds", 0x188C, 0x11
	.incbin "baserom.nds", 0x18A0, 0x11
	.incbin "baserom.nds", 0x18B4, 0x11
	.incbin "baserom.nds", 0x18C8, 0x11
	.incbin "baserom.nds", 0x18DC, 0x11
	.incbin "baserom.nds", 0x18F0, 0x11
	.incbin "baserom.nds", 0x1904, 0x11
	.incbin "baserom.nds", 0x1918, 0x11
	.incbin "baserom.nds", 0x192C, 0x11
	.incbin "baserom.nds", 0x1940, 0x11
	.incbin "baserom.nds", 0x1954, 0x11
	.incbin "baserom.nds", 0x1968, 0x1B
	.incbin "baserom.nds", 0x1984, 0x17
	.incbin "baserom.nds", 0x199C, 0x11
	.incbin "baserom.nds", 0x19B0, 0x13
	.incbin "baserom.nds", 0x19C4, 0x15
	.incbin "baserom.nds", 0x19DC, 0x11
	.incbin "baserom.nds", 0x19F0, 0x11
	.incbin "baserom.nds", 0x1A04, 0x11
	.incbin "baserom.nds", 0x1A18, 0x11
	.incbin "baserom.nds", 0x1A2C, 0x11
	.incbin "baserom.nds", 0x1A40, 0x17
	.incbin "baserom.nds", 0x1A58, 0x11
	.incbin "baserom.nds", 0x1A6C, 0x11
	.incbin "baserom.nds", 0x1A80, 0x13
	.incbin "baserom.nds", 0x1A94, 0x11
	.incbin "baserom.nds", 0x1AA8, 0x13
	.incbin "baserom.nds", 0x1ABC, 0x11
	.incbin "baserom.nds", 0x1AD0, 0x11
	.incbin "baserom.nds", 0x1AE4, 0x11
	.incbin "baserom.nds", 0x1AF8, 0x11
	.incbin "baserom.nds", 0x1B0C, 0x11
	.incbin "baserom.nds", 0x1B20, 0x13
	.incbin "baserom.nds", 0x1B34, 0x13
	.incbin "baserom.nds", 0x1B48, 0x13
	.incbin "baserom.nds", 0x1B5C, 0x11
	.incbin "baserom.nds", 0x1B70, 0x15
	.incbin "baserom.nds", 0x1B88, 0x11
	.incbin "baserom.nds", 0x1B9C, 0x1B
	.incbin "baserom.nds", 0x1BB8, 0x1B
	.incbin "baserom.nds", 0x1BD4, 0x11
	.incbin "baserom.nds", 0x1BE8, 0x17
	.incbin "baserom.nds", 0x1C00, 0x17
	.incbin "baserom.nds", 0x1C18, 0x11
	.incbin "baserom.nds", 0x1C2C, 0x17
	.incbin "baserom.nds", 0x1C44, 0x17
	.incbin "baserom.nds", 0x1C5C, 0x11
	.incbin "baserom.nds", 0x1C70, 0x11
	.incbin "baserom.nds", 0x1C84, 0x11
	.incbin "baserom.nds", 0x1C98, 0xF
	.incbin "baserom.nds", 0x1CA8, 0xF
	.incbin "baserom.nds", 0x1CB8, 0xF
	.incbin "baserom.nds", 0x1CC8, 0xF
	.incbin "baserom.nds", 0x1CD8, 0xE
	.incbin "baserom.nds", 0x1CE8, 0xE
	.incbin "baserom.nds", 0x1CF8, 0xE
	.incbin "baserom.nds", 0x1D08, 0xE
	.incbin "baserom.nds", 0x1D18, 0xE
	.incbin "baserom.nds", 0x1D28, 0xE
	.incbin "baserom.nds", 0x1D38, 0xE
	.incbin "baserom.nds", 0x1D48, 0xD
	.incbin "baserom.nds", 0x1D58, 0xD
	.incbin "baserom.nds", 0x1D68, 0xD
	.incbin "baserom.nds", 0x1D78, 0x10
	.incbin "baserom.nds", 0x1D88, 0x10
	.incbin "baserom.nds", 0x1D98, 0x10
	.incbin "baserom.nds", 0x1DA8, 0x10
	.incbin "baserom.nds", 0x1DB8, 0x10
	.incbin "baserom.nds", 0x1DC8, 0x10
	.incbin "baserom.nds", 0x1DD8, 0x10
	.incbin "baserom.nds", 0x1DE8, 0x10
	.incbin "baserom.nds", 0x1DF8, 0x10
	.incbin "baserom.nds", 0x1E08, 0x10
	.incbin "baserom.nds", 0x1E18, 0x10
	.incbin "baserom.nds", 0x1E28, 0x10
	.incbin "baserom.nds", 0x1E38, 0x10
	.incbin "baserom.nds", 0x1E48, 0x10
	.incbin "baserom.nds", 0x1E58, 0x10
	.incbin "baserom.nds", 0x1E68, 0x10
	.incbin "baserom.nds", 0x1E78, 0x10
	.incbin "baserom.nds", 0x1E88, 0x10
	.incbin "baserom.nds", 0x1E98, 0x10
	.incbin "baserom.nds", 0x1EA8, 0x11
	.incbin "baserom.nds", 0x1EBC, 0x11
	.incbin "baserom.nds", 0x1ED0, 0x11
	.incbin "baserom.nds", 0x1EE4, 0xE
	.incbin "baserom.nds", 0x1EF4, 0xE
	.incbin "baserom.nds", 0x1F04, 0xE
	.incbin "baserom.nds", 0x1F14, 0xE
	.incbin "baserom.nds", 0x1F24, 0xE
	.incbin "baserom.nds", 0x1F34, 0xE
	.incbin "baserom.nds", 0x1F44, 0xE
	.incbin "baserom.nds", 0x1F54, 0x10
	.incbin "baserom.nds", 0x1F64, 0x10
	.incbin "baserom.nds", 0x1F74, 0x10
	.incbin "baserom.nds", 0x1F84, 0x10
	.incbin "baserom.nds", 0x1F94, 0x10
	.incbin "baserom.nds", 0x1FA4, 0x10
	.incbin "baserom.nds", 0x1FB4, 0x11
	.incbin "baserom.nds", 0x1FC8, 0x11
	.incbin "baserom.nds", 0x1FDC, 0x11
	.incbin "baserom.nds", 0x1FF0, 0x11
	.incbin "baserom.nds", 0x2004, 0x10
	.incbin "baserom.nds", 0x2014, 0x12
	.incbin "baserom.nds", 0x2028, 0x10
	.incbin "baserom.nds", 0x2038, 0x10
	.incbin "baserom.nds", 0x2048, 0x12
	.incbin "baserom.nds", 0x205C, 0x10
	.incbin "baserom.nds", 0x206C, 0x11
	.incbin "baserom.nds", 0x2080, 0x12
	.incbin "baserom.nds", 0x2094, 0x12
	.incbin "baserom.nds", 0x20A8, 0x12
	.incbin "baserom.nds", 0x20BC, 0x12
	.incbin "baserom.nds", 0x20D0, 0x12
	.incbin "baserom.nds", 0x20E4, 0x12
	.incbin "baserom.nds", 0x20F8, 0x12
	.incbin "baserom.nds", 0x210C, 0x10
	.incbin "baserom.nds", 0x211C, 0x10
	.incbin "baserom.nds", 0x212C, 0x10
	.incbin "baserom.nds", 0x213C, 0x10
	.incbin "baserom.nds", 0x214C, 0x11
	.incbin "baserom.nds", 0x2160, 0x11
	.incbin "baserom.nds", 0x2174, 0x11
	.incbin "baserom.nds", 0x2188, 0x11
	.incbin "baserom.nds", 0x219C, 0x11
	.incbin "baserom.nds", 0x21B0, 0x11
	.incbin "baserom.nds", 0x21C4, 0x11
	.incbin "baserom.nds", 0x21D8, 0x11
	.incbin "baserom.nds", 0x21EC, 0x12
	.incbin "baserom.nds", 0x2200, 0x12
	.incbin "baserom.nds", 0x2214, 0x11
	.incbin "baserom.nds", 0x2228, 0x11
	.incbin "baserom.nds", 0x223C, 0x11
	.incbin "baserom.nds", 0x2250, 0x11
	.incbin "baserom.nds", 0x2264, 0x11
	.incbin "baserom.nds", 0x2278, 0x11
	.incbin "baserom.nds", 0x228C, 0x11
	.incbin "baserom.nds", 0x22A0, 0x11
	.incbin "baserom.nds", 0x22B4, 0x10
	.incbin "baserom.nds", 0x22C4, 0x10
	.incbin "baserom.nds", 0x22D4, 0x12
	.incbin "baserom.nds", 0x22E8, 0x10
	.incbin "baserom.nds", 0x22F8, 0x10
	.incbin "baserom.nds", 0x2308, 0xE
	.incbin "baserom.nds", 0x2318, 0xE
	.incbin "baserom.nds", 0x2328, 0x10
	.incbin "baserom.nds", 0x2338, 0x10
	.incbin "baserom.nds", 0x2348, 0x10
	.incbin "baserom.nds", 0x2358, 0x10
	.incbin "baserom.nds", 0x2368, 0x10
	.incbin "baserom.nds", 0x2378, 0x10
	.incbin "baserom.nds", 0x2388, 0x10
	.incbin "baserom.nds", 0x2398, 0x10
	.incbin "baserom.nds", 0x23A8, 0x10
	.incbin "baserom.nds", 0x23B8, 0x11
	.incbin "baserom.nds", 0x23CC, 0x11
	.incbin "baserom.nds", 0x23E0, 0x11
	.incbin "baserom.nds", 0x23F4, 0x11
	.incbin "baserom.nds", 0x2408, 0x11
	.incbin "baserom.nds", 0x241C, 0x11
	.incbin "baserom.nds", 0x2430, 0x11
	.incbin "baserom.nds", 0x2444, 0x11
	.incbin "baserom.nds", 0x2458, 0x11
	.incbin "baserom.nds", 0x246C, 0x11
	.incbin "baserom.nds", 0x2480, 0x11
	.incbin "baserom.nds", 0x2494, 0x11
	.incbin "baserom.nds", 0x24A8, 0x17
	.incbin "baserom.nds", 0x24C0, 0x12
	.incbin "baserom.nds", 0x24D4, 0xF
	.incbin "baserom.nds", 0x24E4, 0xF
	.incbin "baserom.nds", 0x24F4, 0xF
	.incbin "baserom.nds", 0x2504, 0x12
	.incbin "baserom.nds", 0x2518, 0xE
	.incbin "baserom.nds", 0x2528, 0x12
	.incbin "baserom.nds", 0x253C, 0x12
	.incbin "baserom.nds", 0x2550, 0x11
	.incbin "baserom.nds", 0x2564, 0x13
	.incbin "baserom.nds", 0x2578, 0x73
	.incbin "baserom.nds", 0x25EC, 0x17
	.incbin "baserom.nds", 0x2604, 0x17
	.incbin "baserom.nds", 0x261C, 0xD
	.incbin "baserom.nds", 0x262C, 0xD
	.balign 4, 255
