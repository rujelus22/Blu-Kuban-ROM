.class public final Llibcore/io/MemoryMappedFile;
.super Ljava/lang/Object;
.source "MemoryMappedFile.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private address:J

.field private final size:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 5
    .parameter "address"
    .parameter "size"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p1, p0, Llibcore/io/MemoryMappedFile;->address:J

    .line 44
    iput-wide p3, p0, Llibcore/io/MemoryMappedFile;->size:J

    .line 45
    return-void
.end method

.method public static mmapRO(Ljava/lang/String;)Llibcore/io/MemoryMappedFile;
    .registers 13
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    .prologue
    const-wide/16 v1, 0x0

    .line 51
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v5, Llibcore/io/OsConstants;->O_RDONLY:I

    const/4 v6, 0x0

    invoke-interface {v0, p0, v5, v6}, Llibcore/io/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v7

    .line 52
    .local v7, fd:Ljava/io/FileDescriptor;
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, v7}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Llibcore/io/StructStat;

    move-result-object v0

    iget-wide v3, v0, Llibcore/io/StructStat;->st_size:J

    .line 53
    .local v3, size:J
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v5, Llibcore/io/OsConstants;->PROT_READ:I

    sget v6, Llibcore/io/OsConstants;->MAP_SHARED:I

    move-wide v8, v1

    invoke-interface/range {v0 .. v9}, Llibcore/io/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v10

    .line 54
    .local v10, address:J
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, v7}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V

    .line 55
    new-instance v0, Llibcore/io/MemoryMappedFile;

    invoke-direct {v0, v10, v11, v3, v4}, Llibcore/io/MemoryMappedFile;-><init>(JJ)V

    return-object v0
.end method


# virtual methods
.method public bigEndianIterator()Llibcore/io/BufferIterator;
    .registers 6

    .prologue
    .line 77
    new-instance v1, Llibcore/io/NioBufferIterator;

    iget-wide v2, p0, Llibcore/io/MemoryMappedFile;->address:J

    long-to-int v2, v2

    iget-wide v3, p0, Llibcore/io/MemoryMappedFile;->size:J

    long-to-int v3, v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-eq v0, v4, :cond_15

    const/4 v0, 0x1

    :goto_11
    invoke-direct {v1, v2, v3, v0}, Llibcore/io/NioBufferIterator;-><init>(IIZ)V

    return-object v1

    :cond_15
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public declared-synchronized close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 67
    monitor-enter p0

    :try_start_3
    iget-wide v0, p0, Llibcore/io/MemoryMappedFile;->address:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_16

    .line 68
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-wide v1, p0, Llibcore/io/MemoryMappedFile;->address:J

    iget-wide v3, p0, Llibcore/io/MemoryMappedFile;->size:J

    invoke-interface {v0, v1, v2, v3, v4}, Llibcore/io/Os;->munmap(JJ)V

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Llibcore/io/MemoryMappedFile;->address:J
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    .line 71
    :cond_16
    monitor-exit p0

    return-void

    .line 67
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public littleEndianIterator()Llibcore/io/BufferIterator;
    .registers 6

    .prologue
    .line 84
    new-instance v1, Llibcore/io/NioBufferIterator;

    iget-wide v2, p0, Llibcore/io/MemoryMappedFile;->address:J

    long-to-int v2, v2

    iget-wide v3, p0, Llibcore/io/MemoryMappedFile;->size:J

    long-to-int v3, v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-eq v0, v4, :cond_15

    const/4 v0, 0x1

    :goto_11
    invoke-direct {v1, v2, v3, v0}, Llibcore/io/NioBufferIterator;-><init>(IIZ)V

    return-object v1

    :cond_15
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public size()J
    .registers 3

    .prologue
    .line 91
    iget-wide v0, p0, Llibcore/io/MemoryMappedFile;->size:J

    return-wide v0
.end method
