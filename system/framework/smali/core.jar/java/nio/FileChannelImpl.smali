.class final Ljava/nio/FileChannelImpl;
.super Ljava/nio/channels/FileChannel;
.source "FileChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/FileChannelImpl$FileLockImpl;
    }
.end annotation


# static fields
.field private static final LOCK_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/nio/channels/FileLock;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final fd:Ljava/io/FileDescriptor;

.field private final locks:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Ljava/nio/channels/FileLock;",
            ">;"
        }
    .end annotation
.end field

.field private final mode:I

.field private final stream:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    new-instance v0, Ljava/nio/FileChannelImpl$1;

    invoke-direct {v0}, Ljava/nio/FileChannelImpl$1;-><init>()V

    sput-object v0, Ljava/nio/FileChannelImpl;->LOCK_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/io/FileDescriptor;I)V
    .registers 6
    .parameter "stream"
    .parameter "fd"
    .parameter "mode"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/nio/channels/FileChannel;-><init>()V

    .line 59
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Ljava/nio/FileChannelImpl;->LOCK_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Ljava/nio/FileChannelImpl;->locks:Ljava/util/SortedSet;

    .line 66
    iput-object p2, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 67
    iput-object p1, p0, Ljava/nio/FileChannelImpl;->stream:Ljava/lang/Object;

    .line 68
    iput p3, p0, Ljava/nio/FileChannelImpl;->mode:I

    .line 69
    return-void
.end method

