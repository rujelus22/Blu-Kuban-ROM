.class public Lcom/swype/android/widget/HwclTheme;
.super Ljava/lang/Object;
.source "HwclTheme.java"


# static fields
.field private static final ADD_WORD_IMAGE:I = 0x9

.field private static final BACKGROUND_IMAGE:I = 0x0

.field public static final COLOR_SET_COUNT:I = 0x3

.field public static final DARK_COLOR_SET:I = 0x0

.field private static final DEFAULT_WORD_COLOR:I = 0x2

.field private static final DIVIDER_HIGHLIGHT_IMAGE:I = 0x6

.field public static final GREENHIGHLITE_COLOR_SET:I = 0x2

.field private static final JAPANESE_SPELLING_TEXT_COLOR:I = 0x4

.field public static final LIGHT_COLOR_SET:I = 0x1

.field private static final LOCK_IMAGE:I = 0x7

.field private static final NWP_WORD_COLOR:I = 0xb

.field private static final PLAINTEXT_COLOR:I = 0x1

.field private static final PRESSED_WORD_COLOR:I = 0x3

.field private static final SELECTION_IMAGE:I = 0x8

.field private static final SWYPE_KEY_IMAGE:I = 0xa

.field private static final TAPPED_HIGHLIGHT_IMAGE:I = 0x5

