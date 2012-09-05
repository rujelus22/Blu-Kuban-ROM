.class public Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;
.super Ljava/lang/Object;
.source "OpenPGPCFBBlockCipher.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/BlockCipher;


# instance fields
.field private FR:[B

.field private FRE:[B

.field private IV:[B

.field private blockSize:I

.field private cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

.field private count:I

.field private forEncryption:Z


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V
    .registers 3
    .parameter "cipher"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    .line 37
    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    .line 38
    iget v0, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->IV:[B

    .line 39
    iget v0, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    .line 40
    iget v0, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FRE:[B

    .line 41
    return-void
.end method

.method private decryptBlock([BI[BI)I
    .registers 14
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 209
    iget v4, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/2addr v4, p2

    array-length v5, p1

    if-le v4, v5, :cond_f

    .line 210
    new-instance v4, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v5, "input buffer too short"

    invoke-direct {v4, v5}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 213
    :cond_f
    iget v4, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/2addr v4, p4

    array-length v5, p3

    if-le v4, v5, :cond_1d

    .line 214
    new-instance v4, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v5, "output buffer too short"

    invoke-direct {v4, v5}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 217
    :cond_1d
    iget v4, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    iget v5, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    if-le v4, v5, :cond_74

    .line 218
    aget-byte v0, p1, p2

    .line 219
    .local v0, inVal:B
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget v5, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v5, v5, -0x2

    aput-byte v0, v4, v5

    .line 220
    iget v4, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v4, v4, -0x2

    invoke-direct {p0, v0, v4}, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->encryptByte(BI)B

    move-result v4

    aput-byte v4, p3, p4

    .line 222
    add-int/lit8 v4, p2, 0x1

    aget-byte v0, p1, v4

    .line 223
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget v5, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v5, v5, -0x1

    aput-byte v0, v4, v5

    .line 224
    add-int/lit8 v4, p4, 0x1

    iget v5, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-direct {p0, v0, v5}, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->encryptByte(BI)B

    move-result v5

    aput-byte v5, p3, v4

    .line 226
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FRE:[B

    invoke-interface {v4, v5, v8, v6, v8}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 228
    const/4 v3, 0x2

    .local v3, n:I
    :goto_59
    iget v4, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    if-ge v3, v4, :cond_a2

    .line 229
    add-int v4, p2, v3

    aget-byte v0, p1, v4

    .line 230
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    add-int/lit8 v5, v3, -0x2

    aput-byte v0, v4, v5

    .line 231
    add-int v4, p4, v3

    add-int/lit8 v5, v3, -0x2

    invoke-direct {p0, v0, v5}, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->encryptByte(BI)B

    move-result v5

    aput-byte v5, p3, v4

    .line 228
    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    .line 233
    .end local v0           #inVal:B
    .end local v3           #n:I
    :cond_74
    iget v4, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    if-nez v4, :cond_a5

    .line 234
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FRE:[B

    invoke-interface {v4, v5, v8, v6, v8}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 236
    const/4 v3, 0x0

    .restart local v3       #n:I
    :goto_82
    iget v4, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    if-ge v3, v4, :cond_9b

    .line 237
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    add-int v5, p2, v3

    aget-byte v5, p1, v5

    aput-byte v5, v4, v3

    .line 238
    add-int v4, p2, v3

    aget-byte v4, p1, v4

    invoke-direct {p0, v4, v3}, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->encryptByte(BI)B

    move-result v4

    aput-byte v4, p3, v3

    .line 236
    add-int/lit8 v3, v3, 0x1

    goto :goto_82

    .line 241
    :cond_9b
    iget v4, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    iget v5, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/2addr v4, v5

    iput v4, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    .line 266
    .end local v3           #n:I
    :cond_a2
    :goto_a2
    iget v4, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    return v4

    .line 242
    :cond_a5
    iget v4, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    iget v5, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    if-ne v4, v5, :cond_a2

    .line 243
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FRE:[B

    invoke-interface {v4, v5, v8, v6, v8}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 245
    aget-byte v1, p1, p2

    .line 246
    .local v1, inVal1:B
    add-int/lit8 v4, p2, 0x1

    aget-byte v2, p1, v4

    .line 247
    .local v2, inVal2:B
    invoke-direct {p0, v1, v8}, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->encryptByte(BI)B

    move-result v4

    aput-byte v4, p3, p4

    .line 248
    add-int/lit8 v4, p4, 0x1

    const/4 v5, 0x1

    invoke-direct {p0, v2, v5}, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->encryptByte(BI)B

    move-result v5

    aput-byte v5, p3, v4

    .line 250
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    const/4 v5, 0x2

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget v7, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v7, v7, -0x2

    invoke-static {v4, v5, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 252
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget v5, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v5, v5, -0x2

    aput-byte v1, v4, v5

    .line 253
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget v5, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v5, v5, -0x1

    aput-byte v2, v4, v5

    .line 255
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FRE:[B

    invoke-interface {v4, v5, v8, v6, v8}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 257
    const/4 v3, 0x2

    .restart local v3       #n:I
    :goto_ef
    iget v4, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    if-ge v3, v4, :cond_10a

    .line 258
    add-int v4, p2, v3

    aget-byte v0, p1, v4

    .line 259
    .restart local v0       #inVal:B
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    add-int/lit8 v5, v3, -0x2

    aput-byte v0, v4, v5

    .line 260
    add-int v4, p4, v3

    add-int/lit8 v5, v3, -0x2

    invoke-direct {p0, v0, v5}, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->encryptByte(BI)B

    move-result v5

    aput-byte v5, p3, v4

    .line 257
    add-int/lit8 v3, v3, 0x1

    goto :goto_ef

    .line 263
    .end local v0           #inVal:B
    :cond_10a
    iget v4, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    iget v5, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/2addr v4, v5

    iput v4, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    goto :goto_a2
.end method

.method private encryptBlock([BI[BI)I
    .registers 12
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    .line 146
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/2addr v1, p2

    array-length v2, p1

    if-le v1, v2, :cond_10

    .line 147
    new-instance v1, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "input buffer too short"

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    :cond_10
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/2addr v1, p4

    array-length v2, p3

    if-le v1, v2, :cond_1e

    .line 151
    new-instance v1, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "output buffer too short"

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    :cond_1e
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    if-le v1, v2, :cond_75

    .line 155
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget v2, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v2, v2, -0x2

    aget-byte v3, p1, p2

    iget v4, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v4, v4, -0x2

    invoke-direct {p0, v3, v4}, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->encryptByte(BI)B

    move-result v3

    aput-byte v3, p3, p4

    aput-byte v3, v1, v2

    .line 156
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget v2, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, p4, 0x1

    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    iget v5, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-direct {p0, v4, v5}, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->encryptByte(BI)B

    move-result v4

    aput-byte v4, p3, v3

    aput-byte v4, v1, v2

    .line 158
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FRE:[B

    invoke-interface {v1, v2, v6, v3, v6}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 160
    const/4 v0, 0x2

    .local v0, n:I
    :goto_5a
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_a1

    .line 161
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    add-int/lit8 v2, v0, -0x2

    add-int v3, p4, v0

    add-int v4, p2, v0

    aget-byte v4, p1, v4

    add-int/lit8 v5, v0, -0x2

    invoke-direct {p0, v4, v5}, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->encryptByte(BI)B

    move-result v4

    aput-byte v4, p3, v3

    aput-byte v4, v1, v2

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    .line 163
    .end local v0           #n:I
    :cond_75
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    if-nez v1, :cond_a4

    .line 164
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FRE:[B

    invoke-interface {v1, v2, v6, v3, v6}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 166
    const/4 v0, 0x0

    .restart local v0       #n:I
    :goto_83
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_9a

    .line 167
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    add-int v2, p4, v0

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    invoke-direct {p0, v3, v0}, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->encryptByte(BI)B

    move-result v3

    aput-byte v3, p3, v2

    aput-byte v3, v1, v0

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_83

    .line 170
    :cond_9a
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/2addr v1, v2

    iput v1, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    .line 192
    .end local v0           #n:I
    :cond_a1
    :goto_a1
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    return v1

    .line 171
    :cond_a4
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    if-ne v1, v2, :cond_a1

    .line 172
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FRE:[B

    invoke-interface {v1, v2, v6, v3, v6}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 174
    aget-byte v1, p1, p2

    invoke-direct {p0, v1, v6}, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->encryptByte(BI)B

    move-result v1

    aput-byte v1, p3, p4

    .line 175
    add-int/lit8 v1, p4, 0x1

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->encryptByte(BI)B

    move-result v2

    aput-byte v2, p3, v1

    .line 180
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget v3, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v3, v3, -0x2

    invoke-static {v1, v4, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget v2, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v2, v2, -0x2

    invoke-static {p3, p4, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FRE:[B

    invoke-interface {v1, v2, v6, v3, v6}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 185
    const/4 v0, 0x2

    .restart local v0       #n:I
    :goto_e6
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_101

    .line 186
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    add-int/lit8 v2, v0, -0x2

    add-int v3, p4, v0

    add-int v4, p2, v0

    aget-byte v4, p1, v4

    add-int/lit8 v5, v0, -0x2

    invoke-direct {p0, v4, v5}, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->encryptByte(BI)B

    move-result v4

    aput-byte v4, p3, v3

    aput-byte v4, v1, v2

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_e6

    .line 189
    :cond_101
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->blockSize:I

    add-int/2addr v1, v2

    iput v1, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    goto :goto_a1
.end method

.method private encryptByte(BI)B
    .registers 4
    .parameter "data"
    .parameter "blockOff"

    .prologue
    .line 129
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FRE:[B

    aget-byte v0, v0, p2

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    return v0
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/OpenPGPCFB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .registers 5
    .parameter "forEncryption"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 114
    iput-boolean p1, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->forEncryption:Z

    .line 116
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->reset()V

    .line 118
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p2}, Lmyorg/bouncycastle/crypto/BlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 119
    return-void
.end method

.method public processBlock([BI[BI)I
    .registers 6
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 86
    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1, p2, p3, p4}, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->encryptBlock([BI[BI)I

    move-result v0

    :goto_8
    return v0

    :cond_9
    invoke-direct {p0, p1, p2, p3, p4}, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->decryptBlock([BI[BI)I

    move-result v0

    goto :goto_8
.end method

.method public reset()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 94
    iput v3, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->count:I

    .line 96
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->IV:[B

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->FR:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/modes/OpenPGPCFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/BlockCipher;->reset()V

    .line 99
    return-void
.end method
