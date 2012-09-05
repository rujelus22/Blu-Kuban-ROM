.class public final Lorg/codehaus/jackson/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/lang/Object;

.field protected b:Lorg/codehaus/jackson/JsonEncoding;

.field protected final c:Z

.field protected final d:Lorg/codehaus/jackson/util/BufferRecycler;

.field protected e:[B

.field protected f:[B

.field protected g:[C

.field protected h:[C

.field protected i:[C


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/util/BufferRecycler;Ljava/lang/Object;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v0, p0, Lorg/codehaus/jackson/b/c;->e:[B

    .line 63
    iput-object v0, p0, Lorg/codehaus/jackson/b/c;->f:[B

    .line 70
    iput-object v0, p0, Lorg/codehaus/jackson/b/c;->g:[C

    .line 77
    iput-object v0, p0, Lorg/codehaus/jackson/b/c;->h:[C

    .line 85
    iput-object v0, p0, Lorg/codehaus/jackson/b/c;->i:[C

    .line 95
    iput-object p1, p0, Lorg/codehaus/jackson/b/c;->d:Lorg/codehaus/jackson/util/BufferRecycler;

    .line 96
    iput-object p2, p0, Lorg/codehaus/jackson/b/c;->a:Ljava/lang/Object;

    .line 97
    iput-boolean p3, p0, Lorg/codehaus/jackson/b/c;->c:Z

    .line 98
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lorg/codehaus/jackson/b/c;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Lorg/codehaus/jackson/JsonEncoding;)V
    .registers 2
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lorg/codehaus/jackson/b/c;->b:Lorg/codehaus/jackson/JsonEncoding;

    .line 103
    return-void
.end method

.method public final a([B)V
    .registers 4
    .parameter

    .prologue
    .line 181
    if-eqz p1, :cond_18

    .line 185
    iget-object v0, p0, Lorg/codehaus/jackson/b/c;->e:[B

    if-eq p1, v0, :cond_e

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/b/c;->e:[B

    .line 189
    iget-object v0, p0, Lorg/codehaus/jackson/b/c;->d:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->READ_IO_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/util/BufferRecycler;->a(Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;[B)V

    .line 191
    :cond_18
    return-void
.end method

.method public final a([C)V
    .registers 4
    .parameter

    .prologue
    .line 209
    if-eqz p1, :cond_18

    .line 210
    iget-object v0, p0, Lorg/codehaus/jackson/b/c;->g:[C

    if-eq p1, v0, :cond_e

    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/b/c;->g:[C

    .line 214
    iget-object v0, p0, Lorg/codehaus/jackson/b/c;->d:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->TOKEN_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/util/BufferRecycler;->a(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;[C)V

    .line 216
    :cond_18
    return-void
.end method

.method public final b()Lorg/codehaus/jackson/JsonEncoding;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lorg/codehaus/jackson/b/c;->b:Lorg/codehaus/jackson/JsonEncoding;

    return-object v0
.end method

.method public final b([B)V
    .registers 4
    .parameter

    .prologue
    .line 195
    if-eqz p1, :cond_18

    .line 199
    iget-object v0, p0, Lorg/codehaus/jackson/b/c;->f:[B

    if-eq p1, v0, :cond_e

    .line 200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/b/c;->f:[B

    .line 203
    iget-object v0, p0, Lorg/codehaus/jackson/b/c;->d:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->WRITE_ENCODING_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/util/BufferRecycler;->a(Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;[B)V

    .line 205
    :cond_18
    return-void
.end method

.method public final b([C)V
    .registers 4
    .parameter

    .prologue
    .line 220
    if-eqz p1, :cond_18

    .line 221
    iget-object v0, p0, Lorg/codehaus/jackson/b/c;->h:[C

    if-eq p1, v0, :cond_e

    .line 222
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/b/c;->h:[C

    .line 225
    iget-object v0, p0, Lorg/codehaus/jackson/b/c;->d:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->CONCAT_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/util/BufferRecycler;->a(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;[C)V

    .line 227
    :cond_18
    return-void
.end method

.method public final c([C)V
    .registers 4
    .parameter

    .prologue
    .line 231
    if-eqz p1, :cond_18

    .line 232
    iget-object v0, p0, Lorg/codehaus/jackson/b/c;->i:[C

    if-eq p1, v0, :cond_e

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/b/c;->i:[C

    .line 236
    iget-object v0, p0, Lorg/codehaus/jackson/b/c;->d:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->NAME_COPY_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/util/BufferRecycler;->a(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;[C)V

    .line 238
    :cond_18
    return-void
.end method

.method public final c()Z
    .registers 2

    .prologue
    .line 113
    iget-boolean v0, p0, Lorg/codehaus/jackson/b/c;->c:Z

    return v0
.end method

.method public final d()Lorg/codehaus/jackson/util/c;
    .registers 3

    .prologue
    .line 122
    new-instance v0, Lorg/codehaus/jackson/util/c;

    iget-object v1, p0, Lorg/codehaus/jackson/b/c;->d:Lorg/codehaus/jackson/util/BufferRecycler;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/util/c;-><init>(Lorg/codehaus/jackson/util/BufferRecycler;)V

    return-object v0
.end method

.method public final e()[B
    .registers 3

    .prologue
    .line 132
    iget-object v0, p0, Lorg/codehaus/jackson/b/c;->e:[B

    if-eqz v0, :cond_c

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocReadIOBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_c
    iget-object v0, p0, Lorg/codehaus/jackson/b/c;->d:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->READ_IO_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/BufferRecycler;->a(Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/b/c;->e:[B

    .line 136
    iget-object v0, p0, Lorg/codehaus/jackson/b/c;->e:[B

    return-object v0
.end method

.method public final f()[B
    .registers 3

    .prologue
    .line 141
    iget-object v0, p0, Lorg/codehaus/jackson/b/c;->f:[B

    if-eqz v0, :cond_c

    .line 142
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocWriteEncodingBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_c
    iget-object v0, p0, Lorg/codehaus/jackson/b/c;->d:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->WRITE_ENCODING_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/BufferRecycler;->a(Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/b/c;->f:[B

    .line 145
    iget-object v0, p0, Lorg/codehaus/jackson/b/c;->f:[B

    return-object v0
.end method

.method public final g()[C
    .registers 3

    .prologue
    .line 150
    iget-object v0, p0, Lorg/codehaus/jackson/b/c;->g:[C

    if-eqz v0, :cond_c

    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocTokenBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_c
    iget-object v0, p0, Lorg/codehaus/jackson/b/c;->d:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->TOKEN_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/BufferRecycler;->a(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;)[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/b/c;->g:[C

    .line 154
    iget-object v0, p0, Lorg/codehaus/jackson/b/c;->g:[C

    return-object v0
.end method

.method public final h()[C
    .registers 3

    .prologue
    .line 159
    iget-object v0, p0, Lorg/codehaus/jackson/b/c;->h:[C

    if-eqz v0, :cond_c

    .line 160
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocConcatBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_c
    iget-object v0, p0, Lorg/codehaus/jackson/b/c;->d:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->CONCAT_BUFFER:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/BufferRecycler;->a(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;)[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/b/c;->h:[C

    .line 163
    iget-object v0, p0, Lorg/codehaus/jackson/b/c;->h:[C

    return-object v0
.end method
