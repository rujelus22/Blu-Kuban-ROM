.class public final Lorg/apache/james/mime4j/util/ByteArrayBuffer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/james/mime4j/util/ByteSequence;


# instance fields
.field private buffer:[B

.field private len:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer capacity may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    return-void
.end method

.method public constructor <init>([BIZ)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_c
    if-ltz p2, :cond_11

    array-length v0, p1

    if-le p2, v0, :cond_17

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_17
    if-eqz p3, :cond_1e

    iput-object p1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    :goto_1b
    iput p2, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    return-void

    :cond_1e
    new-array v0, p2, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    iget-object v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1b
.end method

.method public constructor <init>([BZ)V
    .registers 4

    array-length v0, p1

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;-><init>([BIZ)V

    return-void
.end method

.method private expand(I)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    iget v2, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    return-void
.end method


# virtual methods
.method public append(I)V
    .registers 6

    iget v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    array-length v1, v1

    if-le v0, v1, :cond_c

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->expand(I)V

    :cond_c
    iget-object v1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    iget v2, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    iput v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    return-void
.end method

.method public append([BII)V
    .registers 7

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    if-ltz p2, :cond_13

    array-length v0, p1

    if-gt p2, v0, :cond_13

    if-ltz p3, :cond_13

    add-int v0, p2, p3

    if-ltz v0, :cond_13

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_19

    :cond_13
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_19
    if-eqz p3, :cond_2

    iget v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    array-length v1, v1

    if-le v0, v1, :cond_26

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->expand(I)V

    :cond_26
    iget-object v1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    iget v2, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    goto :goto_2
.end method

.method public buffer()[B
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    return-object v0
.end method

.method public byteAt(I)B
    .registers 3

    if-ltz p1, :cond_6

    iget v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    if-lt p1, v0, :cond_c

    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_c
    iget-object v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public capacity()I
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    array-length v0, v0

    return v0
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    return-void
.end method

.method public indexOf(B)I
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->indexOf(BII)I

    move-result v0

    return v0
.end method

.method public indexOf(BII)I
    .registers 7

    const/4 v0, -0x1

    if-gez p2, :cond_4

    const/4 p2, 0x0

    :cond_4
    iget v1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    if-le p3, v1, :cond_a

    iget p3, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    :cond_a
    if-le p2, p3, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    move v1, p2

    :goto_e
    if-ge v1, p3, :cond_c

    iget-object v2, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    aget-byte v2, v2, v1

    if-ne v2, p1, :cond_18

    move v0, v1

    goto :goto_c

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method public isEmpty()Z
    .registers 2

    iget v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isFull()Z
    .registers 3

    iget v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    iget-object v1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    array-length v1, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public length()I
    .registers 2

    iget v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    return v0
.end method

.method public setLength(I)V
    .registers 3

    if-ltz p1, :cond_7

    iget-object v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    array-length v0, v0

    if-le p1, v0, :cond_d

    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_d
    iput p1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    return-void
.end method

.method public toByteArray()[B
    .registers 5

    const/4 v3, 0x0

    iget v0, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    new-array v0, v0, [B

    iget v1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    if-lez v1, :cond_10

    iget-object v1, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    iget v2, p0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_10
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
