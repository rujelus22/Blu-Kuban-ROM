.class public Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;
.super Ljava/lang/Object;
.source "BufferedAsymmetricBlockCipher.java"


# instance fields
.field protected buf:[B

.field protected bufOff:I

.field private final cipher:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .registers 2
    .parameter "cipher"

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 21
    return-void
.end method


# virtual methods
.method public doFinal()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->buf:[B

    const/4 v3, 0x0

    iget v4, p0, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    invoke-interface {v1, v2, v3, v4}, Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    .line 125
    .local v0, out:[B
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->reset()V

    .line 127
    return-object v0
.end method

.method public getInputBlockSize()I
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    return v0
.end method

.method public getOutputBlockSize()I
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    return v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .registers 6
    .parameter "forEncryption"
    .parameter "params"

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->reset()V

    .line 51
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0, p1, p2}, Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 57
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v2

    if-eqz p1, :cond_1a

    const/4 v0, 0x1

    :goto_12
    add-int/2addr v0, v2

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->buf:[B

    .line 58
    iput v1, p0, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    .line 59
    return-void

    :cond_1a
    move v0, v1

    .line 57
    goto :goto_12
.end method

.method public processBytes([BII)V
    .registers 6
    .parameter "in"
    .parameter "inOff"
    .parameter "len"

    .prologue
    .line 100
    if-nez p3, :cond_3

    .line 114
    :goto_2
    return-void

    .line 104
    :cond_3
    if-gez p3, :cond_d

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have a negative input length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_d
    iget v0, p0, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->buf:[B

    array-length v1, v1

    if-le v0, v1, :cond_1d

    .line 109
    new-instance v0, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "attempt to process message too long for cipher"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_1d
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->buf:[B

    iget v1, p0, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    iget v0, p0, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    add-int/2addr v0, p3

    iput v0, p0, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    goto :goto_2
.end method

.method public reset()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 137
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->buf:[B

    if-eqz v1, :cond_12

    .line 138
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->buf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_12

    .line 139
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->buf:[B

    aput-byte v2, v1, v0

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 143
    .end local v0           #i:I
    :cond_12
    iput v2, p0, Lmyorg/bouncycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    .line 144
    return-void
.end method
