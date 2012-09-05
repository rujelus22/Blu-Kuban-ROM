.class Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;
.super Ljava/lang/Object;
.source "PicasaDownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/PicasaDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadTask"
.end annotation


# instance fields
.field public cancelTimeout:J

.field public downloadFile:Ljava/io/File;

.field public downloadSize:J

.field public final downloadUrl:Ljava/lang/String;

.field private final mDownloadStream:Ljava/io/InputStream;

.field public randomAccessFile:Ljava/io/RandomAccessFile;

.field public requestCount:I

.field public state:I

.field final synthetic this$0:Lcom/google/android/picasasync/PicasaDownloadManager;


# direct methods
.method public constructor <init>(Lcom/google/android/picasasync/PicasaDownloadManager;Ljava/lang/String;Ljava/io/InputStream;)V
    .registers 6
    .parameter
    .parameter "downloadUrl"
    .parameter "is"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->this$0:Lcom/google/android/picasasync/PicasaDownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->downloadSize:J

    .line 87
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->state:I

    .line 93
    iput-object p2, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->downloadUrl:Ljava/lang/String;

    .line 94
    iput-object p3, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->mDownloadStream:Ljava/io/InputStream;

    .line 95
    return-void
.end method

.method private setFinalState(I)V
    .registers 4
    .parameter "finalState"

    .prologue
    .line 117
    iput p1, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->state:I

    .line 118
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->this$0:Lcom/google/android/picasasync/PicasaDownloadManager;

    #getter for: Lcom/google/android/picasasync/PicasaDownloadManager;->mTaskMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/google/android/picasasync/PicasaDownloadManager;->access$100(Lcom/google/android/picasasync/PicasaDownloadManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->this$0:Lcom/google/android/picasasync/PicasaDownloadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 120
    return-void
.end method


