.class public final Lcom/google/zxing/c/d;
.super Lcom/google/zxing/c/k;
.source "SourceFile"


# static fields
.field private static final a:[C

.field private static final b:[I

.field private static final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 39
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/c/d;->a:[C

    .line 45
    const/16 v0, 0x30

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    .line 53
    sput-object v0, Lcom/google/zxing/c/d;->b:[I

    const/16 v1, 0x2f

    aget v0, v0, v1

    sput v0, Lcom/google/zxing/c/d;->c:I

    return-void

    .line 45
    :array_18
    .array-data 0x4
        0x14t 0x1t 0x0t 0x0t
        0x48t 0x1t 0x0t 0x0t
        0x44t 0x1t 0x0t 0x0t
        0x42t 0x1t 0x0t 0x0t
        0x28t 0x1t 0x0t 0x0t
        0x24t 0x1t 0x0t 0x0t
        0x22t 0x1t 0x0t 0x0t
        0x50t 0x1t 0x0t 0x0t
        0x12t 0x1t 0x0t 0x0t
        0xat 0x1t 0x0t 0x0t
        0xa8t 0x1t 0x0t 0x0t
        0xa4t 0x1t 0x0t 0x0t
        0xa2t 0x1t 0x0t 0x0t
        0x94t 0x1t 0x0t 0x0t
        0x92t 0x1t 0x0t 0x0t
        0x8at 0x1t 0x0t 0x0t
        0x68t 0x1t 0x0t 0x0t
        0x64t 0x1t 0x0t 0x0t
        0x62t 0x1t 0x0t 0x0t
        0x34t 0x1t 0x0t 0x0t
        0x1at 0x1t 0x0t 0x0t
        0x58t 0x1t 0x0t 0x0t
        0x4ct 0x1t 0x0t 0x0t
        0x46t 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x16t 0x1t 0x0t 0x0t
        0xb4t 0x1t 0x0t 0x0t
        0xb2t 0x1t 0x0t 0x0t
        0xact 0x1t 0x0t 0x0t
        0xa6t 0x1t 0x0t 0x0t
        0x96t 0x1t 0x0t 0x0t
        0x9at 0x1t 0x0t 0x0t
        0x6ct 0x1t 0x0t 0x0t
        0x66t 0x1t 0x0t 0x0t
        0x36t 0x1t 0x0t 0x0t
        0x3at 0x1t 0x0t 0x0t
        0x2et 0x1t 0x0t 0x0t
        0xd4t 0x1t 0x0t 0x0t
        0xd2t 0x1t 0x0t 0x0t
        0xcat 0x1t 0x0t 0x0t
        0x6et 0x1t 0x0t 0x0t
        0x76t 0x1t 0x0t 0x0t
        0xaet 0x1t 0x0t 0x0t
        0x26t 0x1t 0x0t 0x0t
        0xdat 0x1t 0x0t 0x0t
        0xd6t 0x1t 0x0t 0x0t
        0x32t 0x1t 0x0t 0x0t
        0x5et 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/zxing/c/k;-><init>()V

    return-void
.end method

.method private static a(I)C
    .registers 3
    .parameter

    .prologue
    .line 188
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/google/zxing/c/d;->b:[I

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 189
    sget-object v1, Lcom/google/zxing/c/d;->b:[I

    aget v1, v1, v0

    if-ne v1, p0, :cond_11

    .line 190
    sget-object v1, Lcom/google/zxing/c/d;->a:[C

    aget-char v0, v1, v0

    return v0

    .line 188
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 193
    :cond_14
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private static a([I)I
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 161
    array-length v7, p0

    move v0, v2

    move v6, v2

    .line 163
    :goto_4
    if-ge v0, v7, :cond_d

    .line 164
    aget v1, p0, v0

    add-int/2addr v1, v6

    .line 163
    add-int/lit8 v0, v0, 0x1

    move v6, v1

    goto :goto_4

    :cond_d
    move v5, v2

    move v0, v2

    .line 167
    :goto_f
    if-ge v5, v7, :cond_2a

    .line 168
    aget v1, p0, v5

    shl-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x9

    div-int v3, v1, v6

    .line 169
    shr-int/lit8 v1, v3, 0x8

    .line 170
    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x7f

    if-le v3, v4, :cond_40

    .line 171
    add-int/lit8 v1, v1, 0x1

    move v4, v1

    .line 173
    :goto_24
    if-lez v4, :cond_29

    const/4 v1, 0x4

    if-le v4, v1, :cond_2b

    .line 174
    :cond_29
    const/4 v0, -0x1

    .line 184
    :cond_2a
    return v0

    .line 176
    :cond_2b
    and-int/lit8 v1, v5, 0x1

    if-nez v1, :cond_3b

    move v1, v2

    .line 177
    :goto_30
    if-ge v1, v4, :cond_3c

    .line 178
    shl-int/lit8 v0, v0, 0x1

    or-int/lit8 v3, v0, 0x1

    .line 177
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_30

    .line 181
    :cond_3b
    shl-int/2addr v0, v4

    .line 167
    :cond_3c
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_f

    :cond_40
    move v4, v1

    goto :goto_24
.end method

.method private static a(Ljava/lang/StringBuffer;)Ljava/lang/String;
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x0

    const/16 v7, 0x5a

    const/16 v6, 0x41

    .line 197
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 198
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    move v2, v1

    .line 199
    :goto_f
    if-ge v2, v3, :cond_7d

    .line 200
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 201
    const/16 v5, 0x61

    if-lt v0, v5, :cond_78

    const/16 v5, 0x64

    if-gt v0, v5, :cond_78

    .line 202
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    .line 204
    packed-switch v0, :pswitch_data_82

    move v0, v1

    .line 242
    :goto_27
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 244
    add-int/lit8 v0, v2, 0x1

    .line 199
    :goto_2c
    add-int/lit8 v2, v0, 0x1

    goto :goto_f

    .line 207
    :pswitch_2f
    if-lt v5, v6, :cond_37

    if-gt v5, v7, :cond_37

    .line 208
    add-int/lit8 v0, v5, 0x20

    int-to-char v0, v0

    goto :goto_27

    .line 210
    :cond_37
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 215
    :pswitch_3c
    if-lt v5, v6, :cond_44

    if-gt v5, v7, :cond_44

    .line 216
    add-int/lit8 v0, v5, -0x40

    int-to-char v0, v0

    goto :goto_27

    .line 218
    :cond_44
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 223
    :pswitch_49
    if-lt v5, v6, :cond_53

    const/16 v0, 0x45

    if-gt v5, v0, :cond_53

    .line 224
    add-int/lit8 v0, v5, -0x26

    int-to-char v0, v0

    goto :goto_27

    .line 225
    :cond_53
    const/16 v0, 0x46

    if-lt v5, v0, :cond_5f

    const/16 v0, 0x57

    if-gt v5, v0, :cond_5f

    .line 226
    add-int/lit8 v0, v5, -0xb

    int-to-char v0, v0

    goto :goto_27

    .line 228
    :cond_5f
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 233
    :pswitch_64
    if-lt v5, v6, :cond_6e

    const/16 v0, 0x4f

    if-gt v5, v0, :cond_6e

    .line 234
    add-int/lit8 v0, v5, -0x20

    int-to-char v0, v0

    goto :goto_27

    .line 235
    :cond_6e
    if-ne v5, v7, :cond_73

    .line 236
    const/16 v0, 0x3a

    goto :goto_27

    .line 238
    :cond_73
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 246
    :cond_78
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v2

    goto :goto_2c

    .line 249
    :cond_7d
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 204
    :pswitch_data_82
    .packed-switch 0x61
        :pswitch_3c
        :pswitch_49
        :pswitch_64
        :pswitch_2f
    .end packed-switch
.end method

.method private static a(Ljava/lang/StringBuffer;II)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 261
    const/4 v2, 0x0

    .line 262
    add-int/lit8 v0, p1, -0x1

    move v4, v1

    move v6, v2

    move v2, v0

    move v0, v6

    :goto_8
    if-ltz v2, :cond_20

    .line 263
    const-string v3, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    mul-int/2addr v3, v4

    add-int/2addr v3, v0

    .line 264
    add-int/lit8 v0, v4, 0x1

    if-le v0, p2, :cond_1b

    move v0, v1

    .line 262
    :cond_1b
    add-int/lit8 v2, v2, -0x1

    move v4, v0

    move v0, v3

    goto :goto_8

    .line 268
    :cond_20
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    sget-object v2, Lcom/google/zxing/c/d;->a:[C

    rem-int/lit8 v0, v0, 0x2f

    aget-char v0, v2, v0

    if-eq v1, v0, :cond_31

    .line 269
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    .line 271
    :cond_31
    return-void
.end method


# virtual methods
.method public final a(ILcom/google/zxing/common/a;Ljava/util/Hashtable;)Lcom/google/zxing/h;
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
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

    const/4 v2, 0x6

    new-array v6, v2, [I

    const/4 v2, 0x0

    array-length v7, v6

    move v4, v0

    :goto_15
    if-ge v4, v5, :cond_79

    invoke-virtual {p2, v4}, Lcom/google/zxing/common/a;->a(I)Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v3, :cond_28

    aget v3, v6, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v6, v1

    :goto_24
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_15

    :cond_28
    add-int/lit8 v3, v7, -0x1

    if-ne v1, v3, :cond_74

    invoke-static {v6}, Lcom/google/zxing/c/d;->a([I)I

    move-result v3

    sget v8, Lcom/google/zxing/c/d;->c:I

    if-ne v3, v8, :cond_4d

    const/4 v1, 0x2

    new-array v3, v1, [I

    const/4 v1, 0x0

    aput v0, v3, v1

    const/4 v0, 0x1

    aput v4, v3, v0

    .line 59
    const/4 v0, 0x1

    aget v0, v3, v0

    .line 60
    iget v4, p2, Lcom/google/zxing/common/a;->b:I

    .line 63
    :goto_42
    if-ge v0, v4, :cond_7e

    invoke-virtual {p2, v0}, Lcom/google/zxing/common/a;->a(I)Z

    move-result v1

    if-nez v1, :cond_7e

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    .line 58
    :cond_4d
    const/4 v3, 0x0

    aget v3, v6, v3

    const/4 v8, 0x1

    aget v8, v6, v8

    add-int/2addr v3, v8

    add-int/2addr v0, v3

    const/4 v3, 0x2

    :goto_56
    if-ge v3, v7, :cond_61

    add-int/lit8 v8, v3, -0x2

    aget v9, v6, v3

    aput v9, v6, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_56

    :cond_61
    add-int/lit8 v3, v7, -0x2

    const/4 v8, 0x0

    aput v8, v6, v3

    add-int/lit8 v3, v7, -0x1

    const/4 v8, 0x0

    aput v8, v6, v3

    add-int/lit8 v1, v1, -0x1

    :goto_6d
    const/4 v3, 0x1

    aput v3, v6, v1

    if-nez v2, :cond_77

    const/4 v2, 0x1

    goto :goto_24

    :cond_74
    add-int/lit8 v1, v1, 0x1

    goto :goto_6d

    :cond_77
    const/4 v2, 0x0

    goto :goto_24

    :cond_79
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 67
    :cond_7e
    new-instance v5, Ljava/lang/StringBuffer;

    const/16 v1, 0x14

    invoke-direct {v5, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 68
    const/4 v1, 0x6

    new-array v6, v1, [I

    .line 72
    :goto_88
    invoke-static {p2, v0, v6}, Lcom/google/zxing/c/d;->a(Lcom/google/zxing/common/a;I[I)V

    .line 73
    invoke-static {v6}, Lcom/google/zxing/c/d;->a([I)I

    move-result v1

    .line 74
    if-gez v1, :cond_96

    .line 75
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 77
    :cond_96
    invoke-static {v1}, Lcom/google/zxing/c/d;->a(I)C

    move-result v7

    .line 78
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 80
    const/4 v1, 0x0

    move v2, v0

    :goto_9f
    array-length v8, v6

    if-ge v1, v8, :cond_129

    .line 81
    aget v8, v6, v1

    add-int/2addr v2, v8

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_9f

    .line 84
    :goto_a8
    if-ge v1, v4, :cond_b3

    invoke-virtual {p2, v1}, Lcom/google/zxing/common/a;->a(I)Z

    move-result v2

    if-nez v2, :cond_b3

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_a8

    .line 87
    :cond_b3
    const/16 v2, 0x2a

    if-ne v7, v2, :cond_126

    .line 88
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 91
    if-eq v1, v4, :cond_c8

    invoke-virtual {p2, v1}, Lcom/google/zxing/common/a;->a(I)Z

    move-result v2

    if-nez v2, :cond_cd

    .line 92
    :cond_c8
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 95
    :cond_cd
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/4 v4, 0x4

    if-ge v2, v4, :cond_d9

    .line 97
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 100
    :cond_d9
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v4, v2, -0x2

    const/16 v6, 0x14

    invoke-static {v5, v4, v6}, Lcom/google/zxing/c/d;->a(Ljava/lang/StringBuffer;II)V

    add-int/lit8 v2, v2, -0x1

    const/16 v4, 0xf

    invoke-static {v5, v2, v4}, Lcom/google/zxing/c/d;->a(Ljava/lang/StringBuffer;II)V

    .line 102
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 104
    invoke-static {v5}, Lcom/google/zxing/c/d;->a(Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v2

    .line 106
    const/4 v4, 0x1

    aget v4, v3, v4

    const/4 v5, 0x0

    aget v3, v3, v5

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    .line 107
    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    .line 108
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

    sget-object v0, Lcom/google/zxing/a;->d:Lcom/google/zxing/a;

    invoke-direct {v1, v2, v4, v5, v0}, Lcom/google/zxing/h;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/j;Lcom/google/zxing/a;)V

    return-object v1

    :cond_126
    move v0, v1

    goto/16 :goto_88

    :cond_129
    move v1, v2

    goto/16 :goto_a8
.end method
