.class public final Lorg/codehaus/jackson/util/ByteArrayBuilder;
.super Ljava/io/OutputStream;
.source "ByteArrayBuilder.java"


# static fields
.field private static final NO_BYTES:[B


# instance fields
.field private final _bufferRecycler:Lorg/codehaus/jackson/util/BufferRecycler;

.field private _currBlock:[B

.field private _currBlockPtr:I

.field private final _pastBlocks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<[B>;"
        }
    .end annotation
.end field

.field private _pastLen:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->NO_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;-><init>(Lorg/codehaus/jackson/util/BufferRecycler;)V

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/util/BufferRecycler;)V
    .registers 3
    .parameter "br"

    .prologue
    .line 73
    const/16 v0, 0x1f4

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;-><init>(Lorg/codehaus/jackson/util/BufferRecycler;I)V

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/util/BufferRecycler;I)V
    .registers 4
    .parameter "br"
    .parameter "firstBlockSize"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 60
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_pastBlocks:Ljava/util/LinkedList;

    .line 79
    iput-object p1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_bufferRecycler:Lorg/codehaus/jackson/util/BufferRecycler;

    .line 80
    if-nez p1, :cond_13

    .line 81
    new-array v0, p2, [B

    iput-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    .line 85
    :goto_12
    return-void

    .line 83
    :cond_13
    sget-object v0, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->WRITE_CONCAT_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/util/BufferRecycler;->allocByteBuffer(Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    goto :goto_12
.end method

.method private _allocMore()V
    .registers 4

    .prologue
    .line 275
    iget v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_pastLen:I

    iget-object v2, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_pastLen:I

    .line 283
    iget v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_pastLen:I

    shr-int/lit8 v1, v1, 0x1

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 285
    .local v0, newSize:I
    const/high16 v1, 0x4

    if-le v0, v1, :cond_18

    .line 286
    const/high16 v0, 0x4

    .line 288
    :cond_18
    iget-object v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_pastBlocks:Ljava/util/LinkedList;

    iget-object v2, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 289
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    .line 290
    const/4 v1, 0x0

    iput v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    .line 291
    return-void
.end method


# virtual methods
.method public append(I)V
    .registers 5
    .parameter "i"

    .prologue
    .line 112
    iget v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    iget-object v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    array-length v1, v1

    if-lt v0, v1, :cond_a

    .line 113
    invoke-direct {p0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_allocMore()V

    .line 115
    :cond_a
    iget-object v0, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    iget v1, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 116
    return-void
.end method

.method public close()V
    .registers 1

    .prologue
    .line 263
    return-void
.end method

.method public flush()V
    .registers 1

    .prologue
    .line 265
    return-void
.end method

.method public write(I)V
    .registers 2
    .parameter "b"

    .prologue
    .line 260
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    .line 261
    return-void
.end method

.method public write([B)V
    .registers 4
    .parameter "b"

    .prologue
    .line 238
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->write([BII)V

    .line 239
    return-void
.end method

.method public write([BII)V
    .registers 8
    .parameter "b"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 245
    :goto_0
    iget-object v2, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    array-length v2, v2

    iget v3, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    sub-int v0, v2, v3

    .line 246
    .local v0, max:I
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 247
    .local v1, toCopy:I
    if-lez v1, :cond_1b

    .line 248
    iget-object v2, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlock:[B

    iget v3, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    add-int/2addr p2, v1

    .line 250
    iget v2, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_currBlockPtr:I

    .line 251
    sub-int/2addr p3, v1

    .line 253
    :cond_1b
    if-gtz p3, :cond_1e

    .line 256
    return-void

    .line 254
    :cond_1e
    invoke-direct {p0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->_allocMore()V

    goto :goto_0
.end method
