.class public final Lcom/google/zxing/c/c;
.super Lcom/google/zxing/c/k;
.source "SourceFile"


# static fields
.field static final a:[I

.field private static final b:[C

.field private static final c:I


# instance fields
.field private final d:Z

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 38
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/c/c;->b:[C

    .line 45
    const/16 v0, 0x2c

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    .line 53
    sput-object v0, Lcom/google/zxing/c/c;->a:[I

    const/16 v1, 0x27

    aget v0, v0, v1

    sput v0, Lcom/google/zxing/c/c;->c:I

    return-void

    .line 45
    :array_18
    .array-data 0x4
        0x34t 0x0t 0x0t 0x0t
        0x21t 0x1t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0x60t 0x1t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x30t 0x1t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x24t 0x1t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x9t 0x1t 0x0t 0x0t
        0x49t 0x0t 0x0t 0x0t
        0x48t 0x1t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x18t 0x1t 0x0t 0x0t
        0x58t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xct 0x1t 0x0t 0x0t
        0x4ct 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x3t 0x1t 0x0t 0x0t
        0x43t 0x0t 0x0t 0x0t
        0x42t 0x1t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x12t 0x1t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x6t 0x1t 0x0t 0x0t
        0x46t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x81t 0x1t 0x0t 0x0t
        0xc1t 0x0t 0x0t 0x0t
        0xc0t 0x1t 0x0t 0x0t
        0x91t 0x0t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
        0xd0t 0x0t 0x0t 0x0t
        0x85t 0x0t 0x0t 0x0t
        0x84t 0x1t 0x0t 0x0t
        0xc4t 0x0t 0x0t 0x0t
        0x94t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0xa2t 0x0t 0x0t 0x0t
        0x8at 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Lcom/google/zxing/c/k;-><init>()V

    .line 63
    iput-boolean v0, p0, Lcom/google/zxing/c/c;->d:Z

    .line 64
    iput-boolean v0, p0, Lcom/google/zxing/c/c;->e:Z

    .line 65
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/zxing/c/k;-><init>()V

    .line 75
    iput-boolean p1, p0, Lcom/google/zxing/c/c;->d:Z

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/zxing/c/c;->e:Z

    .line 77
    return-void
.end method

.method private static a(I)C
    .registers 3
    .parameter

    .prologue
    .line 269
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/google/zxing/c/c;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 270
    sget-object v1, Lcom/google/zxing/c/c;->a:[I

    aget v1, v1, v0

    if-ne v1, p0, :cond_11

    .line 271
    sget-object v1, Lcom/google/zxing/c/c;->b:[C

    aget-char v0, v1, v0

    return v0

    .line 269
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 274
    :cond_14
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private static a([I)I
    .registers 14
    .parameter

    .prologue
    const/4 v11, 0x3

    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 225
    array-length v7, p0

    move v0, v1

    .line 229
    :goto_5
    const v2, 0x7fffffff

    move v4, v1

    .line 230
    :goto_9
    if-ge v4, v7, :cond_16

    .line 231
    aget v3, p0, v4

    .line 232
    if-ge v3, v2, :cond_12

    if-le v3, v0, :cond_12

    move v2, v3

    .line 230
    :cond_12
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_9

    :cond_16
    move v6, v1

    move v0, v1

    move v3, v1

    move v4, v1

    .line 240
    :goto_1a
    if-ge v6, v7, :cond_2e

    .line 241
    aget v8, p0, v6

    .line 242
    aget v9, p0, v6

    if-le v9, v2, :cond_2b

    .line 243
    const/4 v9, 0x1

    add-int/lit8 v10, v7, -0x1

    sub-int/2addr v10, v6

    shl-int/2addr v9, v10

    or-int/2addr v0, v9

    .line 244
    add-int/lit8 v4, v4, 0x1

    .line 245
    add-int/2addr v3, v8

    .line 240
    :cond_2b
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 248
    :cond_2e
    if-ne v4, v11, :cond_48

    move v12, v1

    move v1, v4

    move v4, v12

    .line 252
    :goto_33
    if-ge v4, v7, :cond_44

    if-lez v1, :cond_44

    .line 253
    aget v6, p0, v4

    .line 254
    aget v8, p0, v4

    if-le v8, v2, :cond_45

    .line 255
    add-int/lit8 v1, v1, -0x1

    .line 257
    shl-int/lit8 v6, v6, 0x1

    if-lt v6, v3, :cond_45

    move v0, v5

    .line 265
    :cond_44
    :goto_44
    return v0

    .line 252
    :cond_45
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .line 264
    :cond_48
    if-gt v4, v11, :cond_4c

    move v0, v5

    .line 265
    goto :goto_44

    :cond_4c
    move v0, v2

    goto :goto_5
.end method

.method private static a(Ljava/lang/StringBuffer;)Ljava/lang/String;
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x0

    const/16 v7, 0x5a

    const/16 v6, 0x41

    .line 278
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 279
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    move v2, v1

    .line 280
    :goto_f
    if-ge v2, v3, :cond_85

    .line 281
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 282
    const/16 v5, 0x2b

    if-eq v0, v5, :cond_25

    const/16 v5, 0x24

    if-eq v0, v5, :cond_25

    const/16 v5, 0x25

    if-eq v0, v5, :cond_25

    const/16 v5, 0x2f

    if-ne v0, v5, :cond_80

    .line 283
    :cond_25
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    .line 285
    sparse-switch v0, :sswitch_data_8a

    move v0, v1

    .line 323
    :goto_2f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 325
    add-int/lit8 v0, v2, 0x1

    .line 280
    :goto_34
    add-int/lit8 v2, v0, 0x1

    goto :goto_f

    .line 288
    :sswitch_37
    if-lt v5, v6, :cond_3f

    if-gt v5, v7, :cond_3f

    .line 289
    add-int/lit8 v0, v5, 0x20

    int-to-char v0, v0

    goto :goto_2f

    .line 291
    :cond_3f
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 296
    :sswitch_44
    if-lt v5, v6, :cond_4c

    if-gt v5, v7, :cond_4c

    .line 297
    add-int/lit8 v0, v5, -0x40

    int-to-char v0, v0

    goto :goto_2f

    .line 299
    :cond_4c
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 304
    :sswitch_51
    if-lt v5, v6, :cond_5b

    const/16 v0, 0x45

    if-gt v5, v0, :cond_5b

    .line 305
    add-int/lit8 v0, v5, -0x26

    int-to-char v0, v0

    goto :goto_2f

    .line 306
    :cond_5b
    const/16 v0, 0x46

    if-lt v5, v0, :cond_67

    const/16 v0, 0x57

    if-gt v5, v0, :cond_67

    .line 307
    add-int/lit8 v0, v5, -0xb

    int-to-char v0, v0

    goto :goto_2f

    .line 309
    :cond_67
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 314
    :sswitch_6c
    if-lt v5, v6, :cond_76

    const/16 v0, 0x4f

    if-gt v5, v0, :cond_76

    .line 315
    add-int/lit8 v0, v5, -0x20

    int-to-char v0, v0

    goto :goto_2f

    .line 316
    :cond_76
    if-ne v5, v7, :cond_7b

    .line 317
    const/16 v0, 0x3a

    goto :goto_2f

    .line 319
    :cond_7b
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 327
    :cond_80
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v2

    goto :goto_34

    .line 330
    :cond_85
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 285
    :sswitch_data_8a
    .sparse-switch
        0x24 -> :sswitch_44
        0x25 -> :sswitch_51
        0x2b -> :sswitch_37
        0x2f -> :sswitch_6c
    .end sparse-switch
.end method


# virtual methods
.method public final a(ILcom/google/zxing/common/a;Ljava/util/Hashtable;)Lcom/google/zxing/h;
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    iget v5, p2, Lcom/google/zxing/common/a;->b:I

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v5, :cond_e

    invoke-virtual {p2, v0}, Lcom/google/zxing/common/a;->a(I)Z

    move-result v1

    if-nez v1, :cond_e

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_e
    const/4 v1, 0x0

    const/16 v2, 0x9

    new-array v6, v2, [I

    const/4 v2, 0x0

    array-length v7, v6

    move v4, v0

    :goto_16
    if-ge v4, v5, :cond_8c

    invoke-virtual {p2, v4}, Lcom/google/zxing/common/a;->a(I)Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v3, :cond_29

    aget v3, v6, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v6, v1

    :goto_25
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_16

    :cond_29
    add-int/lit8 v3, v7, -0x1

    if-ne v1, v3, :cond_87

    invoke-static {v6}, Lcom/google/zxing/c/c;->a([I)I

    move-result v3

    sget v8, Lcom/google/zxing/c/c;->c:I

    if-ne v3, v8, :cond_60

    const/4 v3, 0x0

    sub-int v8, v4, v0

    div-int/lit8 v8, v8, 0x2

    sub-int v8, v0, v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v8, 0x0

    invoke-virtual {p2, v3, v0, v8}, Lcom/google/zxing/common/a;->a(IIZ)Z

    move-result v3

    if-eqz v3, :cond_60

    const/4 v1, 0x2

    new-array v5, v1, [I

    const/4 v1, 0x0

    aput v0, v5, v1

    const/4 v0, 0x1

    aput v4, v5, v0

    .line 98
    const/4 v0, 0x1

    aget v0, v5, v0

    .line 99
    iget v4, p2, Lcom/google/zxing/common/a;->b:I

    .line 102
    :goto_55
    if-ge v0, v4, :cond_91

    invoke-virtual {p2, v0}, Lcom/google/zxing/common/a;->a(I)Z

    move-result v1

    if-nez v1, :cond_91

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 97
    :cond_60
    const/4 v3, 0x0

    aget v3, v6, v3

    const/4 v8, 0x1

    aget v8, v6, v8

    add-int/2addr v3, v8

    add-int/2addr v0, v3

    const/4 v3, 0x2

    :goto_69
    if-ge v3, v7, :cond_74

    add-int/lit8 v8, v3, -0x2

    aget v9, v6, v3

    aput v9, v6, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_69

    :cond_74
    add-int/lit8 v3, v7, -0x2

    const/4 v8, 0x0

    aput v8, v6, v3

    add-int/lit8 v3, v7, -0x1

    const/4 v8, 0x0

    aput v8, v6, v3

    add-int/lit8 v1, v1, -0x1

    :goto_80
    const/4 v3, 0x1

    aput v3, v6, v1

    if-nez v2, :cond_8a

    const/4 v2, 0x1

    goto :goto_25

    :cond_87
    add-int/lit8 v1, v1, 0x1

    goto :goto_80

    :cond_8a
    const/4 v2, 0x0

    goto :goto_25

    :cond_8c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 106
    :cond_91
    new-instance v6, Ljava/lang/StringBuffer;

    const/16 v1, 0x14

    invoke-direct {v6, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 107
    const/16 v1, 0x9

    new-array v7, v1, [I

    .line 111
    :goto_9c
    invoke-static {p2, v0, v7}, Lcom/google/zxing/c/c;->a(Lcom/google/zxing/common/a;I[I)V

    .line 112
    invoke-static {v7}, Lcom/google/zxing/c/c;->a([I)I

    move-result v1

    .line 113
    if-gez v1, :cond_aa

    .line 114
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 116
    :cond_aa
    invoke-static {v1}, Lcom/google/zxing/c/c;->a(I)C

    move-result v3

    .line 117
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 119
    const/4 v1, 0x0

    move v2, v0

    :goto_b3
    array-length v8, v7

    if-ge v1, v8, :cond_167

    .line 120
    aget v8, v7, v1

    add-int/2addr v2, v8

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_b3

    .line 123
    :goto_bc
    if-ge v1, v4, :cond_c7

    invoke-virtual {p2, v1}, Lcom/google/zxing/common/a;->a(I)Z

    move-result v2

    if-nez v2, :cond_c7

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_bc

    .line 126
    :cond_c7
    const/16 v2, 0x2a

    if-ne v3, v2, :cond_164

    .line 127
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 130
    const/4 v3, 0x0

    .line 131
    const/4 v2, 0x0

    :goto_d6
    array-length v8, v7

    if-ge v2, v8, :cond_df

    .line 132
    aget v8, v7, v2

    add-int/2addr v3, v8

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_d6

    .line 134
    :cond_df
    sub-int v2, v1, v0

    sub-int/2addr v2, v3

    .line 137
    if-eq v1, v4, :cond_ed

    div-int/lit8 v2, v2, 0x2

    if-ge v2, v3, :cond_ed

    .line 138
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 141
    :cond_ed
    iget-boolean v2, p0, Lcom/google/zxing/c/c;->d:Z

    if-eqz v2, :cond_11d

    .line 142
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    .line 143
    const/4 v3, 0x0

    .line 144
    const/4 v2, 0x0

    :goto_f9
    if-ge v2, v4, :cond_109

    .line 145
    const-string v7, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/2addr v3, v7

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto :goto_f9

    .line 147
    :cond_109
    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    sget-object v7, Lcom/google/zxing/c/c;->b:[C

    rem-int/lit8 v3, v3, 0x2b

    aget-char v3, v7, v3

    if-eq v2, v3, :cond_11a

    .line 148
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    .line 150
    :cond_11a
    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 153
    :cond_11d
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_129

    .line 155
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 159
    :cond_129
    iget-boolean v2, p0, Lcom/google/zxing/c/c;->e:Z

    if-eqz v2, :cond_15f

    .line 160
    invoke-static {v6}, Lcom/google/zxing/c/c;->a(Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v2

    .line 165
    :goto_131
    const/4 v3, 0x1

    aget v3, v5, v3

    const/4 v4, 0x0

    aget v4, v5, v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    .line 166
    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    .line 167
    new-instance v1, Lcom/google/zxing/h;

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/zxing/j;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/j;

    int-to-float v8, p1

    invoke-direct {v7, v3, v8}, Lcom/google/zxing/j;-><init>(FF)V

    aput-object v7, v5, v6

    const/4 v3, 0x1

    new-instance v6, Lcom/google/zxing/j;

    int-to-float v7, p1

    invoke-direct {v6, v0, v7}, Lcom/google/zxing/j;-><init>(FF)V

    aput-object v6, v5, v3

    sget-object v0, Lcom/google/zxing/a;->c:Lcom/google/zxing/a;

    invoke-direct {v1, v2, v4, v5, v0}, Lcom/google/zxing/h;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/j;Lcom/google/zxing/a;)V

    return-object v1

    .line 162
    :cond_15f
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_131

    :cond_164
    move v0, v1

    goto/16 :goto_9c

    :cond_167
    move v1, v2

    goto/16 :goto_bc
.end method
