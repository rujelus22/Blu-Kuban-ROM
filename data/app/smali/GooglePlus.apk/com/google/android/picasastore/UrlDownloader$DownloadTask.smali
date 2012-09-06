.class Lcom/google/android/picasastore/UrlDownloader$DownloadTask;
.super Ljava/lang/Object;
.source "UrlDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasastore/UrlDownloader;
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

.field public randomAccessFile:Ljava/io/RandomAccessFile;

.field public requestCount:I

.field public state:I

.field final synthetic this$0:Lcom/google/android/picasastore/UrlDownloader;


# direct methods
.method public constructor <init>(Lcom/google/android/picasastore/UrlDownloader;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter "downloadUrl"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->this$0:Lcom/google/android/picasastore/UrlDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->downloadSize:J

    .line 95
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->state:I

    .line 101
    iput-object p2, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->downloadUrl:Ljava/lang/String;

    .line 102
    return-void
.end method

.method private setFinalState(I)V
    .registers 4
    .parameter "finalState"

    .prologue
    .line 124
    iput p1, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->state:I

    .line 125
    iget-object v0, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->this$0:Lcom/google/android/picasastore/UrlDownloader;

    #getter for: Lcom/google/android/picasastore/UrlDownloader;->mTaskMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/google/android/picasastore/UrlDownloader;->access$100(Lcom/google/android/picasastore/UrlDownloader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->this$0:Lcom/google/android/picasastore/UrlDownloader;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 127
    return-void
.end method


# virtual methods
.method public releaseReadRequest()V
    .registers 7

    .prologue
    .line 111
    iget-object v1, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->this$0:Lcom/google/android/picasastore/UrlDownloader;

    monitor-enter v1

    .line 112
    :try_start_3
    iget v0, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->requestCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->requestCount:I

    .line 113
    iget v0, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->requestCount:I

    if-nez v0, :cond_2b

    .line 114
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->cancelTimeout:J

    .line 115
    iget v0, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->state:I

    and-int/lit8 v0, v0, 0x1c

    if-eqz v0, :cond_2b

    .line 116
    iget-object v0, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 117
    iget v0, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->state:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2b

    iget-object v0, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->downloadFile:Ljava/io/File;

    #calls: Lcom/google/android/picasastore/UrlDownloader;->deleteSilently(Ljava/io/File;)V
    invoke-static {v0}, Lcom/google/android/picasastore/UrlDownloader;->access$000(Ljava/io/File;)V

    .line 120
    :cond_2b
    monitor-exit v1

    .line 121
    return-void

    .line 120
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
    .line 105
    iget-object v1, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->this$0:Lcom/google/android/picasastore/UrlDownloader;

    monitor-enter v1

    .line 106
    :try_start_3
    iget v0, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->requestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->requestCount:I

    .line 107
    monitor-exit v1

    .line 108
    return-void

    .line 107
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public run()V
    .registers 15

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v13, 0x4

    .line 132
    iget-object v9, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->this$0:Lcom/google/android/picasastore/UrlDownloader;

    monitor-enter v9

    .line 133
    :try_start_6
    iget v10, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->state:I

    if-ne v10, v7, :cond_18

    :goto_a
    invoke-static {v7}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 134
    iget v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->requestCount:I

    if-nez v7, :cond_1a

    .line 135
    const/16 v7, 0x10

    invoke-direct {p0, v7}, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->setFinalState(I)V

    .line 136
    monitor-exit v9

    .line 214
    :goto_17
    return-void

    :cond_18
    move v7, v8

    .line 133
    goto :goto_a

    .line 138
    :cond_1a
    const/4 v7, 0x2

    iput v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->state:I

    .line 139
    monitor-exit v9
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_c8

    .line 141
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PicasaStore.download "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->downloadUrl:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/picasastore/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v5

    .line 143
    .local v5, statsId:I
    const/4 v1, 0x0

    .line 145
    .local v1, is:Ljava/io/InputStream;
    :try_start_3c
    iget-object v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->this$0:Lcom/google/android/picasastore/UrlDownloader;

    #getter for: Lcom/google/android/picasastore/UrlDownloader;->mController:Lcom/google/android/picasastore/UrlDownloader$Controller;
    invoke-static {v7}, Lcom/google/android/picasastore/UrlDownloader;->access$200(Lcom/google/android/picasastore/UrlDownloader;)Lcom/google/android/picasastore/UrlDownloader$Controller;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/picasastore/UrlDownloader$Controller;->createTempFile()Ljava/io/File;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->downloadFile:Ljava/io/File;

    .line 146
    new-instance v7, Ljava/io/RandomAccessFile;

    iget-object v8, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->downloadFile:Ljava/io/File;

    const-string v9, "rw"

    invoke-direct {v7, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 147
    iget-object v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->downloadUrl:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/picasastore/HttpUtils;->openInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 148
    const/16 v7, 0x800

    new-array v0, v7, [B

    .line 151
    .local v0, buffer:[B
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_60
    .catchall {:try_start_3c .. :try_end_60} :catchall_17e
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_60} :catch_d8

    move-result-wide v3

    .line 153
    .local v3, startTime:J
    :try_start_61
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 154
    .local v2, rc:I
    :goto_65
    if-lez v2, :cond_128

    .line 155
    monitor-enter p0
    :try_end_68
    .catchall {:try_start_61 .. :try_end_68} :catchall_ce

    .line 156
    :try_start_68
    iget-object v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->randomAccessFile:Ljava/io/RandomAccessFile;

    iget-wide v8, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->downloadSize:J

    invoke-virtual {v7, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 157
    iget-object v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->randomAccessFile:Ljava/io/RandomAccessFile;

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 158
    monitor-exit p0
    :try_end_76
    .catchall {:try_start_68 .. :try_end_76} :catchall_cb

    .line 159
    :try_start_76
    iget-object v8, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->this$0:Lcom/google/android/picasastore/UrlDownloader;

    monitor-enter v8
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_ce

    .line 165
    :try_start_79
    iget v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->requestCount:I

    if-nez v7, :cond_113

    iget-object v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->this$0:Lcom/google/android/picasastore/UrlDownloader;

    #getter for: Lcom/google/android/picasastore/UrlDownloader;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {v7}, Lcom/google/android/picasastore/UrlDownloader;->access$300(Lcom/google/android/picasastore/UrlDownloader;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_93

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->cancelTimeout:J

    cmp-long v7, v9, v11

    if-lez v7, :cond_113

    .line 167
    :cond_93
    const/16 v7, 0x10

    invoke-direct {p0, v7}, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->setFinalState(I)V

    .line 168
    monitor-exit v8
    :try_end_99
    .catchall {:try_start_79 .. :try_end_99} :catchall_125

    .line 177
    :try_start_99
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-static {v7, v8}, Lcom/google/android/picasastore/MetricsUtils;->incrementNetworkOpDurationAndCount(J)V
    :try_end_a1
    .catchall {:try_start_99 .. :try_end_a1} :catchall_17e
    .catch Ljava/lang/Throwable; {:try_start_99 .. :try_end_a1} :catch_d8

    .line 201
    iget v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->state:I

    if-eq v7, v13, :cond_a8

    invoke-static {v1}, Lcom/google/android/picasastore/HttpUtils;->abortConnectionSilently(Ljava/io/InputStream;)V

    .line 202
    :cond_a8
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 203
    iget-object v8, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->this$0:Lcom/google/android/picasastore/UrlDownloader;

    monitor-enter v8

    .line 204
    :try_start_ae
    iget v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->requestCount:I

    if-nez v7, :cond_c0

    .line 205
    iget-object v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-static {v7}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 206
    iget v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->state:I

    if-eq v7, v13, :cond_c0

    iget-object v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->downloadFile:Ljava/io/File;

    #calls: Lcom/google/android/picasastore/UrlDownloader;->deleteSilently(Ljava/io/File;)V
    invoke-static {v7}, Lcom/google/android/picasastore/UrlDownloader;->access$000(Ljava/io/File;)V

    .line 208
    :cond_c0
    monitor-exit v8
    :try_end_c1
    .catchall {:try_start_ae .. :try_end_c1} :catchall_110

    .line 211
    const-string v7, "picasa.download.photo_video"

    invoke-static {v5, v7}, Lcom/google/android/picasastore/MetricsUtils;->endWithReport(ILjava/lang/String;)V

    goto/16 :goto_17

    .line 139
    .end local v0           #buffer:[B
    .end local v1           #is:Ljava/io/InputStream;
    .end local v2           #rc:I
    .end local v3           #startTime:J
    .end local v5           #statsId:I
    :catchall_c8
    move-exception v7

    :try_start_c9
    monitor-exit v9
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_c8

    throw v7

    .line 158
    .restart local v0       #buffer:[B
    .restart local v1       #is:Ljava/io/InputStream;
    .restart local v2       #rc:I
    .restart local v3       #startTime:J
    .restart local v5       #statsId:I
    :catchall_cb
    move-exception v7

    :try_start_cc
    monitor-exit p0
    :try_end_cd
    .catchall {:try_start_cc .. :try_end_cd} :catchall_cb

    :try_start_cd
    throw v7
    :try_end_ce
    .catchall {:try_start_cd .. :try_end_ce} :catchall_ce

    .line 177
    .end local v2           #rc:I
    :catchall_ce
    move-exception v7

    :try_start_cf
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v3

    invoke-static {v8, v9}, Lcom/google/android/picasastore/MetricsUtils;->incrementNetworkOpDurationAndCount(J)V

    throw v7
    :try_end_d8
    .catchall {:try_start_cf .. :try_end_d8} :catchall_17e
    .catch Ljava/lang/Throwable; {:try_start_cf .. :try_end_d8} :catch_d8

    .line 192
    .end local v0           #buffer:[B
    .end local v3           #startTime:J
    :catch_d8
    move-exception v6

    .line 193
    .local v6, t:Ljava/lang/Throwable;
    :try_start_d9
    const-string v7, "UrlDownloader"

    const-string v8, "download fail!"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    iget-object v8, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->this$0:Lcom/google/android/picasastore/UrlDownloader;

    monitor-enter v8
    :try_end_e3
    .catchall {:try_start_d9 .. :try_end_e3} :catchall_17e

    .line 195
    const/16 v7, 0x8

    :try_start_e5
    invoke-direct {p0, v7}, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->setFinalState(I)V

    .line 196
    monitor-exit v8
    :try_end_e9
    .catchall {:try_start_e5 .. :try_end_e9} :catchall_1ab

    .line 201
    iget v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->state:I

    if-eq v7, v13, :cond_f0

    invoke-static {v1}, Lcom/google/android/picasastore/HttpUtils;->abortConnectionSilently(Ljava/io/InputStream;)V

    .line 202
    :cond_f0
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 203
    iget-object v8, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->this$0:Lcom/google/android/picasastore/UrlDownloader;

    monitor-enter v8

    .line 204
    :try_start_f6
    iget v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->requestCount:I

    if-nez v7, :cond_108

    .line 205
    iget-object v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-static {v7}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 206
    iget v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->state:I

    if-eq v7, v13, :cond_108

    iget-object v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->downloadFile:Ljava/io/File;

    #calls: Lcom/google/android/picasastore/UrlDownloader;->deleteSilently(Ljava/io/File;)V
    invoke-static {v7}, Lcom/google/android/picasastore/UrlDownloader;->access$000(Ljava/io/File;)V

    .line 208
    :cond_108
    monitor-exit v8
    :try_end_109
    .catchall {:try_start_f6 .. :try_end_109} :catchall_1ae

    .line 211
    const-string v7, "picasa.download.photo_video"

    invoke-static {v5, v7}, Lcom/google/android/picasastore/MetricsUtils;->endWithReport(ILjava/lang/String;)V

    goto/16 :goto_17

    .line 208
    .end local v6           #t:Ljava/lang/Throwable;
    .restart local v0       #buffer:[B
    .restart local v2       #rc:I
    .restart local v3       #startTime:J
    :catchall_110
    move-exception v7

    :try_start_111
    monitor-exit v8
    :try_end_112
    .catchall {:try_start_111 .. :try_end_112} :catchall_110

    throw v7

    .line 171
    :cond_113
    :try_start_113
    iget-wide v9, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->downloadSize:J

    int-to-long v11, v2

    add-long/2addr v9, v11

    iput-wide v9, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->downloadSize:J

    .line 172
    iget-object v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->this$0:Lcom/google/android/picasastore/UrlDownloader;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 173
    monitor-exit v8
    :try_end_11f
    .catchall {:try_start_113 .. :try_end_11f} :catchall_125

    .line 174
    :try_start_11f
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_122
    .catchall {:try_start_11f .. :try_end_122} :catchall_ce

    move-result v2

    goto/16 :goto_65

    .line 173
    :catchall_125
    move-exception v7

    :try_start_126
    monitor-exit v8
    :try_end_127
    .catchall {:try_start_126 .. :try_end_127} :catchall_125

    :try_start_127
    throw v7
    :try_end_128
    .catchall {:try_start_127 .. :try_end_128} :catchall_ce

    .line 177
    :cond_128
    :try_start_128
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-static {v7, v8}, Lcom/google/android/picasastore/MetricsUtils;->incrementNetworkOpDurationAndCount(J)V
    :try_end_130
    .catchall {:try_start_128 .. :try_end_130} :catchall_17e
    .catch Ljava/lang/Throwable; {:try_start_128 .. :try_end_130} :catch_d8

    .line 182
    :try_start_130
    iget-object v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/FileDescriptor;->sync()V

    .line 183
    iget-object v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->this$0:Lcom/google/android/picasastore/UrlDownloader;

    #getter for: Lcom/google/android/picasastore/UrlDownloader;->mController:Lcom/google/android/picasastore/UrlDownloader$Controller;
    invoke-static {v7}, Lcom/google/android/picasastore/UrlDownloader;->access$200(Lcom/google/android/picasastore/UrlDownloader;)Lcom/google/android/picasastore/UrlDownloader$Controller;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->downloadUrl:Ljava/lang/String;

    iget-object v9, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->downloadFile:Ljava/io/File;

    invoke-interface {v7, v8, v9}, Lcom/google/android/picasastore/UrlDownloader$Controller;->onDownloadComplete(Ljava/lang/String;Ljava/io/File;)V
    :try_end_146
    .catchall {:try_start_130 .. :try_end_146} :catchall_17e
    .catch Ljava/lang/Throwable; {:try_start_130 .. :try_end_146} :catch_175

    .line 189
    :goto_146
    :try_start_146
    iget-object v8, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->this$0:Lcom/google/android/picasastore/UrlDownloader;

    monitor-enter v8
    :try_end_149
    .catchall {:try_start_146 .. :try_end_149} :catchall_17e
    .catch Ljava/lang/Throwable; {:try_start_146 .. :try_end_149} :catch_d8

    .line 190
    const/4 v7, 0x4

    :try_start_14a
    invoke-direct {p0, v7}, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->setFinalState(I)V

    .line 191
    monitor-exit v8
    :try_end_14e
    .catchall {:try_start_14a .. :try_end_14e} :catchall_1a5

    .line 201
    iget v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->state:I

    if-eq v7, v13, :cond_155

    invoke-static {v1}, Lcom/google/android/picasastore/HttpUtils;->abortConnectionSilently(Ljava/io/InputStream;)V

    .line 202
    :cond_155
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 203
    iget-object v8, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->this$0:Lcom/google/android/picasastore/UrlDownloader;

    monitor-enter v8

    .line 204
    :try_start_15b
    iget v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->requestCount:I

    if-nez v7, :cond_16d

    .line 205
    iget-object v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-static {v7}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 206
    iget v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->state:I

    if-eq v7, v13, :cond_16d

    iget-object v7, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->downloadFile:Ljava/io/File;

    #calls: Lcom/google/android/picasastore/UrlDownloader;->deleteSilently(Ljava/io/File;)V
    invoke-static {v7}, Lcom/google/android/picasastore/UrlDownloader;->access$000(Ljava/io/File;)V

    .line 208
    :cond_16d
    monitor-exit v8
    :try_end_16e
    .catchall {:try_start_15b .. :try_end_16e} :catchall_1a8

    .line 211
    const-string v7, "picasa.download.photo_video"

    invoke-static {v5, v7}, Lcom/google/android/picasastore/MetricsUtils;->endWithReport(ILjava/lang/String;)V

    goto/16 :goto_17

    .line 184
    :catch_175
    move-exception v6

    .line 186
    .restart local v6       #t:Ljava/lang/Throwable;
    :try_start_176
    const-string v7, "UrlDownloader"

    const-string v8, "ignore call back fail"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17d
    .catchall {:try_start_176 .. :try_end_17d} :catchall_17e
    .catch Ljava/lang/Throwable; {:try_start_176 .. :try_end_17d} :catch_d8

    goto :goto_146

    .line 201
    .end local v0           #buffer:[B
    .end local v2           #rc:I
    .end local v3           #startTime:J
    .end local v6           #t:Ljava/lang/Throwable;
    :catchall_17e
    move-exception v7

    iget v8, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->state:I

    if-eq v8, v13, :cond_186

    invoke-static {v1}, Lcom/google/android/picasastore/HttpUtils;->abortConnectionSilently(Ljava/io/InputStream;)V

    .line 202
    :cond_186
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 203
    iget-object v8, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->this$0:Lcom/google/android/picasastore/UrlDownloader;

    monitor-enter v8

    .line 204
    :try_start_18c
    iget v9, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->requestCount:I

    if-nez v9, :cond_19e

    .line 205
    iget-object v9, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 206
    iget v9, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->state:I

    if-eq v9, v13, :cond_19e

    iget-object v9, p0, Lcom/google/android/picasastore/UrlDownloader$DownloadTask;->downloadFile:Ljava/io/File;

    #calls: Lcom/google/android/picasastore/UrlDownloader;->deleteSilently(Ljava/io/File;)V
    invoke-static {v9}, Lcom/google/android/picasastore/UrlDownloader;->access$000(Ljava/io/File;)V

    .line 208
    :cond_19e
    monitor-exit v8
    :try_end_19f
    .catchall {:try_start_18c .. :try_end_19f} :catchall_1b1

    .line 211
    const-string v8, "picasa.download.photo_video"

    invoke-static {v5, v8}, Lcom/google/android/picasastore/MetricsUtils;->endWithReport(ILjava/lang/String;)V

    throw v7

    .line 191
    .restart local v0       #buffer:[B
    .restart local v2       #rc:I
    .restart local v3       #startTime:J
    :catchall_1a5
    move-exception v7

    :try_start_1a6
    monitor-exit v8
    :try_end_1a7
    .catchall {:try_start_1a6 .. :try_end_1a7} :catchall_1a5

    :try_start_1a7
    throw v7
    :try_end_1a8
    .catchall {:try_start_1a7 .. :try_end_1a8} :catchall_17e
    .catch Ljava/lang/Throwable; {:try_start_1a7 .. :try_end_1a8} :catch_d8

    .line 208
    :catchall_1a8
    move-exception v7

    :try_start_1a9
    monitor-exit v8
    :try_end_1aa
    .catchall {:try_start_1a9 .. :try_end_1aa} :catchall_1a8

    throw v7

    .line 196
    .end local v0           #buffer:[B
    .end local v2           #rc:I
    .end local v3           #startTime:J
    .restart local v6       #t:Ljava/lang/Throwable;
    :catchall_1ab
    move-exception v7

    :try_start_1ac
    monitor-exit v8
    :try_end_1ad
    .catchall {:try_start_1ac .. :try_end_1ad} :catchall_1ab

    :try_start_1ad
    throw v7
    :try_end_1ae
    .catchall {:try_start_1ad .. :try_end_1ae} :catchall_17e

    .line 208
    :catchall_1ae
    move-exception v7

    :try_start_1af
    monitor-exit v8
    :try_end_1b0
    .catchall {:try_start_1af .. :try_end_1b0} :catchall_1ae

    throw v7

    .end local v6           #t:Ljava/lang/Throwable;
    :catchall_1b1
    move-exception v7

    :try_start_1b2
    monitor-exit v8
    :try_end_1b3
    .catchall {:try_start_1b2 .. :try_end_1b3} :catchall_1b1

    throw v7
.end method
