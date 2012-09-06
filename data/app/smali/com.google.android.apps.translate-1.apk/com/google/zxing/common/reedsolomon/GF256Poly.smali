.class final Lcom/google/zxing/common/reedsolomon/GF256Poly;
.super Ljava/lang/Object;
.source "GF256Poly.java"


# instance fields
.field private final coefficients:[I

.field private final field:Lcom/google/zxing/common/reedsolomon/GF256;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/reedsolomon/GF256;[I)V
    .registers 8
    .parameter "field"
    .parameter "coefficients"

    .prologue
    const/4 v4, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-eqz p2, :cond_9

    array-length v2, p2

    if-nez v2, :cond_f

    .line 44
    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 46
    :cond_f
    iput-object p1, p0, Lcom/google/zxing/common/reedsolomon/GF256Poly;->field:Lcom/google/zxing/common/reedsolomon/GF256;

    .line 47
    array-length v0, p2

    .line 48
    .local v0, coefficientsLength:I
    const/4 v2, 0x1

    if-le v0, v2, :cond_3d

    aget v2, p2, v4

    if-nez v2, :cond_3d

    .line 50
    const/4 v1, 0x1

    .line 51
    .local v1, firstNonZero:I
    :goto_1a
    if-ge v1, v0, :cond_23

    aget v2, p2, v1

    if-nez v2, :cond_23

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 54
    :cond_23
    if-ne v1, v0, :cond_2e

    .line 55
    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GF256;->getZero()Lcom/google/zxing/common/reedsolomon/GF256Poly;

    move-result-object v2

    iget-object v2, v2, Lcom/google/zxing/common/reedsolomon/GF256Poly;->coefficients:[I

    iput-object v2, p0, Lcom/google/zxing/common/reedsolomon/GF256Poly;->coefficients:[I

    .line 67
    .end local v1           #firstNonZero:I
    :goto_2d
    return-void

    .line 57
    .restart local v1       #firstNonZero:I
    :cond_2e
    sub-int v2, v0, v1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/google/zxing/common/reedsolomon/GF256Poly;->coefficients:[I

    .line 58
    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/GF256Poly;->coefficients:[I

    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GF256Poly;->coefficients:[I

    array-length v3, v3

    invoke-static {p2, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2d

    .line 65
    .end local v1           #firstNonZero:I
    :cond_3d
    iput-object p2, p0, Lcom/google/zxing/common/reedsolomon/GF256Poly;->coefficients:[I

    goto :goto_2d
.end method


# virtual methods
.method addOrSubtract(Lcom/google/zxing/common/reedsolomon/GF256Poly;)Lcom/google/zxing/common/reedsolomon/GF256Poly;
    .registers 11
    .parameter "other"

    .prologue
    const/4 v8, 0x0

    .line 119
    iget-object v6, p0, Lcom/google/zxing/common/reedsolomon/GF256Poly;->field:Lcom/google/zxing/common/reedsolomon/GF256;

    iget-object v7, p1, Lcom/google/zxing/common/reedsolomon/GF256Poly;->field:Lcom/google/zxing/common/reedsolomon/GF256;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 120
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "GF256Polys do not have same GF256 field"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 122
    :cond_13
    invoke-virtual {p0}, Lcom/google/zxing/common/reedsolomon/GF256Poly;->isZero()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 145
    .end local p1
    :goto_19
    return-object p1

    .line 125
    .restart local p1
    :cond_1a
    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GF256Poly;->isZero()Z

    move-result v6

    if-eqz v6, :cond_22

    move-object p1, p0

    .line 126
    goto :goto_19

    .line 129
    :cond_22
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GF256Poly;->coefficients:[I

    .line 130
    .local v3, smallerCoefficients:[I
    iget-object v1, p1, Lcom/google/zxing/common/reedsolomon/GF256Poly;->coefficients:[I

    .line 131
    .local v1, largerCoefficients:[I
    array-length v6, v3

    array-length v7, v1

    if-le v6, v7, :cond_2d

    .line 132
    move-object v5, v3

    .line 133
    .local v5, temp:[I
    move-object v3, v1

    .line 134
    move-object v1, v5

    .line 136
    .end local v5           #temp:[I
    :cond_2d
    array-length v6, v1

    new-array v4, v6, [I

    .line 137
    .local v4, sumDiff:[I
    array-length v6, v1

    array-length v7, v3

    sub-int v2, v6, v7

    .line 139
    .local v2, lengthDiff:I
    invoke-static {v1, v8, v4, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    move v0, v2

    .local v0, i:I
    :goto_38
    array-length v6, v1

    if-ge v0, v6, :cond_4a

    .line 142
    sub-int v6, v0, v2

    aget v6, v3, v6

    aget v7, v1, v0

    invoke-static {v6, v7}, Lcom/google/zxing/common/reedsolomon/GF256;->addOrSubtract(II)I

    move-result v6

    aput v6, v4, v0

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 145
    :cond_4a
    new-instance p1, Lcom/google/zxing/common/reedsolomon/GF256Poly;

    .end local p1
    iget-object v6, p0, Lcom/google/zxing/common/reedsolomon/GF256Poly;->field:Lcom/google/zxing/common/reedsolomon/GF256;

    invoke-direct {p1, v6, v4}, Lcom/google/zxing/common/reedsolomon/GF256Poly;-><init>(Lcom/google/zxing/common/reedsolomon/GF256;[I)V

    goto :goto_19
.end method

.method divide(Lcom/google/zxing/common/reedsolomon/GF256Poly;)[Lcom/google/zxing/common/reedsolomon/GF256Poly;
    .registers 12
    .parameter "other"

    .prologue
    .line 201
    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/GF256Poly;->field:Lcom/google/zxing/common/reedsolomon/GF256;

    iget-object v9, p1, Lcom/google/zxing/common/reedsolomon/GF256Poly;->field:Lcom/google/zxing/common/reedsolomon/GF256;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    .line 202
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "GF256Polys do not have same GF256 field"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 204
    :cond_12
    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GF256Poly;->isZero()Z

    move-result v8

    if-eqz v8, :cond_20

    .line 205
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Divide by 0"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 208
    :cond_20
    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/GF256Poly;->field:Lcom/google/zxing/common/reedsolomon/GF256;

    invoke-virtual {v8}, Lcom/google/zxing/common/reedsolomon/GF256;->getZero()Lcom/google/zxing/common/reedsolomon/GF256Poly;

    move-result-object v4

    .line 209
    .local v4, quotient:Lcom/google/zxing/common/reedsolomon/GF256Poly;
    move-object v5, p0

    .line 211
    .local v5, remainder:Lcom/google/zxing/common/reedsolomon/GF256Poly;
    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GF256Poly;->getDegree()I

    move-result v8

    invoke-virtual {p1, v8}, Lcom/google/zxing/common/reedsolomon/GF256Poly;->getCoefficient(I)I

    move-result v1

    .line 212
    .local v1, denominatorLeadingTerm:I
    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/GF256Poly;->field:Lcom/google/zxing/common/reedsolomon/GF256;

    invoke-virtual {v8, v1}, Lcom/google/zxing/common/reedsolomon/GF256;->inverse(I)I

    move-result v2

    .line 214
    .local v2, inverseDenominatorLeadingTerm:I
    :goto_35
    invoke-virtual {v5}, Lcom/google/zxing/common/reedsolomon/GF256Poly;->getDegree()I

    move-result v8

    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GF256Poly;->getDegree()I

    move-result v9

    if-lt v8, v9, :cond_70

    invoke-virtual {v5}, Lcom/google/zxing/common/reedsolomon/GF256Poly;->isZero()Z

    move-result v8

    if-nez v8, :cond_70

    .line 215
    invoke-virtual {v5}, Lcom/google/zxing/common/reedsolomon/GF256Poly;->getDegree()I

    move-result v8

    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GF256Poly;->getDegree()I

    move-result v9

    sub-int v0, v8, v9

    .line 216
    .local v0, degreeDifference:I
    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/GF256Poly;->field:Lcom/google/zxing/common/reedsolomon/GF256;

    invoke-virtual {v5}, Lcom/google/zxing/common/reedsolomon/GF256Poly;->getDegree()I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/google/zxing/common/reedsolomon/GF256Poly;->getCoefficient(I)I

    move-result v9

    invoke-virtual {v8, v9, v2}, Lcom/google/zxing/common/reedsolomon/GF256;->multiply(II)I

    move-result v6

    .line 217
    .local v6, scale:I
    invoke-virtual {p1, v0, v6}, Lcom/google/zxing/common/reedsolomon/GF256Poly;->multiplyByMonomial(II)Lcom/google/zxing/common/reedsolomon/GF256Poly;

    move-result-object v7

    .line 218
    .local v7, term:Lcom/google/zxing/common/reedsolomon/GF256Poly;
    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/GF256Poly;->field:Lcom/google/zxing/common/reedsolomon/GF256;

    invoke-virtual {v8, v0, v6}, Lcom/google/zxing/common/reedsolomon/GF256;->buildMonomial(II)Lcom/google/zxing/common/reedsolomon/GF256Poly;

    move-result-object v3

    .line 219
    .local v3, iterationQuotient:Lcom/google/zxing/common/reedsolomon/GF256Poly;
    invoke-virtual {v4, v3}, Lcom/google/zxing/common/reedsolomon/GF256Poly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GF256Poly;)Lcom/google/zxing/common/reedsolomon/GF256Poly;

    move-result-object v4

    .line 220
    invoke-virtual {v5, v7}, Lcom/google/zxing/common/reedsolomon/GF256Poly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GF256Poly;)Lcom/google/zxing/common/reedsolomon/GF256Poly;

    move-result-object v5

    .line 221
    goto :goto_35

    .line 223
    .end local v0           #degreeDifference:I
    .end local v3           #iterationQuotient:Lcom/google/zxing/common/reedsolomon/GF256Poly;
    .end local v6           #scale:I
    .end local v7           #term:Lcom/google/zxing/common/reedsolomon/GF256Poly;
    :cond_70
    const/4 v8, 0x2

    new-array v8, v8, [Lcom/google/zxing/common/reedsolomon/GF256Poly;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    return-object v8
.end method

.method evaluateAt(I)I
    .registers 7
    .parameter "a"

    .prologue
    const/4 v4, 0x0

    .line 98
    if-nez p1, :cond_8

    .line 100
    invoke-virtual {p0, v4}, Lcom/google/zxing/common/reedsolomon/GF256Poly;->getCoefficient(I)I

    move-result v1

    .line 115
    :cond_7
    return v1

    .line 102
    :cond_8
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GF256Poly;->coefficients:[I

    array-length v2, v3

    .line 103
    .local v2, size:I
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1d

    .line 105
    const/4 v1, 0x0

    .line 106
    .local v1, result:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    if-ge v0, v2, :cond_7

    .line 107
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GF256Poly;->coefficients:[I

    aget v3, v3, v0

    invoke-static {v1, v3}, Lcom/google/zxing/common/reedsolomon/GF256;->addOrSubtract(II)I

    move-result v1

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 111
    .end local v0           #i:I
    .end local v1           #result:I
    :cond_1d
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GF256Poly;->coefficients:[I

    aget v1, v3, v4

    .line 112
    .restart local v1       #result:I
    const/4 v0, 0x1

    .restart local v0       #i:I
    :goto_22
    if-ge v0, v2, :cond_7

    .line 113
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GF256Poly;->field:Lcom/google/zxing/common/reedsolomon/GF256;

    invoke-virtual {v3, p1, v1}, Lcom/google/zxing/common/reedsolomon/GF256;->multiply(II)I

    move-result v3

    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/GF256Poly;->coefficients:[I

    aget v4, v4, v0

    invoke-static {v3, v4}, Lcom/google/zxing/common/reedsolomon/GF256;->addOrSubtract(II)I

    move-result v1

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_22
.end method

.method getCoefficient(I)I
    .registers 4
    .parameter "degree"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GF256Poly;->coefficients:[I

    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/GF256Poly;->coefficients:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    aget v0, v0, v1

    return v0
.end method

.method getCoefficients()[I
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GF256Poly;->coefficients:[I

    return-object v0
.end method

.method getDegree()I
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GF256Poly;->coefficients:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method isZero()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 84
    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/GF256Poly;->coefficients:[I

    aget v1, v1, v0

    if-nez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method multiply(I)Lcom/google/zxing/common/reedsolomon/GF256Poly;
    .registers 7
    .parameter "scalar"

    .prologue
    .line 171
    if-nez p1, :cond_9

    .line 172
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GF256Poly;->field:Lcom/google/zxing/common/reedsolomon/GF256;

    invoke-virtual {v3}, Lcom/google/zxing/common/reedsolomon/GF256;->getZero()Lcom/google/zxing/common/reedsolomon/GF256Poly;

    move-result-object p0

    .line 182
    .end local p0
    :cond_8
    :goto_8
    return-object p0

    .line 174
    .restart local p0
    :cond_9
    const/4 v3, 0x1

    if-eq p1, v3, :cond_8

    .line 177
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GF256Poly;->coefficients:[I

    array-length v2, v3

    .line 178
    .local v2, size:I
    new-array v1, v2, [I

    .line 179
    .local v1, product:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    if-ge v0, v2, :cond_23

    .line 180
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GF256Poly;->field:Lcom/google/zxing/common/reedsolomon/GF256;

    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/GF256Poly;->coefficients:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4, p1}, Lcom/google/zxing/common/reedsolomon/GF256;->multiply(II)I

    move-result v3

    aput v3, v1, v0

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 182
    :cond_23
    new-instance v3, Lcom/google/zxing/common/reedsolomon/GF256Poly;

    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/GF256Poly;->field:Lcom/google/zxing/common/reedsolomon/GF256;

    invoke-direct {v3, v4, v1}, Lcom/google/zxing/common/reedsolomon/GF256Poly;-><init>(Lcom/google/zxing/common/reedsolomon/GF256;[I)V

    move-object p0, v3

    goto :goto_8
.end method

.method multiply(Lcom/google/zxing/common/reedsolomon/GF256Poly;)Lcom/google/zxing/common/reedsolomon/GF256Poly;
    .registers 14
    .parameter "other"

    .prologue
    .line 149
    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/GF256Poly;->field:Lcom/google/zxing/common/reedsolomon/GF256;

    iget-object v9, p1, Lcom/google/zxing/common/reedsolomon/GF256Poly;->field:Lcom/google/zxing/common/reedsolomon/GF256;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    .line 150
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "GF256Polys do not have same GF256 field"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 152
    :cond_12
    invoke-virtual {p0}, Lcom/google/zxing/common/reedsolomon/GF256Poly;->isZero()Z

    move-result v8

    if-nez v8, :cond_1e

    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GF256Poly;->isZero()Z

    move-result v8

    if-eqz v8, :cond_25

    .line 153
    :cond_1e
    iget-object v8, p0, Lcom/google/zxing/common/reedsolomon/GF256Poly;->field:Lcom/google/zxing/common/reedsolomon/GF256;

    invoke-virtual {v8}, Lcom/google/zxing/common/reedsolomon/GF256;->getZero()Lcom/google/zxing/common/reedsolomon/GF256Poly;

    move-result-object v8

    .line 167
    :goto_24
    return-object v8

    .line 155
    :cond_25
    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/GF256Poly;->coefficients:[I

    .line 156
    .local v1, aCoefficients:[I
    array-length v2, v1

    .line 157
    .local v2, aLength:I
    iget-object v3, p1, Lcom/google/zxing/common/reedsolomon/GF256Poly;->coefficients:[I

    .line 158
    .local v3, bCoefficients:[I
    array-length v4, v3

    .line 159
    .local v4, bLength:I
    add-int v8, v2, v4

    add-int/lit8 v8, v8, -0x1

    new-array v7, v8, [I

    .line 160
    .local v7, product:[I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_32
    if-ge v5, v2, :cond_53

    .line 161
    aget v0, v1, v5

    .line 162
    .local v0, aCoeff:I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_37
    if-ge v6, v4, :cond_50

    .line 163
    add-int v8, v5, v6

    add-int v9, v5, v6

    aget v9, v7, v9

    iget-object v10, p0, Lcom/google/zxing/common/reedsolomon/GF256Poly;->field:Lcom/google/zxing/common/reedsolomon/GF256;

    aget v11, v3, v6

    invoke-virtual {v10, v0, v11}, Lcom/google/zxing/common/reedsolomon/GF256;->multiply(II)I

    move-result v10

    invoke-static {v9, v10}, Lcom/google/zxing/common/reedsolomon/GF256;->addOrSubtract(II)I

    move-result v9

    aput v9, v7, v8

    .line 162
    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    .line 160
    :cond_50
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    .line 167
    .end local v0           #aCoeff:I
    .end local v6           #j:I
    :cond_53
    new-instance v8, Lcom/google/zxing/common/reedsolomon/GF256Poly;

    iget-object v9, p0, Lcom/google/zxing/common/reedsolomon/GF256Poly;->field:Lcom/google/zxing/common/reedsolomon/GF256;

    invoke-direct {v8, v9, v7}, Lcom/google/zxing/common/reedsolomon/GF256Poly;-><init>(Lcom/google/zxing/common/reedsolomon/GF256;[I)V

    goto :goto_24
.end method

.method multiplyByMonomial(II)Lcom/google/zxing/common/reedsolomon/GF256Poly;
    .registers 8
    .parameter "degree"
    .parameter "coefficient"

    .prologue
    .line 186
    if-gez p1, :cond_8

    .line 187
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 189
    :cond_8
    if-nez p2, :cond_11

    .line 190
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GF256Poly;->field:Lcom/google/zxing/common/reedsolomon/GF256;

    invoke-virtual {v3}, Lcom/google/zxing/common/reedsolomon/GF256;->getZero()Lcom/google/zxing/common/reedsolomon/GF256Poly;

    move-result-object v3

    .line 197
    :goto_10
    return-object v3

    .line 192
    :cond_11
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GF256Poly;->coefficients:[I

    array-length v2, v3

    .line 193
    .local v2, size:I
    add-int v3, v2, p1

    new-array v1, v3, [I

    .line 194
    .local v1, product:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    if-ge v0, v2, :cond_2a

    .line 195
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GF256Poly;->field:Lcom/google/zxing/common/reedsolomon/GF256;

    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/GF256Poly;->coefficients:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4, p2}, Lcom/google/zxing/common/reedsolomon/GF256;->multiply(II)I

    move-result v3

    aput v3, v1, v0

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 197
    :cond_2a
    new-instance v3, Lcom/google/zxing/common/reedsolomon/GF256Poly;

    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/GF256Poly;->field:Lcom/google/zxing/common/reedsolomon/GF256;

    invoke-direct {v3, v4, v1}, Lcom/google/zxing/common/reedsolomon/GF256Poly;-><init>(Lcom/google/zxing/common/reedsolomon/GF256;[I)V

    goto :goto_10
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 227
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/google/zxing/common/reedsolomon/GF256Poly;->getDegree()I

    move-result v4

    mul-int/lit8 v4, v4, 0x8

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 228
    .local v3, result:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/google/zxing/common/reedsolomon/GF256Poly;->getDegree()I

    move-result v2

    .local v2, degree:I
    :goto_10
    if-ltz v2, :cond_63

    .line 229
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/reedsolomon/GF256Poly;->getCoefficient(I)I

    move-result v1

    .line 230
    .local v1, coefficient:I
    if-eqz v1, :cond_3a

    .line 231
    if-gez v1, :cond_3d

    .line 232
    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    neg-int v1, v1

    .line 239
    :cond_20
    :goto_20
    if-eqz v2, :cond_24

    if-eq v1, v5, :cond_31

    .line 240
    :cond_24
    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/GF256Poly;->field:Lcom/google/zxing/common/reedsolomon/GF256;

    invoke-virtual {v4, v1}, Lcom/google/zxing/common/reedsolomon/GF256;->log(I)I

    move-result v0

    .line 241
    .local v0, alphaPower:I
    if-nez v0, :cond_49

    .line 242
    const/16 v4, 0x31

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 250
    .end local v0           #alphaPower:I
    :cond_31
    :goto_31
    if-eqz v2, :cond_3a

    .line 251
    if-ne v2, v5, :cond_5a

    .line 252
    const/16 v4, 0x78

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 228
    :cond_3a
    :goto_3a
    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    .line 235
    :cond_3d
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_20

    .line 236
    const-string v4, " + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_20

    .line 243
    .restart local v0       #alphaPower:I
    :cond_49
    if-ne v0, v5, :cond_51

    .line 244
    const/16 v4, 0x61

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_31

    .line 246
    :cond_51
    const-string v4, "a^"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_31

    .line 254
    .end local v0           #alphaPower:I
    :cond_5a
    const-string v4, "x^"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_3a

    .line 260
    .end local v1           #coefficient:I
    :cond_63
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
