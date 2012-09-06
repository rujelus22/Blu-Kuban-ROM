.class Ljackpal/androidterm/emulatorview/ByteQueue;
.super Ljava/lang/Object;
.source "ByteQueue.java"


# instance fields
.field private mBuffer:[B

.field private mHead:I

.field private mStoredBytes:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter "size"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-array v0, p1, [B

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mBuffer:[B

    .line 27
    return-void
.end method


# virtual methods
.method public getBytesAvailable()I
    .registers 2

    .prologue
    .line 30
    monitor-enter p0

    .line 31
    :try_start_1
    iget v0, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mStoredBytes:I

    monitor-exit p0

    return v0

    .line 32
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public read([BII)I
    .registers 11
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 37
    add-int v5, p3, p2

    array-length v6, p1

    if-le v5, v6, :cond_e

    .line 38
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "length + offset > buffer.length"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 41
    :cond_e
    if-gez p3, :cond_18

    .line 42
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "length < 0"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 46
    :cond_18
    if-nez p3, :cond_1b

    .line 72
    :goto_1a
    return v4

    .line 49
    :cond_1b
    monitor-enter p0

    .line 50
    :goto_1c
    :try_start_1c
    iget v5, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mStoredBytes:I

    if-nez v5, :cond_27

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1c

    .line 73
    :catchall_24
    move-exception v5

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_24

    throw v5

    .line 53
    :cond_27
    const/4 v3, 0x0

    .line 54
    .local v3, totalRead:I
    :try_start_28
    iget-object v5, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mBuffer:[B

    array-length v0, v5

    .line 55
    .local v0, bufferLength:I
    iget v5, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mStoredBytes:I

    if-ne v0, v5, :cond_30

    const/4 v4, 0x1

    .line 56
    .local v4, wasFull:Z
    :cond_30
    :goto_30
    if-lez p3, :cond_60

    iget v5, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mStoredBytes:I

    if-lez v5, :cond_60

    .line 57
    iget v5, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mHead:I

    sub-int v5, v0, v5

    iget v6, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mStoredBytes:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 58
    .local v2, oneRun:I
    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 59
    .local v1, bytesToCopy:I
    iget-object v5, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mBuffer:[B

    iget v6, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mHead:I

    invoke-static {v5, v6, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    iget v5, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mHead:I

    add-int/2addr v5, v1

    iput v5, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mHead:I

    .line 61
    iget v5, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mHead:I

    if-lt v5, v0, :cond_57

    .line 62
    const/4 v5, 0x0

    iput v5, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mHead:I

    .line 64
    :cond_57
    iget v5, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mStoredBytes:I

    sub-int/2addr v5, v1

    iput v5, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mStoredBytes:I

    .line 65
    sub-int/2addr p3, v1

    .line 66
    add-int/2addr p2, v1

    .line 67
    add-int/2addr v3, v1

    .line 68
    goto :goto_30

    .line 69
    .end local v1           #bytesToCopy:I
    .end local v2           #oneRun:I
    :cond_60
    if-eqz v4, :cond_65

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 72
    :cond_65
    monitor-exit p0
    :try_end_66
    .catchall {:try_start_28 .. :try_end_66} :catchall_24

    move v4, v3

    goto :goto_1a
.end method

.method public write([BII)V
    .registers 11
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 78
    add-int v5, p3, p2

    array-length v6, p1

    if-le v5, v6, :cond_d

    .line 79
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "length + offset > buffer.length"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 82
    :cond_d
    if-gez p3, :cond_17

    .line 83
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "length < 0"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 87
    :cond_17
    if-nez p3, :cond_1a

    .line 115
    :goto_19
    return-void

    .line 90
    :cond_1a
    monitor-enter p0

    .line 91
    :try_start_1b
    iget-object v5, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mBuffer:[B

    array-length v0, v5

    .line 92
    .local v0, bufferLength:I
    iget v5, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mStoredBytes:I

    if-nez v5, :cond_30

    const/4 v4, 0x1

    .line 93
    .local v4, wasEmpty:Z
    :goto_23
    if-lez p3, :cond_53

    .line 94
    :goto_25
    iget v5, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mStoredBytes:I

    if-ne v0, v5, :cond_32

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_25

    .line 114
    .end local v0           #bufferLength:I
    .end local v4           #wasEmpty:Z
    :catchall_2d
    move-exception v5

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_1b .. :try_end_2f} :catchall_2d

    throw v5

    .line 92
    .restart local v0       #bufferLength:I
    :cond_30
    const/4 v4, 0x0

    goto :goto_23

    .line 97
    .restart local v4       #wasEmpty:Z
    :cond_32
    :try_start_32
    iget v5, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mHead:I

    iget v6, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mStoredBytes:I

    add-int v3, v5, v6

    .line 99
    .local v3, tail:I
    if-lt v3, v0, :cond_50

    .line 100
    sub-int/2addr v3, v0

    .line 101
    iget v5, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mHead:I

    sub-int v2, v5, v3

    .line 105
    .local v2, oneRun:I
    :goto_3f
    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 106
    .local v1, bytesToCopy:I
    iget-object v5, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mBuffer:[B

    invoke-static {p1, p2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    add-int/2addr p2, v1

    .line 108
    iget v5, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mStoredBytes:I

    add-int/2addr v5, v1

    iput v5, p0, Ljackpal/androidterm/emulatorview/ByteQueue;->mStoredBytes:I

    .line 109
    sub-int/2addr p3, v1

    .line 110
    goto :goto_23

    .line 103
    .end local v1           #bytesToCopy:I
    .end local v2           #oneRun:I
    :cond_50
    sub-int v2, v0, v3

    .restart local v2       #oneRun:I
    goto :goto_3f

    .line 111
    .end local v2           #oneRun:I
    .end local v3           #tail:I
    :cond_53
    if-eqz v4, :cond_58

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 114
    :cond_58
    monitor-exit p0
    :try_end_59
    .catchall {:try_start_32 .. :try_end_59} :catchall_2d

    goto :goto_19
.end method
