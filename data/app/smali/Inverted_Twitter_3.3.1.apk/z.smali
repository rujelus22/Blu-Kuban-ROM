.class public final Lz;
.super Ljava/lang/Object;


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

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lz;->e:[B

    iput-object v0, p0, Lz;->f:[B

    iput-object v0, p0, Lz;->g:[C

    iput-object v0, p0, Lz;->h:[C

    iput-object v0, p0, Lz;->i:[C

    iput-object p1, p0, Lz;->d:Lorg/codehaus/jackson/util/BufferRecycler;

    iput-object p2, p0, Lz;->a:Ljava/lang/Object;

    iput-boolean p3, p0, Lz;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lz;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Lorg/codehaus/jackson/JsonEncoding;)V
    .registers 2

    iput-object p1, p0, Lz;->b:Lorg/codehaus/jackson/JsonEncoding;

    return-void
.end method

.method public final a([B)V
    .registers 4

    if-eqz p1, :cond_18

    iget-object v0, p0, Lz;->e:[B

    if-eq p1, v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lz;->e:[B

    iget-object v0, p0, Lz;->d:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->a:Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/util/BufferRecycler;->a(Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;[B)V

    :cond_18
    return-void
.end method

.method public final a([C)V
    .registers 4

    if-eqz p1, :cond_18

    iget-object v0, p0, Lz;->g:[C

    if-eq p1, v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lz;->g:[C

    iget-object v0, p0, Lz;->d:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->a:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/util/BufferRecycler;->a(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;[C)V

    :cond_18
    return-void
.end method

.method public final b()Lorg/codehaus/jackson/JsonEncoding;
    .registers 2

    iget-object v0, p0, Lz;->b:Lorg/codehaus/jackson/JsonEncoding;

    return-object v0
.end method

.method public final b([C)V
    .registers 4

    if-eqz p1, :cond_18

    iget-object v0, p0, Lz;->h:[C

    if-eq p1, v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lz;->h:[C

    iget-object v0, p0, Lz;->d:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->b:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/util/BufferRecycler;->a(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;[C)V

    :cond_18
    return-void
.end method

.method public final c([C)V
    .registers 4

    if-eqz p1, :cond_18

    iget-object v0, p0, Lz;->i:[C

    if-eq p1, v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lz;->i:[C

    iget-object v0, p0, Lz;->d:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->d:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/util/BufferRecycler;->a(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;[C)V

    :cond_18
    return-void
.end method

.method public final c()Z
    .registers 2

    iget-boolean v0, p0, Lz;->c:Z

    return v0
.end method

.method public final d()Lorg/codehaus/jackson/util/c;
    .registers 3

    new-instance v0, Lorg/codehaus/jackson/util/c;

    iget-object v1, p0, Lz;->d:Lorg/codehaus/jackson/util/BufferRecycler;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/util/c;-><init>(Lorg/codehaus/jackson/util/BufferRecycler;)V

    return-object v0
.end method

.method public final e()[C
    .registers 3

    iget-object v0, p0, Lz;->g:[C

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocTokenBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lz;->d:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->a:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/BufferRecycler;->a(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;)[C

    move-result-object v0

    iput-object v0, p0, Lz;->g:[C

    iget-object v0, p0, Lz;->g:[C

    return-object v0
.end method

.method public final f()[C
    .registers 3

    iget-object v0, p0, Lz;->h:[C

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocConcatBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lz;->d:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->b:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/BufferRecycler;->a(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;)[C

    move-result-object v0

    iput-object v0, p0, Lz;->h:[C

    iget-object v0, p0, Lz;->h:[C

    return-object v0
.end method
