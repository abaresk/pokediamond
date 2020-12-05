#include "global.h"
#include "main.h"
#include "math_util.h"
#include "save_block_2.h"
#include "unk_0202A924.h"

#pragma thumb on

struct UnknownC {
    // Maybe this is a union
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
    /* 0x000 */ u32 unk_000;
    /* 0x004 */ u32 unk_004;
    /* 0x008 */ u32 unk_008;
    /* 0x00C */ u16 unk_00C;
    /* 0x00E */ u16 unk_00E;
    /* 0x010 */ struct UnknownB unk_010;
    /* 0x0B9*/ u8 unk_0B1[83];
    /* 0x10C*/ struct UnknownD unk_10F;
}; // size: 0x110

u32 FUN_0202A924(void)
{
    return sizeof(struct UnknownA);
}

// Probably initialize
void FUN_0202A92C(struct UnknownA * a0)
{
    memset(a0, 0, sizeof(struct UnknownA));
    a0->unk_000 = MTRandom();
    a0->unk_004 = MTRandom();

    a0->unk_008 = 0;
    a0->unk_00C = 0xFFFF;
    a0->unk_00E = 0xFFFF;

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

void FUN_0202A988(struct UnknownA *a0, u32 val)
{
    a0->unk_000 = val;
    a0->unk_004 = val;
}

u32 FUN_0202A990(struct UnknownA *a0, u32 a1)
{
    switch (a1)
    {
    case 1:
        return a0->unk_000;
        break;
    case 2:
        return a0->unk_004;
        break;    
    }
    GF_ASSERT(0);
    return 0;
}

u8 * FUN_0202A9AC(struct UnknownA *a0)
{
    return a0->unk_0B1;
}

void *FUN_0202A9B0(struct SaveBlock2 *a0)
{
    return SavArray_get(a0, 25);
}

struct UnknownB * FUN_0202A9BC(struct UnknownA *a0)
{
    return &a0->unk_010;
}

u8 FUN_0202A9C0(struct UnknownB *a0)
{
    return a0->unk_0;
}

u8 FUN_0202A9C4(u8 a0, struct UnknownB *a1)
{
    a1->unk_0 = a0;
}

// This is probably referring to a member of a struct
void *FUN_0202A9C8(u8 a0, void *a1)
{
   return a1 + 4 + a0 * 8;
}

void FUN_0202A9D0(struct SaveBlock2 *a0, u32 a1)
{
    void *offset = FUN_0202A9B0(a0) + 16;

    for (int i = 0; i < 21; i++) 
    {
        s32 * ptr = FUN_0202A9C8(i, offset);
        if (*ptr == 0)
            continue;

        *ptr = *ptr - a1;
        if (*ptr < 0)
            *ptr = 0;
    }
}

void FUN_0202AA00(struct SaveBlock2 *a0)
{
    struct UnknownA *n0 = (struct UnknownA *) FUN_0202A9B0(a0);
    n0->unk_10F.unk_0 = 1;
}

u8 FUN_0202AA14(struct UnknownA * a0)
{
    return a0->unk_10F.unk_0;
}

// Unsure of type of a0
// Swaps value
void FUN_0202AA20(void * a0, u32 a1)
{
    u32 n0 = *(u32*)(a0 + 200);
    if (n0 == a1)
        return;
    
    *(u32*)(a0 + 204) = n0;
    *(u32*)(a0 + 200) = a1;
}

// Same type as function above
u32 FUN_0202AA38(void * a0)
{
    return *(u32*)(a0 + 204);
}

// Figure out these structs 
u8 FUN_0202AA40(void *a0, u32 a1)
{
    GF_ASSERT(a1 < 3);
    // This doesn't have the correct offset...
    // struct UnknownA *n0 = a0 + a1;
    // return n0->unk_10F.unk_0;
    u8 *n0 = a0 + a1 + 268;
    return *n0;
}

void FUN_0202AA58(void *ptr, u32 offset, u8 val)
{
    GF_ASSERT(offset < 3);
    *(u8*)(ptr + offset + 268) = val;
}

u8 FUN_0202AA74(void *ptr, u32 a1)
{
    GF_ASSERT(a1 < 3);
    return *(u8*)(20 * a1 + ptr + 226);
}

void FUN_0202AA90(u8 **ptr)
{
    u32 i = 20;
    u8 *addr = *ptr;
    for (i = 20; i != 0; --i)
    {
	    *(addr++) = 0;
    }
}

// This looks like an array of arrays
void *FUN_0202AAA0(void *a0, u32 a1)
{
    GF_ASSERT(a1 < 3);
    return a0 + 208 + 20 * a1;
}

// // Seems to be UnknownA
// u32 FUN_0202AAB8(struct UnknownA *a0, u32 a1)
// {
//     switch (a1)
//     {
//     case 0:
//         return;
//     case 1:
//         return a0->unk_000; 
//     case 2:
//         return a0->unk_004; 
//     case 3:
//         return a0->unk_008; 
//     case 4:
//         return a0->unk_00C; 
//     case 5:
//         return a0->unk_00E; 
//     case 6:
//         return a0->unk_010.unk_0;
//     // This suggests these fields are actually bytes
//     case 7:
//         return a0->unk_010.unk_0; 
//     case 8:
//         return a0->unk_010.unk_0; 
//     }
// }