.method private declared-synchronized addLock(Ljava/nio/channels/FileLock;)V
    .registers 10
    .parameter "lock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/OverlappingFileLockException;
        }
    .end annotation

    .prologue
    .line 534
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->position()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->size()J

    move-result-wide v6

    add-long v2, v4, v6

    .line 535
    .local v2, lockEnd:J
    iget-object v4, p0, Ljava/nio/FileChannelImpl;->locks:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/FileLock;

    .line 536
    .local v0, existingLock:Ljava/nio/channels/FileLock;
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->position()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-lez v4, :cond_2c

    .line 545
    .end local v0           #existingLock:Ljava/nio/channels/FileLock;
    :cond_25
    iget-object v4, p0, Ljava/nio/FileChannelImpl;->locks:Ljava/util/SortedSet;

    invoke-interface {v4, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_40

    .line 546
    monitor-exit p0

    return-void

    .line 541
    .restart local v0       #existingLock:Ljava/nio/channels/FileLock;
    :cond_2c
    :try_start_2c
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->position()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->size()J

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Ljava/nio/channels/FileLock;->overlaps(JJ)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 542
    new-instance v4, Ljava/nio/channels/OverlappingFileLockException;

    invoke-direct {v4}, Ljava/nio/channels/OverlappingFileLockException;-><init>()V

    throw v4
    :try_end_40
    .catchall {:try_start_2c .. :try_end_40} :catchall_40

    .line 534
    .end local v0           #existingLock:Ljava/nio/channels/FileLock;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #lockEnd:J
    :catchall_40
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private basicLock(JJZZ)Ljava/nio/channels/FileLock;
    .registers 18
    .parameter "position"
    .parameter "size"
    .parameter "shared"
    .parameter "wait"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget v1, p0, Ljava/nio/FileChannelImpl;->mode:I

    sget v2, Llibcore/io/OsConstants;->O_ACCMODE:I

    and-int v7, v1, v2

    .line 97
    .local v7, accessMode:I
    sget v1, Llibcore/io/OsConstants;->O_RDONLY:I

    if-ne v7, v1, :cond_12

    .line 98
    if-nez p5, :cond_1e

    .line 99
    new-instance v1, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v1}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v1

    .line 101
    :cond_12
    sget v1, Llibcore/io/OsConstants;->O_WRONLY:I

    if-ne v7, v1, :cond_1e

    .line 102
    if-eqz p5, :cond_1e

    .line 103
    new-instance v1, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v1}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v1

    .line 107
    :cond_1e
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_2a

    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-gez v1, :cond_4d

    .line 108
    :cond_2a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_4d
    new-instance v0, Ljava/nio/FileChannelImpl$FileLockImpl;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Ljava/nio/FileChannelImpl$FileLockImpl;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    .line 112
    .local v0, pendingLock:Ljava/nio/channels/FileLock;
    invoke-direct {p0, v0}, Ljava/nio/FileChannelImpl;->addLock(Ljava/nio/channels/FileLock;)V

    .line 114
    new-instance v9, Llibcore/io/StructFlock;

    invoke-direct {v9}, Llibcore/io/StructFlock;-><init>()V

    .line 115
    .local v9, flock:Llibcore/io/StructFlock;
    if-eqz p5, :cond_8c

    sget v1, Llibcore/io/OsConstants;->F_RDLCK:I

    :goto_63
    int-to-short v1, v1

    iput-short v1, v9, Llibcore/io/StructFlock;->l_type:S

    .line 116
    sget v1, Llibcore/io/OsConstants;->SEEK_SET:I

    int-to-short v1, v1

    iput-short v1, v9, Llibcore/io/StructFlock;->l_whence:S

    .line 117
    iput-wide p1, v9, Llibcore/io/StructFlock;->l_start:J

    .line 118
    invoke-static {p3, p4}, Ljava/nio/FileChannelImpl;->translateLockLength(J)J

    move-result-wide v1

    iput-wide v1, v9, Llibcore/io/StructFlock;->l_len:J

    .line 120
    const/4 v10, 0x0

    .line 122
    .local v10, success:Z
    :try_start_74
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v3, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    if-eqz p6, :cond_8f

    sget v1, Llibcore/io/OsConstants;->F_SETLKW64:I

    :goto_7c
    invoke-interface {v2, v3, v1, v9}, Llibcore/io/Os;->fcntlFlock(Ljava/io/FileDescriptor;ILlibcore/io/StructFlock;)I
    :try_end_7f
    .catchall {:try_start_74 .. :try_end_7f} :catchall_9a
    .catch Llibcore/io/ErrnoException; {:try_start_74 .. :try_end_7f} :catch_94

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_92

    const/4 v10, 0x1

    .line 126
    :goto_84
    if-nez v10, :cond_89

    .line 127
    invoke-direct {p0, v0}, Ljava/nio/FileChannelImpl;->removeLock(Ljava/nio/channels/FileLock;)V

    .line 130
    :cond_89
    if-eqz v10, :cond_a1

    .end local v0           #pendingLock:Ljava/nio/channels/FileLock;
    :goto_8b
    return-object v0

    .line 115
    .end local v10           #success:Z
    .restart local v0       #pendingLock:Ljava/nio/channels/FileLock;
    :cond_8c
    sget v1, Llibcore/io/OsConstants;->F_WRLCK:I

    goto :goto_63

    .line 122
    .restart local v10       #success:Z
    :cond_8f
    :try_start_8f
    sget v1, Llibcore/io/OsConstants;->F_SETLK64:I
    :try_end_91
    .catchall {:try_start_8f .. :try_end_91} :catchall_9a
    .catch Llibcore/io/ErrnoException; {:try_start_8f .. :try_end_91} :catch_94

    goto :goto_7c

    :cond_92
    const/4 v10, 0x0

    goto :goto_84

    .line 123
    :catch_94
    move-exception v8

    .line 124
    .local v8, errnoException:Llibcore/io/ErrnoException;
    :try_start_95
    invoke-virtual {v8}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
    :try_end_9a
    .catchall {:try_start_95 .. :try_end_9a} :catchall_9a

    .line 126
    .end local v8           #errnoException:Llibcore/io/ErrnoException;
    :catchall_9a
    move-exception v1

    if-nez v10, :cond_a0

    .line 127
    invoke-direct {p0, v0}, Ljava/nio/FileChannelImpl;->removeLock(Ljava/nio/channels/FileLock;)V

    :cond_a0
    throw v1

    .line 130
    :cond_a1
    const/4 v0, 0x0

    goto :goto_8b
.end method

