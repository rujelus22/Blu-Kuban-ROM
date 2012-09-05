.class Lcom/android/org/bouncycastle/math/ec/Tnaf;
.super Ljava/lang/Object;
.source "Tnaf.java"


# static fields
.field private static final MINUS_ONE:Ljava/math/BigInteger; = null

.field private static final MINUS_THREE:Ljava/math/BigInteger; = null

.field private static final MINUS_TWO:Ljava/math/BigInteger; = null

.field public static final POW_2_WIDTH:B = 0x10t

.field public static final WIDTH:B = 0x4t

.field public static final alpha0:[Lcom/android/org/bouncycastle/math/ec/ZTauElement;

.field public static final alpha0Tnaf:[[B

.field public static final alpha1:[Lcom/android/org/bouncycastle/math/ec/ZTauElement;

.field public static final alpha1Tnaf:[[B


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 14
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    .line 15
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_TWO:Ljava/math/BigInteger;

    .line 16
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->THREE:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_THREE:Ljava/math/BigInteger;

    .line 39
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    aput-object v5, v0, v8

    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v6

    const/4 v1, 0x2

    aput-object v5, v0, v1

    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_THREE:Ljava/math/BigInteger;

    sget-object v3, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v7

    aput-object v5, v0, v9

    const/4 v1, 0x5

    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    sget-object v3, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    sget-object v4, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v5, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v4, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v5, v0, v1

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha0:[Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    .line 51
    const/16 v0, 0x8

    new-array v0, v0, [[B

    aput-object v5, v0, v8

    new-array v1, v6, [B

    aput-byte v6, v1, v8

    aput-object v1, v0, v6

    const/4 v1, 0x2

    aput-object v5, v0, v1

    new-array v1, v7, [B

    fill-array-data v1, :array_fc

    aput-object v1, v0, v7

    aput-object v5, v0, v9

    const/4 v1, 0x5

    new-array v2, v7, [B

    fill-array-data v2, :array_102

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v5, v0, v1

    const/4 v1, 0x7

    new-array v2, v9, [B

    fill-array-data v2, :array_108

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha0Tnaf:[[B

    .line 59
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    aput-object v5, v0, v8

    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v6

    const/4 v1, 0x2

    aput-object v5, v0, v1

    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_THREE:Ljava/math/BigInteger;

    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v7

    aput-object v5, v0, v9

    const/4 v1, 0x5

    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    sget-object v3, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    sget-object v4, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v5, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v4, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v5, v0, v1

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha1:[Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    .line 70
    const/16 v0, 0x8

    new-array v0, v0, [[B

    aput-object v5, v0, v8

    new-array v1, v6, [B

    aput-byte v6, v1, v8

    aput-object v1, v0, v6

    const/4 v1, 0x2

    aput-object v5, v0, v1

    new-array v1, v7, [B

    fill-array-data v1, :array_10e

    aput-object v1, v0, v7

    aput-object v5, v0, v9

    const/4 v1, 0x5

    new-array v2, v7, [B

    fill-array-data v2, :array_114

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v5, v0, v1

    const/4 v1, 0x7

    new-array v2, v9, [B

    fill-array-data v2, :array_11a

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha1Tnaf:[[B

    return-void

    .line 51
    :array_fc
    .array-data 0x1
        0xfft
        0x0t
        0x1t
    .end array-data

    :array_102
    .array-data 0x1
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_108
    .array-data 0x1
        0xfft
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 70
    :array_10e
    .array-data 0x1
        0xfft
        0x0t
        0x1t
    .end array-data

    :array_114
    .array-data 0x1
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_11a
    .array-data 0x1
        0xfft
        0x0t
        0x0t
        0xfft
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 14
    .parameter "k"
    .parameter "s"
    .parameter "vm"
    .parameter "a"
    .parameter "m"
    .parameter "c"

    .prologue
    .line 286
    add-int/lit8 v7, p4, 0x5

    div-int/lit8 v7, v7, 0x2

    add-int v0, v7, p5

    .line 287
    .local v0, _k:I
    sub-int v7, p4, v0

    add-int/lit8 v7, v7, -0x2

    add-int/2addr v7, p3

    invoke-virtual {p0, v7}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 289
    .local v6, ns:Ljava/math/BigInteger;
    invoke-virtual {p1, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 291
    .local v1, gs:Ljava/math/BigInteger;
    invoke-virtual {v1, p4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 293
    .local v3, hs:Ljava/math/BigInteger;
    invoke-virtual {p2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 295
    .local v4, js:Ljava/math/BigInteger;
    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 296
    .local v2, gsPlusJs:Ljava/math/BigInteger;
    sub-int v7, v0, p5

    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    .line 297
    .local v5, ls:Ljava/math/BigInteger;
    sub-int v7, v0, p5

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 300
    sget-object v7, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 303
    :cond_35
    new-instance v7, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    invoke-direct {v7, v5, p5}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v7
.end method

.method public static getLucas(BIZ)[Ljava/math/BigInteger;
    .registers 12
    .parameter "mu"
    .parameter "k"
    .parameter "doV"

    .prologue
    const/4 v8, 0x1

    .line 453
    if-eq p0, v8, :cond_e

    const/4 v6, -0x1

    if-eq p0, v6, :cond_e

    .line 455
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "mu must be 1 or -1"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 462
    :cond_e
    if-eqz p2, :cond_2b

    .line 464
    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    .line 465
    .local v3, u0:Ljava/math/BigInteger;
    int-to-long v6, p0

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    .line 473
    .local v4, u1:Ljava/math/BigInteger;
    :goto_17
    const/4 v0, 0x1

    .local v0, i:I
    :goto_18
    if-ge v0, p1, :cond_35

    .line 476
    const/4 v2, 0x0

    .line 477
    .local v2, s:Ljava/math/BigInteger;
    if-ne p0, v8, :cond_30

    .line 479
    move-object v2, v4

    .line 487
    :goto_1e
    invoke-virtual {v3, v8}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 488
    .local v5, u2:Ljava/math/BigInteger;
    move-object v3, v4

    .line 489
    move-object v4, v5

    .line 473
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 469
    .end local v0           #i:I
    .end local v2           #s:Ljava/math/BigInteger;
    .end local v3           #u0:Ljava/math/BigInteger;
    .end local v4           #u1:Ljava/math/BigInteger;
    .end local v5           #u2:Ljava/math/BigInteger;
    :cond_2b
    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    .line 470
    .restart local v3       #u0:Ljava/math/BigInteger;
    sget-object v4, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    .restart local v4       #u1:Ljava/math/BigInteger;
    goto :goto_17

    .line 484
    .restart local v0       #i:I
    .restart local v2       #s:Ljava/math/BigInteger;
    :cond_30
    invoke-virtual {v4}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_1e

    .line 494
    .end local v2           #s:Ljava/math/BigInteger;
    :cond_35
    const/4 v6, 0x2

    new-array v1, v6, [Ljava/math/BigInteger;

    const/4 v6, 0x0

    aput-object v3, v1, v6

    aput-object v4, v1, v8

    .line 495
    .local v1, retVal:[Ljava/math/BigInteger;
    return-object v1
.end method

.method public static getMu(Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;)B
    .registers 5
    .parameter "curve"

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    .line 421
    .local v0, a:Ljava/math/BigInteger;
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 423
    const/4 v1, -0x1

    .line 434
    .local v1, mu:B
    :goto_11
    return v1

    .line 425
    .end local v1           #mu:B
    :cond_12
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 427
    const/4 v1, 0x1

    .restart local v1       #mu:B
    goto :goto_11

    .line 431
    .end local v1           #mu:B
    :cond_1c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No Koblitz curve (ABC), TNAF multiplication not possible"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getPreComp(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;B)[Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .registers 7
    .parameter "p"
    .parameter "a"

    .prologue
    .line 823
    const/16 v4, 0x10

    new-array v3, v4, [Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    .line 824
    .local v3, pu:[Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    const/4 v4, 0x1

    aput-object p0, v3, v4

    .line 826
    if-nez p1, :cond_1a

    .line 828
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha0Tnaf:[[B

    .line 836
    .local v0, alphaTnaf:[[B
    :goto_b
    array-length v2, v0

    .line 837
    .local v2, precompLen:I
    const/4 v1, 0x3

    .local v1, i:I
    :goto_d
    if-ge v1, v2, :cond_1d

    .line 839
    aget-object v4, v0, v1

    invoke-static {p0, v4}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->multiplyFromTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;[B)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v4

    aput-object v4, v3, v1

    .line 837
    add-int/lit8 v1, v1, 0x2

    goto :goto_d

    .line 833
    .end local v0           #alphaTnaf:[[B
    .end local v1           #i:I
    .end local v2           #precompLen:I
    :cond_1a
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha1Tnaf:[[B

    .restart local v0       #alphaTnaf:[[B
    goto :goto_b

    .line 842
    .restart local v1       #i:I
    .restart local v2       #precompLen:I
    :cond_1d
    return-object v3
.end method

.method public static getSi(Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;)[Ljava/math/BigInteger;
    .registers 15
    .parameter "curve"

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 544
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->isKoblitz()Z

    move-result v9

    if-nez v9, :cond_11

    .line 546
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "si is defined for Koblitz curves only"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 549
    :cond_11
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getM()I

    move-result v5

    .line 550
    .local v5, m:I
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 551
    .local v0, a:I
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getMu()B

    move-result v6

    .line 552
    .local v6, mu:B
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getH()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    .line 553
    .local v3, h:I
    add-int/lit8 v9, v5, 0x3

    sub-int v4, v9, v0

    .line 554
    .local v4, index:I
    invoke-static {v6, v4, v12}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object v8

    .line 558
    .local v8, ui:[Ljava/math/BigInteger;
    if-ne v6, v11, :cond_5c

    .line 560
    sget-object v9, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v10, v8, v11

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 561
    .local v1, dividend0:Ljava/math/BigInteger;
    sget-object v9, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v10, v8, v12

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 573
    .local v2, dividend1:Ljava/math/BigInteger;
    :goto_47
    new-array v7, v13, [Ljava/math/BigInteger;

    .line 575
    .local v7, si:[Ljava/math/BigInteger;
    if-ne v3, v13, :cond_78

    .line 577
    invoke-virtual {v1, v11}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v9

    aput-object v9, v7, v12

    .line 578
    invoke-virtual {v2, v11}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v9

    aput-object v9, v7, v11

    .line 590
    :goto_5b
    return-object v7

    .line 563
    .end local v1           #dividend0:Ljava/math/BigInteger;
    .end local v2           #dividend1:Ljava/math/BigInteger;
    .end local v7           #si:[Ljava/math/BigInteger;
    :cond_5c
    const/4 v9, -0x1

    if-ne v6, v9, :cond_70

    .line 565
    sget-object v9, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v10, v8, v11

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 566
    .restart local v1       #dividend0:Ljava/math/BigInteger;
    sget-object v9, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v10, v8, v12

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .restart local v2       #dividend1:Ljava/math/BigInteger;
    goto :goto_47

    .line 570
    .end local v1           #dividend0:Ljava/math/BigInteger;
    .end local v2           #dividend1:Ljava/math/BigInteger;
    :cond_70
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "mu must be 1 or -1"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 580
    .restart local v1       #dividend0:Ljava/math/BigInteger;
    .restart local v2       #dividend1:Ljava/math/BigInteger;
    .restart local v7       #si:[Ljava/math/BigInteger;
    :cond_78
    const/4 v9, 0x4

    if-ne v3, v9, :cond_8c

    .line 582
    invoke-virtual {v1, v13}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v9

    aput-object v9, v7, v12

    .line 583
    invoke-virtual {v2, v13}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v9

    aput-object v9, v7, v11

    goto :goto_5b

    .line 587
    :cond_8c
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "h (Cofactor) must be 2 or 4"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public static getTw(BI)Ljava/math/BigInteger;
    .registers 9
    .parameter "mu"
    .parameter "w"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 508
    const/4 v4, 0x4

    if-ne p1, v4, :cond_15

    .line 510
    if-ne p0, v6, :cond_e

    .line 512
    const-wide/16 v4, 0x6

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 530
    :goto_d
    return-object v0

    .line 517
    :cond_e
    const-wide/16 v4, 0xa

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_d

    .line 523
    :cond_15
    invoke-static {p0, p1, v5}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object v3

    .line 524
    .local v3, us:[Ljava/math/BigInteger;
    sget-object v4, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v4, p1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 525
    .local v1, twoToW:Ljava/math/BigInteger;
    aget-object v4, v3, v6

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 527
    .local v2, u1invert:Ljava/math/BigInteger;
    sget-object v4, Lcom/android/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 530
    .local v0, tw:Ljava/math/BigInteger;
    goto :goto_d
.end method

.method public static multiplyFromTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;[B)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .registers 7
    .parameter "p"
    .parameter "u"

    .prologue
    .line 692
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    .line 693
    .local v0, curve:Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    .line 694
    .local v2, q:Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    array-length v3, p1

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_f
    if-ltz v1, :cond_2b

    .line 696
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->tau(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v2

    .line 697
    aget-byte v3, p1, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_21

    .line 699
    invoke-virtual {v2, p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->addSimple(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v2

    .line 694
    :cond_1e
    :goto_1e
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 701
    :cond_21
    aget-byte v3, p1, v1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1e

    .line 703
    invoke-virtual {v2, p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->subtractSimple(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v2

    goto :goto_1e

    .line 706
    :cond_2b
    return-object v2
.end method

.method public static multiplyRTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .registers 10
    .parameter "p"
    .parameter "k"

    .prologue
    .line 651
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    .line 652
    .local v6, curve:Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getM()I

    move-result v1

    .line 653
    .local v1, m:I
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    int-to-byte v2, v0

    .line 654
    .local v2, a:B
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getMu()B

    move-result v4

    .line 655
    .local v4, mu:B
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getSi()[Ljava/math/BigInteger;

    move-result-object v3

    .line 656
    .local v3, s:[Ljava/math/BigInteger;
    const/16 v5, 0xa

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->partModReduction(Ljava/math/BigInteger;IB[Ljava/math/BigInteger;BB)Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    move-result-object v7

    .line 658
    .local v7, rho:Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    invoke-static {p0, v7}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->multiplyTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;Lcom/android/org/bouncycastle/math/ec/ZTauElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v0

    return-object v0
.end method

.method public static multiplyTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;Lcom/android/org/bouncycastle/math/ec/ZTauElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .registers 6
    .parameter "p"
    .parameter "lambda"

    .prologue
    .line 672
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    .line 673
    .local v0, curve:Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getMu()B

    move-result v1

    .line 674
    .local v1, mu:B
    invoke-static {v1, p1}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->tauAdicNaf(BLcom/android/org/bouncycastle/math/ec/ZTauElement;)[B

    move-result-object v3

    .line 676
    .local v3, u:[B
    invoke-static {p0, v3}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->multiplyFromTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;[B)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v2

    .line 678
    .local v2, q:Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    return-object v2
.end method

.method public static norm(BLcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 9
    .parameter "mu"
    .parameter "u"
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    .line 129
    invoke-virtual {p1, p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->multiply(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v1

    .line 132
    .local v1, s1:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {p1, p2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->multiply(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v2

    .line 135
    .local v2, s2:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {p2, p2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->multiply(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->shiftLeft(I)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v3

    .line 137
    .local v3, s3:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    if-ne p0, v5, :cond_1c

    .line 139
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v0

    .line 150
    .local v0, norm:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    :goto_1b
    return-object v0

    .line 141
    .end local v0           #norm:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    :cond_1c
    const/4 v4, -0x1

    if-ne p0, v4, :cond_28

    .line 143
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v0

    .restart local v0       #norm:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    goto :goto_1b

    .line 147
    .end local v0           #norm:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    :cond_28
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "mu must be 1 or -1"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static norm(BLcom/android/org/bouncycastle/math/ec/ZTauElement;)Ljava/math/BigInteger;
    .registers 9
    .parameter "mu"
    .parameter "lambda"

    .prologue
    const/4 v6, 0x1

    .line 87
    iget-object v4, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    iget-object v5, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 90
    .local v1, s1:Ljava/math/BigInteger;
    iget-object v4, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    iget-object v5, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 93
    .local v2, s2:Ljava/math/BigInteger;
    iget-object v4, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    iget-object v5, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 95
    .local v3, s3:Ljava/math/BigInteger;
    if-ne p0, v6, :cond_28

    .line 97
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 108
    .local v0, norm:Ljava/math/BigInteger;
    :goto_27
    return-object v0

    .line 99
    .end local v0           #norm:Ljava/math/BigInteger;
    :cond_28
    const/4 v4, -0x1

    if-ne p0, v4, :cond_34

    .line 101
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .restart local v0       #norm:Ljava/math/BigInteger;
    goto :goto_27

    .line 105
    .end local v0           #norm:Ljava/math/BigInteger;
    :cond_34
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "mu must be 1 or -1"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static partModReduction(Ljava/math/BigInteger;IB[Ljava/math/BigInteger;BB)Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    .registers 20
    .parameter "k"
    .parameter "m"
    .parameter "a"
    .parameter "s"
    .parameter "mu"
    .parameter "c"

    .prologue
    .line 611
    const/4 v1, 0x1

    move/from16 v0, p4

    if-ne v0, v1, :cond_76

    .line 613
    const/4 v1, 0x0

    aget-object v1, p3, v1

    const/4 v2, 0x1

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 620
    .local v7, d0:Ljava/math/BigInteger;
    :goto_f
    const/4 v1, 0x1

    move/from16 v0, p4

    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object v13

    .line 621
    .local v13, v:[Ljava/math/BigInteger;
    const/4 v1, 0x1

    aget-object v3, v13, v1

    .line 623
    .local v3, vm:Ljava/math/BigInteger;
    const/4 v1, 0x0

    aget-object v2, p3, v1

    move-object v1, p0

    move/from16 v4, p2

    move v5, p1

    move/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v8

    .line 626
    .local v8, lambda0:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    const/4 v1, 0x1

    aget-object v2, p3, v1

    move-object v1, p0

    move/from16 v4, p2

    move v5, p1

    move/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v9

    .line 629
    .local v9, lambda1:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    move/from16 v0, p4

    invoke-static {v8, v9, v0}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->round(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;B)Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    move-result-object v10

    .line 632
    .local v10, q:Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    iget-object v1, v10, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    const-wide/16 v4, 0x2

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    const/4 v4, 0x1

    aget-object v4, p3, v4

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v4, v10, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 636
    .local v11, r0:Ljava/math/BigInteger;
    const/4 v1, 0x1

    aget-object v1, p3, v1

    iget-object v2, v10, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p3, v2

    iget-object v4, v10, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 638
    .local v12, r1:Ljava/math/BigInteger;
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    invoke-direct {v1, v11, v12}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v1

    .line 617
    .end local v3           #vm:Ljava/math/BigInteger;
    .end local v7           #d0:Ljava/math/BigInteger;
    .end local v8           #lambda0:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v9           #lambda1:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v10           #q:Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    .end local v11           #r0:Ljava/math/BigInteger;
    .end local v12           #r1:Ljava/math/BigInteger;
    .end local v13           #v:[Ljava/math/BigInteger;
    :cond_76
    const/4 v1, 0x0

    aget-object v1, p3, v1

    const/4 v2, 0x1

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .restart local v7       #d0:Ljava/math/BigInteger;
    goto :goto_f
.end method

.method public static round(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;B)Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    .registers 20
    .parameter "lambda0"
    .parameter "lambda1"
    .parameter "mu"

    .prologue
    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->getScale()I

    move-result v13

    .line 170
    .local v13, scale:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->getScale()I

    move-result v15

    if-eq v15, v13, :cond_12

    .line 172
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "lambda0 and lambda1 do not have same scale"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 176
    :cond_12
    const/4 v15, 0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_24

    const/4 v15, -0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_24

    .line 178
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "mu must be 1 or -1"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 181
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->round()Ljava/math/BigInteger;

    move-result-object v6

    .line 182
    .local v6, f0:Ljava/math/BigInteger;
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->round()Ljava/math/BigInteger;

    move-result-object v7

    .line 184
    .local v7, f1:Ljava/math/BigInteger;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v4

    .line 185
    .local v4, eta0:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v5

    .line 188
    .local v5, eta1:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {v4, v4}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v3

    .line 189
    .local v3, eta:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    const/4 v15, 0x1

    move/from16 v0, p2

    if-ne v0, v15, :cond_9e

    .line 191
    invoke-virtual {v3, v5}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v3

    .line 201
    :goto_45
    invoke-virtual {v5, v5}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v15

    invoke-virtual {v15, v5}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v14

    .line 202
    .local v14, threeEta1:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {v14, v5}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v8

    .line 205
    .local v8, fourEta1:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    const/4 v15, 0x1

    move/from16 v0, p2

    if-ne v0, v15, :cond_a3

    .line 207
    invoke-virtual {v4, v14}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v1

    .line 208
    .local v1, check1:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {v4, v8}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v2

    .line 217
    .local v2, check2:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    :goto_5e
    const/4 v9, 0x0

    .line 218
    .local v9, h0:B
    const/4 v10, 0x0

    .line 221
    .local v10, h1:B
    sget-object v15, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v15}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-ltz v15, :cond_ae

    .line 223
    sget-object v15, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v15}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-gez v15, :cond_ac

    .line 225
    move/from16 v10, p2

    .line 242
    :cond_72
    :goto_72
    sget-object v15, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v15}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-gez v15, :cond_bb

    .line 244
    sget-object v15, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v15}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-ltz v15, :cond_b9

    .line 246
    move/from16 v0, p2

    neg-int v15, v0

    int-to-byte v10, v15

    .line 262
    :cond_86
    :goto_86
    int-to-long v15, v9

    invoke-static/range {v15 .. v16}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 263
    .local v11, q0:Ljava/math/BigInteger;
    int-to-long v15, v10

    invoke-static/range {v15 .. v16}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 264
    .local v12, q1:Ljava/math/BigInteger;
    new-instance v15, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    invoke-direct {v15, v11, v12}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v15

    .line 196
    .end local v1           #check1:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v2           #check2:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v8           #fourEta1:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v9           #h0:B
    .end local v10           #h1:B
    .end local v11           #q0:Ljava/math/BigInteger;
    .end local v12           #q1:Ljava/math/BigInteger;
    .end local v14           #threeEta1:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    :cond_9e
    invoke-virtual {v3, v5}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v3

    goto :goto_45

    .line 213
    .restart local v8       #fourEta1:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .restart local v14       #threeEta1:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    :cond_a3
    invoke-virtual {v4, v14}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v1

    .line 214
    .restart local v1       #check1:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {v4, v8}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v2

    .restart local v2       #check2:Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    goto :goto_5e

    .line 229
    .restart local v9       #h0:B
    .restart local v10       #h1:B
    :cond_ac
    const/4 v9, 0x1

    goto :goto_72

    .line 235
    :cond_ae
    sget-object v15, Lcom/android/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v2, v15}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-ltz v15, :cond_72

    .line 237
    move/from16 v10, p2

    goto :goto_72

    .line 250
    :cond_b9
    const/4 v9, -0x1

    goto :goto_86

    .line 256
    :cond_bb
    sget-object v15, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_TWO:Ljava/math/BigInteger;

    invoke-virtual {v2, v15}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-gez v15, :cond_86

    .line 258
    move/from16 v0, p2

    neg-int v15, v0

    int-to-byte v10, v15

    goto :goto_86
.end method

.method public static tau(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .registers 8
    .parameter "p"

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 403
    .end local p0
    :goto_6
    return-object p0

    .line 400
    .restart local p0
    :cond_7
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getX()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 401
    .local v0, x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getY()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 403
    .local v1, y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->isCompressed()Z

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v2

    goto :goto_6
.end method

.method public static tauAdicNaf(BLcom/android/org/bouncycastle/math/ec/ZTauElement;)[B
    .registers 16
    .parameter "mu"
    .parameter "lambda"

    .prologue
    .line 316
    const/4 v11, 0x1

    if-eq p0, v11, :cond_e

    const/4 v11, -0x1

    if-eq p0, v11, :cond_e

    .line 318
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "mu must be 1 or -1"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 321
    :cond_e
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->norm(BLcom/android/org/bouncycastle/math/ec/ZTauElement;)Ljava/math/BigInteger;

    move-result-object v4

    .line 324
    .local v4, norm:Ljava/math/BigInteger;
    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    .line 327
    .local v2, log2Norm:I
    const/16 v11, 0x1e

    if-le v2, v11, :cond_7b

    add-int/lit8 v3, v2, 0x4

    .line 330
    .local v3, maxLength:I
    :goto_1c
    new-array v10, v3, [B

    .line 331
    .local v10, u:[B
    const/4 v0, 0x0

    .line 334
    .local v0, i:I
    const/4 v1, 0x0

    .line 336
    .local v1, length:I
    iget-object v5, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    .line 337
    .local v5, r0:Ljava/math/BigInteger;
    iget-object v6, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    .line 339
    .local v6, r1:Ljava/math/BigInteger;
    :goto_24
    sget-object v11, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v5, v11}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_34

    sget-object v11, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v6, v11}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8e

    .line 342
    :cond_34
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v11

    if-eqz v11, :cond_85

    .line 344
    sget-object v11, Lcom/android/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    sget-object v13, Lcom/android/org/bouncycastle/math/ec/ECConstants;->FOUR:Ljava/math/BigInteger;

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigInteger;->intValue()I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v10, v0

    .line 347
    aget-byte v11, v10, v0

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7e

    .line 349
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Ljava/math/BigInteger;->clearBit(I)Ljava/math/BigInteger;

    move-result-object v5

    .line 356
    :goto_61
    move v1, v0

    .line 363
    :goto_62
    move-object v8, v5

    .line 364
    .local v8, t:Ljava/math/BigInteger;
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v7

    .line 365
    .local v7, s:Ljava/math/BigInteger;
    const/4 v11, 0x1

    if-ne p0, v11, :cond_89

    .line 367
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 375
    :goto_6f
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v6

    .line 376
    add-int/lit8 v0, v0, 0x1

    .line 377
    goto :goto_24

    .line 327
    .end local v0           #i:I
    .end local v1           #length:I
    .end local v3           #maxLength:I
    .end local v5           #r0:Ljava/math/BigInteger;
    .end local v6           #r1:Ljava/math/BigInteger;
    .end local v7           #s:Ljava/math/BigInteger;
    .end local v8           #t:Ljava/math/BigInteger;
    .end local v10           #u:[B
    :cond_7b
    const/16 v3, 0x22

    goto :goto_1c

    .line 354
    .restart local v0       #i:I
    .restart local v1       #length:I
    .restart local v3       #maxLength:I
    .restart local v5       #r0:Ljava/math/BigInteger;
    .restart local v6       #r1:Ljava/math/BigInteger;
    .restart local v10       #u:[B
    :cond_7e
    sget-object v11, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, v11}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    goto :goto_61

    .line 360
    :cond_85
    const/4 v11, 0x0

    aput-byte v11, v10, v0

    goto :goto_62

    .line 372
    .restart local v7       #s:Ljava/math/BigInteger;
    .restart local v8       #t:Ljava/math/BigInteger;
    :cond_89
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    goto :goto_6f

    .line 379
    .end local v7           #s:Ljava/math/BigInteger;
    .end local v8           #t:Ljava/math/BigInteger;
    :cond_8e
    add-int/lit8 v1, v1, 0x1

    .line 382
    new-array v9, v1, [B

    .line 383
    .local v9, tnaf:[B
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v9, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    return-object v9
.end method

.method public static tauAdicWNaf(BLcom/android/org/bouncycastle/math/ec/ZTauElement;BLjava/math/BigInteger;Ljava/math/BigInteger;[Lcom/android/org/bouncycastle/math/ec/ZTauElement;)[B
    .registers 21
    .parameter "mu"
    .parameter "lambda"
    .parameter "width"
    .parameter "pow2w"
    .parameter "tw"
    .parameter "alpha"

    .prologue
    .line 726
    const/4 v13, 0x1

    if-eq p0, v13, :cond_e

    const/4 v13, -0x1

    if-eq p0, v13, :cond_e

    .line 728
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "mu must be 1 or -1"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 731
    :cond_e
    invoke-static/range {p0 .. p1}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->norm(BLcom/android/org/bouncycastle/math/ec/ZTauElement;)Ljava/math/BigInteger;

    move-result-object v4

    .line 734
    .local v4, norm:Ljava/math/BigInteger;
    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    .line 737
    .local v2, log2Norm:I
    const/16 v13, 0x1e

    if-le v2, v13, :cond_9b

    add-int/lit8 v13, v2, 0x4

    add-int v3, v13, p2

    .line 740
    .local v3, maxLength:I
    :goto_1e
    new-array v10, v3, [B

    .line 743
    .local v10, u:[B
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    .line 746
    .local v5, pow2wMin1:Ljava/math/BigInteger;
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    .line 747
    .local v6, r0:Ljava/math/BigInteger;
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    .line 748
    .local v7, r1:Ljava/math/BigInteger;
    const/4 v1, 0x0

    .line 751
    .local v1, i:I
    :goto_30
    sget-object v13, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_40

    sget-object v13, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v7, v13}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c3

    .line 754
    :cond_40
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v13

    if-eqz v13, :cond_b5

    .line 757
    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 762
    .local v12, uUnMod:Ljava/math/BigInteger;
    invoke-virtual {v12, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v13

    if-ltz v13, :cond_9e

    .line 764
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13}, Ljava/math/BigInteger;->intValue()I

    move-result v13

    int-to-byte v11, v13

    .line 772
    .local v11, uLocal:B
    :goto_68
    aput-byte v11, v10, v1

    .line 773
    const/4 v8, 0x1

    .line 774
    .local v8, s:Z
    if-gez v11, :cond_70

    .line 776
    const/4 v8, 0x0

    .line 777
    neg-int v13, v11

    int-to-byte v11, v13

    .line 781
    :cond_70
    if-eqz v8, :cond_a4

    .line 783
    aget-object v13, p5, v11

    iget-object v13, v13, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 784
    aget-object v13, p5, v11

    iget-object v13, v13, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v7, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 797
    .end local v8           #s:Z
    .end local v11           #uLocal:B
    .end local v12           #uUnMod:Ljava/math/BigInteger;
    :goto_82
    move-object v9, v6

    .line 799
    .local v9, t:Ljava/math/BigInteger;
    const/4 v13, 0x1

    if-ne p0, v13, :cond_b9

    .line 801
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 808
    :goto_8f
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v7

    .line 809
    add-int/lit8 v1, v1, 0x1

    .line 810
    goto :goto_30

    .line 737
    .end local v1           #i:I
    .end local v3           #maxLength:I
    .end local v5           #pow2wMin1:Ljava/math/BigInteger;
    .end local v6           #r0:Ljava/math/BigInteger;
    .end local v7           #r1:Ljava/math/BigInteger;
    .end local v9           #t:Ljava/math/BigInteger;
    .end local v10           #u:[B
    :cond_9b
    add-int/lit8 v3, p2, 0x22

    goto :goto_1e

    .line 768
    .restart local v1       #i:I
    .restart local v3       #maxLength:I
    .restart local v5       #pow2wMin1:Ljava/math/BigInteger;
    .restart local v6       #r0:Ljava/math/BigInteger;
    .restart local v7       #r1:Ljava/math/BigInteger;
    .restart local v10       #u:[B
    .restart local v12       #uUnMod:Ljava/math/BigInteger;
    :cond_9e
    invoke-virtual {v12}, Ljava/math/BigInteger;->intValue()I

    move-result v13

    int-to-byte v11, v13

    .restart local v11       #uLocal:B
    goto :goto_68

    .line 788
    .restart local v8       #s:Z
    :cond_a4
    aget-object v13, p5, v11

    iget-object v13, v13, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 789
    aget-object v13, p5, v11

    iget-object v13, v13, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v7, v13}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    goto :goto_82

    .line 794
    .end local v8           #s:Z
    .end local v11           #uLocal:B
    .end local v12           #uUnMod:Ljava/math/BigInteger;
    :cond_b5
    const/4 v13, 0x0

    aput-byte v13, v10, v1

    goto :goto_82

    .line 806
    .restart local v9       #t:Ljava/math/BigInteger;
    :cond_b9
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    goto :goto_8f

    .line 811
    .end local v9           #t:Ljava/math/BigInteger;
    :cond_c3
    return-object v10
.end method
