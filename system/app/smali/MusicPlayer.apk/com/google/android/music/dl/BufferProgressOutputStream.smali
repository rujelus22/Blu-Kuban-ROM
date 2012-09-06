.class public Lcom/google/android/music/dl/BufferProgressOutputStream;
.super Ljava/io/OutputStream;
.source "BufferProgressOutputStream.java"


# instance fields
.field private final LOGV:Z

.field private final mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

.field private mNextNotification:J

.field private mNextNotificationBytes:J

.field private final mNotificationByteGap:J

.field private final mOrder:Lcom/google/android/music/dl/DownloadOrder;

.field private final mOut:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Lcom/google/android/music/dl/BufferProgress;Ljava/io/OutputStream;Lcom/google/android/music/dl/DownloadOrder;)V
    .registers 8
    .parameter "bufferProgress"
    .parameter "out"
    .parameter "order"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 17
    const-string v0, "BufferProgressOutputStream"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/dl/BufferProgressOutputStream;->LOGV:Z

    .line 35
    iput-object p1, p0, Lcom/google/android/music/dl/BufferProgressOutputStream;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    .line 36
    iput-object p2, p0, Lcom/google/android/music/dl/BufferProgressOutputStream;->mOut:Ljava/io/OutputStream;

    .line 37
    iput-object p3, p0, Lcom/google/android/music/dl/BufferProgressOutputStream;->mOrder:Lcom/google/android/music/dl/DownloadOrder;

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/music/dl/BufferProgressOutputStream;->mNextNotification:J

    .line 40
    invoke-virtual {p3}, Lcom/google/android/music/dl/DownloadOrder;->getLength()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x3dcccccd

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/music/dl/BufferProgressOutputStream;->mNotificationByteGap:J

    .line 41
    iget-wide v0, p0, Lcom/google/android/music/dl/BufferProgressOutputStream;->mNotificationByteGap:J

    iput-wide v0, p0, Lcom/google/android/music/dl/BufferProgressOutputStream;->mNextNotificationBytes:J

    .line 42
    return-void
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v1, p0, Lcom/google/android/music/dl/BufferProgressOutputStream;->mOut:Ljava/io/OutputStream;

    instance-of v1, v1, Ljava/io/FileOutputStream;

    if-eqz v1, :cond_11

    .line 75
    iget-object v1, p0, Lcom/google/android/music/dl/BufferProgressOutputStream;->mOut:Ljava/io/OutputStream;

    check-cast v1, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V

    .line 78
    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/google/android/music/dl/BufferProgressOutputStream;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_16} :catch_17

    .line 84
    :cond_16
    :goto_16
    return-void

    .line 79
    :catch_17
    move-exception v0

    .line 80
    .local v0, e:Ljava/io/IOException;
    iget-boolean v1, p0, Lcom/google/android/music/dl/BufferProgressOutputStream;->LOGV:Z

    if-eqz v1, :cond_16

    .line 81
    const-string v1, "BufferProgressOutputStream"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to close output stream:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/music/dl/BufferProgressOutputStream;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 89
    return-void
.end method

.method public sendBufferProgress()V
    .registers 5

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/music/dl/BufferProgressOutputStream;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    iget-object v1, p0, Lcom/google/android/music/dl/BufferProgressOutputStream;->mOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v0, v1}, Lcom/google/android/music/dl/BufferProgress;->notifyBufferProgress(Lcom/google/android/music/dl/DownloadOrder;)V

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/music/dl/BufferProgressOutputStream;->mNextNotification:J

    .line 69
    iget-object v0, p0, Lcom/google/android/music/dl/BufferProgressOutputStream;->mOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadOrder;->getCompleted()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/music/dl/BufferProgressOutputStream;->mNotificationByteGap:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/music/dl/BufferProgressOutputStream;->mNextNotificationBytes:J

    .line 70
    return-void
.end method

.method public write(I)V
    .registers 3
    .parameter "a"

    .prologue
    .line 46
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public write([B)V
    .registers 4
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/music/dl/BufferProgressOutputStream;->write([BII)V

    .line 52
    return-void
.end method

.method public write([BII)V
    .registers 10
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v2, p0, Lcom/google/android/music/dl/BufferProgressOutputStream;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 58
    iget-object v2, p0, Lcom/google/android/music/dl/BufferProgressOutputStream;->mOrder:Lcom/google/android/music/dl/DownloadOrder;

    sub-int v3, p3, p2

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/music/dl/DownloadOrder;->incrementCompleted(J)J

    move-result-wide v0

    .line 60
    .local v0, completedLength:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/music/dl/BufferProgressOutputStream;->mNextNotification:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1e

    iget-wide v2, p0, Lcom/google/android/music/dl/BufferProgressOutputStream;->mNextNotificationBytes:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_21

    .line 62
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/music/dl/BufferProgressOutputStream;->sendBufferProgress()V

    .line 64
    :cond_21
    return-void
.end method
