.class public final Lorg/codehaus/jackson/io/IOContext;
.super Ljava/lang/Object;
.source "IOContext.java"


# instance fields
.field protected final _bufferRecycler:Lorg/codehaus/jackson/util/BufferRecycler;

.field protected _concatCBuffer:[C

.field protected _encoding:Lorg/codehaus/jackson/JsonEncoding;

.field protected final _managedResource:Z

.field protected _nameCopyBuffer:[C

.field protected _readIOBuffer:[B

.field protected final _sourceRef:Ljava/lang/Object;

.field protected _tokenCBuffer:[C

.field protected _writeEncodingBuffer:[B


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/util/BufferRecycler;Ljava/lang/Object;Z)V
    .registers 5
    .parameter "br"
    .parameter "sourceRef"
    .parameter "managedResource"

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_readIOBuffer:[B

    .line 63
    iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_writeEncodingBuffer:[B

    .line 70
    iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_tokenCBuffer:[C

    .line 77
    iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_concatCBuffer:[C

    .line 85
    iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_nameCopyBuffer:[C

    .line 95
    iput-object p1, p0, Lorg/codehaus/jackson/io/IOContext;->_bufferRecycler:Lorg/codehaus/jackson/util/BufferRecycler;

    .line 96
    iput-object p2, p0, Lorg/codehaus/jackson/io/IOContext;->_sourceRef:Ljava/lang/Object;

    .line 97
    iput-boolean p3, p0, Lorg/codehaus/jackson/io/IOContext;->_managedResource:Z

    .line 98
    return-void
.end method


# virtual methods
.method public final allocConcatBuffer()[C
    .registers 3

    .prologue
    .line 159
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_concatCBuffer:[C

    if-eqz v0, :cond_c

    .line 160
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocConcatBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_c
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_bufferRecycler:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->CONCAT_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/BufferRecycler;->allocCharBuffer(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;)[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_concatCBuffer:[C

    .line 163
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_concatCBuffer:[C

    return-object v0
.end method

.method public final allocReadIOBuffer()[B
    .registers 3

    .prologue
    .line 132
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_readIOBuffer:[B

    if-eqz v0, :cond_c

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocReadIOBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_c
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_bufferRecycler:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->READ_IO_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/BufferRecycler;->allocByteBuffer(Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_readIOBuffer:[B

    .line 136
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_readIOBuffer:[B

    return-object v0
.end method

.method public final allocTokenBuffer()[C
    .registers 3

    .prologue
    .line 150
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_tokenCBuffer:[C

    if-eqz v0, :cond_c

    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocTokenBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_c
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_bufferRecycler:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->TOKEN_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/BufferRecycler;->allocCharBuffer(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;)[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_tokenCBuffer:[C

    .line 154
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_tokenCBuffer:[C

    return-object v0
.end method

.method public final allocWriteEncodingBuffer()[B
    .registers 3

    .prologue
    .line 141
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_writeEncodingBuffer:[B

    if-eqz v0, :cond_c

    .line 142
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocWriteEncodingBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_c
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_bufferRecycler:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->WRITE_ENCODING_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/BufferRecycler;->allocByteBuffer(Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_writeEncodingBuffer:[B

    .line 145
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_writeEncodingBuffer:[B

    return-object v0
.end method

.method public final constructTextBuffer()Lorg/codehaus/jackson/util/TextBuffer;
    .registers 3

    .prologue
    .line 122
    new-instance v0, Lorg/codehaus/jackson/util/TextBuffer;

    iget-object v1, p0, Lorg/codehaus/jackson/io/IOContext;->_bufferRecycler:Lorg/codehaus/jackson/util/BufferRecycler;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/util/TextBuffer;-><init>(Lorg/codehaus/jackson/util/BufferRecycler;)V

    return-object v0
.end method

.method public final getEncoding()Lorg/codehaus/jackson/JsonEncoding;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_encoding:Lorg/codehaus/jackson/JsonEncoding;

    return-object v0
.end method

.method public final getSourceReference()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_sourceRef:Ljava/lang/Object;

    return-object v0
.end method

.method public final isResourceManaged()Z
    .registers 2

    .prologue
    .line 113
    iget-boolean v0, p0, Lorg/codehaus/jackson/io/IOContext;->_managedResource:Z

    return v0
.end method

.method public final releaseConcatBuffer([C)V
    .registers 4
    .parameter "buf"

    .prologue
    .line 220
    if-eqz p1, :cond_18

    .line 221
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_concatCBuffer:[C

    if-eq p1, v0, :cond_e

    .line 222
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_concatCBuffer:[C

    .line 225
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_bufferRecycler:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->CONCAT_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/util/BufferRecycler;->releaseCharBuffer(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;[C)V

    .line 227
    :cond_18
    return-void
.end method

.method public final releaseNameCopyBuffer([C)V
    .registers 4
    .parameter "buf"

    .prologue
    .line 231
    if-eqz p1, :cond_18

    .line 232
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_nameCopyBuffer:[C

    if-eq p1, v0, :cond_e

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_nameCopyBuffer:[C

    .line 236
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_bufferRecycler:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->NAME_COPY_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/util/BufferRecycler;->releaseCharBuffer(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;[C)V

    .line 238
    :cond_18
    return-void
.end method

.method public final releaseReadIOBuffer([B)V
    .registers 4
    .parameter "buf"

    .prologue
    .line 181
    if-eqz p1, :cond_18

    .line 185
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_readIOBuffer:[B

    if-eq p1, v0, :cond_e

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_readIOBuffer:[B

    .line 189
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_bufferRecycler:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->READ_IO_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/util/BufferRecycler;->releaseByteBuffer(Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;[B)V

    .line 191
    :cond_18
    return-void
.end method

.method public final releaseTokenBuffer([C)V
    .registers 4
    .parameter "buf"

    .prologue
    .line 209
    if-eqz p1, :cond_18

    .line 210
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_tokenCBuffer:[C

    if-eq p1, v0, :cond_e

    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_tokenCBuffer:[C

    .line 214
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_bufferRecycler:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->TOKEN_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/util/BufferRecycler;->releaseCharBuffer(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;[C)V

    .line 216
    :cond_18
    return-void
.end method

.method public final releaseWriteEncodingBuffer([B)V
    .registers 4
    .parameter "buf"

    .prologue
    .line 195
    if-eqz p1, :cond_18

    .line 199
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_writeEncodingBuffer:[B

    if-eq p1, v0, :cond_e

    .line 200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_writeEncodingBuffer:[B

    .line 203
    iget-object v0, p0, Lorg/codehaus/jackson/io/IOContext;->_bufferRecycler:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->WRITE_ENCODING_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/util/BufferRecycler;->releaseByteBuffer(Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;[B)V

    .line 205
    :cond_18
    return-void
.end method

.method public setEncoding(Lorg/codehaus/jackson/JsonEncoding;)V
    .registers 2
    .parameter "enc"

    .prologue
    .line 102
    iput-object p1, p0, Lorg/codehaus/jackson/io/IOContext;->_encoding:Lorg/codehaus/jackson/JsonEncoding;

    .line 103
    return-void
.end method
