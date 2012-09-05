.class public Lorg/columba/ristretto/io/MemBuffer;
.super Ljava/lang/Object;
.source "MemBuffer.java"


# static fields
.field private static final INCREMENT:I = 0x400


# instance fields
.field private buffer:[B

.field private len:I

.field private mutex:Lorg/columba/ristretto/concurrency/Mutex;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 58
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lorg/columba/ristretto/io/MemBuffer;-><init>(I)V

    .line 59
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "size"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/columba/ristretto/io/MemBuffer;->buffer:[B

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lorg/columba/ristretto/io/MemBuffer;->len:I

    .line 71
    new-instance v0, Lorg/columba/ristretto/concurrency/Mutex;

    invoke-direct {v0}, Lorg/columba/ristretto/concurrency/Mutex;-><init>()V

    iput-object v0, p0, Lorg/columba/ristretto/io/MemBuffer;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    .line 72
    return-void
.end method

.method private growBuffer(I)V
    .registers 6
    .parameter "newSize"

    .prologue
    const/4 v3, 0x0

    .line 178
    new-array v0, p1, [B

    .line 179
    .local v0, newBuffer:[B
    iget-object v1, p0, Lorg/columba/ristretto/io/MemBuffer;->buffer:[B

    iget-object v2, p0, Lorg/columba/ristretto/io/MemBuffer;->buffer:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    iput-object v0, p0, Lorg/columba/ristretto/io/MemBuffer;->buffer:[B

    .line 181
    return-void
.end method


# virtual methods
.method public append(I)V
    .registers 5
    .parameter "value"

    .prologue
    .line 80
    iget-object v0, p0, Lorg/columba/ristretto/io/MemBuffer;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v0}, Lorg/columba/ristretto/concurrency/Mutex;->lock()V

    .line 81
    iget v0, p0, Lorg/columba/ristretto/io/MemBuffer;->len:I

    iget-object v1, p0, Lorg/columba/ristretto/io/MemBuffer;->buffer:[B

    array-length v1, v1

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lorg/columba/ristretto/io/MemBuffer;->buffer:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x400

    invoke-direct {p0, v0}, Lorg/columba/ristretto/io/MemBuffer;->growBuffer(I)V

    .line 83
    :cond_14
    iget-object v0, p0, Lorg/columba/ristretto/io/MemBuffer;->buffer:[B

    iget v1, p0, Lorg/columba/ristretto/io/MemBuffer;->len:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/columba/ristretto/io/MemBuffer;->len:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 84
    iget-object v0, p0, Lorg/columba/ristretto/io/MemBuffer;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v0}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    .line 85
    return-void
.end method

.method public append([B)V
    .registers 4
    .parameter "array"

    .prologue
    .line 109
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/columba/ristretto/io/MemBuffer;->append([BII)V

    .line 110
    return-void
.end method

.method public append([BII)V
    .registers 8
    .parameter "array"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v1, 0x400

    .line 95
    iget-object v2, p0, Lorg/columba/ristretto/io/MemBuffer;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v2}, Lorg/columba/ristretto/concurrency/Mutex;->lock()V

    .line 96
    iget-object v2, p0, Lorg/columba/ristretto/io/MemBuffer;->buffer:[B

    array-length v2, v2

    iget v3, p0, Lorg/columba/ristretto/io/MemBuffer;->len:I

    sub-int v0, v2, v3

    .line 97
    .local v0, available:I
    if-le p3, v0, :cond_1c

    iget-object v2, p0, Lorg/columba/ristretto/io/MemBuffer;->buffer:[B

    array-length v2, v2

    sub-int v3, p3, v0

    if-le v3, v1, :cond_18

    move v1, p3

    :cond_18
    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lorg/columba/ristretto/io/MemBuffer;->growBuffer(I)V

    .line 98
    :cond_1c
    iget-object v1, p0, Lorg/columba/ristretto/io/MemBuffer;->buffer:[B

    iget v2, p0, Lorg/columba/ristretto/io/MemBuffer;->len:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    iget v1, p0, Lorg/columba/ristretto/io/MemBuffer;->len:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/columba/ristretto/io/MemBuffer;->len:I

    .line 100
    iget-object v1, p0, Lorg/columba/ristretto/io/MemBuffer;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v1}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    .line 101
    return-void
.end method

.method public get(I)I
    .registers 3
    .parameter "pos"

    .prologue
    .line 119
    iget v0, p0, Lorg/columba/ristretto/io/MemBuffer;->len:I

    if-le p1, v0, :cond_a

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 121
    :cond_a
    iget-object v0, p0, Lorg/columba/ristretto/io/MemBuffer;->buffer:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public get(I[B)I
    .registers 5
    .parameter "pos"
    .parameter "array"

    .prologue
    .line 133
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/columba/ristretto/io/MemBuffer;->get(I[BII)I

    move-result v0

    return v0
.end method

.method public get(I[BII)I
    .registers 7
    .parameter "pos"
    .parameter "array"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 147
    iget-object v1, p0, Lorg/columba/ristretto/io/MemBuffer;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v1}, Lorg/columba/ristretto/concurrency/Mutex;->lock()V

    .line 148
    iget v1, p0, Lorg/columba/ristretto/io/MemBuffer;->len:I

    sub-int/2addr v1, p1

    if-le p4, v1, :cond_1b

    iget v1, p0, Lorg/columba/ristretto/io/MemBuffer;->len:I

    sub-int v0, v1, p1

    .line 149
    .local v0, result:I
    :goto_e
    if-gez v0, :cond_1d

    .line 150
    iget-object v1, p0, Lorg/columba/ristretto/io/MemBuffer;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v1}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    .line 151
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v1

    .end local v0           #result:I
    :cond_1b
    move v0, p4

    .line 148
    goto :goto_e

    .line 154
    .restart local v0       #result:I
    :cond_1d
    iget-object v1, p0, Lorg/columba/ristretto/io/MemBuffer;->buffer:[B

    invoke-static {v1, p1, p2, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    iget-object v1, p0, Lorg/columba/ristretto/io/MemBuffer;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v1}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    .line 157
    return v0
.end method

.method public size()I
    .registers 3

    .prologue
    .line 166
    iget-object v1, p0, Lorg/columba/ristretto/io/MemBuffer;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v1}, Lorg/columba/ristretto/concurrency/Mutex;->lock()V

    .line 167
    iget v0, p0, Lorg/columba/ristretto/io/MemBuffer;->len:I

    .line 168
    .local v0, result:I
    iget-object v1, p0, Lorg/columba/ristretto/io/MemBuffer;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v1}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    .line 169
    return v0
.end method
