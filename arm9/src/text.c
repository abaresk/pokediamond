#include "text.h"
#include "heap.h"
#include "string16.h"
#include "MI_memory.h"

const struct FontInfo *gFonts = NULL;

u16 UNK_021C5734[0x100];
u32 UNK_021C5714[8];
u8 UNK_021C570C[8];

extern u32 FUN_0200CA7C(void (*func)(u32, struct TextPrinter *), struct TextPrinter *printer, u32 param2);

extern struct TextPrinter *FUN_0201B6C8(void);
extern void FUN_0200CAB4(u32 param0);

extern void FUN_0201C1A8(struct TextPrinter *printer);
extern void CopyWindowToVram(u32 windowId);

extern u32 FontFunc(u8 fontId, struct TextPrinter *printer);

extern void *FUN_02006BB0(u32 param0, u32 param1, u32 param2, struct TextPrinter **param3, u32 param4);

extern u32 FUN_0201AB0C(u32 windowId);
extern void FUN_02019658(u32 param0, u32 param1, u32 param2, u32 param3, u32 param4, u32 param5, u32 param6, u32 param7, u32 param8, u32 param9);


THUMB_FUNC void SetFontsPointer(const struct FontInfo *fonts)
{
    gFonts = fonts;
}

THUMB_FUNC u8 FUN_0201BCC8(void (*func)(u32, struct TextPrinter *), struct TextPrinter *printer, u32 param2)
{
    u32 *r4 = UNK_021C5714;
    s32 i;
    for (i = 0; i < 8; i++, r4++)
    {
        if (r4[0] != 0)
        {
            continue;
        }
        UNK_021C5714[i] = FUN_0200CA7C(func, printer, param2);
        if (UNK_021C5714[i] != 0)
        {
            break;
        }
        i = 8;
        break;
    }
    return (u8)i;
}

THUMB_FUNC void FUN_0201BCFC(u32 param0)
{
    GF_ASSERT(param0 < 8);
    GF_ASSERT(UNK_021C5714[param0] != 0);
    if (param0 >= 8)
    {
        return;
    }
    if (UNK_021C5714[param0] == 0)
    {
        return;
    }
    struct TextPrinter *printer = FUN_0201B6C8();
    if (printer)
    {
        FUN_0201C238(printer);
        FreeToHeap((void *)printer);
    }
    FUN_0200CAB4(UNK_021C5714[param0]);
    UNK_021C5714[param0] = 0;
}

THUMB_FUNC BOOL FUN_0201BD44(u32 param0)
{
    return UNK_021C5714[param0] ? TRUE : FALSE;
}

THUMB_FUNC void FUN_0201BD5C(void)
{
    for (s32 i = 0; i < 8; i++)
    {
        UNK_021C5714[i] = 0;
    }
}

THUMB_FUNC u8 FUN_0201BD70(u32 param0)
{
    return (u8)FUN_0201BD44(param0);
}

THUMB_FUNC void FUN_0201BD7C(u32 param0)
{
    FUN_0201BCFC(param0);
}

THUMB_FUNC u16 AddTextPrinterParameterized(u32 windowId, u8 fontId, const u16 *str, u32 x, u32 y, u32 speed, u8 (*callback)(struct TextPrinterTemplate *, u16))
{
    struct TextPrinterTemplate printerTemplate;

    printerTemplate.windowId = windowId;
    printerTemplate.currentChar = str;
    printerTemplate.fontId = fontId;
    printerTemplate.x = (u8)x;
    printerTemplate.y = (u8)y;
    printerTemplate.currentX = (u8)x;
    printerTemplate.currentY = (u8)y;
    printerTemplate.letterSpacing = gFonts[fontId].letterSpacing;
    printerTemplate.lineSpacing = gFonts[fontId].lineSpacing;
    printerTemplate.unk = gFonts[fontId].unk;
    printerTemplate.fgColor = gFonts[fontId].fgColor;
    printerTemplate.bgColor = gFonts[fontId].bgColor;
    printerTemplate.shadowColor = gFonts[fontId].shadowColor;
    printerTemplate.unk2 = 0;
    printerTemplate.unk3 = 0;
    printerTemplate.unk4 = 255;
    return AddTextPrinter(&printerTemplate, speed, callback);
}