.field private static final theme_settings:[[I


# instance fields
.field private final theme:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x3

    .line 39
    const/16 v0, 0xc

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_6c

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_76

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_80

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_8a

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_94

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_9e

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_a8

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_b2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_bc

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_c6

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_d0

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_da

    aput-object v2, v0, v1

    sput-object v0, Lcom/swype/android/widget/HwclTheme;->theme_settings:[[I

    return-void

    nop

    :array_6c
    .array-data 0x4
        0x1t 0x0t 0x2t 0x7ft
        0xct 0x0t 0x2t 0x7ft
        0x7t 0x0t 0x2t 0x7ft
    .end array-data

    :array_76
    .array-data 0x4
        0x3t 0x0t 0xbt 0x7ft
        0x6t 0x0t 0xbt 0x7ft
        0xat 0x0t 0xbt 0x7ft
    .end array-data

    :array_80
    .array-data 0x4
        0x4t 0x0t 0xbt 0x7ft
        0x7t 0x0t 0xbt 0x7ft
        0xbt 0x0t 0xbt 0x7ft
    .end array-data

    :array_8a
    .array-data 0x4
        0x4t 0x0t 0xbt 0x7ft
        0x8t 0x0t 0xbt 0x7ft
        0xct 0x0t 0xbt 0x7ft
    .end array-data

    :array_94
    .array-data 0x4
        0x11t 0x0t 0xbt 0x7ft
        0x11t 0x0t 0xbt 0x7ft
        0x11t 0x0t 0xbt 0x7ft
    .end array-data

    :array_9e
    .array-data 0x4
        0x6t 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0xat 0x0t 0x2t 0x7ft
    .end array-data

    :array_a8
    .array-data 0x4
        0x2t 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0x8t 0x0t 0x2t 0x7ft
    .end array-data

    :array_b2
    .array-data 0x4
        0x3t 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
        0x3t 0x0t 0x2t 0x7ft
    .end array-data

    :array_bc
    .array-data 0x4
        0x5t 0x0t 0x2t 0x7ft
        0x10t 0x0t 0x2t 0x7ft
        0x9t 0x0t 0x2t 0x7ft
    .end array-data

    :array_c6
    .array-data 0x4
        0x0t 0x0t 0x2t 0x7ft
        0xbt 0x0t 0x2t 0x7ft
        0x0t 0x0t 0x2t 0x7ft
    .end array-data

    :array_d0
    .array-data 0x4
        0x12t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
    .end array-data

    :array_da
    .array-data 0x4
        0x5t 0x0t 0xbt 0x7ft
        0x9t 0x0t 0xbt 0x7ft
        0xdt 0x0t 0xbt 0x7ft
    .end array-data
.end method

.method public constructor <init>(Lcom/swype/android/jni/SwypeCore;)V
    .registers 4
    .parameter

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lcom/swype/android/jni/SwypeCore;->getSettingInt(I)I

    move-result v0

    .line 125
    if-ltz v0, :cond_e

    const/4 v1, 0x3

    if-lt v0, v1, :cond_12

    .line 126
    :cond_e
    const/4 v0, 0x0

    iput v0, p0, Lcom/swype/android/widget/HwclTheme;->theme:I

    .line 130
    :goto_11
    return-void

    .line 128
    :cond_12
    iput v0, p0, Lcom/swype/android/widget/HwclTheme;->theme:I

    goto :goto_11
.end method


# virtual methods
.method public getAddWordDrawable()I
    .registers 3

    .prologue
    .line 178
    sget-object v0, Lcom/swype/android/widget/HwclTheme;->theme_settings:[[I

    const/16 v1, 0x9

    aget-object v0, v0, v1

    iget v1, p0, Lcom/swype/android/widget/HwclTheme;->theme:I

    aget v0, v0, v1

    return v0
.end method

.method public getBackgroundResource()I
    .registers 3

    .prologue
    .line 134
    sget-object v0, Lcom/swype/android/widget/HwclTheme;->theme_settings:[[I

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v1, p0, Lcom/swype/android/widget/HwclTheme;->theme:I

    aget v0, v0, v1

    return v0
.end method

.method public getDefaultWordColorId()I
    .registers 3

    .prologue
    .line 144
    sget-object v0, Lcom/swype/android/widget/HwclTheme;->theme_settings:[[I

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget v1, p0, Lcom/swype/android/widget/HwclTheme;->theme:I

    aget v0, v0, v1

    return v0
.end method

.method public getDividerDrawableId()I
    .registers 3

    .prologue
    .line 163
    sget-object v0, Lcom/swype/android/widget/HwclTheme;->theme_settings:[[I

    const/4 v1, 0x6

    aget-object v0, v0, v1

    iget v1, p0, Lcom/swype/android/widget/HwclTheme;->theme:I

    aget v0, v0, v1

    return v0
.end method

.method public getJapaneseSpellingTextColorId()I
    .registers 3

    .prologue
    .line 153
    sget-object v0, Lcom/swype/android/widget/HwclTheme;->theme_settings:[[I

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iget v1, p0, Lcom/swype/android/widget/HwclTheme;->theme:I

    aget v0, v0, v1

    return v0
.end method

.method public getLockDrawableId()I
    .registers 3

    .prologue
    .line 168
    sget-object v0, Lcom/swype/android/widget/HwclTheme;->theme_settings:[[I

    const/4 v1, 0x7

    aget-object v0, v0, v1

    iget v1, p0, Lcom/swype/android/widget/HwclTheme;->theme:I

    aget v0, v0, v1

    return v0
.end method

.method public getNWPWordColorId()I
    .registers 3

    .prologue
    .line 187
    sget-object v0, Lcom/swype/android/widget/HwclTheme;->theme_settings:[[I

    const/16 v1, 0xb

    aget-object v0, v0, v1

    iget v1, p0, Lcom/swype/android/widget/HwclTheme;->theme:I

    aget v0, v0, v1

    return v0
.end method

.method public getPlainTextColorId()I
    .registers 3

    .prologue
    .line 139
    sget-object v0, Lcom/swype/android/widget/HwclTheme;->theme_settings:[[I

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget v1, p0, Lcom/swype/android/widget/HwclTheme;->theme:I

    aget v0, v0, v1

    return v0
.end method

.method public getPressedDrawableId()I
    .registers 3

    .prologue
    .line 173
    sget-object v0, Lcom/swype/android/widget/HwclTheme;->theme_settings:[[I

    const/16 v1, 0x8

    aget-object v0, v0, v1

    iget v1, p0, Lcom/swype/android/widget/HwclTheme;->theme:I

    aget v0, v0, v1

    return v0
.end method

.method public getPressedWordColorId()I
    .registers 3

    .prologue
    .line 148
    sget-object v0, Lcom/swype/android/widget/HwclTheme;->theme_settings:[[I

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget v1, p0, Lcom/swype/android/widget/HwclTheme;->theme:I

    aget v0, v0, v1

    return v0
.end method

.method public getSwypeKeyDrawable()I
    .registers 3

    .prologue
    .line 183
    sget-object v0, Lcom/swype/android/widget/HwclTheme;->theme_settings:[[I

    const/16 v1, 0xa

    aget-object v0, v0, v1

    iget v1, p0, Lcom/swype/android/widget/HwclTheme;->theme:I

    aget v0, v0, v1

    return v0
.end method

.method public getTappedDrawableId()I
    .registers 3

    .prologue
    .line 158
    sget-object v0, Lcom/swype/android/widget/HwclTheme;->theme_settings:[[I

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget v1, p0, Lcom/swype/android/widget/HwclTheme;->theme:I

    aget v0, v0, v1

    return v0
.end method
