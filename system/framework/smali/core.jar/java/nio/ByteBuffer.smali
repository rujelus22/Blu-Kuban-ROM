.class public abstract Ljava/nio/ByteBuffer;
.super Ljava/nio/Buffer;
.source "ByteBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field order:Ljava/nio/ByteOrder;


# direct methods
.method constructor <init>(ILjava/nio/MemoryBlock;)V
    .registers 4
    .parameter "capacity"
    .parameter "block"

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava/nio/Buffer;-><init>(IILjava/nio/MemoryBlock;)V

    .line 114
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    .line 118
    return-void
.end method

.method public static allocate(I)Ljava/nio/ByteBuffer;
    .registers 2
    .parameter "capacity"

    .prologue
    .line 49
    if-gez p0, :cond_8

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 52
    :cond_8
    new-instance v0, Ljava/nio/ReadWriteHeapByteBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteHeapByteBuffer;-><init>(I)V

    return-object v0
.end method

.method public static allocateDirect(I)Ljava/nio/ByteBuffer;
    .registers 2
    .parameter "capacity"

    .prologue
    .line 65
    if-gez p0, :cond_8

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 68
    :cond_8
    new-instance v0, Ljava/nio/ReadWriteDirectByteBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteDirectByteBuffer;-><init>(I)V

    return-object v0
.end method

