#ifndef GUARD_GLOBAL_H
#define GUARD_GLOBAL_H

// Make the compiler not care about GLOBAL_ASM for the asm processor.
#define GLOBAL_ASM(input)

#include "config.h"

#include "MWC_string.h"
#include "function_target.h"
#include "nitro.h"
#include "global.fieldmap.h"
#include "constants/global.h"

#define NELEMS(a) (sizeof(a) / sizeof(*(a)))

extern void ErrorHandling(void);

#define GF_ASSERT(expr) do {if (!(expr)) ErrorHandling();} while (0)

extern const int gGameLanguage;
extern const u8 gGameVersion;

#endif //GUARD_GLOBAL_H
