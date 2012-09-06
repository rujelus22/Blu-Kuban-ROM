.class public final Lorg/codehaus/jackson/util/BufferRecycler;
.super Ljava/lang/Object;


# instance fields
.field protected final a:[[B

.field protected final b:[[C


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->values()[Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [[B

    iput-object v0, p0, Lorg/codehaus/jackson/util/BufferRecycler;->a:[[B

    invoke-static {}, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->values()[Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [[C

    iput-object v0, p0, Lorg/codehaus/jackson/util/BufferRecycler;->b:[[C

    return-void
.end method


# virtual methods
.method public final a(Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;[B)V
    .registers 5

    iget-object v0, p0, Lorg/codehaus/jackson/util/BufferRecycler;->a:[[B

    invoke-virtual {p1}, Lorg/codehaus/jackson/util/BufferRecycler$ByteBufferType;->ordinal()I

    move-result v1

    aput-object p2, v0, v1

    return-void
.end method

.method public final a(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;[C)V
    .registers 5

    iget-object v0, p0, Lorg/codehaus/jackson/util/BufferRecycler;->b:[[C

    invoke-virtual {p1}, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->ordinal()I

    move-result v1

    aput-object p2, v0, v1

    return-void
.end method

.method public final a(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;)[C
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/util/BufferRecycler;->a(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;I)[C

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;I)[C
    .registers 7

    invoke-static {p1}, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->a(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;)I

    move-result v0

    if-le v0, p2, :cond_a

    invoke-static {p1}, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->a(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;)I

    move-result p2

    :cond_a
    invoke-virtual {p1}, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->ordinal()I

    move-result v1

    iget-object v0, p0, Lorg/codehaus/jackson/util/BufferRecycler;->b:[[C

    aget-object v0, v0, v1

    if-eqz v0, :cond_17

    array-length v2, v0

    if-ge v2, p2, :cond_1a

    :cond_17
    new-array v0, p2, [C

    :goto_19
    return-object v0

    :cond_1a
    iget-object v2, p0, Lorg/codehaus/jackson/util/BufferRecycler;->b:[[C

    const/4 v3, 0x0

    aput-object v3, v2, v1

    goto :goto_19
.end method
