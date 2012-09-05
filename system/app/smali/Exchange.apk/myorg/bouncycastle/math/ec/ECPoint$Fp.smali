.class public Lmyorg/bouncycastle/math/ec/ECPoint$Fp;
.super Lmyorg/bouncycastle/math/ec/ECPoint;
.source "ECPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/math/ec/ECPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fp"
.end annotation


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECFieldElement;Lmyorg/bouncycastle/math/ec/ECFieldElement;)V
    .registers 5
    .parameter "curve"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lmyorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECFieldElement;Lmyorg/bouncycastle/math/ec/ECFieldElement;Z)V

    .line 150
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECFieldElement;Lmyorg/bouncycastle/math/ec/ECFieldElement;Z)V
    .registers 7
    .parameter "curve"
    .parameter "x"
    .parameter "y"
    .parameter "withCompression"

    .prologue
    .line 161
    invoke-direct {p0, p1, p2, p3}, Lmyorg/bouncycastle/math/ec/ECPoint;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECFieldElement;Lmyorg/bouncycastle/math/ec/ECFieldElement;)V

    .line 163
    if-eqz p2, :cond_7

    if-eqz p3, :cond_b

    :cond_7
    if-nez p2, :cond_13

    if-eqz p3, :cond_13

    .line 164
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exactly one of the field elements is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_13
    iput-boolean p4, p0, Lmyorg/bouncycastle/math/ec/ECPoint;->withCompression:Z

    .line 168
    return-void
.end method


# virtual methods
.method public add(Lmyorg/bouncycastle/math/ec/ECPoint;)Lmyorg/bouncycastle/math/ec/ECPoint;
    .registers 8
    .parameter "b"

    .prologue
    .line 211
    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 235
    .end local p1
    :goto_6
    return-object p1

    .line 215
    .restart local p1
    :cond_7
    invoke-virtual {p1}, Lmyorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v3

    if-eqz v3, :cond_f

    move-object p1, p0

    .line 216
    goto :goto_6

    .line 220
    :cond_f
    iget-object v3, p0, Lmyorg/bouncycastle/math/ec/ECPoint;->x:Lmyorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v4, p1, Lmyorg/bouncycastle/math/ec/ECPoint;->x:Lmyorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 221
    iget-object v3, p0, Lmyorg/bouncycastle/math/ec/ECPoint;->y:Lmyorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v4, p1, Lmyorg/bouncycastle/math/ec/ECPoint;->y:Lmyorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 223
    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/ECPoint$Fp;->twice()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_6

    .line 227
    :cond_28
    iget-object v3, p0, Lmyorg/bouncycastle/math/ec/ECPoint;->curve:Lmyorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v3}, Lmyorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_6

    .line 230
    :cond_2f
    iget-object v3, p1, Lmyorg/bouncycastle/math/ec/ECPoint;->y:Lmyorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v4, p0, Lmyorg/bouncycastle/math/ec/ECPoint;->y:Lmyorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3, v4}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lmyorg/bouncycastle/math/ec/ECFieldElement;)Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v4, p1, Lmyorg/bouncycastle/math/ec/ECPoint;->x:Lmyorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v5, p0, Lmyorg/bouncycastle/math/ec/ECPoint;->x:Lmyorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v4, v5}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lmyorg/bouncycastle/math/ec/ECFieldElement;)Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->divide(Lmyorg/bouncycastle/math/ec/ECFieldElement;)Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 232
    .local v0, gamma:Lmyorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->square()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v4, p0, Lmyorg/bouncycastle/math/ec/ECPoint;->x:Lmyorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3, v4}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lmyorg/bouncycastle/math/ec/ECFieldElement;)Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v4, p1, Lmyorg/bouncycastle/math/ec/ECPoint;->x:Lmyorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3, v4}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lmyorg/bouncycastle/math/ec/ECFieldElement;)Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 233
    .local v1, x3:Lmyorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v3, p0, Lmyorg/bouncycastle/math/ec/ECPoint;->x:Lmyorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3, v1}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lmyorg/bouncycastle/math/ec/ECFieldElement;)Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lmyorg/bouncycastle/math/ec/ECFieldElement;)Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v4, p0, Lmyorg/bouncycastle/math/ec/ECPoint;->y:Lmyorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3, v4}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lmyorg/bouncycastle/math/ec/ECFieldElement;)Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 235
    .local v2, y3:Lmyorg/bouncycastle/math/ec/ECFieldElement;
    new-instance p1, Lmyorg/bouncycastle/math/ec/ECPoint$Fp;

    .end local p1
    iget-object v3, p0, Lmyorg/bouncycastle/math/ec/ECPoint;->curve:Lmyorg/bouncycastle/math/ec/ECCurve;

    invoke-direct {p1, v3, v1, v2}, Lmyorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECFieldElement;Lmyorg/bouncycastle/math/ec/ECFieldElement;)V

    goto :goto_6
