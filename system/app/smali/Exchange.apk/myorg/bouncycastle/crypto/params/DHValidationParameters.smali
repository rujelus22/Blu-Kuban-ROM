.class public Lmyorg/bouncycastle/crypto/params/DHValidationParameters;
.super Ljava/lang/Object;
.source "DHValidationParameters.java"


# instance fields
.field private counter:I

.field private seed:[B


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 24
    instance-of v2, p1, Lmyorg/bouncycastle/crypto/params/DHValidationParameters;

    if-nez v2, :cond_6

    .line 34
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 28
    check-cast v0, Lmyorg/bouncycastle/crypto/params/DHValidationParameters;

    .line 30
    .local v0, other:Lmyorg/bouncycastle/crypto/params/DHValidationParameters;
    iget v2, v0, Lmyorg/bouncycastle/crypto/params/DHValidationParameters;->counter:I

    iget v3, p0, Lmyorg/bouncycastle/crypto/params/DHValidationParameters;->counter:I

    if-ne v2, v3, :cond_5

    .line 34
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    iget-object v2, v0, Lmyorg/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    invoke-static {v1, v2}, Lmyorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 38
    iget v0, p0, Lmyorg/bouncycastle/crypto/params/DHValidationParameters;->counter:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    invoke-static {v1}, Lmyorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
