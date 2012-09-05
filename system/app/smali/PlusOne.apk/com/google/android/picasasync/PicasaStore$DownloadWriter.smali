.class Lcom/google/android/picasasync/PicasaStore$DownloadWriter;
.super Ljava/lang/Object;
.source "PicasaStore.java"

# interfaces
.implements Lcom/google/android/picasasync/PicasaStore$PipeDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/PicasaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/picasasync/PicasaStore$PipeDataWriter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private mDownloadListener:Lcom/google/android/picasasync/PicasaStore$DownloadListener;

.field private mDownloadUrl:Ljava/lang/String;

.field private mId:J

.field final synthetic this$0:Lcom/google/android/picasasync/PicasaStore;


# direct methods
.method public constructor <init>(Lcom/google/android/picasasync/PicasaStore;JLjava/lang/String;Lcom/google/android/picasasync/PicasaStore$DownloadListener;)V
    .registers 6
    .parameter
    .parameter "id"
    .parameter "downloadUrl"
    .parameter "listener"

    .prologue
    .line 588
    iput-object p1, p0, Lcom/google/android/picasasync/PicasaStore$DownloadWriter;->this$0:Lcom/google/android/picasasync/PicasaStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 589
    iput-wide p2, p0, Lcom/google/android/picasasync/PicasaStore$DownloadWriter;->mId:J

    .line 590
    iput-object p4, p0, Lcom/google/android/picasasync/PicasaStore$DownloadWriter;->mDownloadUrl:Ljava/lang/String;

    .line 591
    iput-object p5, p0, Lcom/google/android/picasasync/PicasaStore$DownloadWriter;->mDownloadListener:Lcom/google/android/picasasync/PicasaStore$DownloadListener;

    .line 592
    return-void
.end method


# virtual methods
.method public writeDataToPipe(Landroid/os/ParcelFileDescriptor;Ljava/lang/Object;)V
    .registers 14
    .parameter "output"
    .parameter "object"

    .prologue
    .line 597
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PicasaStore.download "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/google/android/picasasync/PicasaStore$DownloadWriter;->mId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/picasasync/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v6

    .line 599
    .local v6, statsId:I
    const/4 v2, 0x0

    .line 600
    .local v2, is:Ljava/io/InputStream;
    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v4, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 601
    .local v4, os:Ljava/io/OutputStream;
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaStore$DownloadWriter;->mDownloadListener:Lcom/google/android/picasasync/PicasaStore$DownloadListener;

    .line 603
    .local v3, listener:Lcom/google/android/picasasync/PicasaStore$DownloadListener;
    :try_start_29
    iget-object v8, p0, Lcom/google/android/picasasync/PicasaStore$DownloadWriter;->mDownloadUrl:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/picasasync/HttpUtils;->openInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 604
    const/16 v8, 0x800

    new-array v0, v8, [B

    .line 605
    .local v0, buffer:[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 606
    .local v5, rc:I
    :goto_37
    if-lez v5, :cond_48

    .line 607
    const/4 v8, 0x0

    invoke-virtual {v4, v0, v8, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 608
    if-eqz v3, :cond_43

    .line 609
    const/4 v8, 0x0

    invoke-interface {v3, v0, v8, v5}, Lcom/google/android/picasasync/PicasaStore$DownloadListener;->onDataAvailable([BII)V

    .line 611
    :cond_43
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    goto :goto_37

    .line 613
    :cond_48
    if-eqz v3, :cond_4d

    .line 614
    invoke-interface {v3}, Lcom/google/android/picasasync/PicasaStore$DownloadListener;->onDownloadComplete()V
    :try_end_4d
    .catchall {:try_start_29 .. :try_end_4d} :catchall_b1
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_4d} :catch_57
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_4d} :catch_82

    .line 630
    :cond_4d
    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 631
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 632
    invoke-static {v6}, Lcom/google/android/picasasync/MetricsUtils;->end(I)V

    .line 634
    .end local v0           #buffer:[B
    .end local v5           #rc:I
    :goto_56
    return-void

    .line 616
    :catch_57
    move-exception v1

    .line 617
    .local v1, e:Ljava/io/IOException;
    :try_start_58
    invoke-static {v2}, Lcom/google/android/picasasync/HttpUtils;->abortConnectionSilently(Ljava/io/InputStream;)V

    .line 623
    const-string v8, "PicasaStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pipe closed early by caller? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    if-eqz v3, :cond_78

    invoke-interface {v3}, Lcom/google/android/picasasync/PicasaStore$DownloadListener;->onDownloadAbort()V
    :try_end_78
    .catchall {:try_start_58 .. :try_end_78} :catchall_b1

    .line 630
    :cond_78
    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 631
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 632
    invoke-static {v6}, Lcom/google/android/picasasync/MetricsUtils;->end(I)V

    goto :goto_56

    .line 625
    .end local v1           #e:Ljava/io/IOException;
    :catch_82
    move-exception v7

    .line 626
    .local v7, t:Ljava/lang/Throwable;
    :try_start_83
    invoke-static {v2}, Lcom/google/android/picasasync/HttpUtils;->abortConnectionSilently(Ljava/io/InputStream;)V

    .line 627
    const-string v8, "PicasaStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fail to write to pipe: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/picasasync/PicasaStore$DownloadWriter;->mDownloadUrl:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 628
    invoke-interface {v3}, Lcom/google/android/picasasync/PicasaStore$DownloadListener;->onDownloadAbort()V
    :try_end_a7
    .catchall {:try_start_83 .. :try_end_a7} :catchall_b1

    .line 630
    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 631
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 632
    invoke-static {v6}, Lcom/google/android/picasasync/MetricsUtils;->end(I)V

    goto :goto_56

    .line 630
    .end local v7           #t:Ljava/lang/Throwable;
    :catchall_b1
    move-exception v8

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 631
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 632
    invoke-static {v6}, Lcom/google/android/picasasync/MetricsUtils;->end(I)V

    throw v8
.end method