.method static calculateTotalRemaining([Ljava/nio/ByteBuffer;IIZ)I
    .registers 7
    .parameter "buffers"
    .parameter "offset"
    .parameter "length"
    .parameter "copyingIn"

    .prologue
    .line 514
    const/4 v0, 0x0

    .line 515
    .local v0, count:I
    move v1, p1

    .local v1, i:I
    :goto_2
    add-int v2, p1, p2

    if-ge v1, v2, :cond_17

    .line 516
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int/2addr v0, v2

    .line 517
    if-eqz p3, :cond_14

    .line 518
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->checkWritable()V

    .line 515
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 521
    :cond_17
    return v0
.end method

.method private checkOpen()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_c

    .line 73
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 75
    :cond_c
    return-void
.end method

.method private checkReadable()V
    .registers 3

    .prologue
    .line 78
    iget v0, p0, Ljava/nio/FileChannelImpl;->mode:I

    sget v1, Llibcore/io/OsConstants;->O_ACCMODE:I

    and-int/2addr v0, v1

    sget v1, Llibcore/io/OsConstants;->O_WRONLY:I

    if-ne v0, v1, :cond_f

    .line 79
    new-instance v0, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v0

    .line 81
    :cond_f
    return-void
.end method

.method private checkWritable()V
    .registers 3

    .prologue
    .line 84
    iget v0, p0, Ljava/nio/FileChannelImpl;->mode:I

    sget v1, Llibcore/io/OsConstants;->O_ACCMODE:I

    and-int/2addr v0, v1

    sget v1, Llibcore/io/OsConstants;->O_RDONLY:I

    if-ne v0, v1, :cond_f

    .line 85
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v0

    .line 87
    :cond_f
    return-void
.end method

.method private readImpl(Ljava/nio/ByteBuffer;J)I
    .registers 11
    .parameter "buffer"
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 282
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->checkWritable()V

    .line 283
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    .line 284
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkReadable()V

    .line 285
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_12

    .line 316
    :goto_11
    return v4

    .line 288
    :cond_12
    const/4 v0, 0x0

    .line 289
    .local v0, bytesRead:I
    const/4 v1, 0x0

    .line 291
    .local v1, completed:Z
    :try_start_14
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->begin()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_53

    .line 293
    const-wide/16 v5, -0x1

    cmp-long v5, p2, v5

    if-nez v5, :cond_3c

    .line 294
    :try_start_1d
    sget-object v5, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v6, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v5, v6, p1}, Llibcore/io/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_53
    .catch Llibcore/io/ErrnoException; {:try_start_1d .. :try_end_24} :catch_45

    move-result v0

    .line 298
    :goto_25
    if-nez v0, :cond_28

    .line 299
    const/4 v0, -0x1

    .line 309
    :cond_28
    :goto_28
    const/4 v1, 0x1

    .line 311
    if-eqz v1, :cond_5c

    if-ltz v0, :cond_5c

    :goto_2d
    invoke-virtual {p0, v3}, Ljava/nio/FileChannelImpl;->end(Z)V

    .line 313
    if-lez v0, :cond_3a

    .line 314
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_3a
    move v4, v0

    .line 316
    goto :goto_11

    .line 296
    :cond_3c
    :try_start_3c
    sget-object v5, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v6, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v5, v6, p1, p2, p3}, Llibcore/io/Os;->pread(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_53
    .catch Llibcore/io/ErrnoException; {:try_start_3c .. :try_end_43} :catch_45

    move-result v0

    goto :goto_25

    .line 301
    :catch_45
    move-exception v2

    .line 302
    .local v2, errnoException:Llibcore/io/ErrnoException;
    :try_start_46
    iget v5, v2, Llibcore/io/ErrnoException;->errno:I

    sget v6, Llibcore/io/OsConstants;->EAGAIN:I

    if-ne v5, v6, :cond_4e

    .line 304
    const/4 v0, 0x0

    goto :goto_28

    .line 306
    :cond_4e
    invoke-virtual {v2}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v5

    throw v5
    :try_end_53
    .catchall {:try_start_46 .. :try_end_53} :catchall_53

    .line 311
    .end local v2           #errnoException:Llibcore/io/ErrnoException;
    :catchall_53
    move-exception v5

    if-eqz v1, :cond_5e

    if-ltz v0, :cond_5e

    :goto_58
    invoke-virtual {p0, v3}, Ljava/nio/FileChannelImpl;->end(Z)V

    throw v5

    :cond_5c
    move v3, v4

    goto :goto_2d

    :cond_5e
    move v3, v4

    goto :goto_58
.end method

.method private declared-synchronized removeLock(Ljava/nio/channels/FileLock;)V
    .registers 3
    .parameter "lock"

    .prologue
    .line 553
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/nio/FileChannelImpl;->locks:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 554
    monitor-exit p0

    return-void

    .line 553
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private transferIoVec(Ljava/nio/IoVec;)I
    .registers 5
    .parameter "ioVec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    invoke-virtual {p1}, Ljava/nio/IoVec;->init()I

    move-result v2

    if-nez v2, :cond_8

    .line 321
    const/4 v0, 0x0

    .line 333
    :goto_7
    return v0

    .line 323
    :cond_8
    const/4 v0, 0x0

    .line 324
    .local v0, bytesTransferred:I
    const/4 v1, 0x0

    .line 326
    .local v1, completed:Z
    :try_start_a
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->begin()V

    .line 327
    iget-object v2, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1, v2}, Ljava/nio/IoVec;->doTransfer(Ljava/io/FileDescriptor;)I
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_1b

    move-result v0

    .line 328
    const/4 v1, 0x1

    .line 330
    invoke-virtual {p0, v1}, Ljava/nio/FileChannelImpl;->end(Z)V

    .line 332
    invoke-virtual {p1, v0}, Ljava/nio/IoVec;->didTransfer(I)V

    goto :goto_7

    .line 330
    :catchall_1b
    move-exception v2

    invoke-virtual {p0, v1}, Ljava/nio/FileChannelImpl;->end(Z)V

    throw v2
