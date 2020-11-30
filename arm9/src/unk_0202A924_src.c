#include "global.h"
#include "main.h"
#include "math_util.h"
#include "unk_0202A924.h"


struct UnknownC {
    u32 unk_00;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 unk_07;
};

struct UnknownD {
    u8 unk_0;
    u8 unk_1;
    u8 unk_2;
    u8 unk_3;
};

struct UnknownB {
    u8 unk_0;
    struct UnknownC unk_1[21];
};

// Need to rename fields
struct UnknownA {
    u32 unk_000;
    u32 unk_004;
    u32 unk_008;
    u16 unk_00A;
    u16 unk_00C;
    struct UnknownB unk_010;
    u8 unk_0B1[83];
    struct UnknownD unk_10F;
};

THUMB_FUNC u32 FUN_0202A924(void)
{
    return sizeof(struct UnknownA);
}

// Probably initialize
THUMB_FUNC void FUN_0202A92C(struct UnknownA * a0)
{
    memset(a0, 0, sizeof(struct UnknownA));
    a0->unk_000 = MTRandom();
    a0->unk_004 = MTRandom();

    a0->unk_008 = 0;
    a0->unk_00A = 0xFFFF;
    a0->unk_00C = 0xFFFF;

    struct UnknownB *ptr = &a0->unk_010;
    ptr->unk_0 = 21;

    for (int i = 0; i < 21; i++) {
        ptr->unk_1[i].unk_00 = 0;
        ptr->unk_1[i].unk_04 = 0;
        ptr->unk_1[i].unk_05 = 0;
        ptr->unk_1[i].unk_06 = 0;
        ptr->unk_1[i].unk_07 = 0;
    }
 
    a0->unk_10F.unk_0 = 0;
    a0->unk_10F.unk_1 = 0;
    a0->unk_10F.unk_2 = 0;
    a0->unk_10F.unk_3 = 0;
}

THUMB_FUNC void FUN_0202A988(struct UnknownA *a0, u32 val)
{
    a0->unk_000 = val;
    a0->unk_004 = val;
}
