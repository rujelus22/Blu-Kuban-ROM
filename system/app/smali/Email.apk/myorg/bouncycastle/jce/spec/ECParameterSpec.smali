.class public Lmyorg/bouncycastle/jce/spec/ECParameterSpec;
.super Ljava/lang/Object;
.source "ECParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private G:Lmyorg/bouncycastle/math/ec/ECPoint;

.field private curve:Lmyorg/bouncycastle/math/ec/ECCurve;

.field private h:Ljava/math/BigInteger;

.field private n:Ljava/math/BigInteger;

.field private seed:[B


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .registers 6
    .parameter "curve"
    .parameter "G"
    .parameter "n"
    .parameter "h"
    .parameter "seed"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->curve:Lmyorg/bouncycastle/math/ec/ECCurve;

    .line 38
    iput-object p2, p0, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->G:Lmyorg/bouncycastle/math/ec/ECPoint;

    .line 39
    iput-object p3, p0, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->n:Ljava/math/BigInteger;

    .line 40
    iput-object p4, p0, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->h:Ljava/math/BigInteger;

    .line 41
    iput-object p5, p0, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->seed:[B

    .line 42
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 90
    instance-of v2, p1, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    if-nez v2, :cond_6

    .line 96
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 94
    check-cast v0, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    .line 96
    .local v0, other:Lmyorg/bouncycastle/jce/spec/ECParameterSpec;
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v0}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v0}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmyorg/bouncycastle/math/ec/ECPoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->curve:Lmyorg/bouncycastle/math/ec/ECCurve;

    return-object v0
.end method

.method public getG()Lmyorg/bouncycastle/math/ec/ECPoint;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->G:Lmyorg/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public getH()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->h:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getN()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->n:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getSeed()[B
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->seed:[B

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 100
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/math/ec/ECPoint;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