THUMB_FUNC u16 AddTextPrinterParameterized2(u32 windowId, u8 fontId, const u16 *str, u32 x, u32 y, u32 speed, u32 colors, u8 (*callback)(struct TextPrinterTemplate *, u16))
{
    struct TextPrinterTemplate printerTemplate;

    printerTemplate.windowId = windowId;
    printerTemplate.currentChar = str;
    printerTemplate.fontId = fontId;
    printerTemplate.x = (u8)x;
    printerTemplate.y = (u8)y;
    printerTemplate.currentX = (u8)x;
    printerTemplate.currentY = (u8)y;
    printerTemplate.letterSpacing = gFonts[fontId].letterSpacing;
    printerTemplate.lineSpacing = gFonts[fontId].lineSpacing;
    printerTemplate.unk = gFonts[fontId].unk;
    printerTemplate.fgColor = (u8)(colors >> 16);
    printerTemplate.shadowColor = (u8)(colors >> 8);
    printerTemplate.bgColor = (u8)colors;
    printerTemplate.unk2 = 0;
    printerTemplate.unk3 = 0;
    printerTemplate.unk4 = 255;
    return AddTextPrinter(&printerTemplate, speed, callback);
}

THUMB_FUNC u16 AddTextPrinterParameterized3(u32 windowId, u8 fontId, const u16 *str, u32 x, u32 y, u32 speed, u32 colors, u32 letterSpacing, u32 lineSpacing, u8 (*callback)(struct TextPrinterTemplate *, u16))
{
    struct TextPrinterTemplate printerTemplate;

    printerTemplate.windowId = windowId;
    printerTemplate.currentChar = str;
    printerTemplate.fontId = fontId;
    printerTemplate.x = (u8)x;
    printerTemplate.y = (u8)y;
    printerTemplate.currentX = (u8)x;
    printerTemplate.currentY = (u8)y;
    printerTemplate.letterSpacing = (u8)letterSpacing;
    printerTemplate.lineSpacing = (u8)lineSpacing;
    printerTemplate.unk = gFonts[fontId].unk;
    printerTemplate.fgColor = (u8)(colors >> 16);
    printerTemplate.shadowColor = (u8)(colors >> 8);
    printerTemplate.bgColor = (u8)colors;
    printerTemplate.unk2 = 0;
    printerTemplate.unk3 = 0;
    printerTemplate.unk4 = 255;
    return AddTextPrinter(&printerTemplate, speed, callback);
}

THUMB_FUNC u16 AddTextPrinter(struct TextPrinterTemplate *printerTemplate, u32 speed, u8 (*callback)(struct TextPrinterTemplate *, u16))
{
    if (!gFonts)
        return 0xff;

    struct TextPrinter *printer = (struct TextPrinter *)AllocFromHeap(0, sizeof(struct TextPrinter));

    printer->active = TRUE;
    printer->state = 0;
    printer->textSpeedBottom = (u8)speed;
    printer->delayCounter = 0;
    printer->scrollDistance = 0;
    printer->Unk29 = 0;

    for (s32 i = 0; i < 7; i++)
    {
        printer->subStructFields[i] = 0;
    }

    printer->printerTemplate = *printerTemplate;
    printer->printerTemplate.currentChar = String_c_str((struct String *)printer->printerTemplate.currentChar); //TODO clean up
    printer->callback = callback;
    UNK_021C570C[0] = 0;
    FUN_0201C1A8(printer);
    if (speed != 0xff && speed != 0)
    {
        printer->textSpeedBottom += 0xff;
        printer->textSpeedTop = 1;
        printer->minLetterSpacing = FUN_0201BCC8(RunTextPrinter, printer, 1);
        return printer->minLetterSpacing;
    }
    else
    {
        u32 j = 0;
        printer->textSpeedBottom = 0;
        printer->textSpeedTop = 0;
        GenerateFontHalfRowLookupTable(printerTemplate->fgColor, printerTemplate->bgColor, printerTemplate->shadowColor);
        for (; j < 0x400; ++j)
        {
            if (RenderFont(printer) == 1)
            {
                break;
            }
        }
        if (speed != 0xff)
        {
            CopyWindowToVram(printer->printerTemplate.windowId); // CopyWindowToVram?
        }
        FUN_0201C238(printer);
        FreeToHeap((void *)printer);
        return 8;
    }
}

THUMB_FUNC void RunTextPrinter(u32 param0, struct TextPrinter *printer)
{
#pragma unused(param0)
    if (UNK_021C570C[0] == 0)
    {
        if (printer->Unk29 == 0)
        {
            printer->Unk2A = 0;
            GenerateFontHalfRowLookupTable(printer->printerTemplate.fgColor, printer->printerTemplate.bgColor, printer->printerTemplate.shadowColor);
            u32 temp = RenderFont(printer);
            switch (temp)
            {
                case 0:
                    CopyWindowToVram(printer->printerTemplate.windowId);
                    //fallthrough
                case 3:
                    if (printer->callback == NULL)
                    {
                        return;
                    }
                    printer->Unk29 = printer->callback(&printer->printerTemplate, printer->Unk2A);
                    return;
                case 1:
                    FUN_0201BCFC(printer->minLetterSpacing);
                    return;
                default:
                    return;
            }
        }
        else
        {
            printer->Unk29 = printer->callback(&printer->printerTemplate, printer->Unk2A);
        }
    }
}

