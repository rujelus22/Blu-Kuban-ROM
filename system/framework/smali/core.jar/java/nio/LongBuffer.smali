.class public abstract Ljava/nio/LongBuffer;
.super Ljava/nio/Buffer;
.source "LongBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/LongBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 4
    .parameter "capacity"

    .prologue
    .line 95
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Ljava/nio/Buffer;-><init>(IILjava/nio/MemoryBlock;)V

    .line 96
    return-void
.end method

.method public static allocate(I)Ljava/nio/LongBuffer;
    .registers 2
    .parameter "capacity"

    .prologue
    .line 48
    if-gez p0, :cond_8

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 51
    :cond_8
    new-instance v0, Ljava/nio/ReadWriteLongArrayBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteLongArrayBuffer;-><init>(I)V

    return-object v0
.end method

.method public static wrap([J)Ljava/nio/LongBuffer;
    .registers 3
    .parameter "array"

    .prologue
    .line 65
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/nio/LongBuffer;->wrap([JII)Ljava/nio/LongBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrap([JII)Ljava/nio/LongBuffer;
    .registers 5
    .parameter "array"
    .parameter "start"
    .parameter "longCount"

    .prologue
    .line 87
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 88
    new-instance v0, Ljava/nio/ReadWriteLongArrayBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteLongArrayBuffer;-><init>([J)V

    .line 89
    .local v0, buf:Ljava/nio/LongBuffer;
    iput p1, v0, Ljava/nio/Buffer;->position:I

    .line 90
    add-int v1, p1, p2

    iput v1, v0, Ljava/nio/Buffer;->limit:I

    .line 91
    return-object v0
.end method


# virtual methods
.method public bridge synthetic array()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->array()[J

    move-result-object v0

    return-object v0
.end method

.method public final array()[J
    .registers 2

    .prologue
    .line 99
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->protectedArray()[J

    move-result-object v0

    return-object v0
.end method

.method public final arrayOffset()I
    .registers 2

    .prologue
    .line 103
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->protectedArrayOffset()I

    move-result v0

    return v0
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/LongBuffer;
.end method

.method public abstract compact()Ljava/nio/LongBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 35
    check-cast p1, Ljava/nio/LongBuffer;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/nio/LongBuffer;->compareTo(Ljava/nio/LongBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/nio/LongBuffer;)I
    .registers 11
    .parameter "otherBuffer"

    .prologue
    .line 147
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v7

    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    move-result v8

    if-ge v7, v8, :cond_26

    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v0

    .line 149
    .local v0, compareRemaining:I
    :goto_e
    iget v6, p0, Ljava/nio/Buffer;->position:I

    .line 150
    .local v6, thisPos:I
    iget v3, p1, Ljava/nio/Buffer;->position:I

    .line 152
    .local v3, otherPos:I
    :goto_12
    if-lez v0, :cond_34

    .line 153
    invoke-virtual {p0, v6}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v4

    .line 154
    .local v4, thisLong:J
    invoke-virtual {p1, v3}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v1

    .line 155
    .local v1, otherLong:J
    cmp-long v7, v4, v1

    if-eqz v7, :cond_2d

    .line 156
    cmp-long v7, v4, v1

    if-gez v7, :cond_2b

    const/4 v7, -0x1

    .line 162
    .end local v1           #otherLong:J
    .end local v4           #thisLong:J
    :goto_25
    return v7

    .line 147
    .end local v0           #compareRemaining:I
    .end local v3           #otherPos:I
    .end local v6           #thisPos:I
    :cond_26
    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    move-result v0

    goto :goto_e

    .line 156
    .restart local v0       #compareRemaining:I
    .restart local v1       #otherLong:J
    .restart local v3       #otherPos:I
    .restart local v4       #thisLong:J
    .restart local v6       #thisPos:I
    :cond_2b
    const/4 v7, 0x1

    goto :goto_25

    .line 158
    :cond_2d
    add-int/lit8 v6, v6, 0x1

    .line 159
    add-int/lit8 v3, v3, 0x1

    .line 160
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    .line 162
    .end local v1           #otherLong:J
    .end local v4           #thisLong:J
    :cond_34
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v7

    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    move-result v8

    sub-int/2addr v7, v8

    goto :goto_25
.end method

.method public abstract duplicate()Ljava/nio/LongBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 13
    .parameter "other"

    .prologue
    const/4 v6, 0x0

    .line 194
    instance-of v7, p1, Ljava/nio/LongBuffer;

    if-nez v7, :cond_6

    .line 210
    :cond_5
    :goto_5
    return v6

    :cond_6
    move-object v3, p1

    .line 197
    check-cast v3, Ljava/nio/LongBuffer;

    .line 199
    .local v3, otherBuffer:Ljava/nio/LongBuffer;
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v7

    invoke-virtual {v3}, Ljava/nio/LongBuffer;->remaining()I

    move-result v8

    if-ne v7, v8, :cond_5

    .line 203
    iget v1, p0, Ljava/nio/Buffer;->position:I

    .line 204
    .local v1, myPosition:I
    iget v4, v3, Ljava/nio/Buffer;->position:I

    .line 205
    .local v4, otherPosition:I
    const/4 v0, 0x1

    .local v0, equalSoFar:Z
    move v5, v4

    .end local v4           #otherPosition:I
    .local v5, otherPosition:I
    move v2, v1

    .line 206
    .end local v1           #myPosition:I
    .local v2, myPosition:I
    :goto_1a
    if-eqz v0, :cond_36

    iget v7, p0, Ljava/nio/Buffer;->limit:I

    if-ge v2, v7, :cond_36

    .line 207
    add-int/lit8 v1, v2, 0x1

    .end local v2           #myPosition:I
    .restart local v1       #myPosition:I
    invoke-virtual {p0, v2}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v7

    add-int/lit8 v4, v5, 0x1

    .end local v5           #otherPosition:I
    .restart local v4       #otherPosition:I
    invoke-virtual {v3, v5}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_34

    const/4 v0, 0x1

    :goto_31
    move v5, v4

    .end local v4           #otherPosition:I
    .restart local v5       #otherPosition:I
    move v2, v1

    .end local v1           #myPosition:I
    .restart local v2       #myPosition:I
    goto :goto_1a

    .end local v2           #myPosition:I
    .end local v5           #otherPosition:I
    .restart local v1       #myPosition:I
    .restart local v4       #otherPosition:I
    :cond_34
    move v0, v6

    goto :goto_31

    .end local v1           #myPosition:I
    .end local v4           #otherPosition:I
    .restart local v2       #myPosition:I
    .restart local v5       #otherPosition:I
    :cond_36
    move v6, v0

    .line 210
    goto :goto_5
.end method

.method public abstract get()J
.end method

.method public abstract get(I)J
.end method

.method public get([J)Ljava/nio/LongBuffer;
    .registers 4
    .parameter "dst"

    .prologue
    .line 236
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/LongBuffer;->get([JII)Ljava/nio/LongBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get([JII)Ljava/nio/LongBuffer;
    .registers 7
    .parameter "dst"
    .parameter "dstOffset"
    .parameter "longCount"

    .prologue
    .line 259
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 260
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_10

    .line 261
    new-instance v1, Ljava/nio/BufferUnderflowException;

    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v1

    .line 263
    :cond_10
    move v0, p2

    .local v0, i:I
    :goto_11
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1e

    .line 264
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->get()J

    move-result-wide v1

    aput-wide v1, p1, v0

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 266
    :cond_1e
    return-object p0
.end method

.method public final hasArray()Z
    .registers 2

    .prologue
    .line 281
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->protectedHasArray()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 9

    .prologue
    .line 292
    iget v3, p0, Ljava/nio/Buffer;->position:I

    .line 293
    .local v3, myPosition:I
    const/4 v0, 0x0

    .line 295
    .local v0, hash:I
    :goto_3
    iget v5, p0, Ljava/nio/Buffer;->limit:I

    if-ge v3, v5, :cond_18

    .line 296
    add-int/lit8 v4, v3, 0x1

    .end local v3           #myPosition:I
    .local v4, myPosition:I
    invoke-virtual {p0, v3}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v1

    .line 297
    .local v1, l:J
    long-to-int v5, v1

    add-int/2addr v5, v0

    const/16 v6, 0x20

    shr-long v6, v1, v6

    long-to-int v6, v6

    xor-int v0, v5, v6

    move v3, v4

    .end local v4           #myPosition:I
    .restart local v3       #myPosition:I
    goto :goto_3

    .line 299
    .end local v1           #l:J
    :cond_18
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public abstract order()Ljava/nio/ByteOrder;
.end method

.method abstract protectedArray()[J
.end method

.method abstract protectedArrayOffset()I
.end method

.method abstract protectedHasArray()Z
.end method

.method public abstract put(IJ)Ljava/nio/LongBuffer;
.end method

.method public abstract put(J)Ljava/nio/LongBuffer;
.end method

.method public put(Ljava/nio/LongBuffer;)Ljava/nio/LongBuffer;
    .registers 5
    .parameter "src"

    .prologue
    .line 429
    if-ne p1, p0, :cond_8

    .line 430
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 432
    :cond_8
    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_18

    .line 433
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 435
    :cond_18
    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    move-result v1

    new-array v0, v1, [J

    .line 436
    .local v0, contents:[J
    invoke-virtual {p1, v0}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    .line 437
    invoke-virtual {p0, v0}, Ljava/nio/LongBuffer;->put([J)Ljava/nio/LongBuffer;

    .line 438
    return-object p0
.end method

.method public final put([J)Ljava/nio/LongBuffer;
    .registers 4
    .parameter "src"

    .prologue
    .line 377
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/LongBuffer;->put([JII)Ljava/nio/LongBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put([JII)Ljava/nio/LongBuffer;
    .registers 7
    .parameter "src"
    .parameter "srcOffset"
    .parameter "longCount"

    .prologue
    .line 402
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 403
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_10

    .line 404
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 406
    :cond_10
    move v0, p2

    .local v0, i:I
    :goto_11
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1d

    .line 407
    aget-wide v1, p1, v0

    invoke-virtual {p0, v1, v2}, Ljava/nio/LongBuffer;->put(J)Ljava/nio/LongBuffer;

    .line 406
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 409
    :cond_1d
    return-object p0
.end method

.method public abstract slice()Ljava/nio/LongBuffer;
.end method
