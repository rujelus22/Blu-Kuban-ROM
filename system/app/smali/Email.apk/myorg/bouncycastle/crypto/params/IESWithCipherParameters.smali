.class public Lmyorg/bouncycastle/crypto/params/IESWithCipherParameters;
.super Lmyorg/bouncycastle/crypto/params/IESParameters;
.source "IESWithCipherParameters.java"


# instance fields
.field private cipherKeySize:I


# virtual methods
.method public getCipherKeySize()I
    .registers 2

    .prologue
    .line 21
    iget v0, p0, Lmyorg/bouncycastle/crypto/params/IESWithCipherParameters;->cipherKeySize:I

    return v0
.end method
