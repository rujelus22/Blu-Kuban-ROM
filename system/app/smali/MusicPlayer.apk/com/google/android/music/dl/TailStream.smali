.class public Lcom/google/android/music/dl/TailStream;
.super Ljava/io/InputStream;
.source "TailStream.java"


# static fields
.field private static final LOGV:Z


# instance fields
.field private isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mFile:Ljava/io/RandomAccessFile;

.field private final mOrder:Lcom/google/android/music/dl/DownloadOrder;

.field private final mStartReadPoint:J

.field private mTailFillCnt:I

.field private mTailFillSize:I

.field private mTotalRead:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-string v0, "TailStream"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/dl/TailStream;->LOGV:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/music/dl/DownloadOrder;J)V
    .registers 8
    .parameter "order"
    .parameter "startReadingPoint"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 29
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/music/dl/TailStream;->mTotalRead:J

    .line 30
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/music/dl/TailStream;->mTailFillCnt:I

    .line 33
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/music/dl/TailStream;->mFile:Ljava/io/RandomAccessFile;

    .line 35
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/google/android/music/dl/TailStream;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    sget-boolean v1, Lcom/google/android/music/dl/TailStream;->LOGV:Z

    if-eqz v1, :cond_3b

    const-string v1, "TailStream"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New TailStream for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " starting at: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_3b
    iput-object p1, p0, Lcom/google/android/music/dl/TailStream;->mOrder:Lcom/google/android/music/dl/DownloadOrder;

    .line 42
    iget-object v1, p0, Lcom/google/android/music/dl/TailStream;->mOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v1}, Lcom/google/android/music/dl/DownloadOrder;->getHandler()Lcom/google/android/music/dl/DownloadHandler;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/music/dl/DownloadHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 43
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "music_local_http_stuffing"

    const/high16 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/dl/TailStream;->mTailFillSize:I

    .line 46
    iput-wide p2, p0, Lcom/google/android/music/dl/TailStream;->mStartReadPoint:J

    .line 47
    return-void
.end method

