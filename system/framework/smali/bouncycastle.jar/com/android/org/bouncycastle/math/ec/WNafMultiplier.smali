.class Lcom/android/org/bouncycastle/math/ec/WNafMultiplier;
.super Ljava/lang/Object;
.source "WNafMultiplier.java"

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


# virtual methods
.method public multiply(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 19
    .parameter "p"
    .parameter "k"
    .parameter "preCompInfo"

    .prologue
    .line 94
    if-eqz p3, :cond_47

    move-object/from16 v0, p3

    instance-of v13, v0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    if-eqz v13, :cond_47

    move-object/from16 v12, p3

    .line 96
    check-cast v12, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    .line 105
    .local v12, wnafPreCompInfo:Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    :goto_c
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    .line 115
    .local v3, m:I
    const/16 v13, 0xd

    if-ge v3, v13, :cond_4d

    .line 117
    const/4 v10, 0x2

    .line 118
    .local v10, width:B
    const/4 v8, 0x1

    .line 167
    .local v8, reqPreCompLen:I
    :goto_16
    const/4 v6, 0x1

    .line 169
    .local v6, preCompLen:I
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    .line 170
    .local v5, preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getTwiceP()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    .line 173
    .local v9, twiceP:Lcom/android/org/bouncycastle/math/ec/ECPoint;
    if-nez v5, :cond_78

    .line 177
    const/4 v13, 0x1

    new-array v5, v13, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .end local v5           #preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    const/4 v13, 0x0

    aput-object p1, v5, v13

    .line 185
    .restart local v5       #preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_27
    if-nez v9, :cond_2d

    .line 188
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    .line 191
    :cond_2d
    if-ge v6, v8, :cond_7a

    .line 195
    move-object v4, v5

    .line 196
    .local v4, oldPreComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    new-array v5, v8, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 197
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v4, v13, v5, v14, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    move v1, v6

    .local v1, i:I
    :goto_38
    if-ge v1, v8, :cond_7a

    .line 204
    add-int/lit8 v13, v1, -0x1

    aget-object v13, v5, v13

    invoke-virtual {v9, v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    aput-object v13, v5, v1

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 101
    .end local v1           #i:I
    .end local v3           #m:I
    .end local v4           #oldPreComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v5           #preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v6           #preCompLen:I
    .end local v8           #reqPreCompLen:I
    .end local v9           #twiceP:Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v10           #width:B
    .end local v12           #wnafPreCompInfo:Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    :cond_47
    new-instance v12, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-direct {v12}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;-><init>()V

    .restart local v12       #wnafPreCompInfo:Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    goto :goto_c

    .line 122
    .restart local v3       #m:I
    :cond_4d
    const/16 v13, 0x29

    if-ge v3, v13, :cond_54

    .line 124
    const/4 v10, 0x3

    .line 125
    .restart local v10       #width:B
    const/4 v8, 0x2

    .restart local v8       #reqPreCompLen:I
    goto :goto_16

    .line 129
    .end local v8           #reqPreCompLen:I
    .end local v10           #width:B
    :cond_54
    const/16 v13, 0x79

    if-ge v3, v13, :cond_5b

    .line 131
    const/4 v10, 0x4

    .line 132
    .restart local v10       #width:B
    const/4 v8, 0x4

    .restart local v8       #reqPreCompLen:I
    goto :goto_16

    .line 136
    .end local v8           #reqPreCompLen:I
    .end local v10           #width:B
    :cond_5b
    const/16 v13, 0x151

    if-ge v3, v13, :cond_63

    .line 138
    const/4 v10, 0x5

    .line 139
    .restart local v10       #width:B
    const/16 v8, 0x8

    .restart local v8       #reqPreCompLen:I
    goto :goto_16

    .line 143
    .end local v8           #reqPreCompLen:I
    .end local v10           #width:B
    :cond_63
    const/16 v13, 0x381

    if-ge v3, v13, :cond_6b

    .line 145
    const/4 v10, 0x6

    .line 146
    .restart local v10       #width:B
    const/16 v8, 0x10

    .restart local v8       #reqPreCompLen:I
    goto :goto_16

    .line 150
    .end local v8           #reqPreCompLen:I
    .end local v10           #width:B
    :cond_6b
    const/16 v13, 0x901

    if-ge v3, v13, :cond_73

    .line 152
    const/4 v10, 0x7

    .line 153
    .restart local v10       #width:B
    const/16 v8, 0x20

    .restart local v8       #reqPreCompLen:I
    goto :goto_16

    .line 157
    .end local v8           #reqPreCompLen:I
    .end local v10           #width:B
    :cond_73
    const/16 v10, 0x8

    .line 158
    .restart local v10       #width:B
    const/16 v8, 0x7f

    .restart local v8       #reqPreCompLen:I
    goto :goto_16

    .line 182
    .restart local v5       #preComp:[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .restart local v6       #preCompLen:I
    .restart local v9       #twiceP:Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_78
    array-length v6, v5

    goto :goto_27

    .line 209
    :cond_7a
    move-object/from16 v0, p2

    invoke-virtual {p0, v10, v0}, Lcom/android/org/bouncycastle/math/ec/WNafMultiplier;->windowNaf(BLjava/math/BigInteger;)[B

    move-result-object v11

    .line 210
    .local v11, wnaf:[B
    array-length v2, v11

    .line 213
    .local v2, l:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    .line 214
    .local v7, q:Lcom/android/org/bouncycastle/math/ec/ECPoint;
    add-int/lit8 v1, v2, -0x1

    .restart local v1       #i:I
    :goto_8b
    if-ltz v1, :cond_b6

    .line 216
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    .line 218
    aget-byte v13, v11, v1

    if-eqz v13, :cond_a5

    .line 220
    aget-byte v13, v11, v1

    if-lez v13, :cond_a8

    .line 222
    aget-byte v13, v11, v1

    add-int/lit8 v13, v13, -0x1

    div-int/lit8 v13, v13, 0x2

    aget-object v13, v5, v13

    invoke-virtual {v7, v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    .line 214
    :cond_a5
    :goto_a5
    add-int/lit8 v1, v1, -0x1

    goto :goto_8b

    .line 227
    :cond_a8
    aget-byte v13, v11, v1

    neg-int v13, v13

    add-int/lit8 v13, v13, -0x1

    div-int/lit8 v13, v13, 0x2

    aget-object v13, v5, v13

    invoke-virtual {v7, v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->subtract(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    goto :goto_a5

    .line 234
    :cond_b6
    invoke-virtual {v12, v5}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setPreComp([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 235
    invoke-virtual {v12, v9}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setTwiceP(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 236
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->setPreCompInfo(Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)V

    .line 237
    return-object v7
.end method

.method public windowNaf(BLjava/math/BigInteger;)[B
    .registers 14
    .parameter "width"
    .parameter "k"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 31
    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    new-array v5, v7, [B

    .line 34
    .local v5, wnaf:[B
    shl-int v7, v10, p1

    int-to-short v2, v7

    .line 35
    .local v2, pow2wB:S
    int-to-long v7, v2

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    .line 37
    .local v3, pow2wBI:Ljava/math/BigInteger;
    const/4 v0, 0x0

    .line 40
    .local v0, i:I
    const/4 v1, 0x0

    .line 43
    .local v1, length:I
    :goto_14
    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result v7

    if-lez v7, :cond_52

    .line 46
    invoke-virtual {p2, v9}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 49
    invoke-virtual {p2, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 52
    .local v4, remainder:Ljava/math/BigInteger;
    add-int/lit8 v7, p1, -0x1

    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v7

    if-eqz v7, :cond_47

    .line 54
    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    sub-int/2addr v7, v2

    int-to-byte v7, v7

    aput-byte v7, v5, v0

    .line 62
    :goto_34
    aget-byte v7, v5, v0

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    .line 63
    move v1, v0

    .line 71
    .end local v4           #remainder:Ljava/math/BigInteger;
    :goto_40
    invoke-virtual {p2, v10}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p2

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 58
    .restart local v4       #remainder:Ljava/math/BigInteger;
    :cond_47
    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v5, v0

    goto :goto_34

    .line 67
    .end local v4           #remainder:Ljava/math/BigInteger;
    :cond_4f
    aput-byte v9, v5, v0

    goto :goto_40

    .line 75
    :cond_52
    add-int/lit8 v1, v1, 0x1

    .line 78
    new-array v6, v1, [B

    .line 79
    .local v6, wnafShort:[B
    invoke-static {v5, v9, v6, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    return-object v6
.end method
