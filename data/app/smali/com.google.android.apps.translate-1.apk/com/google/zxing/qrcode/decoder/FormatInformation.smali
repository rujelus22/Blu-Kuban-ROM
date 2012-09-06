.class final Lcom/google/zxing/qrcode/decoder/FormatInformation;
.super Ljava/lang/Object;
.source "FormatInformation.java"


# static fields
.field private static final BITS_SET_IN_HALF_BYTE:[I = null

.field private static final FORMAT_INFO_DECODE_LOOKUP:[[I = null

.field private static final FORMAT_INFO_MASK_QR:I = 0x5412


# instance fields
.field private final dataMask:B

.field private final errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x2

    .line 34
    const/16 v0, 0x20

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_126

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_12e

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_136

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_13e

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_146

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_14e

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_156

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_15e

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_166

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_16e

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_176

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_17e

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_186

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_18e

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_196

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_19e

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_1a6

    aput-object v1, v0, v4

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_1ae

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_1b6

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_1be

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_1c6

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    fill-array-data v2, :array_1ce

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [I

    fill-array-data v2, :array_1d6

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [I

    fill-array-data v2, :array_1de

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [I

    fill-array-data v2, :array_1e6

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [I

    fill-array-data v2, :array_1ee

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [I

    fill-array-data v2, :array_1f6

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [I

    fill-array-data v2, :array_1fe

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [I

    fill-array-data v2, :array_206

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [I

    fill-array-data v2, :array_20e

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [I

    fill-array-data v2, :array_216

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [I

    fill-array-data v2, :array_21e

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->FORMAT_INFO_DECODE_LOOKUP:[[I

    .line 72
    new-array v0, v4, [I

    fill-array-data v0, :array_226

    sput-object v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    return-void

    .line 34
    :array_126
    .array-data 0x4
        0x12t 0x54t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_12e
    .array-data 0x4
        0x25t 0x51t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_136
    .array-data 0x4
        0x7ct 0x5et 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_13e
    .array-data 0x4
        0x4bt 0x5bt 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_146
    .array-data 0x4
        0xf9t 0x45t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_14e
    .array-data 0x4
        0xcet 0x40t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    :array_156
    .array-data 0x4
        0x97t 0x4ft 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    :array_15e
    .array-data 0x4
        0xa0t 0x4at 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    :array_166
    .array-data 0x4
        0xc4t 0x77t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_16e
    .array-data 0x4
        0xf3t 0x72t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
    .end array-data

    :array_176
    .array-data 0x4
        0xaat 0x7dt 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data

    :array_17e
    .array-data 0x4
        0x9dt 0x78t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    :array_186
    .array-data 0x4
        0x2ft 0x66t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    :array_18e
    .array-data 0x4
        0x18t 0x63t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    :array_196
    .array-data 0x4
        0x41t 0x6ct 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data

    :array_19e
    .array-data 0x4
        0x76t 0x69t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    :array_1a6
    .array-data 0x4
        0x89t 0x16t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    :array_1ae
    .array-data 0x4
        0xbet 0x13t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
    .end array-data

    :array_1b6
    .array-data 0x4
        0xe7t 0x1ct 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
    .end array-data

    :array_1be
    .array-data 0x4
        0xd0t 0x19t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
    .end array-data

    :array_1c6
    .array-data 0x4
        0x62t 0x7t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data

    :array_1ce
    .array-data 0x4
        0x55t 0x2t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    :array_1d6
    .array-data 0x4
        0xct 0xdt 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
    .end array-data

    :array_1de
    .array-data 0x4
        0x3bt 0x8t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
    .end array-data

    :array_1e6
    .array-data 0x4
        0x5ft 0x35t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
    .end array-data

    :array_1ee
    .array-data 0x4
        0x68t 0x30t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
    .end array-data

    :array_1f6
    .array-data 0x4
        0x31t 0x3ft 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
    .end array-data

    :array_1fe
    .array-data 0x4
        0x6t 0x3at 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
    .end array-data

    :array_206
    .array-data 0x4
        0xb4t 0x24t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
    .end array-data

    :array_20e
    .array-data 0x4
        0x83t 0x21t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
    .end array-data

    :array_216
    .array-data 0x4
        0xdat 0x2et 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
    .end array-data

    :array_21e
    .array-data 0x4
        0xedt 0x2bt 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
    .end array-data

    .line 72
    :array_226
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(I)V
    .registers 3
    .parameter "formatInfo"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    shr-int/lit8 v0, p1, 0x3

    and-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->forBits(I)Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 82
    and-int/lit8 v0, p1, 0x7

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    .line 83
    return-void
.end method

.method static decodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;
    .registers 5
    .parameter "maskedFormatInfo1"
    .parameter "maskedFormatInfo2"

    .prologue
    .line 106
    invoke-static {p0, p1}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->doDecodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v0

    .line 107
    .local v0, formatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;
    if-eqz v0, :cond_7

    .line 113
    .end local v0           #formatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;
    :goto_6
    return-object v0

    .restart local v0       #formatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;
    :cond_7
    xor-int/lit16 v1, p0, 0x5412

    xor-int/lit16 v2, p1, 0x5412

    invoke-static {v1, v2}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->doDecodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v0

    goto :goto_6
.end method

.method private static doDecodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;
    .registers 10
    .parameter "maskedFormatInfo1"
    .parameter "maskedFormatInfo2"

    .prologue
    const/4 v7, 0x1

    .line 119
    const v0, 0x7fffffff

    .line 120
    .local v0, bestDifference:I
    const/4 v1, 0x0

    .line 121
    .local v1, bestFormatInfo:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_6
    sget-object v6, Lcom/google/zxing/qrcode/decoder/FormatInformation;->FORMAT_INFO_DECODE_LOOKUP:[[I

    array-length v6, v6

    if-ge v4, v6, :cond_35

    .line 122
    sget-object v6, Lcom/google/zxing/qrcode/decoder/FormatInformation;->FORMAT_INFO_DECODE_LOOKUP:[[I

    aget-object v3, v6, v4

    .line 123
    .local v3, decodeInfo:[I
    const/4 v6, 0x0

    aget v5, v3, v6

    .line 124
    .local v5, targetInfo:I
    if-eq v5, p0, :cond_16

    if-ne v5, p1, :cond_1e

    .line 126
    :cond_16
    new-instance v6, Lcom/google/zxing/qrcode/decoder/FormatInformation;

    aget v7, v3, v7

    invoke-direct {v6, v7}, Lcom/google/zxing/qrcode/decoder/FormatInformation;-><init>(I)V

    .line 147
    .end local v3           #decodeInfo:[I
    .end local v5           #targetInfo:I
    :goto_1d
    return-object v6

    .line 128
    .restart local v3       #decodeInfo:[I
    .restart local v5       #targetInfo:I
    :cond_1e
    invoke-static {p0, v5}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->numBitsDiffering(II)I

    move-result v2

    .line 129
    .local v2, bitsDifference:I
    if-ge v2, v0, :cond_27

    .line 130
    aget v1, v3, v7

    .line 131
    move v0, v2

    .line 133
    :cond_27
    if-eq p0, p1, :cond_32

    .line 135
    invoke-static {p1, v5}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->numBitsDiffering(II)I

    move-result v2

    .line 136
    if-ge v2, v0, :cond_32

    .line 137
    aget v1, v3, v7

    .line 138
    move v0, v2

    .line 121
    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 144
    .end local v2           #bitsDifference:I
    .end local v3           #decodeInfo:[I
    .end local v5           #targetInfo:I
    :cond_35
    const/4 v6, 0x3

    if-gt v0, v6, :cond_3e

    .line 145
    new-instance v6, Lcom/google/zxing/qrcode/decoder/FormatInformation;

    invoke-direct {v6, v1}, Lcom/google/zxing/qrcode/decoder/FormatInformation;-><init>(I)V

    goto :goto_1d

    .line 147
    :cond_3e
    const/4 v6, 0x0

    goto :goto_1d
.end method

.method static numBitsDiffering(II)I
    .registers 5
    .parameter "a"
    .parameter "b"

    .prologue
    .line 86
    xor-int/2addr p0, p1

    .line 88
    sget-object v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    and-int/lit8 v1, p0, 0xf

    aget v0, v0, v1

    sget-object v1, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    ushr-int/lit8 v2, p0, 0x4

    and-int/lit8 v2, v2, 0xf

    aget v1, v1, v2

    add-int/2addr v0, v1

    sget-object v1, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    ushr-int/lit8 v2, p0, 0x8

    and-int/lit8 v2, v2, 0xf

    aget v1, v1, v2

    add-int/2addr v0, v1

    sget-object v1, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    ushr-int/lit8 v2, p0, 0xc

    and-int/lit8 v2, v2, 0xf

    aget v1, v1, v2

    add-int/2addr v0, v1

    sget-object v1, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    ushr-int/lit8 v2, p0, 0x10

    and-int/lit8 v2, v2, 0xf

    aget v1, v1, v2

    add-int/2addr v0, v1

    sget-object v1, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    ushr-int/lit8 v2, p0, 0x14

    and-int/lit8 v2, v2, 0xf

    aget v1, v1, v2

    add-int/2addr v0, v1

    sget-object v1, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    ushr-int/lit8 v2, p0, 0x18

    and-int/lit8 v2, v2, 0xf

    aget v1, v1, v2

    add-int/2addr v0, v1

    sget-object v1, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    ushr-int/lit8 v2, p0, 0x1c

    and-int/lit8 v2, v2, 0xf

    aget v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 163
    instance-of v2, p1, Lcom/google/zxing/qrcode/decoder/FormatInformation;

    if-nez v2, :cond_6

    .line 167
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 166
    check-cast v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;

    .line 167
    .local v0, other:Lcom/google/zxing/qrcode/decoder/FormatInformation;
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    iget-object v3, v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    if-ne v2, v3, :cond_5

    iget-byte v2, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    iget-byte v3, v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    if-ne v2, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method getDataMask()B
    .registers 2

    .prologue
    .line 155
    iget-byte v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    return v0
.end method

.method getErrorCorrectionLevel()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->ordinal()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    iget-byte v1, p0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    or-int/2addr v0, v1

    return v0
.end method