.end method

.method private static translateLockLength(J)J
    .registers 4
    .parameter "byteCount"

    .prologue
    .line 135
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_b

    const-wide/16 p0, 0x0

    .end local p0
    :cond_b
    return-wide p0
.end method

.method private writeImpl(Ljava/nio/ByteBuffer;J)I
    .registers 9
    .parameter "buffer"
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 470
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    .line 471
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkWritable()V

    .line 472
    if-nez p1, :cond_10

    .line 473
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "buffer == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 475
    :cond_10
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_18

    .line 476
    const/4 v0, 0x0

    .line 498
    :cond_17
    :goto_17
    return v0

    .line 478
    :cond_18
    const/4 v0, 0x0

    .line 479
    .local v0, bytesWritten:I
    const/4 v1, 0x0

    .line 481
    .local v1, completed:Z
    :try_start_1a
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->begin()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_49

    .line 483
    const-wide/16 v3, -0x1

    cmp-long v3, p2, v3

    if-nez v3, :cond_3a

    .line 484
    :try_start_23
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v4, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v3, v4, p1}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_49
    .catch Llibcore/io/ErrnoException; {:try_start_23 .. :try_end_2a} :catch_43

    move-result v0

    .line 491
    :goto_2b
    const/4 v1, 0x1

    .line 493
    invoke-virtual {p0, v1}, Ljava/nio/FileChannelImpl;->end(Z)V

    .line 495
    if-lez v0, :cond_17

    .line 496
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_17

    .line 486
    :cond_3a
    :try_start_3a
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v4, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v3, v4, p1, p2, p3}, Llibcore/io/Os;->pwrite(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_49
    .catch Llibcore/io/ErrnoException; {:try_start_3a .. :try_end_41} :catch_43

    move-result v0

    goto :goto_2b

    .line 488
    :catch_43
    move-exception v2

    .line 489
    .local v2, errnoException:Llibcore/io/ErrnoException;
    :try_start_44
    invoke-virtual {v2}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v3

    throw v3
    :try_end_49
    .catchall {:try_start_44 .. :try_end_49} :catchall_49

    .line 493
    .end local v2           #errnoException:Llibcore/io/ErrnoException;
    :catchall_49
    move-exception v3

    invoke-virtual {p0, v1}, Ljava/nio/FileChannelImpl;->end(Z)V

    throw v3
.end method


# virtual methods
.method public force(Z)V
    .registers 5
    .parameter "metadata"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    .line 204
    iget v1, p0, Ljava/nio/FileChannelImpl;->mode:I

    sget v2, Llibcore/io/OsConstants;->O_ACCMODE:I

    and-int/2addr v1, v2

    sget v2, Llibcore/io/OsConstants;->O_RDONLY:I

    if-eq v1, v2, :cond_15

    .line 206
    if-eqz p1, :cond_16

    .line 207
    :try_start_e
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v1, v2}, Llibcore/io/Os;->fsync(Ljava/io/FileDescriptor;)V

    .line 215
    :cond_15
    :goto_15
    return-void

    .line 209
    :cond_16
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v1, v2}, Llibcore/io/Os;->fdatasync(Ljava/io/FileDescriptor;)V
    :try_end_1d
    .catch Llibcore/io/ErrnoException; {:try_start_e .. :try_end_1d} :catch_1e

    goto :goto_15

    .line 211
    :catch_1e
    move-exception v0

    .line 212
    .local v0, errnoException:Llibcore/io/ErrnoException;
    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 525
    iget-object v0, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected implCloseChannel()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Ljava/nio/FileChannelImpl;->stream:Ljava/lang/Object;

    instance-of v0, v0, Ljava/io/Closeable;

    if-eqz v0, :cond_d

    .line 91
    iget-object v0, p0, Ljava/nio/FileChannelImpl;->stream:Ljava/lang/Object;

    check-cast v0, Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 93
    :cond_d
    return-void
.end method

