.class public Lmyorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;
.super Lmyorg/bouncycastle/crypto/BufferedBlockCipher;
.source "PaddedBufferedBlockCipher.java"


# instance fields
.field padding:Lmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V
    .registers 3
    .parameter "cipher"

    .prologue
    .line 41
    new-instance v0, Lmyorg/bouncycastle/crypto/paddings/PKCS7Padding;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/paddings/PKCS7Padding;-><init>()V

    invoke-direct {p0, p1, v0}, Lmyorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;Lmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/crypto/BlockCipher;Lmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V
    .registers 4
    .parameter "cipher"
    .parameter "padding"

    .prologue
    .line 27
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;-><init>()V

    .line 28
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    .line 29
    iput-object p2, p0, Lmyorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;

    .line 31
    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 33
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 9
    .parameter "out"
    .parameter "outOff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;,
            Lmyorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 210
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 211
    .local v0, blockSize:I
    const/4 v1, 0x0

    .line 213
    .local v1, resultLen:I
    iget-boolean v2, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->forEncryption:Z

    if-eqz v2, :cond_43

    .line 214
    iget v2, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    if-ne v2, v0, :cond_2b

    .line 215
    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v2, p2

    array-length v3, p1

    if-le v2, v3, :cond_21

    .line 216
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    .line 218
    new-instance v2, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v3, "output buffer too short"

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 221
    :cond_21
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v2, v3, v5, p1, p2}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v1

    .line 222
    iput v5, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 225
    :cond_2b
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    invoke-interface {v2, v3, v4}, Lmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;->addPadding([BI)I

    .line 227
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    add-int v4, p2, v1

    invoke-interface {v2, v3, v5, p1, v4}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v2

    add-int/2addr v1, v2

    .line 229
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    .line 249
    :goto_42
    return v1

    .line 231
    :cond_43
    iget v2, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    if-ne v2, v0, :cond_66

    .line 232
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v2, v3, v5, v4, v5}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v1

    .line 233
    iput v5, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 241
    :try_start_53
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v2, v3}, Lmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;->padCount([B)I

    move-result v2

    sub-int/2addr v1, v2

    .line 243
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_62
    .catchall {:try_start_53 .. :try_end_62} :catchall_71

    .line 245
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    goto :goto_42

    .line 235
    :cond_66
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    .line 237
    new-instance v2, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v3, "last block incomplete in decryption"

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 245
    :catchall_71
    move-exception v2

    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    throw v2
.end method

.method public getOutputSize(I)I
    .registers 6
    .parameter "len"

    .prologue
    .line 81
    iget v2, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int v1, p1, v2

    .line 82
    .local v1, total:I
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v2, v2

    rem-int v0, v1, v2

    .line 84
    .local v0, leftOver:I
    if-nez v0, :cond_14

    .line 85
    iget-boolean v2, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->forEncryption:Z

    if-eqz v2, :cond_13

    .line 86
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v2, v2

    add-int/2addr v1, v2

    .line 92
    .end local v1           #total:I
    :cond_13
    :goto_13
    return v1

    .restart local v1       #total:I
    :cond_14
    sub-int v2, v1, v0

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v3, v3

    add-int v1, v2, v3

    goto :goto_13
.end method

.method public getUpdateOutputSize(I)I
    .registers 5
    .parameter "len"

    .prologue
    .line 104
    iget v2, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int v1, p1, v2

    .line 105
    .local v1, total:I
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v2, v2

    rem-int v0, v1, v2

    .line 107
    .local v0, leftOver:I
    if-nez v0, :cond_11

    .line 108
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v2, v2

    sub-int v2, v1, v2

    .line 111
    :goto_10
    return v2

    :cond_11
    sub-int v2, v1, v0

    goto :goto_10
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .registers 6
    .parameter "forEncryption"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 55
    iput-boolean p1, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->forEncryption:Z

    .line 57
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->reset()V

    .line 59
    instance-of v1, p2, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_1f

    move-object v0, p2

    .line 60
    check-cast v0, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    .line 62
    .local v0, p:Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-interface {v1, v2}, Lmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;->init(Ljava/security/SecureRandom;)V

    .line 64
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lmyorg/bouncycastle/crypto/BlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 70
    .end local v0           #p:Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;
    :goto_1e
    return-void

    .line 66
    :cond_1f
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->padding:Lmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;->init(Ljava/security/SecureRandom;)V

    .line 68
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1, p1, p2}, Lmyorg/bouncycastle/crypto/BlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_1e
.end method

.method public processBytes([BII[BI)I
    .registers 13
    .parameter "in"
    .parameter "inOff"
    .parameter "len"
    .parameter "out"
    .parameter "outOff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 152
    if-gez p3, :cond_b

    .line 153
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Can\'t have a negative input length!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 156
    :cond_b
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->getBlockSize()I

    move-result v0

    .line 157
    .local v0, blockSize:I
    invoke-virtual {p0, p3}, Lmyorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->getUpdateOutputSize(I)I

    move-result v2

    .line 159
    .local v2, length:I
    if-lez v2, :cond_22

    .line 160
    add-int v4, p5, v2

    array-length v5, p4

    if-le v4, v5, :cond_22

    .line 161
    new-instance v4, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v5, "output buffer too short"

    invoke-direct {v4, v5}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 165
    :cond_22
    const/4 v3, 0x0

    .line 166
    .local v3, resultLen:I
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v4, v4

    iget v5, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    sub-int v1, v4, v5

    .line 168
    .local v1, gapLen:I
    if-le p3, v1, :cond_51

    .line 169
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget v5, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v4, v5, v6, p4, p5}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v3, v4

    .line 173
    iput v6, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 174
    sub-int/2addr p3, v1

    .line 175
    add-int/2addr p2, v1

    .line 177
    :goto_40
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v4, v4

    if-le p3, v4, :cond_51

    .line 178
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    add-int v5, p5, v3

    invoke-interface {v4, p1, p2, p4, v5}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v3, v4

    .line 180
    sub-int/2addr p3, v0

    .line 181
    add-int/2addr p2, v0

    goto :goto_40

    .line 185
    :cond_51
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget v5, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    iget v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/2addr v4, p3

    iput v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 189
    return v3
.end method
