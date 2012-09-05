.class public Lmyorg/bouncycastle/crypto/params/ECDomainParameters;
.super Ljava/lang/Object;
.source "ECDomainParameters.java"

# interfaces
.implements Lmyorg/bouncycastle/math/ec/ECConstants;


# instance fields
.field G:Lmyorg/bouncycastle/math/ec/ECPoint;

.field curve:Lmyorg/bouncycastle/math/ec/ECCurve;

.field h:Ljava/math/BigInteger;

.field n:Ljava/math/BigInteger;

.field seed:[B


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V
    .registers 5
    .parameter "curve"
    .parameter "G"
    .parameter "n"

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->curve:Lmyorg/bouncycastle/math/ec/ECCurve;

    .line 19
    iput-object p2, p0, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->G:Lmyorg/bouncycastle/math/ec/ECPoint;

    .line 20
    iput-object p3, p0, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->n:Ljava/math/BigInteger;

    .line 21
    sget-object v0, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->ONE:Ljava/math/BigInteger;

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->h:Ljava/math/BigInteger;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->seed:[B

    .line 23
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 6
    .parameter "curve"
    .parameter "G"
    .parameter "n"
    .parameter "h"

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->curve:Lmyorg/bouncycastle/math/ec/ECCurve;

    .line 27
    iput-object p2, p0, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->G:Lmyorg/bouncycastle/math/ec/ECPoint;

    .line 28
    iput-object p3, p0, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->n:Ljava/math/BigInteger;

    .line 29
    iput-object p4, p0, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->h:Ljava/math/BigInteger;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->seed:[B

    .line 31
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .registers 6
    .parameter "curve"
    .parameter "G"
    .parameter "n"
    .parameter "h"
    .parameter "seed"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->curve:Lmyorg/bouncycastle/math/ec/ECCurve;

    .line 35
    iput-object p2, p0, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->G:Lmyorg/bouncycastle/math/ec/ECPoint;

    .line 36
    iput-object p3, p0, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->n:Ljava/math/BigInteger;

    .line 37
    iput-object p4, p0, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->h:Ljava/math/BigInteger;

    .line 38
    iput-object p5, p0, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->seed:[B

    .line 39
    return-void
.end method


# virtual methods
.method public getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->curve:Lmyorg/bouncycastle/math/ec/ECCurve;

    return-object v0
.end method

.method public getG()Lmyorg/bouncycastle/math/ec/ECPoint;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->G:Lmyorg/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public getH()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->h:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getN()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->n:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getSeed()[B
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->seed:[B

    return-object v0
.end method
