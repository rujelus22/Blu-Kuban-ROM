.class public final Lcom/google/common/primitives/Booleans;
.super Ljava/lang/Object;
.source "Booleans.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Booleans$BooleanArrayAsList;,
        Lcom/google/common/primitives/Booleans$LexicographicalComparator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([ZZII)I
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 44
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Booleans;->indexOf([ZZII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([ZZII)I
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 44
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Booleans;->lastIndexOf([ZZII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([Z)Ljava/util/List;
    .registers 2
    .parameter "backingArray"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    array-length v0, p0

    if-nez v0, :cond_8

    .line 338
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 340
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;-><init>([Z)V

    goto :goto_7
.end method

.method public static compare(ZZ)I
    .registers 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 69
    if-ne p0, p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    if-eqz p0, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, -0x1

    goto :goto_3
.end method

.method public static varargs concat([[Z)[Z
    .registers 10
    .parameter "arrays"

    .prologue
    .line 187
    const/4 v4, 0x0

    .line 188
    .local v4, length:I
    move-object v0, p0

    .local v0, arr$:[[Z
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_4
    if-ge v2, v3, :cond_d

    aget-object v1, v0, v2

    .line 189
    .local v1, array:[Z
    array-length v7, v1

    add-int/2addr v4, v7

    .line 188
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 191
    .end local v1           #array:[Z
    :cond_d
    new-array v6, v4, [Z

    .line 192
    .local v6, result:[Z
    const/4 v5, 0x0

    .line 193
    .local v5, pos:I
    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v3, :cond_21

    aget-object v1, v0, v2

    .line 194
    .restart local v1       #array:[Z
    const/4 v7, 0x0

    array-length v8, v1

    invoke-static {v1, v7, v6, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    array-length v7, v1

    add-int/2addr v5, v7

    .line 193
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 197
    .end local v1           #array:[Z
    :cond_21
    return-object v6
.end method

.method public static contains([ZZ)Z
    .registers 7
    .parameter "array"
    .parameter "target"

    .prologue
    .line 87
    move-object v0, p0

    .local v0, arr$:[Z
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3
    if-ge v1, v2, :cond_e

    aget-boolean v3, v0, v1

    .line 88
    .local v3, value:Z
    if-ne v3, p1, :cond_b

    .line 89
    const/4 v4, 0x1

    .line 92
    .end local v3           #value:Z
    :goto_a
    return v4

    .line 87
    .restart local v3       #value:Z
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 92
    .end local v3           #value:Z
    :cond_e
    const/4 v4, 0x0

    goto :goto_a
.end method

.method private static copyOf([ZI)[Z
    .registers 5
    .parameter "original"
    .parameter "length"

    .prologue
    const/4 v2, 0x0

    .line 227
    new-array v0, p1, [Z

    .line 228
    .local v0, copy:[Z
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    return-object v0
.end method

.method public static ensureCapacity([ZII)[Z
    .registers 9
    .parameter "array"
    .parameter "minLength"
    .parameter "padding"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 218
    if-ltz p1, :cond_2c

    move v0, v1

    :goto_5
    const-string v3, "Invalid minLength: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 219
    if-ltz p2, :cond_2e

    move v0, v1

    :goto_15
    const-string v3, "Invalid padding: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 220
    array-length v0, p0

    if-ge v0, p1, :cond_2b

    add-int v0, p1, p2

    invoke-static {p0, v0}, Lcom/google/common/primitives/Booleans;->copyOf([ZI)[Z

    move-result-object p0

    .end local p0
    :cond_2b
    return-object p0

    .restart local p0
    :cond_2c
    move v0, v2

    .line 218
    goto :goto_5

    :cond_2e
    move v0, v2

    .line 219
    goto :goto_15
.end method

.method public static hashCode(Z)I
    .registers 2
    .parameter "value"

    .prologue
    .line 55
    if-eqz p0, :cond_5

    const/16 v0, 0x4cf

    :goto_4
    return v0

    :cond_5
    const/16 v0, 0x4d5

    goto :goto_4
.end method

.method public static indexOf([ZZ)I
    .registers 4
    .parameter "array"
    .parameter "target"

    .prologue
    .line 109
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Booleans;->indexOf([ZZII)I

    move-result v0

    return v0
.end method

.method private static indexOf([ZZII)I
    .registers 6
    .parameter "array"
    .parameter "target"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 115
    move v0, p2

    .local v0, i:I
    :goto_1
    if-ge v0, p3, :cond_b

    .line 116
    aget-boolean v1, p0, v0

    if-ne v1, p1, :cond_8

    .line 120
    .end local v0           #i:I
    :goto_7
    return v0

    .line 115
    .restart local v0       #i:I
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 120
    :cond_b
    const/4 v0, -0x1

    goto :goto_7
.end method

.method public static indexOf([Z[Z)I
    .registers 6
    .parameter "array"
    .parameter "target"

    .prologue
    .line 135
    const-string v2, "array"

    invoke-static {p0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v2, "target"

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    array-length v2, p1

    if-nez v2, :cond_f

    .line 138
    const/4 v0, 0x0

    .line 150
    :cond_e
    :goto_e
    return v0

    .line 142
    :cond_f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_29

    .line 143
    const/4 v1, 0x0

    .local v1, j:I
    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_e

    .line 144
    add-int v2, v0, v1

    aget-boolean v2, p0, v2

    aget-boolean v3, p1, v1

    if-eq v2, v3, :cond_26

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 143
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 150
    .end local v1           #j:I
    :cond_29
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public static varargs join(Ljava/lang/String;[Z)Ljava/lang/String;
    .registers 6
    .parameter "separator"
    .parameter "array"

    .prologue
    .line 242
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    array-length v2, p1

    if-nez v2, :cond_9

    .line 244
    const-string v2, ""

    .line 253
    :goto_8
    return-object v2

    .line 248
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x7

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 249
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget-boolean v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 250
    const/4 v1, 0x1

    .local v1, i:I
    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_27

    .line 251
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-boolean v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 250
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 253
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8
.end method

.method public static lastIndexOf([ZZ)I
    .registers 4
    .parameter "array"
    .parameter "target"

    .prologue
    .line 163
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Booleans;->lastIndexOf([ZZII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([ZZII)I
    .registers 6
    .parameter "array"
    .parameter "target"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 169
    add-int/lit8 v0, p3, -0x1

    .local v0, i:I
    :goto_2
    if-lt v0, p2, :cond_c

    .line 170
    aget-boolean v1, p0, v0

    if-ne v1, p1, :cond_9

    .line 174
    .end local v0           #i:I
    :goto_8
    return v0

    .line 169
    .restart local v0       #i:I
    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 174
    :cond_c
    const/4 v0, -0x1

    goto :goto_8
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[Z>;"
        }
    .end annotation

    .prologue
    .line 273
    sget-object v0, Lcom/google/common/primitives/Booleans$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Booleans$LexicographicalComparator;

    return-object v0
.end method

.method public static toArray(Ljava/util/Collection;)[Z
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Boolean;",
            ">;)[Z"
        }
    .end annotation

    .prologue
    .line 309
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Boolean;>;"
    instance-of v4, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;

    if-eqz v4, :cond_b

    .line 310
    check-cast p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;

    .end local p0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->toBooleanArray()[Z

    move-result-object v0

    .line 319
    .local v0, array:[Z
    .local v1, boxedArray:[Ljava/lang/Object;
    .local v2, i:I
    .local v3, len:I
    .restart local p0       #collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Boolean;>;"
    :cond_a
    return-object v0

    .line 313
    .end local v0           #array:[Z
    .end local v1           #boxedArray:[Ljava/lang/Object;
    .end local v2           #i:I
    .end local v3           #len:I
    :cond_b
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 314
    .restart local v1       #boxedArray:[Ljava/lang/Object;
    array-length v3, v1

    .line 315
    .restart local v3       #len:I
    new-array v0, v3, [Z

    .line 316
    .restart local v0       #array:[Z
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_13
    if-ge v2, v3, :cond_a

    .line 317
    aget-object v4, v1, v2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    aput-boolean v4, v0, v2

    .line 316
    add-int/lit8 v2, v2, 0x1

    goto :goto_13
.end method
