.class final Lcom/sec/android/app/videoplayer/util/VideoUtil$4;
.super Ljava/lang/Object;
.source "VideoUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/util/VideoUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1561
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 1563
    const-string v7, "VideoUtil"

    const-string v8, "mSDPDownloader Start"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    const v0, 0xea60

    .line 1568
    .local v0, DEFAULT_TIMEOUT:I
    :try_start_a
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getVideoUri()Ljava/lang/String;

    move-result-object v1

    .line 1569
    .local v1, DownloadURL:Ljava/lang/String;
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    .line 1570
    .local v6, t_connection:Ljava/net/URLConnection;
    invoke-virtual {v6, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 1571
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 1573
    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 1574
    .local v3, inputStream:Ljava/io/InputStream;
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->access$300()Landroid/content/Context;

    move-result-object v7

    const-string v8, ".down.sdp"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    .line 1575
    .local v5, out:Ljava/io/OutputStream;
    invoke-static {v3, v5}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->writeFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 1576
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 1577
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1579
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->access$300()Landroid/content/Context;

    move-result-object v8

    const-string v9, ".down.sdp"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, -0x1

    invoke-static {v7, v8, v9}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setVideoPath(Ljava/lang/String;J)V

    .line 1580
    const-string v7, "VideoUtil"

    const-string v8, "init() File Write Successful !! "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    const/16 v7, 0x1e

    sput v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    .line 1584
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->access$000()Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1585
    .local v4, msg:Landroid/os/Message;
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->access$000()Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1586
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->access$000()Landroid/os/Handler;

    move-result-object v7

    const-wide/16 v8, 0x64

    invoke-virtual {v7, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_81} :catch_82

    .line 1593
    .end local v1           #DownloadURL:Ljava/lang/String;
    .end local v3           #inputStream:Ljava/io/InputStream;
    .end local v4           #msg:Landroid/os/Message;
    .end local v5           #out:Ljava/io/OutputStream;
    .end local v6           #t_connection:Ljava/net/URLConnection;
    :goto_81
    return-void

    .line 1588
    :catch_82
    move-exception v2

    .line 1589
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "VideoUtil"

    const-string v8, "init() File Write Failed! "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1591
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->stopPlayingChecker()V

    goto :goto_81
.end method