THUMB_FUNC u32 RenderFont(struct TextPrinter *printer)
{
    u32 ret;
    while (TRUE)
    {
        ret = FontFunc(printer->printerTemplate.fontId, printer);
        if (ret != 2)
        {
            return ret;
        }
    }
}

#ifdef NONMATCHING
THUMB_FUNC void GenerateFontHalfRowLookupTable(u8 fgColor, u8 bgColor, u8 shadowColor)
{
    u32 fg12, bg12, shadow12;
    u32 temp;

    u16 *current = UNK_021C570C;

    bg12 = bgColor << 12;
    fg12 = fgColor << 12;
    shadow12 = shadowColor << 12;

    temp = (bgColor << 8) | (bgColor << 4) | bgColor;
    *(current++) = (bg12) | temp;
    *(current++) = (fg12) | temp;
    *(current++) = (shadow12) | temp;

    temp = (fgColor << 8) | (bgColor << 4) | bgColor;
    *(current++) = (bg12) | temp;
    *(current++) = (fg12) | temp;
    *(current++) = (shadow12) | temp;

    temp = (shadowColor << 8) | (bgColor << 4) | bgColor;
    *(current++) = (bg12) | temp;
    *(current++) = (fg12) | temp;
    *(current++) = (shadow12) | temp;

    temp = (bgColor << 8) | (fgColor << 4) | bgColor;
    *(current++) = (bg12) | temp;
    *(current++) = (fg12) | temp;
    *(current++) = (shadow12) | temp;

    temp = (fgColor << 8) | (fgColor << 4) | bgColor;
    *(current++) = (bg12) | temp;
    *(current++) = (fg12) | temp;
    *(current++) = (shadow12) | temp;

    temp = (shadowColor << 8) | (fgColor << 4) | bgColor;
    *(current++) = (bg12) | temp;
    *(current++) = (fg12) | temp;
    *(current++) = (shadow12) | temp;

    temp = (bgColor << 8) | (shadowColor << 4) | bgColor;
    *(current++) = (bg12) | temp;
    *(current++) = (fg12) | temp;
    *(current++) = (shadow12) | temp;

    temp = (fgColor << 8) | (shadowColor << 4) | bgColor;
    *(current++) = (bg12) | temp;
    *(current++) = (fg12) | temp;
    *(current++) = (shadow12) | temp;

    temp = (shadowColor << 8) | (shadowColor << 4) | bgColor;
    *(current++) = (bg12) | temp;
    *(current++) = (fg12) | temp;
    *(current++) = (shadow12) | temp;

    temp = (bgColor << 8) | (bgColor << 4) | fgColor;
    *(current++) = (bg12) | temp;
    *(current++) = (fg12) | temp;
    *(current++) = (shadow12) | temp;

    temp = (fgColor << 8) | (bgColor << 4) | fgColor;
    *(current++) = (bg12) | temp;
    *(current++) = (fg12) | temp;
    *(current++) = (shadow12) | temp;

    temp = (shadowColor << 8) | (bgColor << 4) | fgColor;
    *(current++) = (bg12) | temp;
    *(current++) = (fg12) | temp;
    *(current++) = (shadow12) | temp;

    temp = (bgColor << 8) | (fgColor << 4) | fgColor;
    *(current++) = (bg12) | temp;
    *(current++) = (fg12) | temp;
    *(current++) = (shadow12) | temp;

    temp = (fgColor << 8) | (fgColor << 4) | fgColor;
    *(current++) = (bg12) | temp;
    *(current++) = (fg12) | temp;
    *(current++) = (shadow12) | temp;

    temp = (shadowColor << 8) | (fgColor << 4) | fgColor;
    *(current++) = (bg12) | temp;
    *(current++) = (fg12) | temp;
    *(current++) = (shadow12) | temp;

    temp = (bgColor << 8) | (shadowColor << 4) | fgColor;
    *(current++) = (bg12) | temp;
    *(current++) = (fg12) | temp;
    *(current++) = (shadow12) | temp;

    temp = (fgColor << 8) | (shadowColor << 4) | fgColor;
    *(current++) = (bg12) | temp;
    *(current++) = (fg12) | temp;
    *(current++) = (shadow12) | temp;

    temp = (shadowColor << 8) | (shadowColor << 4) | fgColor;
    *(current++) = (bg12) | temp;
    *(current++) = (fg12) | temp;
    *(current++) = (shadow12) | temp;

    temp = (bgColor << 8) | (bgColor << 4) | shadowColor;
    *(current++) = (bg12) | temp;
    *(current++) = (fg12) | temp;
    *(current++) = (shadow12) | temp;

    temp = (fgColor << 8) | (bgColor << 4) | shadowColor;
    *(current++) = (bg12) | temp;
    *(current++) = (fg12) | temp;
    *(current++) = (shadow12) | temp;

    temp = (shadowColor << 8) | (bgColor << 4) | shadowColor;
    *(current++) = (bg12) | temp;
    *(current++) = (fg12) | temp;
    *(current++) = (shadow12) | temp;

    temp = (bgColor << 8) | (fgColor << 4) | shadowColor;
    *(current++) = (bg12) | temp;
    *(current++) = (fg12) | temp;
    *(current++) = (shadow12) | temp;

    temp = (fgColor << 8) | (fgColor << 4) | shadowColor;
    *(current++) = (bg12) | temp;
    *(current++) = (fg12) | temp;
    *(current++) = (shadow12) | temp;

    temp = (shadowColor << 8) | (fgColor << 4) | shadowColor;
    *(current++) = (bg12) | temp;
    *(current++) = (fg12) | temp;
    *(current++) = (shadow12) | temp;

    temp = (bgColor << 8) | (shadowColor << 4) | shadowColor;
    *(current++) = (bg12) | temp;
    *(current++) = (fg12) | temp;
    *(current++) = (shadow12) | temp;

    temp = (fgColor << 8) | (shadowColor << 4) | shadowColor;
    *(current++) = (bg12) | temp;
    *(current++) = (fg12) | temp;
    *(current++) = (shadow12) | temp;

    temp = (shadowColor << 8) | (shadowColor << 4) | shadowColor;
    *(current++) = (bg12) | temp;
    *(current++) = (fg12) | temp;
    *(current++) = (shadow12) | temp;
}
#else
GLOBAL_ASM("asm/nonmatchings/GenerateFontHalfRowLookupTable.s")
#endif

