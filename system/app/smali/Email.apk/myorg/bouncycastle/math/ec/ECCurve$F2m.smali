.class public Lmyorg/bouncycastle/math/ec/ECCurve$F2m;
.super Lmyorg/bouncycastle/math/ec/ECCurve;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/math/ec/ECCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# instance fields
.field private h:Ljava/math/BigInteger;

.field private infinity:Lmyorg/bouncycastle/math/ec/ECPoint$F2m;

.field private k1:I

.field private k2:I

.field private k3:I

.field private m:I

.field private mu:B

.field private n:Ljava/math/BigInteger;

.field private si:[Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 16
    .parameter "m"
    .parameter "k1"
    .parameter "k2"
    .parameter "k3"
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v7, 0x0

    .line 280
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 281
    return-void
.end method

.method public constructor <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 11
    .parameter "m"
    .parameter "k1"
    .parameter "k2"
    .parameter "k3"
    .parameter "a"
    .parameter "b"
    .parameter "n"
    .parameter "h"

    .prologue
    const/4 v1, 0x0

    .line 309
    invoke-direct {p0}, Lmyorg/bouncycastle/math/ec/ECCurve;-><init>()V

    .line 207
    const/4 v0, 0x0

    iput-byte v0, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->mu:B

    .line 214
    iput-object v1, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->si:[Ljava/math/BigInteger;

    .line 310
    iput p1, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->m:I

    .line 311
    iput p2, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    .line 312
    iput p3, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    .line 313
    iput p4, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    .line 314
    iput-object p7, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->n:Ljava/math/BigInteger;

    .line 315
    iput-object p8, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->h:Ljava/math/BigInteger;

    .line 317
    if-nez p2, :cond_1f

    .line 318
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k1 must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_1f
    if-nez p3, :cond_2b

    .line 322
    if-eqz p4, :cond_3f

    .line 323
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k3 must be 0 if k2 == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_2b
    if-gt p3, p2, :cond_35

    .line 327
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k2 must be > k1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_35
    if-gt p4, p3, :cond_3f

    .line 331
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k3 must be > k2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_3f
    invoke-virtual {p0, p5}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/math/ec/ECCurve;->a:Lmyorg/bouncycastle/math/ec/ECFieldElement;

    .line 336
    invoke-virtual {p0, p6}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/math/ec/ECCurve;->b:Lmyorg/bouncycastle/math/ec/ECFieldElement;

    .line 337
    new-instance v0, Lmyorg/bouncycastle/math/ec/ECPoint$F2m;

    invoke-direct {v0, p0, v1, v1}, Lmyorg/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECFieldElement;Lmyorg/bouncycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->infinity:Lmyorg/bouncycastle/math/ec/ECPoint$F2m;

    .line 338
    return-void
.end method

.method public constructor <init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 16
    .parameter "m"
    .parameter "k"
    .parameter "a"
    .parameter "b"
    .parameter "n"
    .parameter "h"

    .prologue
    const/4 v3, 0x0

    .line 255
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 256
    return-void
.end method

.method private decompressPoint([BI)Lmyorg/bouncycastle/math/ec/ECPoint;
    .registers 15
    .parameter "xEnc"
    .parameter "ypBit"

    .prologue
    .line 449
    new-instance v0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iget v2, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v3, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v4, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    new-instance v5, Ljava/math/BigInteger;

    const/4 v6, 0x1

    invoke-direct {v5, v6, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    .line 451
    .local v0, xp:Lmyorg/bouncycastle/math/ec/ECFieldElement;
    const/4 v9, 0x0

    .line 452
    .local v9, yp:Lmyorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lmyorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 453
    iget-object v9, p0, Lmyorg/bouncycastle/math/ec/ECCurve;->b:Lmyorg/bouncycastle/math/ec/ECFieldElement;

    .end local v9           #yp:Lmyorg/bouncycastle/math/ec/ECFieldElement;
    check-cast v9, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;

    .line 454
    .restart local v9       #yp:Lmyorg/bouncycastle/math/ec/ECFieldElement;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_25
    iget v1, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->m:I

    add-int/lit8 v1, v1, -0x1

    if-ge v8, v1, :cond_7e

    .line 455
    invoke-virtual {v9}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->square()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 454
    add-int/lit8 v8, v8, 0x1

    goto :goto_25

    .line 458
    .end local v8           #i:I
    :cond_32
    iget-object v1, p0, Lmyorg/bouncycastle/math/ec/ECCurve;->a:Lmyorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->add(Lmyorg/bouncycastle/math/ec/ECFieldElement;)Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    iget-object v2, p0, Lmyorg/bouncycastle/math/ec/ECCurve;->b:Lmyorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->square()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->invert()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lmyorg/bouncycastle/math/ec/ECFieldElement;)Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->add(Lmyorg/bouncycastle/math/ec/ECFieldElement;)Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 459
    .local v7, beta:Lmyorg/bouncycastle/math/ec/ECFieldElement;
    invoke-direct {p0, v7}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->solveQuadradicEquation(Lmyorg/bouncycastle/math/ec/ECFieldElement;)Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 460
    .local v10, z:Lmyorg/bouncycastle/math/ec/ECFieldElement;
    if-nez v10, :cond_58

    .line 461
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid point compression"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 463
    :cond_58
    const/4 v11, 0x0

    .line 464
    .local v11, zBit:I
    invoke-virtual {v10}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 465
    const/4 v11, 0x1

    .line 467
    :cond_65
    if-eq v11, p2, :cond_7a

    .line 468
    new-instance v1, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v2, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iget v3, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v4, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v5, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    sget-object v6, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct/range {v1 .. v6}, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    invoke-virtual {v10, v1}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->add(Lmyorg/bouncycastle/math/ec/ECFieldElement;)Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 471
    :cond_7a
    invoke-virtual {v0, v10}, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;->multiply(Lmyorg/bouncycastle/math/ec/ECFieldElement;)Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 474
    .end local v7           #beta:Lmyorg/bouncycastle/math/ec/ECFieldElement;
    .end local v10           #z:Lmyorg/bouncycastle/math/ec/ECFieldElement;
    .end local v11           #zBit:I
    :cond_7e
    new-instance v1, Lmyorg/bouncycastle/math/ec/ECPoint$F2m;

    invoke-direct {v1, p0, v0, v9}, Lmyorg/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECFieldElement;Lmyorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v1
.end method

.method private solveQuadradicEquation(Lmyorg/bouncycastle/math/ec/ECFieldElement;)Lmyorg/bouncycastle/math/ec/ECFieldElement;
    .registers 16
    .parameter "beta"

    .prologue
    .line 486
    new-instance v0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iget v2, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v3, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v4, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    sget-object v5, Lmyorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    .line 489
    .local v0, zeroElement:Lmyorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p1}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lmyorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 513
    .end local v0           #zeroElement:Lmyorg/bouncycastle/math/ec/ECFieldElement;
    :goto_1b
    return-object v0

    .line 493
    .restart local v0       #zeroElement:Lmyorg/bouncycastle/math/ec/ECFieldElement;
    :cond_1c
    const/4 v12, 0x0

    .line 494
    .local v12, z:Lmyorg/bouncycastle/math/ec/ECFieldElement;
    move-object v7, v0

    .line 496
    .local v7, gamma:Lmyorg/bouncycastle/math/ec/ECFieldElement;
    new-instance v9, Ljava/util/Random;

    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    .line 498
    .local v9, rand:Ljava/util/Random;
    :cond_23
    new-instance v1, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v2, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iget v3, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v4, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v5, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    new-instance v6, Ljava/math/BigInteger;

    iget v13, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->m:I

    invoke-direct {v6, v13, v9}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    invoke-direct/range {v1 .. v6}, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    .line 500
    .local v1, t:Lmyorg/bouncycastle/math/ec/ECFieldElement;
    move-object v12, v0

    .line 501
    move-object v10, p1

    .line 502
    .local v10, w:Lmyorg/bouncycastle/math/ec/ECFieldElement;
    const/4 v8, 0x1

    .local v8, i:I
    :goto_3a
    iget v2, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->m:I

    add-int/lit8 v2, v2, -0x1

    if-gt v8, v2, :cond_57

    .line 503
    invoke-virtual {v10}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->square()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 504
    .local v11, w2:Lmyorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->square()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v11, v1}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lmyorg/bouncycastle/math/ec/ECFieldElement;)Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->add(Lmyorg/bouncycastle/math/ec/ECFieldElement;)Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 505
    invoke-virtual {v11, p1}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->add(Lmyorg/bouncycastle/math/ec/ECFieldElement;)Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 502
    add-int/lit8 v8, v8, 0x1

    goto :goto_3a

    .line 507
    .end local v11           #w2:Lmyorg/bouncycastle/math/ec/ECFieldElement;
    :cond_57
    invoke-virtual {v10}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lmyorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    .line 508
    const/4 v0, 0x0

    goto :goto_1b

    .line 510
    :cond_65
    invoke-virtual {v12}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->square()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v12}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->add(Lmyorg/bouncycastle/math/ec/ECFieldElement;)Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 511
    invoke-virtual {v7}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lmyorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    move-object v0, v12

    .line 513
    goto :goto_1b
