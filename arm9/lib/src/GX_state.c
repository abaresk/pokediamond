#include "global.h"
#include "main.h"
#include "gx.h"

extern struct VRAM_banks UNK_021D33C4;

ARM_FUNC void GX_InitGXState(){
    UNK_021D33C4.var00 = 0x0;
    UNK_021D33C4.var02 = 0x0;
    UNK_021D33C4.var04 = 0x0;
    UNK_021D33C4.var06 = 0x0;
    UNK_021D33C4.var08 = 0x0;
    UNK_021D33C4.var0A = 0x0;
    UNK_021D33C4.var0C = 0x0;
    UNK_021D33C4.var0E = 0x0;
    UNK_021D33C4.var10 = 0x0;
    UNK_021D33C4.var12 = 0x0;
    UNK_021D33C4.var14 = 0x0;
    UNK_021D33C4.var16 = 0x0;
    UNK_021D33C4.var18 = 0x0;
    reg_GX_VRAMCNT = 0x0;
    reg_GX_VRAMCNT_E = 0x0;
    reg_GX_VRAMCNT_F = 0x0;
    reg_GX_VRAMCNT_G = 0x0;
    reg_GX_VRAM_HI_CNT = 0x0;
}
