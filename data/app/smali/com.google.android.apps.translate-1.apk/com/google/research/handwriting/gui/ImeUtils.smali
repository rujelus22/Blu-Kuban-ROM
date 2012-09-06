.class public Lcom/google/research/handwriting/gui/ImeUtils;
.super Ljava/lang/Object;
.source "ImeUtils.java"


# static fields
.field private static final EDITOR_ACTIONS:[I

.field private static final INPUT_TYPES:[I

.field private static final INPUT_TYPE_NAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v1, 0x26

    const/4 v3, 0x7

    .line 14
    new-array v0, v1, [I

    fill-array-data v0, :array_f2

    sput-object v0, Lcom/google/research/handwriting/gui/ImeUtils;->INPUT_TYPES:[I

    .line 53
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CLASS_DATETIME"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CLASS_NUMBER"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CLASS_PHONE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CLASS_TEXT"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "DATETIME_VARIATION_DATE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "DATETIME_VARIATION_NORMAL"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "DATETIME_VARIATION_TIME"

    aput-object v2, v0, v1

    const-string v1, "MASK_CLASS"

    aput-object v1, v0, v3

    const/16 v1, 0x8

    const-string v2, "MASK_FLAGS"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "MASK_VARIATION"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "NULL"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "NUMBER_FLAG_DECIMAL"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "NUMBER_FLAG_SIGNED"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "NUMBER_VARIATION_NORMAL"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "NUMBER_VARIATION_PASSWORD"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "TEXT_FLAG_AUTO_COMPLETE"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "TEXT_FLAG_AUTO_CORRECT"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "TEXT_FLAG_CAP_CHARACTERS"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "TEXT_FLAG_CAP_SENTENCES"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "TEXT_FLAG_CAP_WORDS"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "TEXT_FLAG_IME_MULTI_LINE"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "TEXT_FLAG_MULTI_LINE"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "TEXT_FLAG_NO_SUGGESTIONS"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "TEXT_VARIATION_EMAIL_ADDRESS"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "TEXT_VARIATION_EMAIL_SUBJECT"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "TEXT_VARIATION_FILTER"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "TEXT_VARIATION_LONG_MESSAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "TEXT_VARIATION_NORMAL"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "TEXT_VARIATION_PASSWORD"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "TEXT_VARIATION_PERSON_NAME"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "TEXT_VARIATION_PHONETIC"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "TEXT_VARIATION_POSTAL_ADDRESS"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "TEXT_VARIATION_SHORT_MESSAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "TEXT_VARIATION_URI"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "TEXT_VARIATION_VISIBLE_PASSWORD"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "TEXT_VARIATION_WEB_EDIT_TEXT"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "TEXT_VARIATION_WEB_EMAIL_ADDRESS"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "TEXT_VARIATION_WEB_PASSWORD"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/research/handwriting/gui/ImeUtils;->INPUT_TYPE_NAMES:[Ljava/lang/String;

    .line 93
    new-array v0, v3, [I

    fill-array-data v0, :array_142

    sput-object v0, Lcom/google/research/handwriting/gui/ImeUtils;->EDITOR_ACTIONS:[I

    return-void

    .line 14
    nop

    :array_f2
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x0t 0xf0t 0xfft 0x0t
        0xf0t 0xft 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x20t 0x0t 0x0t
        0x0t 0x10t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x80t 0x0t 0x0t
        0x0t 0x10t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x0t
        0x0t 0x20t 0x0t 0x0t
        0x0t 0x0t 0x4t 0x0t
        0x0t 0x0t 0x2t 0x0t
        0x0t 0x0t 0x8t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0xb0t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x90t 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
        0xd0t 0x0t 0x0t 0x0t
        0xe0t 0x0t 0x0t 0x0t
    .end array-data

    .line 93
    :array_142
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEditorAction(I)I
    .registers 4
    .parameter "imeOptions"

    .prologue
    const/high16 v2, 0x4000

    .line 112
    and-int v1, p0, v2

    if-ne v1, v2, :cond_8

    .line 113
    const/4 v1, 0x1

    .line 121
    :goto_7
    return v1

    .line 115
    :cond_8
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    sget-object v1, Lcom/google/research/handwriting/gui/ImeUtils;->EDITOR_ACTIONS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_21

    .line 116
    sget-object v1, Lcom/google/research/handwriting/gui/ImeUtils;->EDITOR_ACTIONS:[I

    aget v1, v1, v0

    and-int/2addr v1, p0

    sget-object v2, Lcom/google/research/handwriting/gui/ImeUtils;->EDITOR_ACTIONS:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_1e

    .line 117
    sget-object v1, Lcom/google/research/handwriting/gui/ImeUtils;->EDITOR_ACTIONS:[I

    aget v1, v1, v0

    goto :goto_7

    .line 115
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 120
    :cond_21
    const-string v1, "getEditorAction"

    const-string v2, "Returning EditorAction Unspecified"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public static inputTypeToString(I)Ljava/lang/String;
    .registers 5
    .parameter "inputType"

    .prologue
    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, result:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_14
    sget-object v2, Lcom/google/research/handwriting/gui/ImeUtils;->INPUT_TYPES:[I

    array-length v2, v2

    if-ge v0, v2, :cond_42

    .line 104
    sget-object v2, Lcom/google/research/handwriting/gui/ImeUtils;->INPUT_TYPES:[I

    aget v2, v2, v0

    and-int/2addr v2, p0

    sget-object v3, Lcom/google/research/handwriting/gui/ImeUtils;->INPUT_TYPES:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_3f

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/research/handwriting/gui/ImeUtils;->INPUT_TYPE_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 108
    :cond_42
    return-object v1
.end method

.method public static isLanguageWithSpaceGesture(Ljava/lang/String;)Z
    .registers 2
    .parameter "lang"

    .prologue
    .line 132
    invoke-static {p0}, Lcom/google/research/handwriting/gui/ImeUtils;->isLanguageWithSpaces(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isLanguageWithSpaces(Ljava/lang/String;)Z
    .registers 2
    .parameter "lang"

    .prologue
    .line 128
    const-string v0, "zh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "ja"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "ko"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method
