.class public Lcom/android/providers/contacts/KoreanPatternSearchHelper;
.super Ljava/lang/Object;
.source "KoreanPatternSearchHelper.java"


# static fields
.field private static KOREAN_JAUM_CONVERT_MAP:[I

.field private static KOREAN_JAUM_CONVERT_MAP_COUNT:I

.field private static KOREAN_RANGE_MAP:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x1e

    .line 24
    new-array v0, v1, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/android/providers/contacts/KoreanPatternSearchHelper;->KOREAN_JAUM_CONVERT_MAP:[I

    .line 59
    sput v1, Lcom/android/providers/contacts/KoreanPatternSearchHelper;->KOREAN_JAUM_CONVERT_MAP_COUNT:I

    .line 61
    new-array v0, v1, [I

    fill-array-data v0, :array_54

    sput-object v0, Lcom/android/providers/contacts/KoreanPatternSearchHelper;->KOREAN_RANGE_MAP:[I

    return-void

    .line 24
    nop

    :array_14
    .array-data 0x4
        0x0t 0x11t 0x0t 0x0t
        0x1t 0x11t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x11t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x11t 0x0t 0x0t
        0x4t 0x11t 0x0t 0x0t
        0x5t 0x11t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x6t 0x11t 0x0t 0x0t
        0x7t 0x11t 0x0t 0x0t
        0x8t 0x11t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x9t 0x11t 0x0t 0x0t
        0xat 0x11t 0x0t 0x0t
        0xbt 0x11t 0x0t 0x0t
        0xct 0x11t 0x0t 0x0t
        0xdt 0x11t 0x0t 0x0t
        0xet 0x11t 0x0t 0x0t
        0xft 0x11t 0x0t 0x0t
        0x10t 0x11t 0x0t 0x0t
        0x11t 0x11t 0x0t 0x0t
        0x12t 0x11t 0x0t 0x0t
    .end array-data

    .line 61
    :array_54
    .array-data 0x4
        0x0t 0xact 0x0t 0x0t
        0x4ct 0xaet 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x98t 0xb0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xe4t 0xb2t 0x0t 0x0t
        0x30t 0xb5t 0x0t 0x0t
        0x7ct 0xb7t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc8t 0xb9t 0x0t 0x0t
        0x14t 0xbct 0x0t 0x0t
        0x60t 0xbet 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xact 0xc0t 0x0t 0x0t
        0xf8t 0xc2t 0x0t 0x0t
        0x44t 0xc5t 0x0t 0x0t
        0x90t 0xc7t 0x0t 0x0t
        0xdct 0xc9t 0x0t 0x0t
        0x28t 0xcct 0x0t 0x0t
        0x74t 0xcet 0x0t 0x0t
        0xc0t 0xd0t 0x0t 0x0t
        0xct 0xd3t 0x0t 0x0t
        0x58t 0xd5t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static findConsonant(Ljava/lang/String;)I
    .registers 4
    .parameter "filter"

    .prologue
    .line 288
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_15

    .line 289
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 290
    .local v0, character:I
    invoke-static {v0}, Lcom/android/providers/contacts/KoreanPatternSearchHelper;->isConsonant(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 295
    .end local v0           #character:I
    .end local v1           #i:I
    :goto_11
    return v1

    .line 288
    .restart local v0       #character:I
    .restart local v1       #i:I
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 295
    .end local v0           #character:I
    :cond_15
    const/4 v1, -0x1

    goto :goto_11
.end method

.method static getConsonantsOfName(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "name"

    .prologue
    const/16 v9, 0x3131

    const v8, 0xac00

    .line 159
    const/4 v2, 0x0

    .line 160
    .local v2, position:I
    const/4 v1, 0x0

    .line 162
    .local v1, consonantLength:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 165
    .local v5, stringLength:I
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 167
    :goto_14
    add-int/lit8 v3, v2, 0x1

    .end local v2           #position:I
    .local v3, position:I
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 168
    .local v0, character:I
    const/16 v6, 0x20

    if-ne v0, v6, :cond_25

    .line 200
    :goto_1e
    if-lt v3, v5, :cond_59

    .line 202
    :cond_20
    :goto_20
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 174
    :cond_25
    const/16 v6, 0x1100

    if-lt v0, v6, :cond_20

    const/16 v6, 0x1112

    if-le v0, v6, :cond_2f

    if-lt v0, v9, :cond_20

    :cond_2f
    const/16 v6, 0x314e

    if-le v0, v6, :cond_35

    if-lt v0, v8, :cond_20

    :cond_35
    const v6, 0xd7a3

    if-gt v0, v6, :cond_20

    .line 180
    if-lt v0, v8, :cond_48

    .line 184
    sub-int v6, v0, v8

    div-int/lit16 v6, v6, 0x24c

    add-int/lit16 v0, v6, 0x1100

    .line 198
    :cond_42
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 185
    :cond_48
    if-lt v0, v9, :cond_42

    .line 188
    add-int/lit16 v6, v0, -0x3131

    sget v7, Lcom/android/providers/contacts/KoreanPatternSearchHelper;->KOREAN_JAUM_CONVERT_MAP_COUNT:I

    if-ge v6, v7, :cond_20

    .line 192
    sget-object v6, Lcom/android/providers/contacts/KoreanPatternSearchHelper;->KOREAN_JAUM_CONVERT_MAP:[I

    add-int/lit16 v7, v0, -0x3131

    aget v0, v6, v7

    .line 193
    if-nez v0, :cond_42

    goto :goto_20

    :cond_59
    move v2, v3

    .end local v3           #position:I
    .restart local v2       #position:I
    goto :goto_14
.end method

.method static getPatternFromFilter(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "filter"

    .prologue
    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_28

    .line 211
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 212
    .local v0, character:I
    invoke-static {v0}, Lcom/android/providers/contacts/KoreanPatternSearchHelper;->isConsonant(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 215
    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 217
    :cond_1e
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 222
    .end local v0           #character:I
    :cond_28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static hasConsonantAndComplete(Ljava/lang/String;)Z
    .registers 10
    .parameter "filter"

    .prologue
    const v8, 0xd7a3

    const v7, 0xac00

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 227
    const/4 v1, 0x0

    .line 228
    .local v1, hasComplete:Z
    const/4 v2, 0x0

    .line 230
    .local v2, hasConsonant:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_39

    .line 231
    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 234
    .local v0, character:I
    const/16 v6, 0x1100

    if-lt v0, v6, :cond_29

    const/16 v6, 0x1112

    if-le v0, v6, :cond_21

    const/16 v6, 0x3131

    if-lt v0, v6, :cond_29

    :cond_21
    const/16 v6, 0x314e

    if-le v0, v6, :cond_27

    if-lt v0, v7, :cond_29

    :cond_27
    if-le v0, v8, :cond_2b

    :cond_29
    move v4, v5

    .line 254
    .end local v0           #character:I
    :cond_2a
    :goto_2a
    return v4

    .line 241
    .restart local v0       #character:I
    :cond_2b
    if-lt v0, v7, :cond_35

    if-gt v0, v8, :cond_35

    .line 242
    const/4 v1, 0x1

    .line 243
    if-nez v2, :cond_2a

    .line 230
    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 247
    :cond_35
    const/4 v2, 0x1

    .line 248
    if-eqz v1, :cond_32

    goto :goto_2a

    .line 254
    .end local v0           #character:I
    :cond_39
    if-eqz v1, :cond_3d

    if-nez v2, :cond_2a

    :cond_3d
    move v4, v5

    goto :goto_2a
.end method

.method private static isConsonant(I)Z
    .registers 2
    .parameter "character"

    .prologue
    .line 95
    const/16 v0, 0x3130

    if-le p0, v0, :cond_a

    const/16 v0, 0x314e

    if-gt p0, v0, :cond_a

    .line 96
    const/4 v0, 0x1

    .line 99
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
