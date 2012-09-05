.class public Lcom/vlingo/client/core/crypto/SHA256;
.super Ljava/lang/Object;
.source "SHA256.java"

# interfaces
.implements Lcom/vlingo/client/core/crypto/HashFunction;


# static fields
.field private static final BLOCK_SIZE:I = 0x40

.field private static final HASH_SIZE:I = 0x20

.field private static final HEX_CHARS:[C

.field private static final K:[I


# instance fields
.field private final buf:[B

.field private bufOff:I

.field private final buffer:[I

.field private byteCount:J

.field private final context:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_14

    sput-object v0, Lcom/vlingo/client/core/crypto/SHA256;->HEX_CHARS:[C

    .line 32
    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_28

    sput-object v0, Lcom/vlingo/client/core/crypto/SHA256;->K:[I

    return-void

    .line 13
    nop

    :array_14
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data

    .line 32
    :array_28
    .array-data 0x4
        0x98t 0x2ft 0x8at 0x42t
        0x91t 0x44t 0x37t 0x71t
        0xcft 0xfbt 0xc0t 0xb5t
        0xa5t 0xdbt 0xb5t 0xe9t
        0x5bt 0xc2t 0x56t 0x39t
        0xf1t 0x11t 0xf1t 0x59t
        0xa4t 0x82t 0x3ft 0x92t
        0xd5t 0x5et 0x1ct 0xabt
        0x98t 0xaat 0x7t 0xd8t
        0x1t 0x5bt 0x83t 0x12t
        0xbet 0x85t 0x31t 0x24t
        0xc3t 0x7dt 0xct 0x55t
        0x74t 0x5dt 0xbet 0x72t
        0xfet 0xb1t 0xdet 0x80t
        0xa7t 0x6t 0xdct 0x9bt
        0x74t 0xf1t 0x9bt 0xc1t
        0xc1t 0x69t 0x9bt 0xe4t
        0x86t 0x47t 0xbet 0xeft
        0xc6t 0x9dt 0xc1t 0xft
        0xcct 0xa1t 0xct 0x24t
        0x6ft 0x2ct 0xe9t 0x2dt
        0xaat 0x84t 0x74t 0x4at
        0xdct 0xa9t 0xb0t 0x5ct
        0xdat 0x88t 0xf9t 0x76t
        0x52t 0x51t 0x3et 0x98t
        0x6dt 0xc6t 0x31t 0xa8t
        0xc8t 0x27t 0x3t 0xb0t
        0xc7t 0x7ft 0x59t 0xbft
        0xf3t 0xbt 0xe0t 0xc6t
        0x47t 0x91t 0xa7t 0xd5t
        0x51t 0x63t 0xcat 0x6t
        0x67t 0x29t 0x29t 0x14t
        0x85t 0xat 0xb7t 0x27t
        0x38t 0x21t 0x1bt 0x2et
        0xfct 0x6dt 0x2ct 0x4dt
        0x13t 0xdt 0x38t 0x53t
        0x54t 0x73t 0xat 0x65t
        0xbbt 0xat 0x6at 0x76t
        0x2et 0xc9t 0xc2t 0x81t
        0x85t 0x2ct 0x72t 0x92t
        0xa1t 0xe8t 0xbft 0xa2t
        0x4bt 0x66t 0x1at 0xa8t
        0x70t 0x8bt 0x4bt 0xc2t
        0xa3t 0x51t 0x6ct 0xc7t
        0x19t 0xe8t 0x92t 0xd1t
        0x24t 0x6t 0x99t 0xd6t
        0x85t 0x35t 0xet 0xf4t
        0x70t 0xa0t 0x6at 0x10t
        0x16t 0xc1t 0xa4t 0x19t
        0x8t 0x6ct 0x37t 0x1et
        0x4ct 0x77t 0x48t 0x27t
        0xb5t 0xbct 0xb0t 0x34t
        0xb3t 0xct 0x1ct 0x39t
        0x4at 0xaat 0xd8t 0x4et
        0x4ft 0xcat 0x9ct 0x5bt
        0xf3t 0x6ft 0x2et 0x68t
        0xeet 0x82t 0x8ft 0x74t
        0x6ft 0x63t 0xa5t 0x78t
        0x14t 0x78t 0xc8t 0x84t
        0x8t 0x2t 0xc7t 0x8ct
        0xfat 0xfft 0xbet 0x90t
        0xebt 0x6ct 0x50t 0xa4t
        0xf7t 0xa3t 0xf9t 0xbet
        0xf2t 0x78t 0x71t 0xc6t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0x40

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/vlingo/client/core/crypto/SHA256;->context:[I

    .line 68
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/vlingo/client/core/crypto/SHA256;->buffer:[I

    .line 69
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/vlingo/client/core/crypto/SHA256;->buf:[B

    .line 70
    invoke-virtual {p0}, Lcom/vlingo/client/core/crypto/SHA256;->coreReset()V

    .line 71
    return-void
.end method

.method private final Ch(III)I
    .registers 6
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 149
    and-int v0, p1, p2

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p3

    xor-int/2addr v0, v1

    return v0
.end method

.method private final Maj(III)I
    .registers 6
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 151
    and-int v0, p1, p2

    and-int v1, p1, p3

    xor-int/2addr v0, v1

    and-int v1, p2, p3

    xor-int/2addr v0, v1

    return v0
.end method

.method private final R(II)I
    .registers 4
    .parameter "off"
    .parameter "x"

    .prologue
    .line 158
    ushr-int v0, p2, p1

    return v0
.end method

.method private final S(II)I
    .registers 5
    .parameter "off"
    .parameter "x"

    .prologue
    .line 159
    ushr-int v0, p2, p1

    rsub-int/lit8 v1, p1, 0x20

    shl-int v1, p2, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private final Sig0(I)I
    .registers 4
    .parameter "x"

    .prologue
    .line 153
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/vlingo/client/core/crypto/SHA256;->S(II)I

    move-result v0

    const/16 v1, 0xd

    invoke-direct {p0, v1, p1}, Lcom/vlingo/client/core/crypto/SHA256;->S(II)I

    move-result v1

    xor-int/2addr v0, v1

    const/16 v1, 0x16

    invoke-direct {p0, v1, p1}, Lcom/vlingo/client/core/crypto/SHA256;->S(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private final Sig1(I)I
    .registers 4
    .parameter "x"

    .prologue
    .line 154
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lcom/vlingo/client/core/crypto/SHA256;->S(II)I

    move-result v0

    const/16 v1, 0xb

    invoke-direct {p0, v1, p1}, Lcom/vlingo/client/core/crypto/SHA256;->S(II)I

    move-result v1

    xor-int/2addr v0, v1

    const/16 v1, 0x19

    invoke-direct {p0, v1, p1}, Lcom/vlingo/client/core/crypto/SHA256;->S(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private privateDigest([BIIZ)I
    .registers 15
    .parameter "buf"
    .parameter "offset"
    .parameter "len"
    .parameter "reset"

    .prologue
    const/4 v9, 0x0

    .line 164
    iget-object v5, p0, Lcom/vlingo/client/core/crypto/SHA256;->buf:[B

    iget v6, p0, Lcom/vlingo/client/core/crypto/SHA256;->bufOff:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/vlingo/client/core/crypto/SHA256;->bufOff:I

    const/16 v7, -0x80

    aput-byte v7, v5, v6

    .line 166
    const/16 v4, 0x8

    .line 167
    .local v4, lenOfBitLen:I
    rsub-int/lit8 v0, v4, 0x40

    .line 168
    .local v0, C:I
    iget v5, p0, Lcom/vlingo/client/core/crypto/SHA256;->bufOff:I

    if-le v5, v0, :cond_2d

    .line 169
    :goto_15
    iget v5, p0, Lcom/vlingo/client/core/crypto/SHA256;->bufOff:I

    const/16 v6, 0x40

    if-ge v5, v6, :cond_26

    .line 170
    iget-object v5, p0, Lcom/vlingo/client/core/crypto/SHA256;->buf:[B

    iget v6, p0, Lcom/vlingo/client/core/crypto/SHA256;->bufOff:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/vlingo/client/core/crypto/SHA256;->bufOff:I

    aput-byte v9, v5, v6

    goto :goto_15

    .line 172
    :cond_26
    iget-object v5, p0, Lcom/vlingo/client/core/crypto/SHA256;->buf:[B

    invoke-virtual {p0, v5, v9}, Lcom/vlingo/client/core/crypto/SHA256;->coreUpdate([BI)V

    .line 173
    iput v9, p0, Lcom/vlingo/client/core/crypto/SHA256;->bufOff:I

    .line 176
    :cond_2d
    :goto_2d
    iget v5, p0, Lcom/vlingo/client/core/crypto/SHA256;->bufOff:I

    if-ge v5, v0, :cond_3c

    .line 177
    iget-object v5, p0, Lcom/vlingo/client/core/crypto/SHA256;->buf:[B

    iget v6, p0, Lcom/vlingo/client/core/crypto/SHA256;->bufOff:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/vlingo/client/core/crypto/SHA256;->bufOff:I

    aput-byte v9, v5, v6

    goto :goto_2d

    .line 179
    :cond_3c
    iget-wide v5, p0, Lcom/vlingo/client/core/crypto/SHA256;->byteCount:J

    const-wide/16 v7, 0x8

    mul-long v1, v5, v7

    .line 181
    .local v1, bitCount:J
    const/16 v3, 0x38

    .local v3, i:I
    :goto_44
    if-ltz v3, :cond_57

    .line 182
    iget-object v5, p0, Lcom/vlingo/client/core/crypto/SHA256;->buf:[B

    iget v6, p0, Lcom/vlingo/client/core/crypto/SHA256;->bufOff:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/vlingo/client/core/crypto/SHA256;->bufOff:I

    ushr-long v7, v1, v3

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 181
    add-int/lit8 v3, v3, -0x8

    goto :goto_44

    .line 184
    :cond_57
    iget-object v5, p0, Lcom/vlingo/client/core/crypto/SHA256;->buf:[B

    invoke-virtual {p0, v5, v9}, Lcom/vlingo/client/core/crypto/SHA256;->coreUpdate([BI)V

    .line 185
    invoke-virtual {p0, p1, p2}, Lcom/vlingo/client/core/crypto/SHA256;->coreDigest([BI)V

    .line 187
    if-eqz p4, :cond_64

    invoke-virtual {p0}, Lcom/vlingo/client/core/crypto/SHA256;->coreReset()V

    .line 188
    :cond_64
    const/16 v5, 0x20

    return v5
.end method

.method private final sig0(I)I
    .registers 4
    .parameter "x"

    .prologue
    .line 155
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lcom/vlingo/client/core/crypto/SHA256;->S(II)I

    move-result v0

    const/16 v1, 0x12

    invoke-direct {p0, v1, p1}, Lcom/vlingo/client/core/crypto/SHA256;->S(II)I

    move-result v1

    xor-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-direct {p0, v1, p1}, Lcom/vlingo/client/core/crypto/SHA256;->R(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private final sig1(I)I
    .registers 4
    .parameter "x"

    .prologue
    .line 156
    const/16 v0, 0x11

    invoke-direct {p0, v0, p1}, Lcom/vlingo/client/core/crypto/SHA256;->S(II)I

    move-result v0

    const/16 v1, 0x13

    invoke-direct {p0, v1, p1}, Lcom/vlingo/client/core/crypto/SHA256;->S(II)I

    move-result v1

    xor-int/2addr v0, v1

    const/16 v1, 0xa

    invoke-direct {p0, v1, p1}, Lcom/vlingo/client/core/crypto/SHA256;->R(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public static final toHex([B)Ljava/lang/String;
    .registers 7
    .parameter "hash"

    .prologue
    .line 284
    array-length v4, p0

    mul-int/lit8 v4, v4, 0x2

    new-array v0, v4, [C

    .line 285
    .local v0, buf:[C
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x0

    .local v2, x:I
    :goto_7
    array-length v4, p0

    if-ge v1, v4, :cond_27

    .line 286
    add-int/lit8 v3, v2, 0x1

    .end local v2           #x:I
    .local v3, x:I
    sget-object v4, Lcom/vlingo/client/core/crypto/SHA256;->HEX_CHARS:[C

    aget-byte v5, p0, v1

    ushr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v2

    .line 287
    add-int/lit8 v2, v3, 0x1

    .end local v3           #x:I
    .restart local v2       #x:I
    sget-object v4, Lcom/vlingo/client/core/crypto/SHA256;->HEX_CHARS:[C

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 285
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 289
    :cond_27
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    return-object v4
.end method


# virtual methods
.method protected coreDigest([BI)V
    .registers 8
    .parameter "buf"
    .parameter "off"

    .prologue
    .line 77
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/vlingo/client/core/crypto/SHA256;->context:[I

    array-length v2, v2

    if-ge v0, v2, :cond_20

    .line 78
    const/4 v1, 0x0

    .local v1, j:I
    :goto_7
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1d

    .line 79
    mul-int/lit8 v2, v0, 0x4

    rsub-int/lit8 v3, v1, 0x3

    add-int/2addr v2, v3

    add-int/2addr v2, p2

    iget-object v3, p0, Lcom/vlingo/client/core/crypto/SHA256;->context:[I

    aget v3, v3, v0

    mul-int/lit8 v4, v1, 0x8

    ushr-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 77
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 80
    .end local v1           #j:I
    :cond_20
    return-void
.end method

.method protected coreReset()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 84
    iput v2, p0, Lcom/vlingo/client/core/crypto/SHA256;->bufOff:I

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vlingo/client/core/crypto/SHA256;->byteCount:J

    .line 88
    iget-object v0, p0, Lcom/vlingo/client/core/crypto/SHA256;->context:[I

    const v1, 0x6a09e667

    aput v1, v0, v2

    .line 89
    iget-object v0, p0, Lcom/vlingo/client/core/crypto/SHA256;->context:[I

    const/4 v1, 0x1

    const v2, -0x4498517b

    aput v2, v0, v1

    .line 90
    iget-object v0, p0, Lcom/vlingo/client/core/crypto/SHA256;->context:[I

    const/4 v1, 0x2

    const v2, 0x3c6ef372

    aput v2, v0, v1

    .line 91
    iget-object v0, p0, Lcom/vlingo/client/core/crypto/SHA256;->context:[I

    const/4 v1, 0x3

    const v2, -0x5ab00ac6

    aput v2, v0, v1

    .line 92
    iget-object v0, p0, Lcom/vlingo/client/core/crypto/SHA256;->context:[I

    const/4 v1, 0x4

    const v2, 0x510e527f

    aput v2, v0, v1

    .line 93
    iget-object v0, p0, Lcom/vlingo/client/core/crypto/SHA256;->context:[I

    const/4 v1, 0x5

    const v2, -0x64fa9774

    aput v2, v0, v1

    .line 94
    iget-object v0, p0, Lcom/vlingo/client/core/crypto/SHA256;->context:[I

    const/4 v1, 0x6

    const v2, 0x1f83d9ab

    aput v2, v0, v1

    .line 95
    iget-object v0, p0, Lcom/vlingo/client/core/crypto/SHA256;->context:[I

    const/4 v1, 0x7

    const v2, 0x5be0cd19

    aput v2, v0, v1

    .line 96
    return-void
.end method

.method protected coreUpdate([BI)V
    .registers 20
    .parameter "block"
    .parameter "offset"

    .prologue
    .line 101
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vlingo/client/core/crypto/SHA256;->buffer:[I

    .line 104
    .local v3, W:[I
    const/4 v12, 0x0

    .local v12, i:I
    move/from16 v13, p2

    .end local p2
    .local v13, offset:I
    :goto_7
    const/16 v14, 0x10

    if-ge v12, v14, :cond_2f

    .line 105
    add-int/lit8 p2, v13, 0x1

    .end local v13           #offset:I
    .restart local p2
    aget-byte v14, p1, v13

    shl-int/lit8 v14, v14, 0x18

    add-int/lit8 v13, p2, 0x1

    .end local p2
    .restart local v13       #offset:I
    aget-byte v15, p1, p2

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x10

    or-int/2addr v14, v15

    add-int/lit8 p2, v13, 0x1

    .end local v13           #offset:I
    .restart local p2
    aget-byte v15, p1, v13

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v14, v15

    add-int/lit8 v13, p2, 0x1

    .end local p2
    .restart local v13       #offset:I
    aget-byte v15, p1, p2

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v14, v15

    aput v14, v3, v12

    .line 104
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 111
    :cond_2f
    const/16 v12, 0x10

    :goto_31
    const/16 v14, 0x40

    if-ge v12, v14, :cond_59

    .line 112
    add-int/lit8 v14, v12, -0x2

    aget v14, v3, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/vlingo/client/core/crypto/SHA256;->sig1(I)I

    move-result v14

    add-int/lit8 v15, v12, -0x7

    aget v15, v3, v15

    add-int/2addr v14, v15

    add-int/lit8 v15, v12, -0xf

    aget v15, v3, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/vlingo/client/core/crypto/SHA256;->sig0(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/lit8 v15, v12, -0x10

    aget v15, v3, v15

    add-int/2addr v14, v15

    aput v14, v3, v12

    .line 111
    add-int/lit8 v12, v12, 0x1

    goto :goto_31

    .line 114
    :cond_59
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vlingo/client/core/crypto/SHA256;->context:[I

    const/4 v15, 0x0

    aget v4, v14, v15

    .line 115
    .local v4, a:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vlingo/client/core/crypto/SHA256;->context:[I

    const/4 v15, 0x1

    aget v5, v14, v15

    .line 116
    .local v5, b:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vlingo/client/core/crypto/SHA256;->context:[I

    const/4 v15, 0x2

    aget v6, v14, v15

    .line 117
    .local v6, c:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vlingo/client/core/crypto/SHA256;->context:[I

    const/4 v15, 0x3

    aget v7, v14, v15

    .line 118
    .local v7, d:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vlingo/client/core/crypto/SHA256;->context:[I

    const/4 v15, 0x4

    aget v8, v14, v15

    .line 119
    .local v8, e:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vlingo/client/core/crypto/SHA256;->context:[I

    const/4 v15, 0x5

    aget v9, v14, v15

    .line 120
    .local v9, f:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vlingo/client/core/crypto/SHA256;->context:[I

    const/4 v15, 0x6

    aget v10, v14, v15

    .line 121
    .local v10, g:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vlingo/client/core/crypto/SHA256;->context:[I

    const/4 v15, 0x7

    aget v11, v14, v15

    .line 124
    .local v11, h:I
    const/4 v12, 0x0

    :goto_92
    const/16 v14, 0x40

    if-ge v12, v14, :cond_c8

    .line 125
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/vlingo/client/core/crypto/SHA256;->Sig1(I)I

    move-result v14

    add-int/2addr v14, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v10}, Lcom/vlingo/client/core/crypto/SHA256;->Ch(III)I

    move-result v15

    add-int/2addr v14, v15

    sget-object v15, Lcom/vlingo/client/core/crypto/SHA256;->K:[I

    aget v15, v15, v12

    add-int/2addr v14, v15

    aget v15, v3, v12

    add-int v1, v14, v15

    .line 126
    .local v1, T1:I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/vlingo/client/core/crypto/SHA256;->Sig0(I)I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/vlingo/client/core/crypto/SHA256;->Maj(III)I

    move-result v15

    add-int v2, v14, v15

    .line 127
    .local v2, T2:I
    move v11, v10

    .line 128
    move v10, v9

    .line 129
    move v9, v8

    .line 130
    add-int v8, v7, v1

    .line 131
    move v7, v6

    .line 132
    move v6, v5

    .line 133
    move v5, v4

    .line 134
    add-int v4, v1, v2

    .line 124
    add-int/lit8 v12, v12, 0x1

    goto :goto_92

    .line 138
    .end local v1           #T1:I
    .end local v2           #T2:I
    :cond_c8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vlingo/client/core/crypto/SHA256;->context:[I

    const/4 v15, 0x0

    aget v16, v14, v15

    add-int v16, v16, v4

    aput v16, v14, v15

    .line 139
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vlingo/client/core/crypto/SHA256;->context:[I

    const/4 v15, 0x1

    aget v16, v14, v15

    add-int v16, v16, v5

    aput v16, v14, v15

    .line 140
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vlingo/client/core/crypto/SHA256;->context:[I

    const/4 v15, 0x2

    aget v16, v14, v15

    add-int v16, v16, v6

    aput v16, v14, v15

    .line 141
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vlingo/client/core/crypto/SHA256;->context:[I

    const/4 v15, 0x3

    aget v16, v14, v15

    add-int v16, v16, v7

    aput v16, v14, v15

    .line 142
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vlingo/client/core/crypto/SHA256;->context:[I

    const/4 v15, 0x4

    aget v16, v14, v15

    add-int v16, v16, v8

    aput v16, v14, v15

    .line 143
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vlingo/client/core/crypto/SHA256;->context:[I

    const/4 v15, 0x5

    aget v16, v14, v15

    add-int v16, v16, v9

    aput v16, v14, v15

    .line 144
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vlingo/client/core/crypto/SHA256;->context:[I

    const/4 v15, 0x6

    aget v16, v14, v15

    add-int v16, v16, v10

    aput v16, v14, v15

    .line 145
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vlingo/client/core/crypto/SHA256;->context:[I

    const/4 v15, 0x7

    aget v16, v14, v15

    add-int v16, v16, v11

    aput v16, v14, v15

    .line 146
    return-void
.end method

.method public digest(Z[BI)V
    .registers 7
    .parameter "reset"
    .parameter "buffer"
    .parameter "offset"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/vlingo/client/core/crypto/SHA256;->buf:[B

    array-length v1, p2

    const/4 v2, 0x1

    invoke-direct {p0, v0, p3, v1, v2}, Lcom/vlingo/client/core/crypto/SHA256;->privateDigest([BIIZ)I

    .line 264
    return-void
.end method

.method public digest()[B
    .registers 5

    .prologue
    const/16 v3, 0x20

    .line 253
    new-array v0, v3, [B

    .line 254
    .local v0, tmp:[B
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/vlingo/client/core/crypto/SHA256;->privateDigest([BIIZ)I

    .line 255
    return-object v0
.end method

.method public final digestSize()I
    .registers 2

    .prologue
    .line 270
    const/16 v0, 0x100

    return v0
.end method

.method public extract([II)V
    .registers 6
    .parameter "digest"
    .parameter "offset"

    .prologue
    .line 201
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/vlingo/client/core/crypto/SHA256;->context:[I

    array-length v1, v1

    if-ge v0, v1, :cond_11

    .line 202
    add-int v1, v0, p2

    iget-object v2, p0, Lcom/vlingo/client/core/crypto/SHA256;->context:[I

    aget v2, v2, v0

    aput v2, p1, v1

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 203
    :cond_11
    return-void
.end method

.method public hash(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "s"

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/vlingo/client/core/crypto/SHA256;->coreReset()V

    .line 275
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_15

    .line 277
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Lcom/vlingo/client/core/crypto/SHA256;->update(B)V

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 279
    :cond_15
    invoke-virtual {p0}, Lcom/vlingo/client/core/crypto/SHA256;->digest()[B

    move-result-object v0

    .line 280
    .local v0, d:[B
    invoke-static {v0}, Lcom/vlingo/client/core/crypto/SHA256;->toHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public update(B)V
    .registers 7
    .parameter "b"

    .prologue
    const/4 v4, 0x0

    .line 213
    iget-wide v0, p0, Lcom/vlingo/client/core/crypto/SHA256;->byteCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/vlingo/client/core/crypto/SHA256;->byteCount:J

    .line 214
    iget-object v0, p0, Lcom/vlingo/client/core/crypto/SHA256;->buf:[B

    iget v1, p0, Lcom/vlingo/client/core/crypto/SHA256;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/vlingo/client/core/crypto/SHA256;->bufOff:I

    aput-byte p1, v0, v1

    .line 215
    iget v0, p0, Lcom/vlingo/client/core/crypto/SHA256;->bufOff:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1f

    .line 216
    iget-object v0, p0, Lcom/vlingo/client/core/crypto/SHA256;->buf:[B

    invoke-virtual {p0, v0, v4}, Lcom/vlingo/client/core/crypto/SHA256;->coreUpdate([BI)V

    .line 217
    iput v4, p0, Lcom/vlingo/client/core/crypto/SHA256;->bufOff:I

    .line 220
    :cond_1f
    return-void
.end method

.method public update([B)V
    .registers 4
    .parameter "data"

    .prologue
    .line 245
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/vlingo/client/core/crypto/SHA256;->update([BII)V

    .line 246
    return-void
.end method

.method public update([BII)V
    .registers 10
    .parameter "input"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v5, 0x0

    .line 229
    iget-wide v1, p0, Lcom/vlingo/client/core/crypto/SHA256;->byteCount:J

    int-to-long v3, p3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/vlingo/client/core/crypto/SHA256;->byteCount:J

    .line 232
    :goto_7
    iget v1, p0, Lcom/vlingo/client/core/crypto/SHA256;->bufOff:I

    rsub-int/lit8 v0, v1, 0x40

    .local v0, todo:I
    if-lt p3, v0, :cond_1e

    .line 233
    iget-object v1, p0, Lcom/vlingo/client/core/crypto/SHA256;->buf:[B

    iget v2, p0, Lcom/vlingo/client/core/crypto/SHA256;->bufOff:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    iget-object v1, p0, Lcom/vlingo/client/core/crypto/SHA256;->buf:[B

    invoke-virtual {p0, v1, v5}, Lcom/vlingo/client/core/crypto/SHA256;->coreUpdate([BI)V

    .line 235
    sub-int/2addr p3, v0

    .line 236
    add-int/2addr p2, v0

    .line 237
    iput v5, p0, Lcom/vlingo/client/core/crypto/SHA256;->bufOff:I

    goto :goto_7

    .line 240
    :cond_1e
    iget-object v1, p0, Lcom/vlingo/client/core/crypto/SHA256;->buf:[B

    iget v2, p0, Lcom/vlingo/client/core/crypto/SHA256;->bufOff:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    iget v1, p0, Lcom/vlingo/client/core/crypto/SHA256;->bufOff:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/vlingo/client/core/crypto/SHA256;->bufOff:I

    .line 242
    return-void
.end method
