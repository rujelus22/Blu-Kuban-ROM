.class Lcom/google/android/picasastore/UrlDownloader$SharedInputStream;
.super Ljava/io/InputStream;
.source "UrlDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasastore/UrlDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SharedInputStream"
.end annotation


# instance fields
.field private mOffset:J

.field private mTask:Lcom/google/android/picasastore/UrlDownloader$DownloadTask;

.field final synthetic this$0:Lcom/google/android/picasastore/UrlDownloader;


# direct methods
.method public constructor <init>(Lcom/google/android/picasastore/UrlDownloader;Lcom/google/android/picasastore/UrlDownloader$DownloadTask;)V
    .registers 5
    .parameter
    .parameter "task"

    .prologue
    .line 237
    iput-object p1, p0, Lcom/google/android/picasastore/UrlDownloader$SharedInputStream;->this$0:Lcom/google/android/picasastore/UrlDownloader;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 235
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/picasastore/UrlDownloader$SharedInputStream;->mOffset:J

    .line 238
    iput-object p2, p0, Lcom/google/android/picasastore/UrlDownloader$SharedInputStream;->mTask:Lcom/google/android/picasastore/UrlDownloader$DownloadTask;

    .line 239
    iget-object v0, p0, Lcom/google/android/picasastore/UrlDownloader$SharedInputStream;->mTask:Lcom/google/android/picasastore/UrlDownloader$DownloadTask;

    invoke-virtual {v0}, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->requestRead()V

    .line 240
    return-void
.end method

.method private isDownloading(I)Z
    .registers 3
    .parameter "s"

    .prologue
    .line 250
    and-int/lit8 v0, p1, 0x3

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    .line 282
    monitor-enter p0

    .line 283
    :try_start_1
    iget-object v1, p0, Lcom/google/android/picasastore/UrlDownloader$SharedInputStream;->mTask:Lcom/google/android/picasastore/UrlDownloader$DownloadTask;

    if-nez v1, :cond_7

    monitor-exit p0

    .line 288
    :goto_6
    return-void

    .line 284
    :cond_7
    iget-object v0, p0, Lcom/google/android/picasastore/UrlDownloader$SharedInputStream;->mTask:Lcom/google/android/picasastore/UrlDownloader$DownloadTask;

    .line 285
    .local v0, task:Lcom/google/android/picasastore/UrlDownloader$DownloadTask;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/picasastore/UrlDownloader$SharedInputStream;->mTask:Lcom/google/android/picasastore/UrlDownloader$DownloadTask;

    .line 286
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_11

    .line 287
    invoke-virtual {v0}, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->releaseReadRequest()V

    goto :goto_6

    .line 286
    .end local v0           #task:Lcom/google/android/picasastore/UrlDownloader$DownloadTask;
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 293
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_12

    .line 295
    iget-object v0, p0, Lcom/google/android/picasastore/UrlDownloader$SharedInputStream;->mTask:Lcom/google/android/picasastore/UrlDownloader$DownloadTask;

    if-eqz v0, :cond_e

    .line 296
    const-string v0, "UrlDownloader"

    const-string v1, "unclosed input stream"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_e
    invoke-static {p0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 300
    return-void

    .line 295
    :catchall_12
    move-exception v0

    iget-object v1, p0, Lcom/google/android/picasastore/UrlDownloader$SharedInputStream;->mTask:Lcom/google/android/picasastore/UrlDownloader$DownloadTask;

    if-eqz v1, :cond_1e

    .line 296
    const-string v1, "UrlDownloader"

    const-string v2, "unclosed input stream"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_1e
    invoke-static {p0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 244
    new-array v0, v3, [B

    .line 245
    .local v0, content:[B
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/picasastore/UrlDownloader$SharedInputStream;->read([BII)I

    move-result v1

    .line 246
    .local v1, rc:I
    if-lez v1, :cond_f

    aget-byte v2, v0, v3

    and-int/lit16 v2, v2, 0xff

    :goto_e
    return v2

    :cond_f
    const/4 v2, -0x1

    goto :goto_e
.end method

.method public read([BII)I
    .registers 13
    .parameter "buffer"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    if-nez p3, :cond_4

    const/4 v1, 0x0

    .line 275
    :goto_3
    return v1

    .line 257
    :cond_4
    iget-object v4, p0, Lcom/google/android/picasastore/UrlDownloader$SharedInputStream;->mTask:Lcom/google/android/picasastore/UrlDownloader$DownloadTask;

    .line 259
    .local v4, task:Lcom/google/android/picasastore/UrlDownloader$DownloadTask;
    iget-object v6, p0, Lcom/google/android/picasastore/UrlDownloader$SharedInputStream;->this$0:Lcom/google/android/picasastore/UrlDownloader;

    monitor-enter v6

    .line 260
    :try_start_9
    iget-wide v2, v4, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->downloadSize:J

    .line 261
    .local v2, size:J
    :goto_b
    iget-wide v7, p0, Lcom/google/android/picasastore/UrlDownloader$SharedInputStream;->mOffset:J

    cmp-long v5, v2, v7

    if-gtz v5, :cond_21

    iget v5, v4, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->state:I

    invoke-direct {p0, v5}, Lcom/google/android/picasastore/UrlDownloader$SharedInputStream;->isDownloading(I)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 262
    iget-object v5, p0, Lcom/google/android/picasastore/UrlDownloader$SharedInputStream;->this$0:Lcom/google/android/picasastore/UrlDownloader;

    invoke-static {v5}, Lcom/android/gallery3d/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    .line 263
    iget-wide v2, v4, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->downloadSize:J

    goto :goto_b

    .line 265
    :cond_21
    iget v5, v4, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->state:I

    const/16 v7, 0x8

    if-ne v5, v7, :cond_32

    .line 266
    new-instance v5, Ljava/io/IOException;

    const-string v7, "download fail!"

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 268
    .end local v2           #size:J
    :catchall_2f
    move-exception v5

    monitor-exit v6
    :try_end_31
    .catchall {:try_start_9 .. :try_end_31} :catchall_2f

    throw v5

    .restart local v2       #size:J
    :cond_32
    :try_start_32
    monitor-exit v6
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_2f

    .line 269
    int-to-long v5, p3

    iget-wide v7, p0, Lcom/google/android/picasastore/UrlDownloader$SharedInputStream;->mOffset:J

    sub-long v7, v2, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v0, v5

    .line 270
    .local v0, n:I
    if-nez v0, :cond_41

    const/4 v1, -0x1

    goto :goto_3

    .line 271
    :cond_41
    monitor-enter v4

    .line 272
    :try_start_42
    iget-object v5, v4, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->randomAccessFile:Ljava/io/RandomAccessFile;

    iget-wide v6, p0, Lcom/google/android/picasastore/UrlDownloader$SharedInputStream;->mOffset:J

    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 273
    iget-object v5, v4, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v5, p1, p2, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 274
    .local v1, rc:I
    iget-wide v5, p0, Lcom/google/android/picasastore/UrlDownloader$SharedInputStream;->mOffset:J

    int-to-long v7, v1

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/google/android/picasastore/UrlDownloader$SharedInputStream;->mOffset:J

    .line 275
    monitor-exit v4

    goto :goto_3

    .line 276
    .end local v1           #rc:I
    :catchall_57
    move-exception v5

    monitor-exit v4
    :try_end_59
    .catchall {:try_start_42 .. :try_end_59} :catchall_57

    throw v5
.end method
