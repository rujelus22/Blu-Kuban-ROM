.class public final Lcom/google/common/primitives/Floats;
.super Ljava/lang/Object;
.source "Floats.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Floats$FloatArrayAsList;,
        Lcom/google/common/primitives/Floats$LexicographicalComparator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([FFII)I
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 43
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Floats;->indexOf([FFII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([FFII)I
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 43
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Floats;->lastIndexOf([FFII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([F)Ljava/util/List;
    .registers 2
    .parameter "backingArray"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    array-length v0, p0

    if-nez v0, :cond_8

    .line 372
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 374
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/google/common/primitives/Floats$FloatArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Floats$FloatArrayAsList;-><init>([F)V

    goto :goto_7
.end method

.method public static compare(FF)I
    .registers 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 69
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public static varargs concat([[F)[F
    .registers 10
    .parameter "arrays"

    .prologue
    .line 220
    const/4 v4, 0x0

    .line 221
    .local v4, length:I
    move-object v0, p0

    .local v0, arr$:[[F
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_4
    if-ge v2, v3, :cond_d

    aget-object v1, v0, v2

    .line 222
    .local v1, array:[F
    array-length v7, v1

    add-int/2addr v4, v7

    .line 221
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 224
    .end local v1           #array:[F
    :cond_d
    new-array v6, v4, [F

    .line 225
    .local v6, result:[F
    const/4 v5, 0x0

    .line 226
    .local v5, pos:I
    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v3, :cond_21

    aget-object v1, v0, v2

    .line 227
    .restart local v1       #array:[F
    const/4 v7, 0x0

    array-length v8, v1

    invoke-static {v1, v7, v6, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    array-length v7, v1

    add-int/2addr v5, v7

    .line 226
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 230
    .end local v1           #array:[F
    :cond_21
    return-object v6
.end method

.method public static contains([FF)Z
    .registers 7
    .parameter "array"
    .parameter "target"

    .prologue
    .line 83
    move-object v0, p0

    .local v0, arr$:[F
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3
    if-ge v1, v2, :cond_10

    aget v3, v0, v1

    .line 84
    .local v3, value:F
    cmpl-float v4, v3, p1

    if-nez v4, :cond_d

    .line 85
    const/4 v4, 0x1

    .line 88
    .end local v3           #value:F
    :goto_c
    return v4

    .line 83
    .restart local v3       #value:F
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 88
    .end local v3           #value:F
    :cond_10
    const/4 v4, 0x0

    goto :goto_c
.end method

.method private static copyOf([FI)[F
    .registers 5
    .parameter "original"
    .parameter "length"

    .prologue
    const/4 v2, 0x0

    .line 260
    new-array v0, p1, [F

    .line 261
    .local v0, copy:[F
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 262
    return-object v0
.end method

.method public static ensureCapacity([FII)[F
    .registers 9
    .parameter "array"
    .parameter "minLength"
    .parameter "padding"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 251
    if-ltz p1, :cond_2c

    move v0, v1

    :goto_5
    const-string v3, "Invalid minLength: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 252
    if-ltz p2, :cond_2e

    move v0, v1

    :goto_15
    const-string v3, "Invalid padding: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 253
    array-length v0, p0

    if-ge v0, p1, :cond_2b

    add-int v0, p1, p2

    invoke-static {p0, v0}, Lcom/google/common/primitives/Floats;->copyOf([FI)[F

    move-result-object p0

    .end local p0
    :cond_2b
    return-object p0

    .restart local p0
    :cond_2c
    move v0, v2

    .line 251
    goto :goto_5

    :cond_2e
    move v0, v2

    .line 252
    goto :goto_15
.end method

.method public static hashCode(F)I
    .registers 2
    .parameter "value"

    .prologue
    .line 55
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->hashCode()I

    move-result v0

    return v0
.end method

.method public static indexOf([FF)I
    .registers 4
    .parameter "array"
    .parameter "target"

    .prologue
    .line 102
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Floats;->indexOf([FFII)I

    move-result v0

    return v0
.end method

.method private static indexOf([FFII)I
    .registers 6
    .parameter "array"
    .parameter "target"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 108
    move v0, p2

    .local v0, i:I
    :goto_1
    if-ge v0, p3, :cond_d

    .line 109
    aget v1, p0, v0

    cmpl-float v1, v1, p1

    if-nez v1, :cond_a

    .line 113
    .end local v0           #i:I
    :goto_9
    return v0

    .line 108
    .restart local v0       #i:I
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 113
    :cond_d
    const/4 v0, -0x1

    goto :goto_9
.end method

.method public static indexOf([F[F)I
    .registers 6
    .parameter "array"
    .parameter "target"

    .prologue
    .line 131
    const-string v2, "array"

    invoke-static {p0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v2, "target"

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    array-length v2, p1

    if-nez v2, :cond_f

    .line 134
    const/4 v0, 0x0

    .line 146
    :cond_e
    :goto_e
    return v0

    .line 138
    :cond_f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_2b

    .line 139
    const/4 v1, 0x0

    .local v1, j:I
    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_e

    .line 140
    add-int v2, v0, v1

    aget v2, p0, v2

    aget v3, p1, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_28

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 139
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 146
    .end local v1           #j:I
    :cond_2b
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public static varargs join(Ljava/lang/String;[F)Ljava/lang/String;
    .registers 6
    .parameter "separator"
    .parameter "array"

    .prologue
    .line 276
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    array-length v2, p1

    if-nez v2, :cond_9

    .line 278
    const-string v2, ""

    .line 287
    :goto_8
    return-object v2

    .line 282
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0xc

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 283
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 284
    const/4 v1, 0x1

    .local v1, i:I
    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_27

    .line 285
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 287
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8
.end method

.method public static lastIndexOf([FF)I
    .registers 4
    .parameter "array"
    .parameter "target"

    .prologue
    .line 160
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Floats;->lastIndexOf([FFII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([FFII)I
    .registers 6
    .parameter "array"
    .parameter "target"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 166
    add-int/lit8 v0, p3, -0x1

    .local v0, i:I
    :goto_2
    if-lt v0, p2, :cond_e

    .line 167
    aget v1, p0, v0

    cmpl-float v1, v1, p1

    if-nez v1, :cond_b

    .line 171
    .end local v0           #i:I
    :goto_a
    return v0

    .line 166
    .restart local v0       #i:I
    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 171
    :cond_e
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[F>;"
        }
    .end annotation

    .prologue
    .line 307
    sget-object v0, Lcom/google/common/primitives/Floats$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Floats$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([F)F
    .registers 5
    .parameter "array"

    .prologue
    const/4 v3, 0x0

    .line 202
    array-length v2, p0

    if-lez v2, :cond_17

    const/4 v2, 0x1

    :goto_5
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 203
    aget v1, p0, v3

    .line 204
    .local v1, max:F
    const/4 v0, 0x1

    .local v0, i:I
    :goto_b
    array-length v2, p0

    if-ge v0, v2, :cond_19

    .line 205
    aget v2, p0, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .end local v0           #i:I
    .end local v1           #max:F
    :cond_17
    move v2, v3

    .line 202
    goto :goto_5

    .line 207
    .restart local v0       #i:I
    .restart local v1       #max:F
    :cond_19
    return v1
.end method

.method public static varargs min([F)F
    .registers 5
    .parameter "array"

    .prologue
    const/4 v3, 0x0

    .line 184
    array-length v2, p0

    if-lez v2, :cond_17

    const/4 v2, 0x1

    :goto_5
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 185
    aget v1, p0, v3

    .line 186
    .local v1, min:F
    const/4 v0, 0x1

    .local v0, i:I
    :goto_b
    array-length v2, p0

    if-ge v0, v2, :cond_19

    .line 187
    aget v2, p0, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .end local v0           #i:I
    .end local v1           #min:F
    :cond_17
    move v2, v3

    .line 184
    goto :goto_5

    .line 189
    .restart local v0       #i:I
    .restart local v1       #min:F
    :cond_19
    return v1
.end method

.method public static toArray(Ljava/util/Collection;)[F
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Float;",
            ">;)[F"
        }
    .end annotation

    .prologue
    .line 340
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Float;>;"
    instance-of v4, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;

    if-eqz v4, :cond_b

    .line 341
    check-cast p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;

    .end local p0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Float;>;"
    invoke-virtual {p0}, Lcom/google/common/primitives/Floats$FloatArrayAsList;->toFloatArray()[F

    move-result-object v0

    .line 350
    .local v0, array:[F
    .local v1, boxedArray:[Ljava/lang/Object;
    .local v2, i:I
    .local v3, len:I
    .restart local p0       #collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Float;>;"
    :cond_a
    return-object v0

    .line 344
    .end local v0           #array:[F
    .end local v1           #boxedArray:[Ljava/lang/Object;
    .end local v2           #i:I
    .end local v3           #len:I
    :cond_b
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 345
    .restart local v1       #boxedArray:[Ljava/lang/Object;
    array-length v3, v1

    .line 346
    .restart local v3       #len:I
    new-array v0, v3, [F

    .line 347
    .restart local v0       #array:[F
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_13
    if-ge v2, v3, :cond_a

    .line 348
    aget-object v4, v1, v2

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v0, v2

    .line 347
    add-int/lit8 v2, v2, 0x1

    goto :goto_13
.end method
