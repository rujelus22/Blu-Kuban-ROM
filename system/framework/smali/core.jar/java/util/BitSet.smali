.class public Ljava/util/BitSet;
.super Ljava/lang/Object;
.source "BitSet.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ALL_ONES:J = -0x1L

.field private static final serialVersionUID:J = 0x6efd887e3934ab21L


# instance fields
.field private bits:[J

.field private transient longCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 77
    const/4 v0, 0x1

    new-array v0, v0, [J

    invoke-direct {p0, v0}, Ljava/util/BitSet;-><init>([J)V

    .line 78
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "bitCount"

    .prologue
    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    if-gez p1, :cond_b

    .line 88
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    .line 90
    :cond_b
    invoke-static {p1}, Ljava/util/BitSet;->arrayForBits(I)[J

    move-result-object v0

    iput-object v0, p0, Ljava/util/BitSet;->bits:[J

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/BitSet;->longCount:I

    .line 92
    return-void
.end method

.method private constructor <init>([J)V
    .registers 3
    .parameter "bits"

    .prologue
    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Ljava/util/BitSet;->bits:[J

    .line 96
    array-length v0, p1

    iput v0, p0, Ljava/util/BitSet;->longCount:I

    .line 97
    invoke-direct {p0}, Ljava/util/BitSet;->shrinkSize()V

    .line 98
    return-void
.end method

.method private static arrayForBits(I)[J
    .registers 2
    .parameter "bitCount"

    .prologue
    .line 101
    add-int/lit8 v0, p0, 0x3f

    div-int/lit8 v0, v0, 0x40

    new-array v0, v0, [J

    return-object v0
.end method

.method private checkIndex(I)V
    .registers 5
    .parameter "index"

    .prologue
    .line 227
    if-gez p1, :cond_1b

    .line 228
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_1b
    return-void
.end method

.method private checkRange(II)V
    .registers 6
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    .line 233
    or-int v0, p1, p2

    if-ltz v0, :cond_6

    if-ge p2, p1, :cond_29

    .line 234
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " toIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_29
    return-void
.end method

.method private ensureCapacity(I)V
    .registers 7
    .parameter "desiredLongCount"

    .prologue
    const/4 v4, 0x0

    .line 138
    iget-object v2, p0, Ljava/util/BitSet;->bits:[J

    array-length v2, v2

    if-gt p1, v2, :cond_7

    .line 147
    :goto_6
    return-void

    .line 141
    :cond_7
    iget-object v2, p0, Ljava/util/BitSet;->bits:[J

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 142
    .local v1, newLength:I
    new-array v0, v1, [J

    .line 143
    .local v0, newBits:[J
    iget-object v2, p0, Ljava/util/BitSet;->bits:[J

    iget v3, p0, Ljava/util/BitSet;->longCount:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    iput-object v0, p0, Ljava/util/BitSet;->bits:[J

    goto :goto_6
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .parameter "ois"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 748
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 750
    iget-object v0, p0, Ljava/util/BitSet;->bits:[J

    array-length v0, v0

    iput v0, p0, Ljava/util/BitSet;->longCount:I

    .line 751
    invoke-direct {p0}, Ljava/util/BitSet;->shrinkSize()V

    .line 752
    return-void
.end method

.method private shrinkSize()V
    .registers 6

    .prologue
    .line 66
    iget v1, p0, Ljava/util/BitSet;->longCount:I

    add-int/lit8 v0, v1, -0x1

    .line 67
    .local v0, i:I
    :goto_4
    if-ltz v0, :cond_13

    iget-object v1, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v1, v1, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_13

    .line 68
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 70
    :cond_13
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/util/BitSet;->longCount:I

    .line 71
    return-void
.end method

.method public static valueOf(Ljava/nio/ByteBuffer;)Ljava/util/BitSet;
    .registers 11
    .parameter "byteBuffer"

    .prologue
    .line 708
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 709
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    mul-int/lit8 v4, v4, 0x8

    invoke-static {v4}, Ljava/util/BitSet;->arrayForBits(I)[J

    move-result-object v3

    .line 710
    .local v3, longs:[J
    const/4 v0, 0x0

    .line 711
    .local v0, i:I
    :goto_15
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    const/16 v5, 0x8

    if-lt v4, v5, :cond_27

    .line 712
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    aput-wide v4, v3, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_15

    .line 714
    :cond_27
    const/4 v2, 0x0

    .local v2, j:I
    :goto_28
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 715
    aget-wide v4, v3, v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    int-to-long v6, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    mul-int/lit8 v8, v2, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, v3, v0

    .line 714
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 717
    :cond_41
    invoke-static {v3}, Ljava/util/BitSet;->valueOf([J)Ljava/util/BitSet;

    move-result-object v4

    return-object v4
.end method

.method public static valueOf(Ljava/nio/LongBuffer;)Ljava/util/BitSet;
    .registers 5
    .parameter "longBuffer"

    .prologue
    .line 687
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v2

    new-array v1, v2, [J

    .line 688
    .local v1, longs:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    array-length v2, v1

    if-ge v0, v2, :cond_18

    .line 689
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 688
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 691
    :cond_18
    invoke-static {v1}, Ljava/util/BitSet;->valueOf([J)Ljava/util/BitSet;

    move-result-object v2

    return-object v2
.end method

.method public static valueOf([B)Ljava/util/BitSet;
    .registers 2
    .parameter "bytes"

    .prologue
    .line 699
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/BitSet;->valueOf(Ljava/nio/ByteBuffer;)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf([J)Ljava/util/BitSet;
    .registers 3
    .parameter "longs"

    .prologue
    .line 675
    new-instance v1, Ljava/util/BitSet;

    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>([J)V

    return-object v1
.end method


# virtual methods
.method public and(Ljava/util/BitSet;)V
    .registers 9
    .parameter "bs"

    .prologue
    .line 464
    iget v2, p0, Ljava/util/BitSet;->longCount:I

    iget v3, p1, Ljava/util/BitSet;->longCount:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 465
    .local v1, minSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    if-ge v0, v1, :cond_19

    .line 466
    iget-object v2, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v3, v2, v0

    iget-object v5, p1, Ljava/util/BitSet;->bits:[J

    aget-wide v5, v5, v0

    and-long/2addr v3, v5

    aput-wide v3, v2, v0

    .line 465
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 468
    :cond_19
    iget-object v2, p0, Ljava/util/BitSet;->bits:[J

    iget v3, p0, Ljava/util/BitSet;->longCount:I

    const-wide/16 v4, 0x0

    invoke-static {v2, v1, v3, v4, v5}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 469
    invoke-direct {p0}, Ljava/util/BitSet;->shrinkSize()V

    .line 470
    return-void
.end method

.method public andNot(Ljava/util/BitSet;)V
    .registers 11
    .parameter "bs"

    .prologue
    .line 476
    iget v2, p0, Ljava/util/BitSet;->longCount:I

    iget v3, p1, Ljava/util/BitSet;->longCount:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 477
    .local v1, minSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    if-ge v0, v1, :cond_1c

    .line 478
    iget-object v2, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v3, v2, v0

    iget-object v5, p1, Ljava/util/BitSet;->bits:[J

    aget-wide v5, v5, v0

    const-wide/16 v7, -0x1

    xor-long/2addr v5, v7

    and-long/2addr v3, v5

    aput-wide v3, v2, v0

    .line 477
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 480
    :cond_1c
    invoke-direct {p0}, Ljava/util/BitSet;->shrinkSize()V

    .line 481
    return-void
.end method

.method public cardinality()I
    .registers 5

    .prologue
    .line 661
    const/4 v1, 0x0

    .line 662
    .local v1, result:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget v2, p0, Ljava/util/BitSet;->longCount:I

    if-ge v0, v2, :cond_12

    .line 663
    iget-object v2, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 662
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 665
    :cond_12
    return v1
.end method

.method public clear()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 338
    iget-object v0, p0, Ljava/util/BitSet;->bits:[J

    iget v1, p0, Ljava/util/BitSet;->longCount:I

    const-wide/16 v2, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 339
    iput v4, p0, Ljava/util/BitSet;->longCount:I

    .line 340
    return-void
.end method

.method public clear(I)V
    .registers 10
    .parameter "index"

    .prologue
    .line 197
    if-gez p1, :cond_5

    .line 198
    invoke-direct {p0, p1}, Ljava/util/BitSet;->checkIndex(I)V

    .line 200
    :cond_5
    div-int/lit8 v0, p1, 0x40

    .line 201
    .local v0, arrayIndex:I
    iget v1, p0, Ljava/util/BitSet;->longCount:I

    if-lt v0, v1, :cond_c

    .line 206
    :goto_b
    return-void

    .line 204
    :cond_c
    iget-object v1, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    and-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 205
    invoke-direct {p0}, Ljava/util/BitSet;->shrinkSize()V

    goto :goto_b
.end method

.method public clear(II)V
    .registers 21
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    .line 383
    invoke-direct/range {p0 .. p2}, Ljava/util/BitSet;->checkRange(II)V

    .line 384
    move/from16 v0, p1

    move/from16 v1, p2

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v11, v0, Ljava/util/BitSet;->longCount:I

    if-nez v11, :cond_10

    .line 410
    :cond_f
    :goto_f
    return-void

    .line 387
    :cond_10
    move-object/from16 v0, p0

    iget v11, v0, Ljava/util/BitSet;->longCount:I

    mul-int/lit8 v7, v11, 0x40

    .line 388
    .local v7, last:I
    move/from16 v0, p1

    if-ge v0, v7, :cond_f

    .line 391
    move/from16 v0, p2

    if-le v0, v7, :cond_20

    .line 392
    move/from16 p2, v7

    .line 394
    :cond_20
    div-int/lit8 v2, p1, 0x40

    .line 395
    .local v2, firstArrayIndex:I
    add-int/lit8 v11, p2, -0x1

    div-int/lit8 v8, v11, 0x40

    .line 397
    .local v8, lastArrayIndex:I
    const-wide/16 v11, -0x1

    shl-long v9, v11, p1

    .line 398
    .local v9, lowMask:J
    const-wide/16 v11, -0x1

    move/from16 v0, p2

    neg-int v13, v0

    ushr-long v3, v11, v13

    .line 399
    .local v3, highMask:J
    if-ne v2, v8, :cond_46

    .line 400
    move-object/from16 v0, p0

    iget-object v11, v0, Ljava/util/BitSet;->bits:[J

    aget-wide v12, v11, v2

    and-long v14, v9, v3

    const-wide/16 v16, -0x1

    xor-long v14, v14, v16

    and-long/2addr v12, v14

    aput-wide v12, v11, v2

    .line 409
    :goto_42
    invoke-direct/range {p0 .. p0}, Ljava/util/BitSet;->shrinkSize()V

    goto :goto_f

    .line 402
    :cond_46
    move v5, v2

    .line 403
    .local v5, i:I
    move-object/from16 v0, p0

    iget-object v11, v0, Ljava/util/BitSet;->bits:[J

    add-int/lit8 v6, v5, 0x1

    .end local v5           #i:I
    .local v6, i:I
    aget-wide v12, v11, v5

    const-wide/16 v14, -0x1

    xor-long/2addr v14, v9

    and-long/2addr v12, v14

    aput-wide v12, v11, v5

    .line 404
    :goto_55
    if-ge v6, v8, :cond_63

    .line 405
    move-object/from16 v0, p0

    iget-object v11, v0, Ljava/util/BitSet;->bits:[J

    add-int/lit8 v5, v6, 0x1

    .end local v6           #i:I
    .restart local v5       #i:I
    const-wide/16 v12, 0x0

    aput-wide v12, v11, v6

    move v6, v5

    .end local v5           #i:I
    .restart local v6       #i:I
    goto :goto_55

    .line 407
    :cond_63
    move-object/from16 v0, p0

    iget-object v11, v0, Ljava/util/BitSet;->bits:[J

    add-int/lit8 v5, v6, 0x1

    .end local v6           #i:I
    .restart local v5       #i:I
    aget-wide v12, v11, v6

    const-wide/16 v14, -0x1

    xor-long/2addr v14, v3

    and-long/2addr v12, v14

    aput-wide v12, v11, v6

    goto :goto_42
.end method

.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 106
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 107
    .local v0, clone:Ljava/util/BitSet;
    iget-object v2, p0, Ljava/util/BitSet;->bits:[J

    invoke-virtual {v2}, [J->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    iput-object v2, v0, Ljava/util/BitSet;->bits:[J

    .line 108
    invoke-direct {v0}, Ljava/util/BitSet;->shrinkSize()V
    :try_end_13
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_13} :catch_14

    .line 109
    return-object v0

    .line 110
    .end local v0           #clone:Ljava/util/BitSet;
    :catch_14
    move-exception v1

    .line 111
    .local v1, e:Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .parameter "o"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 116
    if-ne p0, p1, :cond_5

    .line 131
    :cond_4
    :goto_4
    return v2

    .line 119
    :cond_5
    instance-of v4, p1, Ljava/util/BitSet;

    if-nez v4, :cond_b

    move v2, v3

    .line 120
    goto :goto_4

    :cond_b
    move-object v1, p1

    .line 122
    check-cast v1, Ljava/util/BitSet;

    .line 123
    .local v1, lhs:Ljava/util/BitSet;
    iget v4, p0, Ljava/util/BitSet;->longCount:I

    iget v5, v1, Ljava/util/BitSet;->longCount:I

    if-eq v4, v5, :cond_16

    move v2, v3

    .line 124
    goto :goto_4

    .line 126
    :cond_16
    const/4 v0, 0x0

    .local v0, i:I
    :goto_17
    iget v4, p0, Ljava/util/BitSet;->longCount:I

    if-ge v0, v4, :cond_4

    .line 127
    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v4, v4, v0

    iget-object v6, v1, Ljava/util/BitSet;->bits:[J

    aget-wide v6, v6, v0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_29

    move v2, v3

    .line 128
    goto :goto_4

    .line 126
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_17
.end method

.method public flip(I)V
    .registers 8
    .parameter "index"

    .prologue
    .line 214
    if-gez p1, :cond_5

    .line 215
    invoke-direct {p0, p1}, Ljava/util/BitSet;->checkIndex(I)V

    .line 217
    :cond_5
    div-int/lit8 v0, p1, 0x40

    .line 218
    .local v0, arrayIndex:I
    iget-object v1, p0, Ljava/util/BitSet;->bits:[J

    array-length v1, v1

    if-lt v0, v1, :cond_11

    .line 219
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Ljava/util/BitSet;->ensureCapacity(I)V

    .line 221
    :cond_11
    iget-object v1, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    xor-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 222
    iget v1, p0, Ljava/util/BitSet;->longCount:I

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Ljava/util/BitSet;->longCount:I

    .line 223
    invoke-direct {p0}, Ljava/util/BitSet;->shrinkSize()V

    .line 224
    return-void
.end method

.method public flip(II)V
    .registers 16
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    const-wide/16 v11, -0x1

    .line 420
    invoke-direct {p0, p1, p2}, Ljava/util/BitSet;->checkRange(II)V

    .line 421
    if-ne p1, p2, :cond_8

    .line 444
    :goto_7
    return-void

    .line 424
    :cond_8
    div-int/lit8 v0, p1, 0x40

    .line 425
    .local v0, firstArrayIndex:I
    add-int/lit8 v8, p2, -0x1

    div-int/lit8 v5, v8, 0x40

    .line 426
    .local v5, lastArrayIndex:I
    iget-object v8, p0, Ljava/util/BitSet;->bits:[J

    array-length v8, v8

    if-lt v5, v8, :cond_18

    .line 427
    add-int/lit8 v8, v5, 0x1

    invoke-direct {p0, v8}, Ljava/util/BitSet;->ensureCapacity(I)V

    .line 430
    :cond_18
    shl-long v6, v11, p1

    .line 431
    .local v6, lowMask:J
    neg-int v8, p2

    ushr-long v1, v11, v8

    .line 432
    .local v1, highMask:J
    if-ne v0, v5, :cond_36

    .line 433
    iget-object v8, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v9, v8, v0

    and-long v11, v6, v1

    xor-long/2addr v9, v11

    aput-wide v9, v8, v0

    .line 442
    :goto_28
    iget v8, p0, Ljava/util/BitSet;->longCount:I

    add-int/lit8 v9, v5, 0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Ljava/util/BitSet;->longCount:I

    .line 443
    invoke-direct {p0}, Ljava/util/BitSet;->shrinkSize()V

    goto :goto_7

    .line 435
    :cond_36
    move v3, v0

    .line 436
    .local v3, i:I
    iget-object v8, p0, Ljava/util/BitSet;->bits:[J

    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    aget-wide v9, v8, v3

    xor-long/2addr v9, v6

    aput-wide v9, v8, v3

    .line 437
    :goto_40
    if-ge v4, v5, :cond_4d

    .line 438
    iget-object v8, p0, Ljava/util/BitSet;->bits:[J

    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    aget-wide v9, v8, v4

    xor-long/2addr v9, v11

    aput-wide v9, v8, v4

    move v4, v3

    .end local v3           #i:I
    .restart local v4       #i:I
    goto :goto_40

    .line 440
    :cond_4d
    iget-object v8, p0, Ljava/util/BitSet;->bits:[J

    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    aget-wide v9, v8, v4

    xor-long/2addr v9, v1

    aput-wide v9, v8, v4

    goto :goto_28
.end method

.method public get(II)Ljava/util/BitSet;
    .registers 23
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    .line 248
    invoke-direct/range {p0 .. p2}, Ljava/util/BitSet;->checkRange(II)V

    .line 250
    move-object/from16 v0, p0

    iget v15, v0, Ljava/util/BitSet;->longCount:I

    mul-int/lit8 v7, v15, 0x40

    .line 251
    .local v7, last:I
    move/from16 v0, p1

    if-ge v0, v7, :cond_13

    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_1b

    .line 252
    :cond_13
    new-instance v15, Ljava/util/BitSet;

    const/16 v16, 0x0

    invoke-direct/range {v15 .. v16}, Ljava/util/BitSet;-><init>(I)V

    .line 301
    :goto_1a
    return-object v15

    .line 254
    :cond_1b
    move/from16 v0, p2

    if-le v0, v7, :cond_21

    .line 255
    move/from16 p2, v7

    .line 258
    :cond_21
    div-int/lit8 v3, p1, 0x40

    .line 259
    .local v3, firstArrayIndex:I
    add-int/lit8 v15, p2, -0x1

    div-int/lit8 v8, v15, 0x40

    .line 260
    .local v8, lastArrayIndex:I
    const-wide/16 v15, -0x1

    shl-long v9, v15, p1

    .line 261
    .local v9, lowMask:J
    const-wide/16 v15, -0x1

    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v17, v0

    ushr-long v4, v15, v17

    .line 263
    .local v4, highMask:J
    if-ne v3, v8, :cond_62

    .line 264
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/util/BitSet;->bits:[J

    aget-wide v15, v15, v3

    and-long v17, v9, v4

    and-long v15, v15, v17

    ushr-long v13, v15, p1

    .line 265
    .local v13, result:J
    const-wide/16 v15, 0x0

    cmp-long v15, v13, v15

    if-nez v15, :cond_50

    .line 266
    new-instance v15, Ljava/util/BitSet;

    const/16 v16, 0x0

    invoke-direct/range {v15 .. v16}, Ljava/util/BitSet;-><init>(I)V

    goto :goto_1a

    .line 268
    :cond_50
    new-instance v15, Ljava/util/BitSet;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [J

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-wide v13, v16, v17

    invoke-direct/range {v15 .. v16}, Ljava/util/BitSet;-><init>([J)V

    goto :goto_1a

    .line 271
    .end local v13           #result:J
    :cond_62
    sub-int v15, v8, v3

    add-int/lit8 v15, v15, 0x1

    new-array v11, v15, [J

    .line 274
    .local v11, newBits:[J
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/BitSet;->bits:[J

    move-object/from16 v16, v0

    aget-wide v16, v16, v3

    and-long v16, v16, v9

    aput-wide v16, v11, v15

    .line 275
    array-length v15, v11

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/BitSet;->bits:[J

    move-object/from16 v16, v0

    aget-wide v16, v16, v8

    and-long v16, v16, v4

    aput-wide v16, v11, v15

    .line 278
    const/4 v6, 0x1

    .local v6, i:I
    :goto_85
    sub-int v15, v8, v3

    if-ge v6, v15, :cond_96

    .line 279
    move-object/from16 v0, p0

    iget-object v15, v0, Ljava/util/BitSet;->bits:[J

    add-int v16, v3, v6

    aget-wide v15, v15, v16

    aput-wide v15, v11, v6

    .line 278
    add-int/lit8 v6, v6, 0x1

    goto :goto_85

    .line 283
    :cond_96
    rem-int/lit8 v12, p1, 0x40

    .line 284
    .local v12, numBitsToShift:I
    array-length v2, v11

    .line 285
    .local v2, actualLen:I
    if-eqz v12, :cond_c5

    .line 286
    const/4 v6, 0x0

    :goto_9c
    array-length v15, v11

    if-ge v6, v15, :cond_c5

    .line 289
    aget-wide v15, v11, v6

    ushr-long/2addr v15, v12

    aput-wide v15, v11, v6

    .line 293
    array-length v15, v11

    add-int/lit8 v15, v15, -0x1

    if-eq v6, v15, :cond_b8

    .line 294
    aget-wide v15, v11, v6

    add-int/lit8 v17, v6, 0x1

    aget-wide v17, v11, v17

    neg-int v0, v12

    move/from16 v19, v0

    shl-long v17, v17, v19

    or-long v15, v15, v17

    aput-wide v15, v11, v6

    .line 296
    :cond_b8
    aget-wide v15, v11, v6

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_c2

    .line 297
    add-int/lit8 v2, v6, 0x1

    .line 286
    :cond_c2
    add-int/lit8 v6, v6, 0x1

    goto :goto_9c

    .line 301
    :cond_c5
    new-instance v15, Ljava/util/BitSet;

    invoke-direct {v15, v11}, Ljava/util/BitSet;-><init>([J)V

    goto/16 :goto_1a
.end method

.method public get(I)Z
    .registers 8
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 164
    if-gez p1, :cond_6

    .line 165
    invoke-direct {p0, p1}, Ljava/util/BitSet;->checkIndex(I)V

    .line 167
    :cond_6
    div-int/lit8 v0, p1, 0x40

    .line 168
    .local v0, arrayIndex:I
    iget v2, p0, Ljava/util/BitSet;->longCount:I

    if-lt v0, v2, :cond_d

    .line 171
    :cond_c
    :goto_c
    return v1

    :cond_d
    iget-object v2, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v2, v2, v0

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    const/4 v1, 0x1

    goto :goto_c
.end method

.method public hashCode()I
    .registers 8

    .prologue
    .line 151
    const-wide/16 v1, 0x4d2

    .line 152
    .local v1, x:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget v3, p0, Ljava/util/BitSet;->longCount:I

    if-ge v0, v3, :cond_13

    .line 153
    iget-object v3, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v3, v3, v0

    add-int/lit8 v5, v0, 0x1

    int-to-long v5, v5

    mul-long/2addr v3, v5

    xor-long/2addr v1, v3

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 155
    :cond_13
    const/16 v3, 0x20

    shr-long v3, v1, v3

    xor-long/2addr v3, v1

    long-to-int v3, v3

    return v3
.end method

.method public intersects(Ljava/util/BitSet;)Z
    .registers 9
    .parameter "bs"

    .prologue
    .line 450
    iget-object v0, p1, Ljava/util/BitSet;->bits:[J

    .line 451
    .local v0, bsBits:[J
    iget v3, p0, Ljava/util/BitSet;->longCount:I

    iget v4, p1, Ljava/util/BitSet;->longCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 452
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v2, :cond_1f

    .line 453
    iget-object v3, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v3, v3, v1

    aget-wide v5, v0, v1

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1c

    .line 454
    const/4 v3, 0x1

    .line 457
    :goto_1b
    return v3

    .line 452
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 457
    :cond_1f
    const/4 v3, 0x0

    goto :goto_1b
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 654
    iget v0, p0, Ljava/util/BitSet;->longCount:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public length()I
    .registers 4

    .prologue
    .line 530
    iget v0, p0, Ljava/util/BitSet;->longCount:I

    if-nez v0, :cond_6

    .line 531
    const/4 v0, 0x0

    .line 533
    :goto_5
    return v0

    :cond_6
    iget v0, p0, Ljava/util/BitSet;->longCount:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x40

    iget-object v1, p0, Ljava/util/BitSet;->bits:[J

    iget v2, p0, Ljava/util/BitSet;->longCount:I

    add-int/lit8 v2, v2, -0x1

    aget-wide v1, v1, v2

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x40

    add-int/2addr v0, v1

    goto :goto_5
.end method

.method public nextClearBit(I)I
    .registers 11
    .parameter "index"

    .prologue
    const-wide/16 v7, -0x1

    .line 593
    invoke-direct {p0, p1}, Ljava/util/BitSet;->checkIndex(I)V

    .line 594
    div-int/lit8 v0, p1, 0x40

    .line 595
    .local v0, arrayIndex:I
    iget v3, p0, Ljava/util/BitSet;->longCount:I

    if-lt v0, v3, :cond_c

    .line 607
    .end local p1
    :goto_b
    return p1

    .line 598
    .restart local p1
    :cond_c
    shl-long v1, v7, p1

    .line 599
    .local v1, mask:J
    iget-object v3, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v3, v3, v0

    xor-long/2addr v3, v7

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_29

    .line 600
    mul-int/lit8 v3, v0, 0x40

    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v4, v4, v0

    xor-long/2addr v4, v7

    and-long/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v4

    add-int p1, v3, v4

    goto :goto_b

    .line 602
    :cond_29
    add-int/lit8 v0, v0, 0x1

    iget v3, p0, Ljava/util/BitSet;->longCount:I

    if-ge v0, v3, :cond_37

    iget-object v3, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v3, v3, v0

    cmp-long v3, v3, v7

    if-eqz v3, :cond_29

    .line 604
    :cond_37
    iget v3, p0, Ljava/util/BitSet;->longCount:I

    if-ne v0, v3, :cond_40

    .line 605
    invoke-virtual {p0}, Ljava/util/BitSet;->size()I

    move-result p1

    goto :goto_b

    .line 607
    :cond_40
    mul-int/lit8 v3, v0, 0x40

    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v4, v4, v0

    xor-long/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v4

    add-int p1, v3, v4

    goto :goto_b
.end method

.method public nextSetBit(I)I
    .registers 10
    .parameter "index"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, -0x1

    .line 570
    invoke-direct {p0, p1}, Ljava/util/BitSet;->checkIndex(I)V

    .line 571
    div-int/lit8 v0, p1, 0x40

    .line 572
    .local v0, arrayIndex:I
    iget v4, p0, Ljava/util/BitSet;->longCount:I

    if-lt v0, v4, :cond_d

    .line 584
    :cond_c
    :goto_c
    return v3

    .line 575
    :cond_d
    const-wide/16 v4, -0x1

    shl-long v1, v4, p1

    .line 576
    .local v1, mask:J
    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v4, v4, v0

    and-long/2addr v4, v1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_27

    .line 577
    mul-int/lit8 v3, v0, 0x40

    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v4, v4, v0

    and-long/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_c

    .line 579
    :cond_27
    add-int/lit8 v0, v0, 0x1

    iget v4, p0, Ljava/util/BitSet;->longCount:I

    if-ge v0, v4, :cond_35

    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v4, v4, v0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_27

    .line 581
    :cond_35
    iget v4, p0, Ljava/util/BitSet;->longCount:I

    if-eq v0, v4, :cond_c

    .line 584
    mul-int/lit8 v3, v0, 0x40

    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v4, v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_c
.end method

.method public or(Ljava/util/BitSet;)V
    .registers 10
    .parameter "bs"

    .prologue
    .line 487
    iget v3, p0, Ljava/util/BitSet;->longCount:I

    iget v4, p1, Ljava/util/BitSet;->longCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 488
    .local v2, minSize:I
    iget v3, p0, Ljava/util/BitSet;->longCount:I

    iget v4, p1, Ljava/util/BitSet;->longCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 489
    .local v1, maxSize:I
    invoke-direct {p0, v1}, Ljava/util/BitSet;->ensureCapacity(I)V

    .line 490
    const/4 v0, 0x0

    .local v0, i:I
    :goto_14
    if-ge v0, v2, :cond_24

    .line 491
    iget-object v3, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v4, v3, v0

    iget-object v6, p1, Ljava/util/BitSet;->bits:[J

    aget-wide v6, v6, v0

    or-long/2addr v4, v6

    aput-wide v4, v3, v0

    .line 490
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 493
    :cond_24
    iget v3, p1, Ljava/util/BitSet;->longCount:I

    if-le v3, v2, :cond_31

    .line 494
    iget-object v3, p1, Ljava/util/BitSet;->bits:[J

    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    sub-int v5, v1, v2

    invoke-static {v3, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 496
    :cond_31
    iput v1, p0, Ljava/util/BitSet;->longCount:I

    .line 497
    return-void
.end method

.method public previousClearBit(I)I
    .registers 5
    .parameter "index"

    .prologue
    const/4 v1, -0x1

    .line 637
    if-ne p1, v1, :cond_5

    move v0, v1

    .line 647
    :cond_4
    :goto_4
    return v0

    .line 640
    :cond_5
    invoke-direct {p0, p1}, Ljava/util/BitSet;->checkIndex(I)V

    .line 642
    move v0, p1

    .local v0, i:I
    :goto_9
    if-ltz v0, :cond_14

    .line 643
    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 642
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_14
    move v0, v1

    .line 647
    goto :goto_4
.end method

.method public previousSetBit(I)I
    .registers 5
    .parameter "index"

    .prologue
    const/4 v1, -0x1

    .line 617
    if-ne p1, v1, :cond_5

    move v0, v1

    .line 627
    :cond_4
    :goto_4
    return v0

    .line 620
    :cond_5
    invoke-direct {p0, p1}, Ljava/util/BitSet;->checkIndex(I)V

    .line 622
    move v0, p1

    .local v0, i:I
    :goto_9
    if-ltz v0, :cond_14

    .line 623
    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 622
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_14
    move v0, v1

    .line 627
    goto :goto_4
.end method

.method public set(I)V
    .registers 8
    .parameter "index"

    .prologue
    .line 180
    if-gez p1, :cond_5

    .line 181
    invoke-direct {p0, p1}, Ljava/util/BitSet;->checkIndex(I)V

    .line 183
    :cond_5
    div-int/lit8 v0, p1, 0x40

    .line 184
    .local v0, arrayIndex:I
    iget-object v1, p0, Ljava/util/BitSet;->bits:[J

    array-length v1, v1

    if-lt v0, v1, :cond_11

    .line 185
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Ljava/util/BitSet;->ensureCapacity(I)V

    .line 187
    :cond_11
    iget-object v1, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    or-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 188
    iget v1, p0, Ljava/util/BitSet;->longCount:I

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Ljava/util/BitSet;->longCount:I

    .line 189
    return-void
.end method

.method public set(II)V
    .registers 16
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    const-wide/16 v11, -0x1

    .line 350
    invoke-direct {p0, p1, p2}, Ljava/util/BitSet;->checkRange(II)V

    .line 351
    if-ne p1, p2, :cond_8

    .line 373
    :goto_7
    return-void

    .line 354
    :cond_8
    div-int/lit8 v0, p1, 0x40

    .line 355
    .local v0, firstArrayIndex:I
    add-int/lit8 v8, p2, -0x1

    div-int/lit8 v5, v8, 0x40

    .line 356
    .local v5, lastArrayIndex:I
    iget-object v8, p0, Ljava/util/BitSet;->bits:[J

    array-length v8, v8

    if-lt v5, v8, :cond_18

    .line 357
    add-int/lit8 v8, v5, 0x1

    invoke-direct {p0, v8}, Ljava/util/BitSet;->ensureCapacity(I)V

    .line 360
    :cond_18
    shl-long v6, v11, p1

    .line 361
    .local v6, lowMask:J
    neg-int v8, p2

    ushr-long v1, v11, v8

    .line 362
    .local v1, highMask:J
    if-ne v0, v5, :cond_33

    .line 363
    iget-object v8, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v9, v8, v0

    and-long v11, v6, v1

    or-long/2addr v9, v11

    aput-wide v9, v8, v0

    .line 372
    :goto_28
    iget v8, p0, Ljava/util/BitSet;->longCount:I

    add-int/lit8 v9, v5, 0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Ljava/util/BitSet;->longCount:I

    goto :goto_7

    .line 365
    :cond_33
    move v3, v0

    .line 366
    .local v3, i:I
    iget-object v8, p0, Ljava/util/BitSet;->bits:[J

    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    aget-wide v9, v8, v3

    or-long/2addr v9, v6

    aput-wide v9, v8, v3

    .line 367
    :goto_3d
    if-ge v4, v5, :cond_4a

    .line 368
    iget-object v8, p0, Ljava/util/BitSet;->bits:[J

    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    aget-wide v9, v8, v4

    or-long/2addr v9, v11

    aput-wide v9, v8, v4

    move v4, v3

    .end local v3           #i:I
    .restart local v4       #i:I
    goto :goto_3d

    .line 370
    :cond_4a
    iget-object v8, p0, Ljava/util/BitSet;->bits:[J

    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    aget-wide v9, v8, v4

    or-long/2addr v9, v1

    aput-wide v9, v8, v4

    goto :goto_28
.end method

.method public set(IIZ)V
    .registers 4
    .parameter "fromIndex"
    .parameter "toIndex"
    .parameter "state"

    .prologue
    .line 325
    if-eqz p3, :cond_6

    .line 326
    invoke-virtual {p0, p1, p2}, Ljava/util/BitSet;->set(II)V

    .line 330
    :goto_5
    return-void

    .line 328
    :cond_6
    invoke-virtual {p0, p1, p2}, Ljava/util/BitSet;->clear(II)V

    goto :goto_5
.end method

.method public set(IZ)V
    .registers 3
    .parameter "index"
    .parameter "state"

    .prologue
    .line 310
    if-eqz p2, :cond_6

    .line 311
    invoke-virtual {p0, p1}, Ljava/util/BitSet;->set(I)V

    .line 315
    :goto_5
    return-void

    .line 313
    :cond_6
    invoke-virtual {p0, p1}, Ljava/util/BitSet;->clear(I)V

    goto :goto_5
.end method

.method public size()I
    .registers 2

    .prologue
    .line 522
    iget-object v0, p0, Ljava/util/BitSet;->bits:[J

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x40

    return v0
.end method

.method public toByteArray()[B
    .registers 8

    .prologue
    .line 737
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v1

    .line 738
    .local v1, bitCount:I
    add-int/lit8 v5, v1, 0x7

    div-int/lit8 v5, v5, 0x8

    new-array v4, v5, [B

    .line 739
    .local v4, result:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    array-length v5, v4

    if-ge v2, v5, :cond_1e

    .line 740
    mul-int/lit8 v3, v2, 0x8

    .line 741
    .local v3, lowBit:I
    div-int/lit8 v0, v3, 0x40

    .line 742
    .local v0, arrayIndex:I
    iget-object v5, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v5, v5, v0

    ushr-long/2addr v5, v3

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    .line 739
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 744
    .end local v0           #arrayIndex:I
    .end local v3           #lowBit:I
    :cond_1e
    return-object v4
.end method

.method public toLongArray()[J
    .registers 3

    .prologue
    .line 727
    iget-object v0, p0, Ljava/util/BitSet;->bits:[J

    iget v1, p0, Ljava/util/BitSet;->longCount:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    .prologue
    const-wide/16 v8, 0x0

    .line 543
    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Ljava/util/BitSet;->longCount:I

    div-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 544
    .local v3, sb:Ljava/lang/StringBuilder;
    const/16 v4, 0x7b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 545
    const/4 v0, 0x0

    .line 546
    .local v0, comma:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    iget v4, p0, Ljava/util/BitSet;->longCount:I

    if-ge v1, v4, :cond_44

    .line 547
    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v4, v4, v1

    cmp-long v4, v4, v8

    if-eqz v4, :cond_41

    .line 548
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1f
    const/16 v4, 0x40

    if-ge v2, v4, :cond_41

    .line 549
    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v4, v4, v1

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v2

    and-long/2addr v4, v6

    cmp-long v4, v4, v8

    if-eqz v4, :cond_3c

    .line 550
    if-eqz v0, :cond_3f

    .line 551
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    :goto_36
    mul-int/lit8 v4, v1, 0x40

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 548
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 553
    :cond_3f
    const/4 v0, 0x1

    goto :goto_36

    .line 546
    .end local v2           #j:I
    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 560
    :cond_44
    const/16 v4, 0x7d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 561
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public xor(Ljava/util/BitSet;)V
    .registers 10
    .parameter "bs"

    .prologue
    .line 503
    iget v3, p0, Ljava/util/BitSet;->longCount:I

    iget v4, p1, Ljava/util/BitSet;->longCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 504
    .local v2, minSize:I
    iget v3, p0, Ljava/util/BitSet;->longCount:I

    iget v4, p1, Ljava/util/BitSet;->longCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 505
    .local v1, maxSize:I
    invoke-direct {p0, v1}, Ljava/util/BitSet;->ensureCapacity(I)V

    .line 506
    const/4 v0, 0x0

    .local v0, i:I
    :goto_14
    if-ge v0, v2, :cond_24

    .line 507
    iget-object v3, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v4, v3, v0

    iget-object v6, p1, Ljava/util/BitSet;->bits:[J

    aget-wide v6, v6, v0

    xor-long/2addr v4, v6

    aput-wide v4, v3, v0

    .line 506
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 509
    :cond_24
    iget v3, p1, Ljava/util/BitSet;->longCount:I

    if-le v3, v2, :cond_31

    .line 510
    iget-object v3, p1, Ljava/util/BitSet;->bits:[J

    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    sub-int v5, v1, v2

    invoke-static {v3, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 512
    :cond_31
    iput v1, p0, Ljava/util/BitSet;->longCount:I

    .line 513
    invoke-direct {p0}, Ljava/util/BitSet;->shrinkSize()V

    .line 514
    return-void
.end method