# virtual methods
.method public releaseReadRequest()V
    .registers 7

    .prologue
    .line 104
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->this$0:Lcom/google/android/picasasync/PicasaDownloadManager;

    monitor-enter v1

    .line 105
    :try_start_3
    iget v0, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->requestCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->requestCount:I

    .line 106
    iget v0, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->requestCount:I

    if-nez v0, :cond_2b

    .line 107
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->cancelTimeout:J

    .line 108
    iget v0, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->state:I

    and-int/lit8 v0, v0, 0x1c

    if-eqz v0, :cond_2b

    .line 109
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 110
    iget v0, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->state:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2b

    iget-object v0, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->downloadFile:Ljava/io/File;

    #calls: Lcom/google/android/picasasync/PicasaDownloadManager;->deleteSilently(Ljava/io/File;)V
    invoke-static {v0}, Lcom/google/android/picasasync/PicasaDownloadManager;->access$000(Ljava/io/File;)V

    .line 113
    :cond_2b
    monitor-exit v1

    .line 114
    return-void

    .line 113
    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public requestRead()V
    .registers 3

    .prologue
    .line 98
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->this$0:Lcom/google/android/picasasync/PicasaDownloadManager;

    monitor-enter v1

    .line 99
    :try_start_3
    iget v0, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->requestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->requestCount:I

    .line 100
    monitor-exit v1

    .line 101
    return-void

    .line 100
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public run()V
    .registers 11

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x4

    .line 125
    iget-object v5, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->this$0:Lcom/google/android/picasasync/PicasaDownloadManager;

    monitor-enter v5

    .line 126
    :try_start_6
    iget v6, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->state:I

    if-ne v6, v3, :cond_18

    :goto_a
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 127
    iget v3, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->requestCount:I

    if-nez v3, :cond_1a

    .line 128
    const/16 v3, 0x10

    invoke-direct {p0, v3}, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->setFinalState(I)V

    .line 129
    monitor-exit v5

    .line 193
    :goto_17
    return-void

    :cond_18
    move v3, v4

    .line 126
    goto :goto_a

    .line 131
    :cond_1a
    const/4 v3, 0x2

    iput v3, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->state:I

    .line 132
    monitor-exit v5
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_9b

    .line 135
    :try_start_1e
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->this$0:Lcom/google/android/picasasync/PicasaDownloadManager;

    #getter for: Lcom/google/android/picasasync/PicasaDownloadManager;->mController:Lcom/google/android/picasasync/PicasaDownloadManager$Controller;
    invoke-static {v3}, Lcom/google/android/picasasync/PicasaDownloadManager;->access$200(Lcom/google/android/picasasync/PicasaDownloadManager;)Lcom/google/android/picasasync/PicasaDownloadManager$Controller;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/picasasync/PicasaDownloadManager$Controller;->createTempFile()Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->downloadFile:Ljava/io/File;

    .line 136
    new-instance v3, Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->downloadFile:Ljava/io/File;

    const-string v5, "rw"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 137
    const/16 v3, 0x800

    new-array v0, v3, [B

    .line 140
    .local v0, buffer:[B
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->mDownloadStream:Ljava/io/InputStream;

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 141
    .local v1, rc:I
    :goto_3f
    if-lez v1, :cond_118

    .line 142
    monitor-enter p0
    :try_end_42
    .catchall {:try_start_1e .. :try_end_42} :catchall_f2
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_42} :catch_a1

    .line 143
    :try_start_42
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->randomAccessFile:Ljava/io/RandomAccessFile;

    iget-wide v4, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->downloadSize:J

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 144
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->randomAccessFile:Ljava/io/RandomAccessFile;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 145
    monitor-exit p0
    :try_end_50
    .catchall {:try_start_42 .. :try_end_50} :catchall_9e

    .line 146
    :try_start_50
    iget-object v4, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->this$0:Lcom/google/android/picasasync/PicasaDownloadManager;

    monitor-enter v4
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_f2
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_53} :catch_a1

    .line 152
    :try_start_53
    iget v3, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->requestCount:I

    if-nez v3, :cond_db

    iget-object v3, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->this$0:Lcom/google/android/picasasync/PicasaDownloadManager;

    #getter for: Lcom/google/android/picasasync/PicasaDownloadManager;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {v3}, Lcom/google/android/picasasync/PicasaDownloadManager;->access$300(Lcom/google/android/picasasync/PicasaDownloadManager;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6d

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->cancelTimeout:J

    cmp-long v3, v5, v7

    if-lez v3, :cond_db

    .line 154
    :cond_6d
    const/16 v3, 0x10

    invoke-direct {p0, v3}, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->setFinalState(I)V

    .line 155
    monitor-exit v4
    :try_end_73
    .catchall {:try_start_53 .. :try_end_73} :catchall_ef

    .line 184
    iget v3, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->state:I

    if-eq v3, v9, :cond_7c

    iget-object v3, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->mDownloadStream:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/google/android/picasasync/HttpUtils;->abortConnectionSilently(Ljava/io/InputStream;)V

    .line 185
    :cond_7c
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->mDownloadStream:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 186
    iget-object v4, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->this$0:Lcom/google/android/picasasync/PicasaDownloadManager;

    monitor-enter v4

    .line 187
    :try_start_84
    iget v3, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->requestCount:I

    if-nez v3, :cond_96

    .line 188
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 189
    iget v3, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->state:I

    if-eq v3, v9, :cond_96

    iget-object v3, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->downloadFile:Ljava/io/File;

    #calls: Lcom/google/android/picasasync/PicasaDownloadManager;->deleteSilently(Ljava/io/File;)V
    invoke-static {v3}, Lcom/google/android/picasasync/PicasaDownloadManager;->access$000(Ljava/io/File;)V

    .line 191
    :cond_96
    monitor-exit v4

    goto :goto_17

    :catchall_98
    move-exception v3

    monitor-exit v4
    :try_end_9a
    .catchall {:try_start_84 .. :try_end_9a} :catchall_98

    throw v3

    .line 132
    .end local v0           #buffer:[B
    .end local v1           #rc:I
    :catchall_9b
    move-exception v3

    :try_start_9c
    monitor-exit v5
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    throw v3

    .line 145
    .restart local v0       #buffer:[B
    .restart local v1       #rc:I
    :catchall_9e
    move-exception v3

    :try_start_9f
    monitor-exit p0
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_9e

    :try_start_a0
    throw v3
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_f2
    .catch Ljava/lang/Throwable; {:try_start_a0 .. :try_end_a1} :catch_a1

    .line 175
    .end local v0           #buffer:[B
    .end local v1           #rc:I
    :catch_a1
    move-exception v2

    .line 176
    .local v2, t:Ljava/lang/Throwable;
    :try_start_a2
    const-string v3, "PicasaDownloadManager"

    const-string v4, "download fail!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    iget-object v4, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->this$0:Lcom/google/android/picasasync/PicasaDownloadManager;

    monitor-enter v4
    :try_end_ac
    .catchall {:try_start_a2 .. :try_end_ac} :catchall_f2

    .line 178
    const/16 v3, 0x8

    :try_start_ae
    invoke-direct {p0, v3}, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->setFinalState(I)V

    .line 179
    monitor-exit v4
    :try_end_b2
    .catchall {:try_start_ae .. :try_end_b2} :catchall_16b

    .line 184
    iget v3, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->state:I

    if-eq v3, v9, :cond_bb

    iget-object v3, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->mDownloadStream:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/google/android/picasasync/HttpUtils;->abortConnectionSilently(Ljava/io/InputStream;)V

    .line 185
    :cond_bb
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->mDownloadStream:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 186
    iget-object v4, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->this$0:Lcom/google/android/picasasync/PicasaDownloadManager;

    monitor-enter v4

    .line 187
    :try_start_c3
    iget v3, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->requestCount:I

    if-nez v3, :cond_d5

    .line 188
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 189
    iget v3, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->state:I

    if-eq v3, v9, :cond_d5

    iget-object v3, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->downloadFile:Ljava/io/File;

    #calls: Lcom/google/android/picasasync/PicasaDownloadManager;->deleteSilently(Ljava/io/File;)V
    invoke-static {v3}, Lcom/google/android/picasasync/PicasaDownloadManager;->access$000(Ljava/io/File;)V

    .line 191
    :cond_d5
    monitor-exit v4

    goto/16 :goto_17

    :catchall_d8
    move-exception v3

    monitor-exit v4
    :try_end_da
    .catchall {:try_start_c3 .. :try_end_da} :catchall_d8

    throw v3

    .line 158
    .end local v2           #t:Ljava/lang/Throwable;
    .restart local v0       #buffer:[B
    .restart local v1       #rc:I
    :cond_db
    :try_start_db
    iget-wide v5, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->downloadSize:J

    int-to-long v7, v1

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->downloadSize:J

    .line 159
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->this$0:Lcom/google/android/picasasync/PicasaDownloadManager;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 160
    monitor-exit v4
    :try_end_e7
    .catchall {:try_start_db .. :try_end_e7} :catchall_ef

    .line 161
    :try_start_e7
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->mDownloadStream:Ljava/io/InputStream;

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_ec
    .catchall {:try_start_e7 .. :try_end_ec} :catchall_f2
    .catch Ljava/lang/Throwable; {:try_start_e7 .. :try_end_ec} :catch_a1

    move-result v1

    goto/16 :goto_3f

    .line 160
    :catchall_ef
    move-exception v3

    :try_start_f0
    monitor-exit v4
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_ef

    :try_start_f1
    throw v3
    :try_end_f2
    .catchall {:try_start_f1 .. :try_end_f2} :catchall_f2
    .catch Ljava/lang/Throwable; {:try_start_f1 .. :try_end_f2} :catch_a1

    .line 184
    .end local v0           #buffer:[B
    .end local v1           #rc:I
    :catchall_f2
    move-exception v3

    iget v4, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->state:I

    if-eq v4, v9, :cond_fc

    iget-object v4, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->mDownloadStream:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/google/android/picasasync/HttpUtils;->abortConnectionSilently(Ljava/io/InputStream;)V

    .line 185
    :cond_fc
    iget-object v4, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->mDownloadStream:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 186
    iget-object v4, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->this$0:Lcom/google/android/picasasync/PicasaDownloadManager;

    monitor-enter v4

    .line 187
    :try_start_104
    iget v5, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->requestCount:I

    if-nez v5, :cond_116

    .line 188
    iget-object v5, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-static {v5}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 189
    iget v5, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->state:I

    if-eq v5, v9, :cond_116

    iget-object v5, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->downloadFile:Ljava/io/File;

    #calls: Lcom/google/android/picasasync/PicasaDownloadManager;->deleteSilently(Ljava/io/File;)V
    invoke-static {v5}, Lcom/google/android/picasasync/PicasaDownloadManager;->access$000(Ljava/io/File;)V

    .line 191
    :cond_116
    monitor-exit v4
    :try_end_117
    .catchall {:try_start_104 .. :try_end_117} :catchall_16e

    throw v3

    .line 165
    .restart local v0       #buffer:[B
    .restart local v1       #rc:I
    :cond_118
    :try_start_118
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V

    .line 166
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->this$0:Lcom/google/android/picasasync/PicasaDownloadManager;

    #getter for: Lcom/google/android/picasasync/PicasaDownloadManager;->mController:Lcom/google/android/picasasync/PicasaDownloadManager$Controller;
    invoke-static {v3}, Lcom/google/android/picasasync/PicasaDownloadManager;->access$200(Lcom/google/android/picasasync/PicasaDownloadManager;)Lcom/google/android/picasasync/PicasaDownloadManager$Controller;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->downloadUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->downloadFile:Ljava/io/File;

    invoke-interface {v3, v4, v5}, Lcom/google/android/picasasync/PicasaDownloadManager$Controller;->onDownloadComplete(Ljava/lang/String;Ljava/io/File;)V
    :try_end_12e
    .catchall {:try_start_118 .. :try_end_12e} :catchall_f2
    .catch Ljava/lang/Throwable; {:try_start_118 .. :try_end_12e} :catch_15f

    .line 172
    :goto_12e
    :try_start_12e
    iget-object v4, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->this$0:Lcom/google/android/picasasync/PicasaDownloadManager;

    monitor-enter v4
    :try_end_131
    .catchall {:try_start_12e .. :try_end_131} :catchall_f2
    .catch Ljava/lang/Throwable; {:try_start_12e .. :try_end_131} :catch_a1

    .line 173
    const/4 v3, 0x4

    :try_start_132
    invoke-direct {p0, v3}, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->setFinalState(I)V

    .line 174
    monitor-exit v4
    :try_end_136
    .catchall {:try_start_132 .. :try_end_136} :catchall_168

    .line 184
    iget v3, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->state:I

    if-eq v3, v9, :cond_13f

    iget-object v3, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->mDownloadStream:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/google/android/picasasync/HttpUtils;->abortConnectionSilently(Ljava/io/InputStream;)V

    .line 185
    :cond_13f
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->mDownloadStream:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 186
    iget-object v4, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->this$0:Lcom/google/android/picasasync/PicasaDownloadManager;

    monitor-enter v4

    .line 187
    :try_start_147
    iget v3, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->requestCount:I

    if-nez v3, :cond_159

    .line 188
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 189
    iget v3, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->state:I

    if-eq v3, v9, :cond_159

    iget-object v3, p0, Lcom/google/android/picasasync/PicasaDownloadManager$DownloadTask;->downloadFile:Ljava/io/File;

    #calls: Lcom/google/android/picasasync/PicasaDownloadManager;->deleteSilently(Ljava/io/File;)V
    invoke-static {v3}, Lcom/google/android/picasasync/PicasaDownloadManager;->access$000(Ljava/io/File;)V

    .line 191
    :cond_159
    monitor-exit v4

    goto/16 :goto_17

    :catchall_15c
    move-exception v3

    monitor-exit v4
    :try_end_15e
    .catchall {:try_start_147 .. :try_end_15e} :catchall_15c

    throw v3

    .line 167
    :catch_15f
    move-exception v2

    .line 169
    .restart local v2       #t:Ljava/lang/Throwable;
    :try_start_160
    const-string v3, "PicasaDownloadManager"

    const-string v4, "ignore call back fail"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_167
    .catchall {:try_start_160 .. :try_end_167} :catchall_f2
    .catch Ljava/lang/Throwable; {:try_start_160 .. :try_end_167} :catch_a1

    goto :goto_12e

    .line 174
    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_168
    move-exception v3

    :try_start_169
    monitor-exit v4
    :try_end_16a
    .catchall {:try_start_169 .. :try_end_16a} :catchall_168

    :try_start_16a
    throw v3
    :try_end_16b
    .catchall {:try_start_16a .. :try_end_16b} :catchall_f2
    .catch Ljava/lang/Throwable; {:try_start_16a .. :try_end_16b} :catch_a1

    .line 179
    .end local v0           #buffer:[B
    .end local v1           #rc:I
    .restart local v2       #t:Ljava/lang/Throwable;
    :catchall_16b
    move-exception v3

    :try_start_16c
    monitor-exit v4
    :try_end_16d
    .catchall {:try_start_16c .. :try_end_16d} :catchall_16b

    :try_start_16d
    throw v3
    :try_end_16e
    .catchall {:try_start_16d .. :try_end_16e} :catchall_f2

    .line 191
    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_16e
    move-exception v3

    :try_start_16f
    monitor-exit v4
    :try_end_170
    .catchall {:try_start_16f .. :try_end_170} :catchall_16e

    throw v3
.end method