.method public static wrap([B)Ljava/nio/ByteBuffer;
    .registers 2
    .parameter "array"

    .prologue
    .line 82
    new-instance v0, Ljava/nio/ReadWriteHeapByteBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteHeapByteBuffer;-><init>([B)V

    return-object v0
.end method

.method public static wrap([BII)Ljava/nio/ByteBuffer;
    .registers 5
    .parameter "array"
    .parameter "start"
    .parameter "byteCount"

    .prologue
    .line 104
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 105
    new-instance v0, Ljava/nio/ReadWriteHeapByteBuffer;

    invoke-direct {v0, p0}, Ljava/nio/ReadWriteHeapByteBuffer;-><init>([B)V

    .line 106
    .local v0, buf:Ljava/nio/ByteBuffer;
    iput p1, v0, Ljava/nio/Buffer;->position:I

    .line 107
    add-int v1, p1, p2

    iput v1, v0, Ljava/nio/Buffer;->limit:I

    .line 108
    return-object v0
.end method


# virtual methods
.method public bridge synthetic array()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 37
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public final array()[B
    .registers 2

    .prologue
    .line 130
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->protectedArray()[B

    move-result-object v0

    return-object v0
.end method

.method public final arrayOffset()I
    .registers 2

    .prologue
    .line 147
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->protectedArrayOffset()I

    move-result v0

    return v0
.end method

.method public abstract asCharBuffer()Ljava/nio/CharBuffer;
.end method

.method public abstract asDoubleBuffer()Ljava/nio/DoubleBuffer;
.end method

.method public abstract asFloatBuffer()Ljava/nio/FloatBuffer;
.end method

.method public abstract asIntBuffer()Ljava/nio/IntBuffer;
.end method

.method public abstract asLongBuffer()Ljava/nio/LongBuffer;
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/ByteBuffer;
.end method

.method public abstract asShortBuffer()Ljava/nio/ShortBuffer;
.end method

.method public abstract compact()Ljava/nio/ByteBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 37
    check-cast p1, Ljava/nio/ByteBuffer;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->compareTo(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/nio/ByteBuffer;)I
    .registers 9
    .parameter "otherBuffer"

    .prologue
    .line 295
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-ge v5, v6, :cond_22

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 297
    .local v0, compareRemaining:I
    :goto_e
    iget v4, p0, Ljava/nio/Buffer;->position:I

    .line 298
    .local v4, thisPos:I
    iget v2, p1, Ljava/nio/Buffer;->position:I

    .line 300
    .local v2, otherPos:I
    :goto_12
    if-lez v0, :cond_30

    .line 301
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    .line 302
    .local v3, thisByte:B
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    .line 303
    .local v1, otherByte:B
    if-eq v3, v1, :cond_29

    .line 304
    if-ge v3, v1, :cond_27

    const/4 v5, -0x1

    .line 310
    .end local v1           #otherByte:B
    .end local v3           #thisByte:B
    :goto_21
    return v5

    .line 295
    .end local v0           #compareRemaining:I
    .end local v2           #otherPos:I
    .end local v4           #thisPos:I
    :cond_22
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    goto :goto_e

    .line 304
    .restart local v0       #compareRemaining:I
    .restart local v1       #otherByte:B
    .restart local v2       #otherPos:I
    .restart local v3       #thisByte:B
    .restart local v4       #thisPos:I
    :cond_27
    const/4 v5, 0x1

    goto :goto_21

    .line 306
    :cond_29
    add-int/lit8 v4, v4, 0x1

    .line 307
    add-int/lit8 v2, v2, 0x1

    .line 308
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    .line 310
    .end local v1           #otherByte:B
    .end local v3           #thisByte:B
    :cond_30
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    sub-int/2addr v5, v6

    goto :goto_21
.end method

.method public abstract duplicate()Ljava/nio/ByteBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 11
    .parameter "other"

    .prologue
    const/4 v6, 0x0

    .line 342
    instance-of v7, p1, Ljava/nio/ByteBuffer;

    if-nez v7, :cond_6

    .line 358
    :cond_5
    :goto_5
    return v6

    :cond_6
    move-object v3, p1

    .line 345
    check-cast v3, Ljava/nio/ByteBuffer;

    .line 347
    .local v3, otherBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-ne v7, v8, :cond_5

    .line 351
    iget v1, p0, Ljava/nio/Buffer;->position:I

    .line 352
    .local v1, myPosition:I
    iget v4, v3, Ljava/nio/Buffer;->position:I

    .line 353
    .local v4, otherPosition:I
    const/4 v0, 0x1

    .local v0, equalSoFar:Z
    move v5, v4

    .end local v4           #otherPosition:I
    .local v5, otherPosition:I
    move v2, v1

    .line 354
    .end local v1           #myPosition:I
    .local v2, myPosition:I
    :goto_1a
    if-eqz v0, :cond_34

    iget v7, p0, Ljava/nio/Buffer;->limit:I

    if-ge v2, v7, :cond_34

    .line 355
    add-int/lit8 v1, v2, 0x1

    .end local v2           #myPosition:I
    .restart local v1       #myPosition:I
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    add-int/lit8 v4, v5, 0x1

    .end local v5           #otherPosition:I
    .restart local v4       #otherPosition:I
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    if-ne v7, v8, :cond_32

    const/4 v0, 0x1

    :goto_2f
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
    :cond_32
    move v0, v6

    goto :goto_2f

    .end local v1           #myPosition:I
    .end local v4           #otherPosition:I
    .restart local v2       #myPosition:I
    .restart local v5       #otherPosition:I
    :cond_34
    move v6, v0

    .line 358
    goto :goto_5
.end method

.method public abstract get()B
.end method

.method public abstract get(I)B
.end method

.method public get([B)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "dst"

    .prologue
    .line 384
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public get([BII)Ljava/nio/ByteBuffer;
    .registers 6
    .parameter "dst"
    .parameter "dstOffset"
    .parameter "byteCount"

    .prologue
    .line 405
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 406
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_10

    .line 407
    new-instance v1, Ljava/nio/BufferUnderflowException;

    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v1

    .line 409
    :cond_10
    move v0, p2

    .local v0, i:I
    :goto_11
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1e

    .line 410
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    aput-byte v1, p1, v0

    .line 409
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 412
    :cond_1e
    return-object p0
.end method

.method public abstract getChar()C
.end method

.method public abstract getChar(I)C
.end method

.method public abstract getDouble()D
.end method

.method public abstract getDouble(I)D
.end method

.method public abstract getFloat()F
.end method

.method public abstract getFloat(I)F
.end method

.method public abstract getInt()I
.end method

.method public abstract getInt(I)I
.end method

.method public abstract getLong()J
.end method

.method public abstract getLong(I)J
.end method

.method public abstract getShort()S
.end method

.method public abstract getShort(I)S
.end method

.method public final hasArray()Z
    .registers 2

    .prologue
    .line 597
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->protectedHasArray()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 608
    iget v1, p0, Ljava/nio/Buffer;->position:I

    .line 609
    .local v1, myPosition:I
    const/4 v0, 0x0

    .line 610
    .local v0, hash:I
    :goto_3
    iget v3, p0, Ljava/nio/Buffer;->limit:I

    if-ge v1, v3, :cond_10

    .line 611
    add-int/lit8 v2, v1, 0x1

    .end local v1           #myPosition:I
    .local v2, myPosition:I
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    add-int/2addr v0, v3

    move v1, v2

    .end local v2           #myPosition:I
    .restart local v1       #myPosition:I
    goto :goto_3

    .line 613
    :cond_10
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public final order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    .registers 2
    .parameter "byteOrder"

    .prologue
    .line 647
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->orderImpl(Ljava/nio/ByteOrder;)V

    .line 648
    return-object p0
.end method

.method public final order()Ljava/nio/ByteOrder;
    .registers 2

    .prologue
    .line 634
    iget-object v0, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method orderImpl(Ljava/nio/ByteOrder;)V
    .registers 2
    .parameter "byteOrder"

    .prologue
    .line 655
    if-nez p1, :cond_4

    .line 656
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 658
    :cond_4
    iput-object p1, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    .line 659
    return-void
.end method

.method abstract protectedArray()[B
.end method

.method abstract protectedArrayOffset()I
.end method

.method abstract protectedHasArray()Z
.end method

.method public abstract put(B)Ljava/nio/ByteBuffer;
.end method

.method public abstract put(IB)Ljava/nio/ByteBuffer;
.end method

.method public put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 10
    .parameter "src"

    .prologue
    .line 764
    if-ne p1, p0, :cond_a

    .line 765
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "src == this"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 767
    :cond_a
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    .line 768
    .local v7, srcByteCount:I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-le v7, v4, :cond_1a

    .line 769
    new-instance v4, Ljava/nio/BufferOverflowException;

    invoke-direct {v4}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v4

    .line 772
    :cond_1a
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-eqz v4, :cond_5b

    move-object v2, p1

    .line 773
    .local v2, srcObject:Ljava/lang/Object;
    :goto_21
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 774
    .local v3, srcOffset:I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-nez v4, :cond_30

    .line 775
    invoke-static {p1}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    move-result v4

    add-int/2addr v3, v4

    .line 778
    :cond_30
    move-object v6, p0

    .line 779
    .local v6, dst:Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-eqz v4, :cond_60

    move-object v0, v6

    .line 780
    .local v0, dstObject:Ljava/lang/Object;
    :goto_38
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 781
    .local v1, dstOffset:I
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-nez v4, :cond_47

    .line 782
    invoke-static {v6}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    move-result v4

    add-int/2addr v1, v4

    .line 785
    :cond_47
    int-to-long v4, v7

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->memmove(Ljava/lang/Object;ILjava/lang/Object;IJ)V

    .line 786
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 787
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v7

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 789
    return-object p0

    .line 772
    .end local v0           #dstObject:Ljava/lang/Object;
    .end local v1           #dstOffset:I
    .end local v2           #srcObject:Ljava/lang/Object;
    .end local v3           #srcOffset:I
    .end local v6           #dst:Ljava/nio/ByteBuffer;
    :cond_5b
    invoke-static {p1}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    goto :goto_21

    .line 779
    .restart local v2       #srcObject:Ljava/lang/Object;
    .restart local v3       #srcOffset:I
    .restart local v6       #dst:Ljava/nio/ByteBuffer;
    :cond_60
    invoke-static {v6}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    goto :goto_38
.end method

.method public final put([B)Ljava/nio/ByteBuffer;
    .registers 4
    .parameter "src"

    .prologue
    .line 712
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public put([BII)Ljava/nio/ByteBuffer;
    .registers 6
    .parameter "src"
    .parameter "srcOffset"
    .parameter "byteCount"

    .prologue
    .line 737
    array-length v1, p1

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 738
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_10

    .line 739
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 741
    :cond_10
    move v0, p2

    .local v0, i:I
    :goto_11
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1d

    .line 742
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 741
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 744
    :cond_1d
    return-object p0
.end method

.method public abstract putChar(C)Ljava/nio/ByteBuffer;
.end method

.method public abstract putChar(IC)Ljava/nio/ByteBuffer;
.end method

.method public abstract putDouble(D)Ljava/nio/ByteBuffer;
.end method

.method public abstract putDouble(ID)Ljava/nio/ByteBuffer;
.end method

.method public abstract putFloat(F)Ljava/nio/ByteBuffer;
.end method

.method public abstract putFloat(IF)Ljava/nio/ByteBuffer;
.end method

.method public abstract putInt(I)Ljava/nio/ByteBuffer;
.end method

.method public abstract putInt(II)Ljava/nio/ByteBuffer;
.end method

.method public abstract putLong(IJ)Ljava/nio/ByteBuffer;
.end method

.method public abstract putLong(J)Ljava/nio/ByteBuffer;
.end method

.method public abstract putShort(IS)Ljava/nio/ByteBuffer;
.end method

.method public abstract putShort(S)Ljava/nio/ByteBuffer;
.end method

.method public abstract slice()Ljava/nio/ByteBuffer;
.end method
