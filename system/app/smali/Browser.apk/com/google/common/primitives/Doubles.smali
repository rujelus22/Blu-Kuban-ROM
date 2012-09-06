.class public final Lcom/google/common/primitives/Doubles;
.super Ljava/lang/Object;
.source "Doubles.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Doubles$DoubleArrayAsList;,
        Lcom/google/common/primitives/Doubles$LexicographicalComparator;
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

.method static synthetic access$000([DDII)I
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 43
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Doubles;->indexOf([DDII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([DDII)I
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 43
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Doubles;->lastIndexOf([DDII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([D)Ljava/util/List;
    .registers 2
    .parameter "backingArray"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    array-length v0, p0

    if-nez v0, :cond_8

    .line 375
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 377
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;-><init>([D)V

    goto :goto_7
.end method

.method public static compare(DD)I
    .registers 5
    .parameter "a"
    .parameter "b"

    .prologue
    .line 72
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public static varargs concat([[D)[D
    .registers 10
    .parameter "arrays"

    .prologue
    .line 223
    const/4 v4, 0x0

    .line 224
    .local v4, length:I
    move-object v0, p0

    .local v0, arr$:[[D
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_4
    if-ge v2, v3, :cond_d

    aget-object v1, v0, v2

    .line 225
    .local v1, array:[D
    array-length v7, v1

    add-int/2addr v4, v7

    .line 224
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 227
    .end local v1           #array:[D
    :cond_d
    new-array v6, v4, [D

    .line 228
    .local v6, result:[D
    const/4 v5, 0x0

    .line 229
    .local v5, pos:I
    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v3, :cond_21

    aget-object v1, v0, v2

    .line 230
    .restart local v1       #array:[D
    const/4 v7, 0x0

    array-length v8, v1

    invoke-static {v1, v7, v6, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 231
    array-length v7, v1

    add-int/2addr v5, v7

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 233
    .end local v1           #array:[D
    :cond_21
    return-object v6
.end method

.method public static contains([DD)Z
    .registers 9
    .parameter "array"
    .parameter "target"

    .prologue
    .line 86
    move-object v0, p0

    .local v0, arr$:[D
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3
    if-ge v1, v2, :cond_10

    aget-wide v3, v0, v1

    .line 87
    .local v3, value:D
    cmpl-double v5, v3, p1

    if-nez v5, :cond_d

    .line 88
    const/4 v5, 0x1

    .line 91
    .end local v3           #value:D
    :goto_c
    return v5

    .line 86
    .restart local v3       #value:D
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 91
    .end local v3           #value:D
    :cond_10
    const/4 v5, 0x0

    goto :goto_c
.end method

.method private static copyOf([DI)[D
    .registers 5
    .parameter "original"
    .parameter "length"

    .prologue
    const/4 v2, 0x0

    .line 263
    new-array v0, p1, [D

    .line 264
    .local v0, copy:[D
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    return-object v0
.end method

.method public static ensureCapacity([DII)[D
    .registers 9
    .parameter "array"
    .parameter "minLength"
    .parameter "padding"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 254
    if-ltz p1, :cond_2c

    move v0, v1

    :goto_5
    const-string v3, "Invalid minLength: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 255
    if-ltz p2, :cond_2e

    move v0, v1

    :goto_15
    const-string v3, "Invalid padding: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 256
    array-length v0, p0

    if-ge v0, p1, :cond_2b

    add-int v0, p1, p2

    invoke-static {p0, v0}, Lcom/google/common/primitives/Doubles;->copyOf([DI)[D

    move-result-object p0

    .end local p0
    :cond_2b
    return-object p0

    .restart local p0
    :cond_2c
    move v0, v2

    .line 254
    goto :goto_5

    :cond_2e
    move v0, v2

    .line 255
    goto :goto_15
.end method

.method public static hashCode(D)I
    .registers 3
    .parameter "value"

    .prologue
    .line 54
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    return v0
.end method

.method public static indexOf([DD)I
    .registers 5
    .parameter "array"
    .parameter "target"

    .prologue
    .line 105
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/common/primitives/Doubles;->indexOf([DDII)I

    move-result v0

    return v0
.end method

.method private static indexOf([DDII)I
    .registers 8
    .parameter "array"
    .parameter "target"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 111
    move v0, p3

    .local v0, i:I
    :goto_1
    if-ge v0, p4, :cond_d

    .line 112
    aget-wide v1, p0, v0

    cmpl-double v1, v1, p1

    if-nez v1, :cond_a

    .line 116
    .end local v0           #i:I
    :goto_9
    return v0

    .line 111
    .restart local v0       #i:I
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 116
    :cond_d
    const/4 v0, -0x1

    goto :goto_9
.end method

.method public static indexOf([D[D)I
    .registers 8
    .parameter "array"
    .parameter "target"

    .prologue
    .line 134
    const-string v2, "array"

    invoke-static {p0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v2, "target"

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    array-length v2, p1

    if-nez v2, :cond_f

    .line 137
    const/4 v0, 0x0

    .line 149
    :cond_e
    :goto_e
    return v0

    .line 141
    :cond_f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_2b

    .line 142
    const/4 v1, 0x0

    .local v1, j:I
    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_e

    .line 143
    add-int v2, v0, v1

    aget-wide v2, p0, v2

    aget-wide v4, p1, v1

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_28

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 142
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 149
    .end local v1           #j:I
    :cond_2b
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public static varargs join(Ljava/lang/String;[D)Ljava/lang/String;
    .registers 7
    .parameter "separator"
    .parameter "array"

    .prologue
    .line 279
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    array-length v2, p1

    if-nez v2, :cond_9

    .line 281
    const-string v2, ""

    .line 290
    :goto_8
    return-object v2

    .line 285
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0xc

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 286
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget-wide v2, p1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 287
    const/4 v1, 0x1

    .local v1, i:I
    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_27

    .line 288
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-wide v3, p1, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 290
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8
.end method

.method public static lastIndexOf([DD)I
    .registers 5
    .parameter "array"
    .parameter "target"

    .prologue
    .line 163
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/common/primitives/Doubles;->lastIndexOf([DDII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([DDII)I
    .registers 8
    .parameter "array"
    .parameter "target"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 169
    add-int/lit8 v0, p4, -0x1

    .local v0, i:I
    :goto_2
    if-lt v0, p3, :cond_e

    .line 170
    aget-wide v1, p0, v0

    cmpl-double v1, v1, p1

    if-nez v1, :cond_b

    .line 174
    .end local v0           #i:I
    :goto_a
    return v0

    .line 169
    .restart local v0       #i:I
    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 174
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
            "<[D>;"
        }
    .end annotation

    .prologue
    .line 310
    sget-object v0, Lcom/google/common/primitives/Doubles$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Doubles$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([D)D
    .registers 6
    .parameter "array"

    .prologue
    const/4 v4, 0x0

    .line 205
    array-length v3, p0

    if-lez v3, :cond_17

    const/4 v3, 0x1

    :goto_5
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 206
    aget-wide v1, p0, v4

    .line 207
    .local v1, max:D
    const/4 v0, 0x1

    .local v0, i:I
    :goto_b
    array-length v3, p0

    if-ge v0, v3, :cond_19

    .line 208
    aget-wide v3, p0, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .end local v0           #i:I
    .end local v1           #max:D
    :cond_17
    move v3, v4

    .line 205
    goto :goto_5

    .line 210
    .restart local v0       #i:I
    .restart local v1       #max:D
    :cond_19
    return-wide v1
.end method

.method public static varargs min([D)D
    .registers 6
    .parameter "array"

    .prologue
    const/4 v4, 0x0

    .line 187
    array-length v3, p0

    if-lez v3, :cond_17

    const/4 v3, 0x1

    :goto_5
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 188
    aget-wide v1, p0, v4

    .line 189
    .local v1, min:D
    const/4 v0, 0x1

    .local v0, i:I
    :goto_b
    array-length v3, p0

    if-ge v0, v3, :cond_19

    .line 190
    aget-wide v3, p0, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .end local v0           #i:I
    .end local v1           #min:D
    :cond_17
    move v3, v4

    .line 187
    goto :goto_5

    .line 192
    .restart local v0       #i:I
    .restart local v1       #min:D
    :cond_19
    return-wide v1
.end method

.method public static toArray(Ljava/util/Collection;)[D
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Double;",
            ">;)[D"
        }
    .end annotation

    .prologue
    .line 343
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Double;>;"
    instance-of v4, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;

    if-eqz v4, :cond_b

    .line 344
    check-cast p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;

    .end local p0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Double;>;"
    invoke-virtual {p0}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->toDoubleArray()[D

    move-result-object v0

    .line 353
    .local v0, array:[D
    .local v1, boxedArray:[Ljava/lang/Object;
    .local v2, i:I
    .local v3, len:I
    .restart local p0       #collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Double;>;"
    :cond_a
    return-object v0

    .line 347
    .end local v0           #array:[D
    .end local v1           #boxedArray:[Ljava/lang/Object;
    .end local v2           #i:I
    .end local v3           #len:I
    :cond_b
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 348
    .restart local v1       #boxedArray:[Ljava/lang/Object;
    array-length v3, v1

    .line 349
    .restart local v3       #len:I
    new-array v0, v3, [D

    .line 350
    .restart local v0       #array:[D
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_13
    if-ge v2, v3, :cond_a

    .line 351
    aget-object v4, v1, v2

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    aput-wide v4, v0, v2

    .line 350
    add-int/lit8 v2, v2, 0x1

    goto :goto_13
.end method
