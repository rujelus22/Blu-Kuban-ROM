.class public Lmyorg/bouncycastle/crypto/engines/ISAACEngine;
.super Ljava/lang/Object;
.source "ISAACEngine.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/StreamCipher;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private engineState:[I

.field private index:I

.field private initialised:Z

.field private keyStream:[B

.field private results:[I

.field private final sizeL:I

.field private final stateArraySize:I

.field private workingKey:[B


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/16 v0, 0x8

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->sizeL:I

    const/16 v0, 0x100

    iput v0, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->stateArraySize:I

    .line 18
    iput-object v2, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->engineState:[I

    iput-object v2, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->results:[I

    .line 20
    iput v1, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    iput v1, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->b:I

    iput v1, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->c:I

    .line 23
    iput v1, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->index:I

    .line 24
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->keyStream:[B

    iput-object v2, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->workingKey:[B

    .line 28
    iput-boolean v1, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->initialised:Z

    return-void
.end method

.method private byteToIntLittle([BI)I
    .registers 6
    .parameter "x"
    .parameter "offset"

    .prologue
    .line 210
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, offset:I
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 p2, v0, 0x1

    .end local v0           #offset:I
    .restart local p2
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #offset:I
    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 p2, v0, 0x1

    .end local v0           #offset:I
    .restart local p2
    aget-byte v2, p1, v0

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    return v1
.end method

.method private intToByteLittle(I)[B
    .registers 5
    .parameter "x"

    .prologue
    .line 215
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 216
    .local v0, out:[B
    const/4 v1, 0x3

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 217
    const/4 v1, 0x2

    ushr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 218
    const/4 v1, 0x1

    ushr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 219
    const/4 v1, 0x0

    ushr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 220
    return-object v0
.end method

.method private intToByteLittle([I)[B
    .registers 8
    .parameter "x"

    .prologue
    .line 224
    array-length v3, p1

    mul-int/lit8 v3, v3, 0x4

    new-array v2, v3, [B

    .line 225
    .local v2, out:[B
    const/4 v0, 0x0

    .local v0, i:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_7
    array-length v3, p1

    if-ge v0, v3, :cond_1a

    .line 226
    aget v3, p1, v0

    invoke-direct {p0, v3}, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->intToByteLittle(I)[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v3, v4, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x4

    goto :goto_7

    .line 228
    :cond_1a
    return-object v2
.end method

.method private isaac()V
    .registers 7

    .prologue
    .line 159
    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->b:I

    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->c:I

    add-int/2addr v3, v4

    iput v3, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->b:I

    .line 160
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    const/16 v3, 0x100

    if-ge v0, v3, :cond_73

    .line 161
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->engineState:[I

    aget v1, v3, v0

    .line 162
    .local v1, x:I
    and-int/lit8 v3, v0, 0x3

    packed-switch v3, :pswitch_data_74

    .line 176
    :goto_19
    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->engineState:[I

    add-int/lit16 v5, v0, 0x80

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    add-int/2addr v3, v4

    iput v3, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    .line 177
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->engineState:[I

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->engineState:[I

    ushr-int/lit8 v5, v1, 0x2

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    iget v5, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    add-int/2addr v4, v5

    iget v5, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->b:I

    add-int v2, v4, v5

    .local v2, y:I
    aput v2, v3, v0

    .line 178
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->results:[I

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->engineState:[I

    ushr-int/lit8 v5, v2, 0xa

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    add-int/2addr v4, v1

    iput v4, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->b:I

    aput v4, v3, v0

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 164
    .end local v2           #y:I
    :pswitch_4b
    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    shl-int/lit8 v4, v4, 0xd

    xor-int/2addr v3, v4

    iput v3, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    goto :goto_19

    .line 167
    :pswitch_55
    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    ushr-int/lit8 v4, v4, 0x6

    xor-int/2addr v3, v4

    iput v3, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    goto :goto_19

    .line 170
    :pswitch_5f
    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    shl-int/lit8 v4, v4, 0x2

    xor-int/2addr v3, v4

    iput v3, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    goto :goto_19

    .line 173
    :pswitch_69
    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    iget v4, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    ushr-int/lit8 v4, v4, 0x10

    xor-int/2addr v3, v4

    iput v3, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    goto :goto_19

    .line 180
    .end local v1           #x:I
    :cond_73
    return-void

    .line 162
    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_55
        :pswitch_5f
        :pswitch_69
    .end packed-switch
.end method

.method private mix([I)V
    .registers 10
    .parameter "x"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 183
    aget v0, p1, v3

    aget v1, p1, v4

    shl-int/lit8 v1, v1, 0xb

    xor-int/2addr v0, v1

    aput v0, p1, v3

    .line 184
    aget v0, p1, v6

    aget v1, p1, v3

    add-int/2addr v0, v1

    aput v0, p1, v6

    .line 185
    aget v0, p1, v4

    aget v1, p1, v5

    add-int/2addr v0, v1

    aput v0, p1, v4

    .line 186
    aget v0, p1, v4

    aget v1, p1, v5

    ushr-int/lit8 v1, v1, 0x2

    xor-int/2addr v0, v1

    aput v0, p1, v4

    .line 187
    aget v0, p1, v7

    aget v1, p1, v4

    add-int/2addr v0, v1

    aput v0, p1, v7

    .line 188
    aget v0, p1, v5

    aget v1, p1, v6

    add-int/2addr v0, v1

    aput v0, p1, v5

    .line 189
    aget v0, p1, v5

    aget v1, p1, v6

    shl-int/lit8 v1, v1, 0x8

    xor-int/2addr v0, v1

    aput v0, p1, v5

    .line 190
    const/4 v0, 0x5

    aget v1, p1, v0

    aget v2, p1, v5

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 191
    aget v0, p1, v6

    aget v1, p1, v7

    add-int/2addr v0, v1

    aput v0, p1, v6

    .line 192
    aget v0, p1, v6

    aget v1, p1, v7

    ushr-int/lit8 v1, v1, 0x10

    xor-int/2addr v0, v1

    aput v0, p1, v6

    .line 193
    const/4 v0, 0x6

    aget v1, p1, v0

    aget v2, p1, v6

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 194
    aget v0, p1, v7

    const/4 v1, 0x5

    aget v1, p1, v1

    add-int/2addr v0, v1

    aput v0, p1, v7

    .line 195
    aget v0, p1, v7

    const/4 v1, 0x5

    aget v1, p1, v1

    shl-int/lit8 v1, v1, 0xa

    xor-int/2addr v0, v1

    aput v0, p1, v7

    .line 196
    const/4 v0, 0x7

    aget v1, p1, v0

    aget v2, p1, v7

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 197
    const/4 v0, 0x5

    aget v1, p1, v0

    const/4 v2, 0x6

    aget v2, p1, v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 198
    const/4 v0, 0x5

    aget v1, p1, v0

    const/4 v2, 0x6

    aget v2, p1, v2

    ushr-int/lit8 v2, v2, 0x4

    xor-int/2addr v1, v2

    aput v1, p1, v0

    .line 199
    aget v0, p1, v3

    const/4 v1, 0x5

    aget v1, p1, v1

    add-int/2addr v0, v1

    aput v0, p1, v3

    .line 200
    const/4 v0, 0x6

    aget v1, p1, v0

    const/4 v2, 0x7

    aget v2, p1, v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 201
    const/4 v0, 0x6

    aget v1, p1, v0

    const/4 v2, 0x7

    aget v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    xor-int/2addr v1, v2

    aput v1, p1, v0

    .line 202
    aget v0, p1, v4

    const/4 v1, 0x6

    aget v1, p1, v1

    add-int/2addr v0, v1

    aput v0, p1, v4

    .line 203
    const/4 v0, 0x7

    aget v1, p1, v0

    aget v2, p1, v3

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 204
    const/4 v0, 0x7

    aget v1, p1, v0

    aget v2, p1, v3

    ushr-int/lit8 v2, v2, 0x9

    xor-int/2addr v1, v2

    aput v1, p1, v0

    .line 205
    aget v0, p1, v5

    const/4 v1, 0x7

    aget v1, p1, v1

    add-int/2addr v0, v1

    aput v0, p1, v5

    .line 206
    aget v0, p1, v3

    aget v1, p1, v4

    add-int/2addr v0, v1

    aput v0, p1, v3

    .line 207
    return-void
.end method

.method private setKey([B)V
    .registers 13
    .parameter "keyBytes"

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0x100

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 97
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->workingKey:[B

    .line 99
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->engineState:[I

    if-nez v5, :cond_10

    .line 100
    new-array v5, v9, [I

    iput-object v5, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->engineState:[I

    .line 103
    :cond_10
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->results:[I

    if-nez v5, :cond_18

    .line 104
    new-array v5, v9, [I

    iput-object v5, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->results:[I

    .line 110
    :cond_18
    const/4 v1, 0x0

    .local v1, i:I
    :goto_19
    if-ge v1, v9, :cond_26

    .line 111
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->engineState:[I

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->results:[I

    aput v7, v6, v1

    aput v7, v5, v1

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 113
    :cond_26
    iput v7, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->c:I

    iput v7, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->b:I

    iput v7, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->a:I

    .line 116
    iput v7, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->index:I

    .line 120
    array-length v5, p1

    array-length v6, p1

    and-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    new-array v4, v5, [B

    .line 121
    .local v4, t:[B
    array-length v5, p1

    invoke-static {p1, v7, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    const/4 v1, 0x0

    :goto_3a
    array-length v5, v4

    if-ge v1, v5, :cond_4a

    .line 123
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->results:[I

    shr-int/lit8 v6, v1, 0x2

    invoke-direct {p0, v4, v1}, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->byteToIntLittle([BI)I

    move-result v7

    aput v7, v5, v6

    .line 122
    add-int/lit8 v1, v1, 0x4

    goto :goto_3a

    .line 127
    :cond_4a
    new-array v0, v8, [I

    .line 129
    .local v0, abcdefgh:[I
    const/4 v1, 0x0

    :goto_4d
    if-ge v1, v8, :cond_57

    .line 130
    const v5, -0x61c88647

    aput v5, v0, v1

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    .line 133
    :cond_57
    const/4 v1, 0x0

    :goto_58
    const/4 v5, 0x4

    if-ge v1, v5, :cond_61

    .line 134
    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->mix([I)V

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    .line 137
    :cond_61
    const/4 v1, 0x0

    :goto_62
    const/4 v5, 0x2

    if-ge v1, v5, :cond_99

    .line 138
    const/4 v2, 0x0

    .local v2, j:I
    :goto_66
    if-ge v2, v9, :cond_96

    .line 139
    const/4 v3, 0x0

    .local v3, k:I
    :goto_69
    if-ge v3, v8, :cond_82

    .line 140
    aget v6, v0, v3

    if-ge v1, v10, :cond_7b

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->results:[I

    add-int v7, v2, v3

    aget v5, v5, v7

    :goto_75
    add-int/2addr v5, v6

    aput v5, v0, v3

    .line 139
    add-int/lit8 v3, v3, 0x1

    goto :goto_69

    .line 140
    :cond_7b
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->engineState:[I

    add-int v7, v2, v3

    aget v5, v5, v7

    goto :goto_75

    .line 143
    :cond_82
    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->mix([I)V

    .line 145
    const/4 v3, 0x0

    :goto_86
    if-ge v3, v8, :cond_93

    .line 146
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->engineState:[I

    add-int v6, v2, v3

    aget v7, v0, v3

    aput v7, v5, v6

    .line 145
    add-int/lit8 v3, v3, 0x1

    goto :goto_86

    .line 138
    :cond_93
    add-int/lit8 v2, v2, 0x8

    goto :goto_66

    .line 137
    .end local v3           #k:I
    :cond_96
    add-int/lit8 v1, v1, 0x1

    goto :goto_62

    .line 151
    .end local v2           #j:I
    :cond_99
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->isaac()V

    .line 153
    iput-boolean v10, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->initialised:Z

    .line 154
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    const-string v0, "ISAAC"

    return-object v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .registers 7
    .parameter "forEncryption"
    .parameter "params"

    .prologue
    .line 39
    instance-of v1, p2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v1, :cond_25

    .line 40
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid parameter passed to ISAAC init - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_25
    move-object v0, p2

    .line 47
    check-cast v0, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    .line 48
    .local v0, p:Lmyorg/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->setKey([B)V

    .line 50
    return-void
.end method

.method public processBytes([BII[BI)V
    .registers 10
    .parameter "in"
    .parameter "inOff"
    .parameter "len"
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 65
    iget-boolean v1, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->initialised:Z

    if-nez v1, :cond_21

    .line 66
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not initialised"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_21
    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_2e

    .line 70
    new-instance v1, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "input buffer too short"

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_2e
    add-int v1, p5, p3

    array-length v2, p4

    if-le v1, v2, :cond_3b

    .line 74
    new-instance v1, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "output buffer too short"

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :cond_3b
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3c
    if-ge v0, p3, :cond_68

    .line 78
    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->index:I

    if-nez v1, :cond_4d

    .line 79
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->isaac()V

    .line 80
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->results:[I

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->intToByteLittle([I)[B

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->keyStream:[B

    .line 82
    :cond_4d
    add-int v1, v0, p5

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->keyStream:[B

    iget v3, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->index:I

    aget-byte v2, v2, v3

    add-int v3, v0, p2

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    .line 83
    iget v1, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->index:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0x3ff

    iput v1, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->index:I

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 85
    :cond_68
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->workingKey:[B

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/crypto/engines/ISAACEngine;->setKey([B)V

    .line 93
    return-void
.end method