THUMB_FUNC void DecompressGlyphTile(const u16 *src, u16 *dst)
{
    dst[0] = UNK_021C5734[(u32)src[0] >> 8];
    dst[1] = UNK_021C5734[(u8)src[0]];
    dst[2] = UNK_021C5734[(u32)src[1] >> 8];
    dst[3] = UNK_021C5734[(u8)src[1]];
    dst[4] = UNK_021C5734[(u32)src[2] >> 8];
    dst[5] = UNK_021C5734[(u8)src[2]];
    dst[6] = UNK_021C5734[(u32)src[3] >> 8];
    dst[7] = UNK_021C5734[(u8)src[3]];
    dst[8] = UNK_021C5734[(u32)src[4] >> 8];
    dst[9] = UNK_021C5734[(u8)src[4]];
    dst[10] = UNK_021C5734[(u32)src[5] >> 8];
    dst[11] = UNK_021C5734[(u8)src[5]];
    dst[12] = UNK_021C5734[(u32)src[6] >> 8];
    dst[13] = UNK_021C5734[(u8)src[6]];
    dst[14] = UNK_021C5734[(u32)src[7] >> 8];
    dst[15] = UNK_021C5734[(u8)src[7]];
}

THUMB_FUNC void FUN_0201C1A8(struct TextPrinter *printer)
{
    printer->Unk2C = NULL;
}

THUMB_FUNC void *FUN_0201C1B0(void)
{
    void *res = AllocFromHeap(0, sizeof(struct TextPrinter) * 32);
    struct TextPrinter *var;
    void *tmp = FUN_02006BB0(14, 5, 0, &var, 0);
    MIi_CpuCopy32((void *)var->printerTemplate.Unk20, res, sizeof(struct TextPrinter) * 32); //todo Unk20 can't be right here
    FreeToHeap(tmp);
    return res;
}

THUMB_FUNC void FUN_0201C1EC(struct TextPrinter *printer, u32 param1, u32 param2, u32 param3)
{
#pragma unused (param1, param2)
    u32 windowId = printer->printerTemplate.windowId;
    if (printer->Unk2C == NULL)
    {
        printer->Unk2C = FUN_0201C1B0();
    }
    u32 r6 = (u32)printer->Unk2C + param3 * (sizeof(struct TextPrinter) * 8);
    u32 r2 = ((FUN_0201AB0C(windowId) - 3) << 0x13) >> 0x10;
    FUN_02019658(windowId, r6, 0, 0, 24, 32, r2, 0, 24, 32);
}

THUMB_FUNC void FUN_0201C238(struct TextPrinter *printer)
{
    if (printer->Unk2C == NULL)
    {
        return;
    }
    FreeToHeap(printer->Unk2C);
    printer->Unk2C = NULL;
}