.end method

.method public getEncoded()[B
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 174
    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 175
    new-array v1, v8, [B

    .line 205
    :goto_a
    return-object v1

    .line 178
    :cond_b
    invoke-static {}, Lmyorg/bouncycastle/math/ec/ECPoint;->access$000()Lmyorg/bouncycastle/asn1/x9/X9IntegerConverter;

    move-result-object v5

    iget-object v6, p0, Lmyorg/bouncycastle/math/ec/ECPoint;->x:Lmyorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v5, v6}, Lmyorg/bouncycastle/asn1/x9/X9IntegerConverter;->getByteLength(Lmyorg/bouncycastle/math/ec/ECFieldElement;)I

    move-result v4

    .line 180
    .local v4, qLength:I
    iget-boolean v5, p0, Lmyorg/bouncycastle/math/ec/ECPoint;->withCompression:Z

    if-eqz v5, :cond_46

    .line 183
    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/ECPoint$Fp;->getY()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 184
    const/4 v0, 0x3

    .line 189
    .local v0, PC:B
    :goto_28
    invoke-static {}, Lmyorg/bouncycastle/math/ec/ECPoint;->access$000()Lmyorg/bouncycastle/asn1/x9/X9IntegerConverter;

    move-result-object v5

    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/ECPoint$Fp;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lmyorg/bouncycastle/asn1/x9/X9IntegerConverter;->integerToBytes(Ljava/math/BigInteger;I)[B

    move-result-object v2

    .line 190
    .local v2, X:[B
    array-length v5, v2

    add-int/lit8 v5, v5, 0x1

    new-array v1, v5, [B

    .line 192
    .local v1, PO:[B
    aput-byte v0, v1, v7

    .line 193
    array-length v5, v2

    invoke-static {v2, v7, v1, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_a

    .line 186
    .end local v0           #PC:B
    .end local v1           #PO:[B
    .end local v2           #X:[B
    :cond_44
    const/4 v0, 0x2

    .restart local v0       #PC:B
    goto :goto_28

    .line 197
    .end local v0           #PC:B
    :cond_46
    invoke-static {}, Lmyorg/bouncycastle/math/ec/ECPoint;->access$000()Lmyorg/bouncycastle/asn1/x9/X9IntegerConverter;

    move-result-object v5

    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/ECPoint$Fp;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lmyorg/bouncycastle/asn1/x9/X9IntegerConverter;->integerToBytes(Ljava/math/BigInteger;I)[B

    move-result-object v2

    .line 198
    .restart local v2       #X:[B
    invoke-static {}, Lmyorg/bouncycastle/math/ec/ECPoint;->access$000()Lmyorg/bouncycastle/asn1/x9/X9IntegerConverter;

    move-result-object v5

    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/ECPoint$Fp;->getY()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lmyorg/bouncycastle/asn1/x9/X9IntegerConverter;->integerToBytes(Ljava/math/BigInteger;I)[B

    move-result-object v3

    .line 199
    .local v3, Y:[B
    array-length v5, v2

    array-length v6, v3

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    new-array v1, v5, [B

    .line 201
    .restart local v1       #PO:[B
    const/4 v5, 0x4

    aput-byte v5, v1, v7

    .line 202
    array-length v5, v2

    invoke-static {v2, v7, v1, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    array-length v5, v2

    add-int/lit8 v5, v5, 0x1

    array-length v6, v3

    invoke-static {v3, v7, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_a
.end method

.method public negate()Lmyorg/bouncycastle/math/ec/ECPoint;
    .registers 6

    .prologue
    .line 273
    new-instance v0, Lmyorg/bouncycastle/math/ec/ECPoint$Fp;

    iget-object v1, p0, Lmyorg/bouncycastle/math/ec/ECPoint;->curve:Lmyorg/bouncycastle/math/ec/ECCurve;

    iget-object v2, p0, Lmyorg/bouncycastle/math/ec/ECPoint;->x:Lmyorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lmyorg/bouncycastle/math/ec/ECPoint;->y:Lmyorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->negate()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-boolean v4, p0, Lmyorg/bouncycastle/math/ec/ECPoint;->withCompression:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lmyorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECFieldElement;Lmyorg/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public subtract(Lmyorg/bouncycastle/math/ec/ECPoint;)Lmyorg/bouncycastle/math/ec/ECPoint;
    .registers 3
    .parameter "b"

    .prologue
    .line 264
    invoke-virtual {p1}, Lmyorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 269
    .end local p0
    :goto_6
    return-object p0

    .restart local p0
    :cond_7
    invoke-virtual {p1}, Lmyorg/bouncycastle/math/ec/ECPoint;->negate()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmyorg/bouncycastle/math/ec/ECPoint$Fp;->add(Lmyorg/bouncycastle/math/ec/ECPoint;)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_6
.end method

.method public twice()Lmyorg/bouncycastle/math/ec/ECPoint;
    .registers 9

    .prologue
    .line 240
    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 259
    .end local p0
    .local v0, THREE:Lmyorg/bouncycastle/math/ec/ECFieldElement;
    .local v1, TWO:Lmyorg/bouncycastle/math/ec/ECFieldElement;
    .local v2, gamma:Lmyorg/bouncycastle/math/ec/ECFieldElement;
    .local v3, x3:Lmyorg/bouncycastle/math/ec/ECFieldElement;
    .local v4, y3:Lmyorg/bouncycastle/math/ec/ECFieldElement;
    :goto_6
    return-object p0

    .line 245
    .end local v0           #THREE:Lmyorg/bouncycastle/math/ec/ECFieldElement;
    .end local v1           #TWO:Lmyorg/bouncycastle/math/ec/ECFieldElement;
    .end local v2           #gamma:Lmyorg/bouncycastle/math/ec/ECFieldElement;
    .end local v3           #x3:Lmyorg/bouncycastle/math/ec/ECFieldElement;
    .end local v4           #y3:Lmyorg/bouncycastle/math/ec/ECFieldElement;
    .restart local p0
    :cond_7
    iget-object v5, p0, Lmyorg/bouncycastle/math/ec/ECPoint;->y:Lmyorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v5}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->signum()I

    move-result v5

    if-nez v5, :cond_1a

    .line 248
    iget-object v5, p0, Lmyorg/bouncycastle/math/ec/ECPoint;->curve:Lmyorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v5}, Lmyorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_6

    .line 251
    :cond_1a
    iget-object v5, p0, Lmyorg/bouncycastle/math/ec/ECPoint;->curve:Lmyorg/bouncycastle/math/ec/ECCurve;

    const-wide/16 v6, 0x2

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmyorg/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 252
    .restart local v1       #TWO:Lmyorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v5, p0, Lmyorg/bouncycastle/math/ec/ECPoint;->curve:Lmyorg/bouncycastle/math/ec/ECCurve;

    const-wide/16 v6, 0x3

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmyorg/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 253
    .restart local v0       #THREE:Lmyorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v5, p0, Lmyorg/bouncycastle/math/ec/ECPoint;->x:Lmyorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v5}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->square()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v0}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lmyorg/bouncycastle/math/ec/ECFieldElement;)Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    iget-object v6, p0, Lmyorg/bouncycastle/math/ec/ECPoint;->curve:Lmyorg/bouncycastle/math/ec/ECCurve;

    iget-object v6, v6, Lmyorg/bouncycastle/math/ec/ECCurve;->a:Lmyorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v5, v6}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->add(Lmyorg/bouncycastle/math/ec/ECFieldElement;)Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    iget-object v6, p0, Lmyorg/bouncycastle/math/ec/ECPoint;->y:Lmyorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v6, v1}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lmyorg/bouncycastle/math/ec/ECFieldElement;)Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->divide(Lmyorg/bouncycastle/math/ec/ECFieldElement;)Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 256
    .restart local v2       #gamma:Lmyorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->square()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    iget-object v6, p0, Lmyorg/bouncycastle/math/ec/ECPoint;->x:Lmyorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v6, v1}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lmyorg/bouncycastle/math/ec/ECFieldElement;)Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lmyorg/bouncycastle/math/ec/ECFieldElement;)Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 257
    .restart local v3       #x3:Lmyorg/bouncycastle/math/ec/ECFieldElement;
    iget-object v5, p0, Lmyorg/bouncycastle/math/ec/ECPoint;->x:Lmyorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v5, v3}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lmyorg/bouncycastle/math/ec/ECFieldElement;)Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v2, v5}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lmyorg/bouncycastle/math/ec/ECFieldElement;)Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    iget-object v6, p0, Lmyorg/bouncycastle/math/ec/ECPoint;->y:Lmyorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v5, v6}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->subtract(Lmyorg/bouncycastle/math/ec/ECFieldElement;)Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 259
    .restart local v4       #y3:Lmyorg/bouncycastle/math/ec/ECFieldElement;
    new-instance v5, Lmyorg/bouncycastle/math/ec/ECPoint$Fp;

    iget-object v6, p0, Lmyorg/bouncycastle/math/ec/ECPoint;->curve:Lmyorg/bouncycastle/math/ec/ECCurve;

    iget-boolean v7, p0, Lmyorg/bouncycastle/math/ec/ECPoint;->withCompression:Z

    invoke-direct {v5, v6, v3, v4, v7}, Lmyorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECFieldElement;Lmyorg/bouncycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v5

    goto :goto_6
.end method