.end method


# virtual methods
.method public createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lmyorg/bouncycastle/math/ec/ECPoint;
    .registers 7
    .parameter "x"
    .parameter "y"
    .parameter "withCompression"

    .prologue
    .line 349
    new-instance v0, Lmyorg/bouncycastle/math/ec/ECPoint$F2m;

    invoke-virtual {p0, p1}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0, p2}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p3}, Lmyorg/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECFieldElement;Lmyorg/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public decodePoint([B)Lmyorg/bouncycastle/math/ec/ECPoint;
    .registers 15
    .parameter "encoded"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 357
    const/4 v8, 0x0

    .line 359
    .local v8, p:Lmyorg/bouncycastle/math/ec/ECPoint;
    aget-byte v0, p1, v11

    packed-switch v0, :pswitch_data_8a

    .line 392
    :pswitch_8
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid point encoding 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p1, v11

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :pswitch_29
    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->getInfinity()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v8

    .line 396
    :goto_2d
    return-object v8

    .line 367
    :pswitch_2e
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    new-array v7, v0, [B

    .line 368
    .local v7, enc:[B
    array-length v0, v7

    invoke-static {p1, v12, v7, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 369
    aget-byte v0, p1, v11

    const/4 v1, 0x2

    if-ne v0, v1, :cond_41

    .line 370
    invoke-direct {p0, v7, v11}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->decompressPoint([BI)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v8

    goto :goto_2d

    .line 372
    :cond_41
    invoke-direct {p0, v7, v12}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->decompressPoint([BI)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v8

    .line 374
    goto :goto_2d

    .line 380
    .end local v7           #enc:[B
    :pswitch_46
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    new-array v9, v0, [B

    .line 381
    .local v9, xEnc:[B
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    new-array v10, v0, [B

    .line 383
    .local v10, yEnc:[B
    array-length v0, v9

    invoke-static {p1, v12, v9, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    array-length v0, v9

    add-int/lit8 v0, v0, 0x1

    array-length v1, v10

    invoke-static {p1, v0, v10, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 386
    new-instance v8, Lmyorg/bouncycastle/math/ec/ECPoint$F2m;

    .end local v8           #p:Lmyorg/bouncycastle/math/ec/ECPoint;
    new-instance v0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iget v2, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v3, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v4, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v12, v9}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    new-instance v1, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v2, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iget v3, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v4, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v5, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v12, v10}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct/range {v1 .. v6}, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    invoke-direct {v8, p0, v0, v1, v11}, Lmyorg/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECFieldElement;Lmyorg/bouncycastle/math/ec/ECFieldElement;Z)V

    .line 389
    .restart local v8       #p:Lmyorg/bouncycastle/math/ec/ECPoint;
    goto :goto_2d

    .line 359
    nop

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_29
        :pswitch_8
        :pswitch_2e
        :pswitch_2e
        :pswitch_46
        :pswitch_8
        :pswitch_46
        :pswitch_46
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "anObject"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 517
    if-ne p1, p0, :cond_5

    .line 527
    :cond_4
    :goto_4
    return v1

    .line 521
    :cond_5
    instance-of v3, p1, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;

    if-nez v3, :cond_b

    move v1, v2

    .line 522
    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 525
    check-cast v0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;

    .line 527
    .local v0, other:Lmyorg/bouncycastle/math/ec/ECCurve$F2m;
    iget v3, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iget v4, v0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->m:I

    if-ne v3, v4, :cond_3a

    iget v3, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v4, v0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    if-ne v3, v4, :cond_3a

    iget v3, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v4, v0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    if-ne v3, v4, :cond_3a

    iget v3, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    iget v4, v0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    if-ne v3, v4, :cond_3a

    iget-object v3, p0, Lmyorg/bouncycastle/math/ec/ECCurve;->a:Lmyorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v4, v0, Lmyorg/bouncycastle/math/ec/ECCurve;->a:Lmyorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lmyorg/bouncycastle/math/ec/ECCurve;->b:Lmyorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v4, v0, Lmyorg/bouncycastle/math/ec/ECCurve;->b:Lmyorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3a
    move v1, v2

    goto :goto_4
.end method

.method public fromBigInteger(Ljava/math/BigInteger;)Lmyorg/bouncycastle/math/ec/ECFieldElement;
    .registers 8
    .parameter "x"

    .prologue
    .line 345
    new-instance v0, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iget v2, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v3, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v4, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    return-object v0
.end method

.method public getFieldSize()I
    .registers 2

    .prologue
    .line 341
    iget v0, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->m:I

    return v0
.end method

.method public getH()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 565
    iget-object v0, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->h:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getInfinity()Lmyorg/bouncycastle/math/ec/ECPoint;
    .registers 2

    .prologue
    .line 400
    iget-object v0, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->infinity:Lmyorg/bouncycastle/math/ec/ECPoint$F2m;

    return-object v0
.end method

.method public getK1()I
    .registers 2

    .prologue
    .line 549
    iget v0, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    return v0
.end method

.method public getK2()I
    .registers 2

    .prologue
    .line 553
    iget v0, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    return v0
.end method

.method public getK3()I
    .registers 2

    .prologue
    .line 557
    iget v0, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    return v0
.end method

.method public getM()I
    .registers 2

    .prologue
    .line 536
    iget v0, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->m:I

    return v0
.end method

.method declared-synchronized getMu()B
    .registers 2

    .prologue
    .line 423
    monitor-enter p0

    :try_start_1
    iget-byte v0, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->mu:B

    if-nez v0, :cond_b

    .line 424
    invoke-static {p0}, Lmyorg/bouncycastle/math/ec/Tnaf;->getMu(Lmyorg/bouncycastle/math/ec/ECCurve$F2m;)B

    move-result v0

    iput-byte v0, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->mu:B

    .line 426
    :cond_b
    iget-byte v0, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->mu:B
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return v0

    .line 423
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getSi()[Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 435
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->si:[Ljava/math/BigInteger;

    if-nez v0, :cond_b

    .line 436
    invoke-static {p0}, Lmyorg/bouncycastle/math/ec/Tnaf;->getSi(Lmyorg/bouncycastle/math/ec/ECCurve$F2m;)[Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->si:[Ljava/math/BigInteger;

    .line 438
    :cond_b
    iget-object v0, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->si:[Ljava/math/BigInteger;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 435
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 532
    iget-object v0, p0, Lmyorg/bouncycastle/math/ec/ECCurve;->a:Lmyorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lmyorg/bouncycastle/math/ec/ECCurve;->b:Lmyorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget v1, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->m:I

    xor-int/2addr v0, v1

    iget v1, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    xor-int/2addr v0, v1

    iget v1, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    xor-int/2addr v0, v1

    iget v1, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public isKoblitz()Z
    .registers 3

    .prologue
    .line 409
    iget-object v0, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->n:Ljava/math/BigInteger;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->h:Ljava/math/BigInteger;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lmyorg/bouncycastle/math/ec/ECCurve;->a:Lmyorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lmyorg/bouncycastle/math/ec/ECCurve;->a:Lmyorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_24
    iget-object v0, p0, Lmyorg/bouncycastle/math/ec/ECCurve;->b:Lmyorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x1

    :goto_33
    return v0

    :cond_34
    const/4 v0, 0x0

    goto :goto_33
.end method

.method public isTrinomial()Z
    .registers 2

    .prologue
    .line 545
    iget v0, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    if-nez v0, :cond_a

    iget v0, p0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