.method public final lock(JJZ)Ljava/nio/channels/FileLock;
    .registers 15
    .parameter "position"
    .parameter "size"
    .parameter "shared"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    .line 162
    const/4 v8, 0x0

    .line 164
    .local v8, resultLock:Ljava/nio/channels/FileLock;
    const/4 v7, 0x0

    .line 166
    .local v7, completed:Z
    :try_start_5
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->begin()V

    .line 167
    const/4 v6, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, Ljava/nio/FileChannelImpl;->basicLock(JJZZ)Ljava/nio/channels/FileLock;
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_16

    move-result-object v8

    .line 168
    const/4 v7, 0x1

    .line 170
    invoke-virtual {p0, v7}, Ljava/nio/FileChannelImpl;->end(Z)V

    .line 173
    return-object v8

    .line 170
    :catchall_16
    move-exception v0

    invoke-virtual {p0, v7}, Ljava/nio/FileChannelImpl;->end(Z)V

    throw v0
.end method

.method public final map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    .registers 20
    .parameter "mapMode"
    .parameter "position"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    .line 219
    if-nez p1, :cond_d

    .line 220
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v5, "mapMode == null"

    invoke-direct {v2, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 222
    :cond_d
    const-wide/16 v5, 0x0

    cmp-long v2, p2, v5

    if-ltz v2, :cond_20

    const-wide/16 v5, 0x0

    cmp-long v2, p4, v5

    if-ltz v2, :cond_20

    const-wide/32 v5, 0x7fffffff

    cmp-long v2, p4, v5

    if-lez v2, :cond_47

    .line 223
    :cond_20
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "position="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p4

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 225
    :cond_47
    iget v2, p0, Ljava/nio/FileChannelImpl;->mode:I

    sget v5, Llibcore/io/OsConstants;->O_ACCMODE:I

    and-int v8, v2, v5

    .line 226
    .local v8, accessMode:I
    sget v2, Llibcore/io/OsConstants;->O_RDONLY:I

    if-ne v8, v2, :cond_5b

    .line 227
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    if-eq p1, v2, :cond_65

    .line 228
    new-instance v2, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v2}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v2

    .line 230
    :cond_5b
    sget v2, Llibcore/io/OsConstants;->O_WRONLY:I

    if-ne v8, v2, :cond_65

    .line 231
    new-instance v2, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v2}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v2

    .line 233
    :cond_65
    add-long v5, p2, p4

    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->size()J

    move-result-wide v12

    cmp-long v2, v5, v12

    if-lez v2, :cond_78

    .line 237
    :try_start_6f
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v5, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    add-long v6, p2, p4

    invoke-interface {v2, v5, v6, v7}, Llibcore/io/Os;->ftruncate(Ljava/io/FileDescriptor;J)V
    :try_end_78
    .catch Llibcore/io/ErrnoException; {:try_start_6f .. :try_end_78} :catch_9a

    .line 242
    :cond_78
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v5, Llibcore/io/OsConstants;->_SC_PAGE_SIZE:I

    invoke-interface {v2, v5}, Llibcore/io/Os;->sysconf(I)J

    move-result-wide v5

    rem-long v5, p2, v5

    sub-long v3, p2, v5

    .line 243
    .local v3, alignment:J
    sub-long v5, p2, v3

    long-to-int v11, v5

    .line 244
    .local v11, offset:I
    iget-object v2, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    int-to-long v5, v11

    add-long v5, v5, p4

    move-object v7, p1

    invoke-static/range {v2 .. v7}, Ljava/nio/MemoryBlock;->mmap(Ljava/io/FileDescriptor;JJLjava/nio/channels/FileChannel$MapMode;)Ljava/nio/MemoryBlock;

    move-result-object v9

    .line 245
    .local v9, block:Ljava/nio/MemoryBlock;
    new-instance v2, Ljava/nio/MappedByteBufferAdapter;

    move-wide/from16 v0, p4

    long-to-int v5, v0

    invoke-direct {v2, v9, v5, v11, p1}, Ljava/nio/MappedByteBufferAdapter;-><init>(Ljava/nio/MemoryBlock;IILjava/nio/channels/FileChannel$MapMode;)V

    return-object v2

    .line 238
    .end local v3           #alignment:J
    .end local v9           #block:Ljava/nio/MemoryBlock;
    .end local v11           #offset:I
    :catch_9a
    move-exception v10

    .line 239
    .local v10, errnoException:Llibcore/io/ErrnoException;
    invoke-virtual {v10}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method public position()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    .line 251
    :try_start_3
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v3, 0x0

    sget v5, Llibcore/io/OsConstants;->SEEK_CUR:I

    invoke-interface {v1, v2, v3, v4, v5}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_e
    .catch Llibcore/io/ErrnoException; {:try_start_3 .. :try_end_e} :catch_10

    move-result-wide v1

    return-wide v1

    .line 252
    :catch_10
    move-exception v0

    .line 253
    .local v0, errnoException:Llibcore/io/ErrnoException;
    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public position(J)Ljava/nio/channels/FileChannel;
    .registers 7
    .parameter "newPosition"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    .line 259
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_22

    .line 260
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 263
    :cond_22
    :try_start_22
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget v3, Llibcore/io/OsConstants;->SEEK_SET:I

    invoke-interface {v1, v2, p1, p2, v3}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_2b
    .catch Llibcore/io/ErrnoException; {:try_start_22 .. :try_end_2b} :catch_2c

    .line 267
    return-object p0

    .line 264
    :catch_2c
    move-exception v0

    .line 265
    .local v0, errnoException:Llibcore/io/ErrnoException;
    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 4
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Ljava/nio/FileChannelImpl;->readImpl(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;J)I
    .registers 7
    .parameter "buffer"
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_1f

    .line 272
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_1f
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/FileChannelImpl;->readImpl(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .registers 6
    .parameter "buffers"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 338
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    .line 339
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkReadable()V

    .line 340
    new-instance v0, Ljava/nio/IoVec;

    sget-object v1, Ljava/nio/IoVec$Direction;->READV:Ljava/nio/IoVec$Direction;

    invoke-direct {v0, p1, p2, p3, v1}, Ljava/nio/IoVec;-><init>([Ljava/nio/ByteBuffer;IILjava/nio/IoVec$Direction;)V

    invoke-direct {p0, v0}, Ljava/nio/FileChannelImpl;->transferIoVec(Ljava/nio/IoVec;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public release(Ljava/nio/channels/FileLock;)V
    .registers 7
    .parameter "lock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    .line 188
    new-instance v1, Llibcore/io/StructFlock;

    invoke-direct {v1}, Llibcore/io/StructFlock;-><init>()V

    .line 189
    .local v1, flock:Llibcore/io/StructFlock;
    sget v2, Llibcore/io/OsConstants;->F_UNLCK:I

    int-to-short v2, v2

    iput-short v2, v1, Llibcore/io/StructFlock;->l_type:S

    .line 190
    sget v2, Llibcore/io/OsConstants;->SEEK_SET:I

    int-to-short v2, v2

    iput-short v2, v1, Llibcore/io/StructFlock;->l_whence:S

    .line 191
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->position()J

    move-result-wide v2

    iput-wide v2, v1, Llibcore/io/StructFlock;->l_start:J

    .line 192
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->size()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/nio/FileChannelImpl;->translateLockLength(J)J

    move-result-wide v2

    iput-wide v2, v1, Llibcore/io/StructFlock;->l_len:J

    .line 194
    :try_start_22
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v3, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget v4, Llibcore/io/OsConstants;->F_SETLKW64:I

    invoke-interface {v2, v3, v4, v1}, Llibcore/io/Os;->fcntlFlock(Ljava/io/FileDescriptor;ILlibcore/io/StructFlock;)I
    :try_end_2b
    .catch Llibcore/io/ErrnoException; {:try_start_22 .. :try_end_2b} :catch_2f

    .line 199
    invoke-direct {p0, p1}, Ljava/nio/FileChannelImpl;->removeLock(Ljava/nio/channels/FileLock;)V

    .line 200
    return-void

    .line 195
    :catch_2f
    move-exception v0

    .line 196
    .local v0, errnoException:Llibcore/io/ErrnoException;
    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method public size()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    .line 346
    :try_start_3
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v1, v2}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Llibcore/io/StructStat;

    move-result-object v1

    iget-wide v1, v1, Llibcore/io/StructStat;->st_size:J
    :try_end_d
    .catch Llibcore/io/ErrnoException; {:try_start_3 .. :try_end_d} :catch_e

    return-wide v1

    .line 347
    :catch_e
    move-exception v0

    .line 348
    .local v0, errnoException:Llibcore/io/ErrnoException;
    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    .registers 15
    .parameter "src"
    .parameter "position"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    .line 354
    invoke-interface {p1}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_f

    .line 355
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v1

    .line 357
    :cond_f
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkWritable()V

    .line 358
    const-wide/16 v4, 0x0

    cmp-long v1, p2, v4

    if-ltz v1, :cond_25

    const-wide/16 v4, 0x0

    cmp-long v1, p4, v4

    if-ltz v1, :cond_25

    const-wide/32 v4, 0x7fffffff

    cmp-long v1, p4, v4

    if-lez v1, :cond_48

    .line 359
    :cond_25
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "position="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 361
    :cond_48
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->size()J

    move-result-wide v4

    cmp-long v1, p2, v4

    if-lez v1, :cond_53

    .line 362
    const-wide/16 v4, 0x0

    .line 389
    :goto_52
    return-wide v4

    .line 371
    :cond_53
    instance-of v1, p1, Ljava/nio/channels/FileChannel;

    if-eqz v1, :cond_82

    move-object v0, p1

    .line 372
    check-cast v0, Ljava/nio/channels/FileChannel;

    .line 373
    .local v0, fileSrc:Ljava/nio/channels/FileChannel;
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    .line 374
    .local v7, size:J
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    .line 375
    .local v2, filePosition:J
    sub-long v4, v7, v2

    invoke-static {p4, p5, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p4

    .line 376
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    .line 378
    .local v6, buffer:Ljava/nio/ByteBuffer;
    add-long v4, v2, p4

    :try_start_71
    invoke-virtual {v0, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 379
    invoke-virtual {p0, v6, p2, p3}, Ljava/nio/FileChannelImpl;->write(Ljava/nio/ByteBuffer;J)I
    :try_end_77
    .catchall {:try_start_71 .. :try_end_77} :catchall_7d

    move-result v1

    int-to-long v4, v1

    .line 381
    invoke-static {v6}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    goto :goto_52

    :catchall_7d
    move-exception v1

    invoke-static {v6}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    throw v1

    .line 386
    .end local v0           #fileSrc:Ljava/nio/channels/FileChannel;
    .end local v2           #filePosition:J
    .end local v6           #buffer:Ljava/nio/ByteBuffer;
    .end local v7           #size:J
    :cond_82
    long-to-int v1, p4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 387
    .restart local v6       #buffer:Ljava/nio/ByteBuffer;
    invoke-interface {p1, v6}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 388
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 389
    invoke-virtual {p0, v6, p2, p3}, Ljava/nio/FileChannelImpl;->write(Ljava/nio/ByteBuffer;J)I

    move-result v1

    int-to-long v4, v1

    goto :goto_52
.end method

.method public transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    .registers 23
    .parameter "position"
    .parameter "count"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    invoke-direct/range {p0 .. p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    .line 394
    invoke-interface/range {p5 .. p5}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v2

    if-nez v2, :cond_f

    .line 395
    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v2

    .line 397
    :cond_f
    invoke-direct/range {p0 .. p0}, Ljava/nio/FileChannelImpl;->checkReadable()V

    .line 398
    move-object/from16 v0, p5

    instance-of v2, v0, Ljava/nio/FileChannelImpl;

    if-eqz v2, :cond_1f

    move-object/from16 v2, p5

    .line 399
    check-cast v2, Ljava/nio/FileChannelImpl;

    invoke-direct {v2}, Ljava/nio/FileChannelImpl;->checkWritable()V

    .line 401
    :cond_1f
    const-wide/16 v6, 0x0

    cmp-long v2, p1, v6

    if-ltz v2, :cond_2b

    const-wide/16 v6, 0x0

    cmp-long v2, p3, v6

    if-gez v2, :cond_52

    .line 402
    :cond_2b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "position="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " count="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 405
    :cond_52
    const-wide/16 v6, 0x0

    cmp-long v2, p3, v6

    if-eqz v2, :cond_60

    invoke-virtual/range {p0 .. p0}, Ljava/nio/FileChannelImpl;->size()J

    move-result-wide v6

    cmp-long v2, p1, v6

    if-ltz v2, :cond_63

    .line 406
    :cond_60
    const-wide/16 v15, 0x0

    .line 438
    :goto_62
    return-wide v15

    .line 408
    :cond_63
    invoke-virtual/range {p0 .. p0}, Ljava/nio/FileChannelImpl;->size()J

    move-result-wide v6

    sub-long v6, v6, p1

    move-wide/from16 v0, p3

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    .line 411
    const/4 v13, 0x0

    .line 412
    .local v13, completed:Z
    move-object/from16 v0, p5

    instance-of v2, v0, Ljava/nio/SocketChannelImpl;

    if-eqz v2, :cond_b9

    move-object/from16 v2, p5

    .line 413
    check-cast v2, Ljava/nio/SocketChannelImpl;

    invoke-virtual {v2}, Ljava/nio/SocketChannelImpl;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 415
    .local v3, outFd:Ljava/io/FileDescriptor;
    :try_start_7e
    invoke-virtual/range {p0 .. p0}, Ljava/nio/FileChannelImpl;->begin()V
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_ad

    .line 417
    :try_start_81
    new-instance v5, Llibcore/util/MutableLong;

    move-wide/from16 v0, p1

    invoke-direct {v5, v0, v1}, Llibcore/util/MutableLong;-><init>(J)V

    .line 418
    .local v5, offset:Llibcore/util/MutableLong;
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    move-wide/from16 v6, p3

    invoke-interface/range {v2 .. v7}, Llibcore/io/Os;->sendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Llibcore/util/MutableLong;J)J
    :try_end_93
    .catchall {:try_start_81 .. :try_end_93} :catchall_ad
    .catch Llibcore/io/ErrnoException; {:try_start_81 .. :try_end_93} :catch_9b

    move-result-wide v15

    .line 419
    .local v15, rc:J
    const/4 v13, 0x1

    .line 429
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/nio/FileChannelImpl;->end(Z)V

    goto :goto_62

    .line 421
    .end local v5           #offset:Llibcore/util/MutableLong;
    .end local v15           #rc:J
    :catch_9b
    move-exception v14

    .line 424
    .local v14, errnoException:Llibcore/io/ErrnoException;
    :try_start_9c
    iget v2, v14, Llibcore/io/ErrnoException;->errno:I

    sget v4, Llibcore/io/OsConstants;->ENOSYS:I

    if-eq v2, v4, :cond_b4

    iget v2, v14, Llibcore/io/ErrnoException;->errno:I

    sget v4, Llibcore/io/OsConstants;->EINVAL:I

    if-eq v2, v4, :cond_b4

    .line 425
    invoke-virtual {v14}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_ad
    .catchall {:try_start_9c .. :try_end_ad} :catchall_ad

    .line 429
    .end local v14           #errnoException:Llibcore/io/ErrnoException;
    :catchall_ad
    move-exception v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/nio/FileChannelImpl;->end(Z)V

    throw v2

    .restart local v14       #errnoException:Llibcore/io/ErrnoException;
    :cond_b4
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/nio/FileChannelImpl;->end(Z)V

    .line 433
    .end local v3           #outFd:Ljava/io/FileDescriptor;
    .end local v14           #errnoException:Llibcore/io/ErrnoException;
    :cond_b9
    const/4 v12, 0x0

    .line 435
    .local v12, buffer:Ljava/nio/ByteBuffer;
    :try_start_ba
    sget-object v7, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-object/from16 v6, p0

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    invoke-virtual/range {v6 .. v11}, Ljava/nio/FileChannelImpl;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v12

    .line 436
    move-object/from16 v0, p5

    invoke-interface {v0, v12}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_cb
    .catchall {:try_start_ba .. :try_end_cb} :catchall_d1

    move-result v2

    int-to-long v15, v2

    .line 438
    invoke-static {v12}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    goto :goto_62

    :catchall_d1
    move-exception v2

    invoke-static {v12}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    throw v2
.end method

.method public truncate(J)Ljava/nio/channels/FileChannel;
    .registers 7
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    .line 444
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_22

    .line 445
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 447
    :cond_22
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkWritable()V

    .line 448
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->size()J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-gez v1, :cond_34

    .line 450
    :try_start_2d
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v1, v2, p1, p2}, Llibcore/io/Os;->ftruncate(Ljava/io/FileDescriptor;J)V
    :try_end_34
    .catch Llibcore/io/ErrnoException; {:try_start_2d .. :try_end_34} :catch_35

    .line 455
    :cond_34
    return-object p0

    .line 451
    :catch_35
    move-exception v0

    .line 452
    .local v0, errnoException:Llibcore/io/ErrnoException;
    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public final tryLock(JJZ)Ljava/nio/channels/FileLock;
    .registers 13
    .parameter "position"
    .parameter "size"
    .parameter "shared"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    .line 178
    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, Ljava/nio/FileChannelImpl;->basicLock(JJZZ)Ljava/nio/channels/FileLock;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 4
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 466
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Ljava/nio/FileChannelImpl;->writeImpl(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0
.end method

.method public write(Ljava/nio/ByteBuffer;J)I
    .registers 7
    .parameter "buffer"
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 459
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_1f

    .line 460
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_1f
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/FileChannelImpl;->writeImpl(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0
.end method

.method public write([Ljava/nio/ByteBuffer;II)J
    .registers 6
    .parameter "buffers"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 502
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 503
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    .line 504
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkWritable()V

    .line 505
    new-instance v0, Ljava/nio/IoVec;

    sget-object v1, Ljava/nio/IoVec$Direction;->WRITEV:Ljava/nio/IoVec$Direction;

    invoke-direct {v0, p1, p2, p3, v1}, Ljava/nio/IoVec;-><init>([Ljava/nio/ByteBuffer;IILjava/nio/IoVec$Direction;)V

    invoke-direct {p0, v0}, Ljava/nio/FileChannelImpl;->transferIoVec(Ljava/nio/IoVec;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
