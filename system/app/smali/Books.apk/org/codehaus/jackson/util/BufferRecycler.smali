.class public Lorg/codehaus/jackson/util/BufferRecycler;
.super Ljava/lang/Object;
.source "BufferRecycler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;,
        Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;
    }
.end annotation


# instance fields
.field protected final _byteBuffers:[[B

.field protected final _charBuffers:[[C


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->values()[Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [[B

    iput-object v0, p0, Lorg/codehaus/jackson/util/BufferRecycler;->_byteBuffers:[[B

    .line 48
    invoke-static {}, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->values()[Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [[C

    iput-object v0, p0, Lorg/codehaus/jackson/util/BufferRecycler;->_charBuffers:[[C

    .line 50
    return-void
.end method

.method private final balloc(I)[B
    .registers 3
    .parameter "size"

    .prologue
    .line 102
    new-array v0, p1, [B

    return-object v0
.end method

.method private final calloc(I)[C
    .registers 3
    .parameter "size"

    .prologue
    .line 107
    new-array v0, p1, [C

    return-object v0
.end method


# virtual methods
.method public final allocByteBuffer(Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;)[B
    .registers 6
    .parameter "type"

    .prologue
    .line 54
    invoke-virtual {p1}, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->ordinal()I

    move-result v1

    .line 55
    .local v1, ix:I
    iget-object v2, p0, Lorg/codehaus/jackson/util/BufferRecycler;->_byteBuffers:[[B

    aget-object v0, v2, v1

    .line 56
    .local v0, buffer:[B
    if-nez v0, :cond_13

    .line 57
    #getter for: Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->size:I
    invoke-static {p1}, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->access$000(Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;)I

    move-result v2

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/util/BufferRecycler;->balloc(I)[B

    move-result-object v0

    .line 61
    :goto_12
    return-object v0

    .line 59
    :cond_13
    iget-object v2, p0, Lorg/codehaus/jackson/util/BufferRecycler;->_byteBuffers:[[B

    const/4 v3, 0x0

    aput-object v3, v2, v1

    goto :goto_12
.end method

.method public final allocCharBuffer(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;)[C
    .registers 3
    .parameter "type"

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/util/BufferRecycler;->allocCharBuffer(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;I)[C

    move-result-object v0

    return-object v0
.end method

.method public final allocCharBuffer(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;I)[C
    .registers 7
    .parameter "type"
    .parameter "minSize"

    .prologue
    .line 76
    #getter for: Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->size:I
    invoke-static {p1}, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->access$100(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;)I

    move-result v2

    if-le v2, p2, :cond_a

    .line 77
    #getter for: Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->size:I
    invoke-static {p1}, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->access$100(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;)I

    move-result p2

    .line 79
    :cond_a
    invoke-virtual {p1}, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->ordinal()I

    move-result v1

    .line 80
    .local v1, ix:I
    iget-object v2, p0, Lorg/codehaus/jackson/util/BufferRecycler;->_charBuffers:[[C

    aget-object v0, v2, v1

    .line 81
    .local v0, buffer:[C
    if-eqz v0, :cond_17

    array-length v2, v0

    if-ge v2, p2, :cond_1c

    .line 82
    :cond_17
    invoke-direct {p0, p2}, Lorg/codehaus/jackson/util/BufferRecycler;->calloc(I)[C

    move-result-object v0

    .line 86
    :goto_1b
    return-object v0

    .line 84
    :cond_1c
    iget-object v2, p0, Lorg/codehaus/jackson/util/BufferRecycler;->_charBuffers:[[C

    const/4 v3, 0x0

    aput-object v3, v2, v1

    goto :goto_1b
.end method

.method public final releaseByteBuffer(Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;[B)V
    .registers 5
    .parameter "type"
    .parameter "buffer"

    .prologue
    .line 66
    iget-object v0, p0, Lorg/codehaus/jackson/util/BufferRecycler;->_byteBuffers:[[B

    invoke-virtual {p1}, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->ordinal()I

    move-result v1

    aput-object p2, v0, v1

    .line 67
    return-void
.end method

.method public final releaseCharBuffer(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;[C)V
    .registers 5
    .parameter "type"
    .parameter "buffer"

    .prologue
    .line 91
    iget-object v0, p0, Lorg/codehaus/jackson/util/BufferRecycler;->_charBuffers:[[C

    invoke-virtual {p1}, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->ordinal()I

    move-result v1

    aput-object p2, v0, v1

    .line 92
    return-void
.end method
