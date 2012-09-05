.class public Lmyorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;
.super Ljava/lang/Object;
.source "ISO9796d1Encoding.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;


# static fields
.field private static inverse:[B

.field private static shadows:[B


# instance fields
.field private bitSize:I

.field private engine:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

.field private forEncryption:Z

.field private padBits:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x10

    .line 18
    new-array v0, v1, [B

    fill-array-data v0, :array_12

    sput-object v0, Lmyorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->shadows:[B

    .line 21
    new-array v0, v1, [B

    fill-array-data v0, :array_1e

    sput-object v0, Lmyorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->inverse:[B

    return-void

    .line 18
    nop

    :array_12
    .array-data 0x1
        0xet
        0x3t
        0x5t
        0x8t
        0x9t
        0x4t
        0x2t
        0xft
        0x0t
        0xdt
        0xbt
        0x6t
        0x7t
        0xat
        0xct
        0x1t
    .end array-data

    .line 21
    :array_1e
    .array-data 0x1
        0x8t
        0xft
        0x6t
        0x1t
        0x5t
        0x2t
        0xbt
        0xct
        0x3t
        0x4t
        0xdt
        0xat
        0xet
        0x9t
        0x0t
        0x7t
    .end array-data
.end method

.method public constructor <init>(Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .registers 3
    .parameter "cipher"

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lmyorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->padBits:I

    .line 31
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->engine:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 32
    return-void
.end method

.method private decodeBlock([BII)[B
    .registers 16
    .parameter "in"
    .parameter "inOff"
    .parameter "inLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 154
    iget-object v8, p0, Lmyorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->engine:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v8, p1, p2, p3}, Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    .line 155
    .local v0, block:[B
    const/4 v5, 0x1

    .line 156
    .local v5, r:I
    iget v8, p0, Lmyorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->bitSize:I

    add-int/lit8 v8, v8, 0xd

    div-int/lit8 v6, v8, 0x10

    .line 158
    .local v6, t:I
    array-length v8, v0

    add-int/lit8 v8, v8, -0x1

    aget-byte v8, v0, v8

    and-int/lit8 v8, v8, 0xf

    const/4 v9, 0x6

    if-eq v8, v9, :cond_1f

    .line 159
    new-instance v8, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v9, "invalid forcing byte in block"

    invoke-direct {v8, v9}, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 162
    :cond_1f
    array-length v8, v0

    add-int/lit8 v8, v8, -0x1

    array-length v9, v0

    add-int/lit8 v9, v9, -0x1

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    ushr-int/lit8 v9, v9, 0x4

    sget-object v10, Lmyorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->inverse:[B

    array-length v11, v0

    add-int/lit8 v11, v11, -0x2

    aget-byte v11, v0, v11

    and-int/lit16 v11, v11, 0xff

    shr-int/lit8 v11, v11, 0x4

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x4

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    .line 163
    const/4 v8, 0x0

    sget-object v9, Lmyorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->shadows:[B

    const/4 v10, 0x1

    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    ushr-int/lit8 v10, v10, 0x4

    aget-byte v9, v9, v10

    shl-int/lit8 v9, v9, 0x4

    sget-object v10, Lmyorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->shadows:[B

    const/4 v11, 0x1

    aget-byte v11, v0, v11

    and-int/lit8 v11, v11, 0xf

    aget-byte v10, v10, v11

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    .line 165
    const/4 v2, 0x0

    .line 166
    .local v2, boundaryFound:Z
    const/4 v1, 0x0

    .line 168
    .local v1, boundary:I
    array-length v8, v0

    add-int/lit8 v3, v8, -0x1

    .local v3, i:I
    :goto_5e
    array-length v8, v0

    mul-int/lit8 v9, v6, 0x2

    sub-int/2addr v8, v9

    if-lt v3, v8, :cond_9a

    .line 169
    sget-object v8, Lmyorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->shadows:[B

    aget-byte v9, v0, v3

    and-int/lit16 v9, v9, 0xff

    ushr-int/lit8 v9, v9, 0x4

    aget-byte v8, v8, v9

    shl-int/lit8 v8, v8, 0x4

    sget-object v9, Lmyorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->shadows:[B

    aget-byte v10, v0, v3

    and-int/lit8 v10, v10, 0xf

    aget-byte v9, v9, v10

    or-int v7, v8, v9

    .line 171
    .local v7, val:I
    add-int/lit8 v8, v3, -0x1

    aget-byte v8, v0, v8

    xor-int/2addr v8, v7

    and-int/lit16 v8, v8, 0xff

    if-eqz v8, :cond_8f

    .line 172
    if-nez v2, :cond_92

    .line 173
    const/4 v2, 0x1

    .line 174
    add-int/lit8 v8, v3, -0x1

    aget-byte v8, v0, v8

    xor-int/2addr v8, v7

    and-int/lit16 v5, v8, 0xff

    .line 175
    add-int/lit8 v1, v3, -0x1

    .line 168
    :cond_8f
    add-int/lit8 v3, v3, -0x2

    goto :goto_5e

    .line 177
    :cond_92
    new-instance v8, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v9, "invalid tsums in block"

    invoke-direct {v8, v9}, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 182
    .end local v7           #val:I
    :cond_9a
    const/4 v8, 0x0

    aput-byte v8, v0, v1

    .line 184
    array-length v8, v0

    sub-int/2addr v8, v1

    div-int/lit8 v8, v8, 0x2

    new-array v4, v8, [B

    .line 186
    .local v4, nblock:[B
    const/4 v3, 0x0

    :goto_a4
    array-length v8, v4

    if-ge v3, v8, :cond_b3

    .line 187
    mul-int/lit8 v8, v3, 0x2

    add-int/2addr v8, v1

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, v0, v8

    aput-byte v8, v4, v3

    .line 186
    add-int/lit8 v3, v3, 0x1

    goto :goto_a4

    .line 190
    :cond_b3
    add-int/lit8 v8, v5, -0x1

    iput v8, p0, Lmyorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->padBits:I

    .line 192
    return-object v4
.end method

.method private encodeBlock([BII)[B
    .registers 16
    .parameter "in"
    .parameter "inOff"
    .parameter "inLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 111
    iget v8, p0, Lmyorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->bitSize:I

    add-int/lit8 v8, v8, 0x7

    div-int/lit8 v8, v8, 0x8

    new-array v0, v8, [B

    .line 112
    .local v0, block:[B
    iget v8, p0, Lmyorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->padBits:I

    add-int/lit8 v4, v8, 0x1

    .line 113
    .local v4, r:I
    move v7, p3

    .line 114
    .local v7, z:I
    iget v8, p0, Lmyorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->bitSize:I

    add-int/lit8 v8, v8, 0xd

    div-int/lit8 v5, v8, 0x10

    .line 116
    .local v5, t:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_15
    if-ge v1, v5, :cond_31

    .line 117
    sub-int v8, v5, v7

    if-le v1, v8, :cond_29

    .line 118
    add-int v8, p2, p3

    sub-int v9, v5, v1

    sub-int/2addr v8, v9

    array-length v9, v0

    sub-int/2addr v9, v5

    sub-int v10, v5, v1

    invoke-static {p1, v8, v0, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    :goto_27
    add-int/2addr v1, v7

    goto :goto_15

    .line 120
    :cond_29
    array-length v8, v0

    add-int v9, v1, v7

    sub-int/2addr v8, v9

    invoke-static {p1, p2, v0, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_27

    .line 124
    :cond_31
    array-length v8, v0

    mul-int/lit8 v9, v5, 0x2

    sub-int v1, v8, v9

    :goto_36
    array-length v8, v0

    if-eq v1, v8, :cond_5b

    .line 125
    array-length v8, v0

    sub-int/2addr v8, v5

    div-int/lit8 v9, v1, 0x2

    add-int/2addr v8, v9

    aget-byte v6, v0, v8

    .line 127
    .local v6, val:B
    sget-object v8, Lmyorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->shadows:[B

    and-int/lit16 v9, v6, 0xff

    ushr-int/lit8 v9, v9, 0x4

    aget-byte v8, v8, v9

    shl-int/lit8 v8, v8, 0x4

    sget-object v9, Lmyorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->shadows:[B

    and-int/lit8 v10, v6, 0xf

    aget-byte v9, v9, v10

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v0, v1

    .line 128
    add-int/lit8 v8, v1, 0x1

    aput-byte v6, v0, v8

    .line 124
    add-int/lit8 v1, v1, 0x2

    goto :goto_36

    .line 131
    .end local v6           #val:B
    :cond_5b
    array-length v8, v0

    mul-int/lit8 v9, v7, 0x2

    sub-int/2addr v8, v9

    aget-byte v9, v0, v8

    xor-int/2addr v9, v4

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    .line 132
    array-length v8, v0

    add-int/lit8 v8, v8, -0x1

    array-length v9, v0

    add-int/lit8 v9, v9, -0x1

    aget-byte v9, v0, v9

    shl-int/lit8 v9, v9, 0x4

    or-int/lit8 v9, v9, 0x6

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    .line 134
    iget v8, p0, Lmyorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->bitSize:I

    add-int/lit8 v8, v8, -0x1

    rem-int/lit8 v8, v8, 0x8

    rsub-int/lit8 v2, v8, 0x8

    .line 135
    .local v2, maxBit:I
    const/4 v3, 0x0

    .line 137
    .local v3, offSet:I
    const/16 v8, 0x8

    if-eq v2, v8, :cond_9c

    .line 138
    aget-byte v8, v0, v11

    const/16 v9, 0xff

    ushr-int/2addr v9, v2

    and-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v0, v11

    .line 139
    aget-byte v8, v0, v11

    const/16 v9, 0x80

    ushr-int/2addr v9, v2

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v0, v11

    .line 146
    :goto_93
    iget-object v8, p0, Lmyorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->engine:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v9, v0

    sub-int/2addr v9, v3

    invoke-interface {v8, v0, v3, v9}, Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v8

    return-object v8

    .line 141
    :cond_9c
    aput-byte v11, v0, v11

    .line 142
    const/4 v8, 0x1

    aget-byte v9, v0, v8

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    .line 143
    const/4 v3, 0x1

    goto :goto_93
.end method


# virtual methods
.method public getInputBlockSize()I
    .registers 3

    .prologue
    .line 62
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->engine:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    .line 64
    .local v0, baseBlockSize:I
    iget-boolean v1, p0, Lmyorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->forEncryption:Z

    if-eqz v1, :cond_e

    .line 65
    add-int/lit8 v1, v0, 0x1

    div-int/lit8 v0, v1, 0x2

    .line 67
    .end local v0           #baseBlockSize:I
    :cond_e
    return v0
.end method

.method public getOutputBlockSize()I
    .registers 3

    .prologue
    .line 75
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->engine:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    .line 77
    .local v0, baseBlockSize:I
    iget-boolean v1, p0, Lmyorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->forEncryption:Z

    if-eqz v1, :cond_b

    .line 80
    .end local v0           #baseBlockSize:I
    :goto_a
    return v0

    .restart local v0       #baseBlockSize:I
    :cond_b
    add-int/lit8 v1, v0, 0x1

    div-int/lit8 v0, v1, 0x2

    goto :goto_a
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .registers 6
    .parameter "forEncryption"
    .parameter "param"

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 41
    .local v0, kParam:Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;
    instance-of v2, p2, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v2, :cond_20

    move-object v1, p2

    .line 42
    check-cast v1, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    .line 44
    .local v1, rParam:Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    .end local v0           #kParam:Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;
    check-cast v0, Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;

    .line 49
    .end local v1           #rParam:Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;
    .restart local v0       #kParam:Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;
    :goto_e
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->engine:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v2, p1, p2}, Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 51
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    iput v2, p0, Lmyorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->bitSize:I

    .line 53
    iput-boolean p1, p0, Lmyorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->forEncryption:Z

    .line 54
    return-void

    :cond_20
    move-object v0, p2

    .line 46
    check-cast v0, Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;

    goto :goto_e
.end method

.method public processBlock([BII)[B
    .registers 5
    .parameter "in"
    .parameter "inOff"
    .parameter "inLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 103
    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->forEncryption:Z

    if-eqz v0, :cond_9

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lmyorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->encodeBlock([BII)[B

    move-result-object v0

    .line 106
    :goto_8
    return-object v0

    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lmyorg/bouncycastle/crypto/encodings/ISO9796d1Encoding;->decodeBlock([BII)[B

    move-result-object v0

    goto :goto_8
.end method
