.class public final Lcom/google/common/primitives/Bytes;
.super Ljava/lang/Object;
.source "Bytes.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Bytes$ByteArrayAsList;
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

.method static synthetic access$000([BBII)I
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 44
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Bytes;->indexOf([BBII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([BBII)I
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 44
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Bytes;->lastIndexOf([BBII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([B)Ljava/util/List;
    .registers 2
    .parameter "backingArray"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    array-length v0, p0

    if-nez v0, :cond_8

    .line 253
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 255
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;-><init>([B)V

    goto :goto_7
.end method

.method public static varargs concat([[B)[B
    .registers 10
    .parameter "arrays"

    .prologue
    .line 164
    const/4 v4, 0x0

    .line 165
    .local v4, length:I
    move-object v0, p0

    .local v0, arr$:[[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_4
    if-ge v2, v3, :cond_d

    aget-object v1, v0, v2

    .line 166
    .local v1, array:[B
    array-length v7, v1

    add-int/2addr v4, v7

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 168
    .end local v1           #array:[B
    :cond_d
    new-array v6, v4, [B

    .line 169
    .local v6, result:[B
    const/4 v5, 0x0

    .line 170
    .local v5, pos:I
    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v3, :cond_21

    aget-object v1, v0, v2

    .line 171
    .restart local v1       #array:[B
    const/4 v7, 0x0

    array-length v8, v1

    invoke-static {v1, v7, v6, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    array-length v7, v1

    add-int/2addr v5, v7

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 174
    .end local v1           #array:[B
    :cond_21
    return-object v6
.end method

.method public static contains([BB)Z
    .registers 7
    .parameter "array"
    .parameter "target"

    .prologue
    .line 68
    move-object v0, p0

    .local v0, arr$:[B
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3
    if-ge v1, v2, :cond_e

    aget-byte v3, v0, v1

    .line 69
    .local v3, value:B
    if-ne v3, p1, :cond_b

    .line 70
    const/4 v4, 0x1

    .line 73
    .end local v3           #value:B
    :goto_a
    return v4

    .line 68
    .restart local v3       #value:B
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 73
    .end local v3           #value:B
    :cond_e
    const/4 v4, 0x0

    goto :goto_a
.end method

.method private static copyOf([BI)[B
    .registers 5
    .parameter "original"
    .parameter "length"

    .prologue
    const/4 v2, 0x0

    .line 204
    new-array v0, p1, [B

    .line 205
    .local v0, copy:[B
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 206
    return-object v0
.end method

.method public static ensureCapacity([BII)[B
    .registers 9
    .parameter "array"
    .parameter "minLength"
    .parameter "padding"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 195
    if-ltz p1, :cond_2c

    move v0, v1

    :goto_5
    const-string v3, "Invalid minLength: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 196
    if-ltz p2, :cond_2e

    move v0, v1

    :goto_15
    const-string v3, "Invalid padding: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 197
    array-length v0, p0

    if-ge v0, p1, :cond_2b

    add-int v0, p1, p2

    invoke-static {p0, v0}, Lcom/google/common/primitives/Bytes;->copyOf([BI)[B

    move-result-object p0

    .end local p0
    :cond_2b
    return-object p0

    .restart local p0
    :cond_2c
    move v0, v2

    .line 195
    goto :goto_5

    :cond_2e
    move v0, v2

    .line 196
    goto :goto_15
.end method

.method public static hashCode(B)I
    .registers 1
    .parameter "value"

    .prologue
    .line 55
    return p0
.end method

.method public static indexOf([BB)I
    .registers 4
    .parameter "array"
    .parameter "target"

    .prologue
    .line 86
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Bytes;->indexOf([BBII)I

    move-result v0

    return v0
.end method

.method private static indexOf([BBII)I
    .registers 6
    .parameter "array"
    .parameter "target"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 92
    move v0, p2

    .local v0, i:I
    :goto_1
    if-ge v0, p3, :cond_b

    .line 93
    aget-byte v1, p0, v0

    if-ne v1, p1, :cond_8

    .line 97
    .end local v0           #i:I
    :goto_7
    return v0

    .line 92
    .restart local v0       #i:I
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 97
    :cond_b
    const/4 v0, -0x1

    goto :goto_7
.end method

.method public static indexOf([B[B)I
    .registers 6
    .parameter "array"
    .parameter "target"

    .prologue
    .line 112
    const-string v2, "array"

    invoke-static {p0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v2, "target"

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    array-length v2, p1

    if-nez v2, :cond_f

    .line 115
    const/4 v0, 0x0

    .line 127
    :cond_e
    :goto_e
    return v0

    .line 119
    :cond_f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_29

    .line 120
    const/4 v1, 0x0

    .local v1, j:I
    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_e

    .line 121
    add-int v2, v0, v1

    aget-byte v2, p0, v2

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_26

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 120
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 127
    .end local v1           #j:I
    :cond_29
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public static lastIndexOf([BB)I
    .registers 4
    .parameter "array"
    .parameter "target"

    .prologue
    .line 140
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Bytes;->lastIndexOf([BBII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([BBII)I
    .registers 6
    .parameter "array"
    .parameter "target"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 146
    add-int/lit8 v0, p3, -0x1

    .local v0, i:I
    :goto_2
    if-lt v0, p2, :cond_c

    .line 147
    aget-byte v1, p0, v0

    if-ne v1, p1, :cond_9

    .line 151
    .end local v0           #i:I
    :goto_8
    return v0

    .line 146
    .restart local v0       #i:I
    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 151
    :cond_c
    const/4 v0, -0x1

    goto :goto_8
.end method

.method public static toArray(Ljava/util/Collection;)[B
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Byte;>;"
    instance-of v4, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;

    if-eqz v4, :cond_b

    .line 225
    check-cast p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;

    .end local p0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Byte;>;"
    invoke-virtual {p0}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->toByteArray()[B

    move-result-object v0

    .line 234
    .local v0, array:[B
    .local v1, boxedArray:[Ljava/lang/Object;
    .local v2, i:I
    .local v3, len:I
    .restart local p0       #collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Byte;>;"
    :cond_a
    return-object v0

    .line 228
    .end local v0           #array:[B
    .end local v1           #boxedArray:[Ljava/lang/Object;
    .end local v2           #i:I
    .end local v3           #len:I
    :cond_b
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 229
    .restart local v1       #boxedArray:[Ljava/lang/Object;
    array-length v3, v1

    .line 230
    .restart local v3       #len:I
    new-array v0, v3, [B

    .line 231
    .restart local v0       #array:[B
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_13
    if-ge v2, v3, :cond_a

    .line 232
    aget-object v4, v1, v2

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    aput-byte v4, v0, v2

    .line 231
    add-int/lit8 v2, v2, 0x1

    goto :goto_13
.end method