.method private readFromFile(Ljava/io/File;[BII)I
    .registers 11
    .parameter "filepath"
    .parameter "b"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v1, p0, Lcom/google/android/music/dl/TailStream;->mFile:Ljava/io/RandomAccessFile;

    if-nez v1, :cond_17

    .line 138
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/music/dl/TailStream;->mFile:Ljava/io/RandomAccessFile;

    .line 139
    iget-object v1, p0, Lcom/google/android/music/dl/TailStream;->mFile:Ljava/io/RandomAccessFile;

    iget-wide v2, p0, Lcom/google/android/music/dl/TailStream;->mStartReadPoint:J

    iget-wide v4, p0, Lcom/google/android/music/dl/TailStream;->mTotalRead:J

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 142
    :cond_17
    iget-object v1, p0, Lcom/google/android/music/dl/TailStream;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p2, p3, p4}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    .line 144
    .local v0, read:I
    if-lez v0, :cond_26

    .line 145
    iget-wide v1, p0, Lcom/google/android/music/dl/TailStream;->mTotalRead:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/music/dl/TailStream;->mTotalRead:J

    .line 153
    :goto_25
    return v0

    .line 150
    :cond_26
    iget-object v1, p0, Lcom/google/android/music/dl/TailStream;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 151
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/music/dl/TailStream;->mFile:Ljava/io/RandomAccessFile;

    goto :goto_25
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/music/dl/TailStream;->mFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_c

    .line 159
    iget-object v0, p0, Lcom/google/android/music/dl/TailStream;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/dl/TailStream;->mFile:Ljava/io/RandomAccessFile;

    .line 162
    :cond_c
    iget-object v1, p0, Lcom/google/android/music/dl/TailStream;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 163
    :try_start_f
    iget-object v0, p0, Lcom/google/android/music/dl/TailStream;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 164
    iget-object v0, p0, Lcom/google/android/music/dl/TailStream;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 165
    monitor-exit v1

    .line 166
    return-void

    .line 165
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public read()I
    .registers 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public read([BII)I
    .registers 15
    .parameter "b"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v6, p0, Lcom/google/android/music/dl/TailStream;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 57
    sget-boolean v6, Lcom/google/android/music/dl/TailStream;->LOGV:Z

    if-eqz v6, :cond_2c

    const-string v6, "TailStream"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/music/dl/TailStream;->mOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") returning -1 since we were closed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_2c
    const/4 v3, -0x1

    .line 125
    :goto_2d
    return v3

    .line 61
    :cond_2e
    iget v6, p0, Lcom/google/android/music/dl/TailStream;->mTailFillCnt:I

    if-ltz v6, :cond_4d

    .line 73
    iget v6, p0, Lcom/google/android/music/dl/TailStream;->mTailFillCnt:I

    invoke-static {p3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 74
    .local v3, numtoread:I
    if-gtz v3, :cond_3c

    .line 75
    const/4 v3, -0x1

    goto :goto_2d

    .line 77
    :cond_3c
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3d
    if-ge v1, v3, :cond_47

    .line 78
    add-int v6, p2, v1

    const/4 v7, 0x0

    aput-byte v7, p1, v6

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 80
    :cond_47
    iget v6, p0, Lcom/google/android/music/dl/TailStream;->mTailFillCnt:I

    sub-int/2addr v6, v3

    iput v6, p0, Lcom/google/android/music/dl/TailStream;->mTailFillCnt:I

    goto :goto_2d

    .line 86
    .end local v1           #i:I
    .end local v3           #numtoread:I
    :cond_4d
    :try_start_4d
    iget-object v6, p0, Lcom/google/android/music/dl/TailStream;->mOrder:Lcom/google/android/music/dl/DownloadOrder;

    iget-wide v7, p0, Lcom/google/android/music/dl/TailStream;->mStartReadPoint:J

    iget-wide v9, p0, Lcom/google/android/music/dl/TailStream;->mTotalRead:J

    add-long/2addr v7, v9

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Lcom/google/android/music/dl/DownloadOrder;->waitForData(J)V
    :try_end_5a
    .catch Ljava/lang/InterruptedException; {:try_start_4d .. :try_end_5a} :catch_88

    .line 93
    iget-object v6, p0, Lcom/google/android/music/dl/TailStream;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_b0

    .line 94
    sget-boolean v6, Lcom/google/android/music/dl/TailStream;->LOGV:Z

    if-eqz v6, :cond_86

    const-string v6, "TailStream"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/music/dl/TailStream;->mOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") returning -1 since we were closed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_86
    const/4 v3, -0x1

    goto :goto_2d

    .line 87
    :catch_88
    move-exception v0

    .line 88
    .local v0, e:Ljava/lang/InterruptedException;
    sget-boolean v6, Lcom/google/android/music/dl/TailStream;->LOGV:Z

    if-eqz v6, :cond_ad

    const-string v6, "TailStream"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TailStream for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/music/dl/TailStream;->mOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " interrupted"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_ad
    const/4 v3, -0x1

    goto/16 :goto_2d

    .line 98
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_b0
    iget-object v6, p0, Lcom/google/android/music/dl/TailStream;->mOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v6}, Lcom/google/android/music/dl/DownloadOrder;->getFullPath()Ljava/io/File;

    move-result-object v2

    .line 99
    .local v2, location:Ljava/io/File;
    if-nez v2, :cond_df

    .line 100
    sget-boolean v6, Lcom/google/android/music/dl/TailStream;->LOGV:Z

    if-eqz v6, :cond_dc

    const-string v6, "TailStream"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/music/dl/TailStream;->mOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") returning -1 since the file location doesn\'t exists"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_dc
    const/4 v3, -0x1

    goto/16 :goto_2d

    .line 104
    :cond_df
    invoke-direct {p0, v2, p1, p2, p3}, Lcom/google/android/music/dl/TailStream;->readFromFile(Ljava/io/File;[BII)I

    move-result v5

    .line 105
    .local v5, read:I
    if-gez v5, :cond_149

    .line 106
    iget-object v6, p0, Lcom/google/android/music/dl/TailStream;->mOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v6}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->isFinishedStatus()Z

    move-result v4

    .line 107
    .local v4, orderFinished:Z
    invoke-direct {p0, v2, p1, p2, p3}, Lcom/google/android/music/dl/TailStream;->readFromFile(Ljava/io/File;[BII)I

    move-result v5

    .line 108
    if-gez v5, :cond_149

    if-eqz v4, :cond_149

    .line 110
    sget-boolean v6, Lcom/google/android/music/dl/TailStream;->LOGV:Z

    if-eqz v6, :cond_137

    .line 111
    const-string v6, "TailStream"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/music/dl/TailStream;->mOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/google/android/music/dl/TailStream;->mTotalRead:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " DownloadStatus: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/music/dl/TailStream;->mOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v8}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; returning -1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_137
    iget v6, p0, Lcom/google/android/music/dl/TailStream;->mTailFillCnt:I

    if-gez v6, :cond_146

    iget v6, p0, Lcom/google/android/music/dl/TailStream;->mTailFillSize:I

    if-lez v6, :cond_146

    .line 118
    iget v6, p0, Lcom/google/android/music/dl/TailStream;->mTailFillSize:I

    iput v6, p0, Lcom/google/android/music/dl/TailStream;->mTailFillCnt:I

    .line 119
    const/4 v3, 0x0

    goto/16 :goto_2d

    .line 121
    :cond_146
    const/4 v3, -0x1

    goto/16 :goto_2d

    .end local v4           #orderFinished:Z
    :cond_149
    move v3, v5

    .line 125
    goto/16 :goto_2d
.end method
