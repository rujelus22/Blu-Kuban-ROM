.class Lcom/google/android/picasastore/PicasaStore$DownloadWriter;
.super Ljava/lang/Object;
.source "PicasaStore.java"

# interfaces
.implements Lcom/google/android/picasastore/PicasaStore$PipeDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasastore/PicasaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/picasastore/PicasaStore$PipeDataWriter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private mDownloadListener:Lcom/google/android/picasastore/PicasaStore$DownloadListener;

.field private mDownloadUrl:Ljava/lang/String;

.field private mId:J

.field final synthetic this$0:Lcom/google/android/picasastore/PicasaStore;


# direct methods
.method public constructor <init>(Lcom/google/android/picasastore/PicasaStore;JLjava/lang/String;Lcom/google/android/picasastore/PicasaStore$DownloadListener;)V
    .registers 6
    .parameter
    .parameter "id"
    .parameter "downloadUrl"
    .parameter "listener"

    .prologue
    .line 510
    iput-object p1, p0, Lcom/google/android/picasastore/PicasaStore$DownloadWriter;->this$0:Lcom/google/android/picasastore/PicasaStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 511
    iput-wide p2, p0, Lcom/google/android/picasastore/PicasaStore$DownloadWriter;->mId:J

    .line 512
    iput-object p4, p0, Lcom/google/android/picasastore/PicasaStore$DownloadWriter;->mDownloadUrl:Ljava/lang/String;

    .line 513
    iput-object p5, p0, Lcom/google/android/picasastore/PicasaStore$DownloadWriter;->mDownloadListener:Lcom/google/android/picasastore/PicasaStore$DownloadListener;

    .line 514
    return-void
.end method


# virtual methods
.method public writeDataToPipe(Landroid/os/ParcelFileDescriptor;Ljava/lang/Object;)V
    .registers 16
    .parameter "output"
    .parameter "object"

    .prologue
    .line 519
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PicasaStore.download "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/google/android/picasastore/PicasaStore$DownloadWriter;->mId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v11}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/picasastore/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v8

    .line 520
    .local v8, statsId:I
    const/4 v2, 0x0

    .line 521
    .local v2, is:Ljava/io/InputStream;
    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v4, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 522
    .local v4, os:Ljava/io/OutputStream;
    iget-object v3, p0, Lcom/google/android/picasastore/PicasaStore$DownloadWriter;->mDownloadListener:Lcom/google/android/picasastore/PicasaStore$DownloadListener;

    .line 524
    .local v3, listener:Lcom/google/android/picasastore/PicasaStore$DownloadListener;
    const/16 v10, 0x800

    :try_start_2b
    new-array v0, v10, [B

    .line 525
    .local v0, buffer:[B
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_cf
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_30} :catch_6f
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_30} :catch_9c

    move-result-wide v6

    .line 527
    .local v6, startTime:J
    :try_start_31
    iget-object v10, p0, Lcom/google/android/picasastore/PicasaStore$DownloadWriter;->mDownloadUrl:Ljava/lang/String;

    invoke-static {v10}, Lcom/google/android/picasastore/HttpUtils;->openInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 528
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 529
    .local v5, rc:I
    :goto_3b
    if-lez v5, :cond_4c

    .line 530
    const/4 v10, 0x0

    invoke-virtual {v4, v0, v10, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 531
    if-eqz v3, :cond_47

    .line 532
    const/4 v10, 0x0

    invoke-interface {v3, v0, v10, v5}, Lcom/google/android/picasastore/PicasaStore$DownloadListener;->onDataAvailable([BII)V

    .line 534
    :cond_47
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_4a
    .catchall {:try_start_31 .. :try_end_4a} :catchall_65

    move-result v5

    goto :goto_3b

    .line 537
    :cond_4c
    :try_start_4c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-static {v10, v11}, Lcom/google/android/picasastore/MetricsUtils;->incrementNetworkOpDurationAndCount(J)V

    .line 540
    if-eqz v3, :cond_59

    .line 541
    invoke-interface {v3}, Lcom/google/android/picasastore/PicasaStore$DownloadListener;->onDownloadComplete()V
    :try_end_59
    .catchall {:try_start_4c .. :try_end_59} :catchall_cf
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_59} :catch_6f
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_59} :catch_9c

    .line 557
    :cond_59
    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 558
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 561
    const-string v10, "picasa.download.photo_video"

    invoke-static {v8, v10}, Lcom/google/android/picasastore/MetricsUtils;->endWithReport(ILjava/lang/String;)V

    .line 564
    .end local v0           #buffer:[B
    .end local v5           #rc:I
    .end local v6           #startTime:J
    :goto_64
    return-void

    .line 537
    .restart local v0       #buffer:[B
    .restart local v6       #startTime:J
    :catchall_65
    move-exception v10

    :try_start_66
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long/2addr v11, v6

    invoke-static {v11, v12}, Lcom/google/android/picasastore/MetricsUtils;->incrementNetworkOpDurationAndCount(J)V

    throw v10
    :try_end_6f
    .catchall {:try_start_66 .. :try_end_6f} :catchall_cf
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_6f} :catch_6f
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_6f} :catch_9c

    .line 543
    .end local v0           #buffer:[B
    .end local v6           #startTime:J
    :catch_6f
    move-exception v1

    .line 544
    .local v1, e:Ljava/io/IOException;
    :try_start_70
    invoke-static {v2}, Lcom/google/android/picasastore/HttpUtils;->abortConnectionSilently(Ljava/io/InputStream;)V

    .line 550
    const-string v10, "PicasaStore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "pipe closed early by caller? "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    if-eqz v3, :cond_90

    invoke-interface {v3}, Lcom/google/android/picasastore/PicasaStore$DownloadListener;->onDownloadAbort()V
    :try_end_90
    .catchall {:try_start_70 .. :try_end_90} :catchall_cf

    .line 557
    :cond_90
    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 558
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 561
    const-string v10, "picasa.download.photo_video"

    invoke-static {v8, v10}, Lcom/google/android/picasastore/MetricsUtils;->endWithReport(ILjava/lang/String;)V

    goto :goto_64

    .line 552
    .end local v1           #e:Ljava/io/IOException;
    :catch_9c
    move-exception v9

    .line 553
    .local v9, t:Ljava/lang/Throwable;
    :try_start_9d
    invoke-static {v2}, Lcom/google/android/picasastore/HttpUtils;->abortConnectionSilently(Ljava/io/InputStream;)V

    .line 554
    const-string v10, "PicasaStore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fail to write to pipe: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/google/android/picasastore/PicasaStore$DownloadWriter;->mDownloadUrl:Ljava/lang/String;

    invoke-static {v12}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 555
    if-eqz v3, :cond_c3

    invoke-interface {v3}, Lcom/google/android/picasastore/PicasaStore$DownloadListener;->onDownloadAbort()V
    :try_end_c3
    .catchall {:try_start_9d .. :try_end_c3} :catchall_cf

    .line 557
    :cond_c3
    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 558
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 561
    const-string v10, "picasa.download.photo_video"

    invoke-static {v8, v10}, Lcom/google/android/picasastore/MetricsUtils;->endWithReport(ILjava/lang/String;)V

    goto :goto_64

    .line 557
    .end local v9           #t:Ljava/lang/Throwable;
    :catchall_cf
    move-exception v10

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 558
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 561
    const-string v11, "picasa.download.photo_video"

    invoke-static {v8, v11}, Lcom/google/android/picasastore/MetricsUtils;->endWithReport(ILjava/lang/String;)V

    throw v10
.end method
