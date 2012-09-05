.class public Lmyorg/bouncycastle/crypto/params/ISO18033KDFParameters;
.super Ljava/lang/Object;
.source "ISO18033KDFParameters.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/DerivationParameters;


# instance fields
.field seed:[B


# virtual methods
.method public getSeed()[B
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/ISO18033KDFParameters;->seed:[B

    return-object v0
.end method
