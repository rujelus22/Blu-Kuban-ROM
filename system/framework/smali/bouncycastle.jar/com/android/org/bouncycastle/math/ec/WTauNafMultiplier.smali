.class Lcom/android/org/bouncycastle/math/ec/WTauNafMultiplier;
.super Ljava/lang/Object;
.source "WTauNafMultiplier.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/ECMultiplier;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static multiplyFromWTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;[BLcom/android/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .registers 9
    .parameter "p"
    .parameter "u"
    .parameter "preCompInfo"

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    .line 85
    .local v1, curve:Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->byteValue()B

    move-result v0

    .line 88
    .local v0, a:B
    if-eqz p2, :cond_18

    instance-of v5, p2, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;

    if-nez v5, :cond_4a

    .line 90
    :cond_18
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getPreComp(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;B)[Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v3

    .line 91
    .local v3, pu:[Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    new-instance v5, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;

    invoke-direct {v5, v3}, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;-><init>([Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)V

    invoke-virtual {p0, v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->setPreCompInfo(Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)V

    .line 99
    .end local p2
    :goto_24
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    .line 100
    .local v4, q:Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    array-length v5, p1

    add-int/lit8 v2, v5, -0x1

    .local v2, i:I
    :goto_31
    if-ltz v2, :cond_5b

    .line 102
    invoke-static {v4}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->tau(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v4

    .line 103
    aget-byte v5, p1, v2

    if-eqz v5, :cond_47

    .line 105
    aget-byte v5, p1, v2

    if-lez v5, :cond_51

    .line 107
    aget-byte v5, p1, v2

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->addSimple(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v4

    .line 100
    :cond_47
    :goto_47
    add-int/lit8 v2, v2, -0x1

    goto :goto_31

    .line 95
    .end local v2           #i:I
    .end local v3           #pu:[Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .end local v4           #q:Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .restart local p2
    :cond_4a
    check-cast p2, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;

    .end local p2
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v3

    .restart local v3       #pu:[Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    goto :goto_24

    .line 112
    .restart local v2       #i:I
    .restart local v4       #q:Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    :cond_51
    aget-byte v5, p1, v2

    neg-int v5, v5

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->subtractSimple(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v4

    goto :goto_47

    .line 117
    :cond_5b
    return-object v4
.end method

.method private multiplyWTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;Lcom/android/org/bouncycastle/math/ec/ZTauElement;Lcom/android/org/bouncycastle/math/ec/PreCompInfo;BB)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .registers 13
    .parameter "p"
    .parameter "lambda"
    .parameter "preCompInfo"
    .parameter "a"
    .parameter "mu"

    .prologue
    const/4 v2, 0x4

    .line 54
    if-nez p4, :cond_1a

    .line 56
    sget-object v5, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha0:[Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    .line 64
    .local v5, alpha:[Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    :goto_5
    invoke-static {p5, v2}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getTw(BI)Ljava/math/BigInteger;

    move-result-object v4

    .line 66
    .local v4, tw:Ljava/math/BigInteger;
    const-wide/16 v0, 0x10

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    move v0, p5

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->tauAdicWNaf(BLcom/android/org/bouncycastle/math/ec/ZTauElement;BLjava/math/BigInteger;Ljava/math/BigInteger;[Lcom/android/org/bouncycastle/math/ec/ZTauElement;)[B

    move-result-object v6

    .line 69
    .local v6, u:[B
    invoke-static {p1, v6, p3}, Lcom/android/org/bouncycastle/math/ec/WTauNafMultiplier;->multiplyFromWTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;[BLcom/android/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v0

    return-object v0

    .line 61
    .end local v4           #tw:Ljava/math/BigInteger;
    .end local v5           #alpha:[Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    .end local v6           #u:[B
    :cond_1a
    sget-object v5, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha1:[Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    .restart local v5       #alpha:[Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    goto :goto_5
.end method


# virtual methods
.method public multiply(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 16
    .parameter "point"
    .parameter "k"
    .parameter "preCompInfo"

    .prologue
    .line 21
    instance-of v0, p1, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    if-nez v0, :cond_c

    .line 23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "Only ECPoint.F2m can be used in WTauNafMultiplier"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    move-object v6, p1

    .line 27
    check-cast v6, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    .line 29
    .local v6, p:Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v11

    check-cast v11, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    .line 30
    .local v11, curve:Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getM()I

    move-result v1

    .line 31
    .local v1, m:I
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->byteValue()B

    move-result v2

    .line 32
    .local v2, a:B
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getMu()B

    move-result v4

    .line 33
    .local v4, mu:B
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getSi()[Ljava/math/BigInteger;

    move-result-object v3

    .line 35
    .local v3, s:[Ljava/math/BigInteger;
    const/16 v5, 0xa

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->partModReduction(Ljava/math/BigInteger;IB[Ljava/math/BigInteger;BB)Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    move-result-object v7

    .local v7, rho:Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    move-object v5, p0

    move-object v8, p3

    move v9, v2

    move v10, v4

    .line 37
    invoke-direct/range {v5 .. v10}, Lcom/android/org/bouncycastle/math/ec/WTauNafMultiplier;->multiplyWTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;Lcom/android/org/bouncycastle/math/ec/ZTauElement;Lcom/android/org/bouncycastle/math/ec/PreCompInfo;BB)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v0

    return-object v0
.end method
