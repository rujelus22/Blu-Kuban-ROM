.class Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;
.super Ljava/lang/Object;
.source "JCEBlockCipher.java"

# interfaces
.implements Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BufferedGenericBlockCipher"
.end annotation


# instance fields
.field private cipher:Lmyorg/bouncycastle/crypto/BufferedBlockCipher;


# direct methods
.method constructor <init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V
    .registers 3
    .parameter "cipher"

    .prologue
    .line 915
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 916
    new-instance v0, Lmyorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    invoke-direct {v0, p1}, Lmyorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BufferedBlockCipher;

    .line 917
    return-void
.end method

.method constructor <init>(Lmyorg/bouncycastle/crypto/BlockCipher;Lmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V
    .registers 4
    .parameter "cipher"
    .parameter "padding"

    .prologue
    .line 919
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 920
    new-instance v0, Lmyorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    invoke-direct {v0, p1, p2}, Lmyorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;Lmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BufferedBlockCipher;

    .line 921
    return-void
.end method

.method constructor <init>(Lmyorg/bouncycastle/crypto/BufferedBlockCipher;)V
    .registers 2
    .parameter "cipher"

    .prologue
    .line 911
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 912
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BufferedBlockCipher;

    .line 913
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 4
    .parameter "out"
    .parameter "outOff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lmyorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 959
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0, p1, p2}, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result v0

    return v0
.end method

.method public getOutputSize(I)I
    .registers 3
    .parameter "len"

    .prologue
    .line 941
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0, p1}, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v0

    return v0
.end method

.method public getUnderlyingCipher()Lmyorg/bouncycastle/crypto/BlockCipher;
    .registers 2

    .prologue
    .line 937
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lmyorg/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .registers 3
    .parameter "len"

    .prologue
    .line 945
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0, p1}, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->getUpdateOutputSize(I)I

    move-result v0

    return v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .registers 4
    .parameter "forEncryption"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 925
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-virtual {v0, p1, p2}, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 926
    return-void
.end method

.method public processBytes([BII[BI)I
    .registers 12
    .parameter "in"
    .parameter "inOff"
    .parameter "len"
    .parameter "out"
    .parameter "outOff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .prologue
    .line 954
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BufferedBlockCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v0

    return v0
.end method

.method public wrapOnNoPadding()Z
    .registers 2

    .prologue
    .line 929
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BufferedBlockCipher;

    instance-of v0, v0, Lmyorg/bouncycastle/crypto/modes/CTSBlockCipher;

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
