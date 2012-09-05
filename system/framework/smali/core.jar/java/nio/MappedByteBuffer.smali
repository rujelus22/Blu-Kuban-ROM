.class public abstract Ljava/nio/MappedByteBuffer;
.super Ljava/nio/ByteBuffer;
.source "MappedByteBuffer.java"


# instance fields
.field private final mapMode:Ljava/nio/channels/FileChannel$MapMode;

.field final wrapped:Ljava/nio/DirectByteBuffer;


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 4
    .parameter "directBuffer"

    .prologue
    .line 46
    iget v0, p1, Ljava/nio/Buffer;->capacity:I

    iget-object v1, p1, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    invoke-direct {p0, v0, v1}, Ljava/nio/ByteBuffer;-><init>(ILjava/nio/MemoryBlock;)V

    .line 47
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_13

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 50
    :cond_13
    check-cast p1, Ljava/nio/DirectByteBuffer;

    .end local p1
    iput-object p1, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/MappedByteBuffer;->mapMode:Ljava/nio/channels/FileChannel$MapMode;

    .line 52
    return-void
.end method

.method constructor <init>(Ljava/nio/MemoryBlock;IILjava/nio/channels/FileChannel$MapMode;)V
    .registers 6
    .parameter "block"
    .parameter "capacity"
    .parameter "offset"
    .parameter "mapMode"

    .prologue
    .line 55
    invoke-direct {p0, p2, p1}, Ljava/nio/ByteBuffer;-><init>(ILjava/nio/MemoryBlock;)V

    .line 56
    iput-object p4, p0, Ljava/nio/MappedByteBuffer;->mapMode:Ljava/nio/channels/FileChannel$MapMode;

    .line 57
    sget-object v0, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    if-ne p4, v0, :cond_11

    .line 58
    new-instance v0, Ljava/nio/ReadOnlyDirectByteBuffer;

    invoke-direct {v0, p1, p2, p3}, Ljava/nio/ReadOnlyDirectByteBuffer;-><init>(Ljava/nio/MemoryBlock;II)V

    iput-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    .line 62
    :goto_10
    return-void

    .line 60
    :cond_11
    new-instance v0, Ljava/nio/ReadWriteDirectByteBuffer;

    invoke-direct {v0, p1, p2, p3}, Ljava/nio/ReadWriteDirectByteBuffer;-><init>(Ljava/nio/MemoryBlock;II)V

    iput-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    goto :goto_10
.end method


# virtual methods
.method public final force()Ljava/nio/MappedByteBuffer;
    .registers 8

    .prologue
    .line 117
    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->mapMode:Ljava/nio/channels/FileChannel$MapMode;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    if-ne v0, v1, :cond_1a

    .line 119
    :try_start_6
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v1, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v1}, Ljava/nio/MemoryBlock;->toInt()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v3}, Ljava/nio/MemoryBlock;->getSize()J

    move-result-wide v3

    sget v5, Llibcore/io/OsConstants;->MS_SYNC:I

    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->msync(JJI)V
    :try_end_1a
    .catch Llibcore/io/ErrnoException; {:try_start_6 .. :try_end_1a} :catch_1b

    .line 126
    :cond_1a
    return-object p0

    .line 120
    :catch_1b
    move-exception v6

    .line 123
    .local v6, errnoException:Llibcore/io/ErrnoException;
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final isLoaded()Z
    .registers 16

    .prologue
    .line 70
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v0}, Ljava/nio/MemoryBlock;->toInt()I

    move-result v0

    int-to-long v1, v0

    .line 71
    .local v1, address:J
    iget-object v0, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v0}, Ljava/nio/MemoryBlock;->getSize()J

    move-result-wide v3

    .line 72
    .local v3, size:J
    const-wide/16 v11, 0x0

    cmp-long v0, v3, v11

    if-nez v0, :cond_15

    .line 73
    const/4 v0, 0x1

    .line 91
    :goto_14
    return v0

    .line 77
    :cond_15
    :try_start_15
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v11, Llibcore/io/OsConstants;->_SC_PAGE_SIZE:I

    invoke-interface {v0, v11}, Llibcore/io/Os;->sysconf(I)J

    move-result-wide v11

    long-to-int v10, v11

    .line 78
    .local v10, pageSize:I
    int-to-long v11, v10

    rem-long v11, v1, v11

    long-to-int v9, v11

    .line 79
    .local v9, pageOffset:I
    int-to-long v11, v9

    sub-long/2addr v1, v11

    .line 80
    int-to-long v11, v9

    add-long/2addr v3, v11

    .line 81
    int-to-long v11, v10

    add-long/2addr v11, v3

    const-wide/16 v13, 0x1

    sub-long/2addr v11, v13

    int-to-long v13, v10

    div-long/2addr v11, v13

    long-to-int v8, v11

    .line 82
    .local v8, pageCount:I
    new-array v5, v8, [B

    .line 83
    .local v5, vector:[B
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->mincore(JJ[B)V

    .line 84
    const/4 v7, 0x0

    .local v7, i:I
    :goto_36
    array-length v0, v5

    if-ge v7, v0, :cond_45

    .line 85
    aget-byte v0, v5, v7
    :try_end_3b
    .catch Llibcore/io/ErrnoException; {:try_start_15 .. :try_end_3b} :catch_47

    and-int/lit8 v0, v0, 0x1

    const/4 v11, 0x1

    if-eq v0, v11, :cond_42

    .line 86
    const/4 v0, 0x0

    goto :goto_14

    .line 84
    :cond_42
    add-int/lit8 v7, v7, 0x1

    goto :goto_36

    .line 89
    :cond_45
    const/4 v0, 0x1

    goto :goto_14

    .line 90
    .end local v5           #vector:[B
    .end local v7           #i:I
    .end local v8           #pageCount:I
    .end local v9           #pageOffset:I
    .end local v10           #pageSize:I
    :catch_47
    move-exception v6

    .line 91
    .local v6, errnoException:Llibcore/io/ErrnoException;
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public final load()Ljava/nio/MappedByteBuffer;
    .registers 6

    .prologue
    .line 101
    :try_start_0
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v1, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v1}, Ljava/nio/MemoryBlock;->toInt()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v3}, Ljava/nio/MemoryBlock;->getSize()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Llibcore/io/Os;->mlock(JJ)V

    .line 102
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v1, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v1}, Ljava/nio/MemoryBlock;->toInt()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Ljava/nio/Buffer;->block:Ljava/nio/MemoryBlock;

    invoke-virtual {v3}, Ljava/nio/MemoryBlock;->getSize()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Llibcore/io/Os;->munlock(JJ)V
    :try_end_24
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_24} :catch_25

    .line 105
    :goto_24
    return-object p0

    .line 103
    :catch_25
    move-exception v0

    goto :goto_24
.end method
