.class public Lcom/google/android/music/dl/DownloadTaskImpl;
.super Ljava/lang/Object;
.source "DownloadTaskImpl.java"

# interfaces
.implements Lcom/google/android/music/dl/DownloadTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/dl/DownloadTaskImpl$2;
    }
.end annotation


# static fields
.field private static DOWNLOAD_COMPLETE_EVENTCODE:I

.field private static HTTP_RESPONSE_EVENTCODE:I

.field private static IO_EXCEPTION_EVENTCODE:I

.field private static SERVICE_UNAVAILABLE_EVENTCODE:I


# instance fields
.field protected final LOGV:Z

.field mBufferOut:Lcom/google/android/music/dl/BufferProgressOutputStream;

.field private final mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

.field private mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;

.field private final mContext:Landroid/content/Context;

.field protected final mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

.field private mGoingToRestart:Z

.field private mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

.field private mServerSpecifiedRetryTime:J

.field private mStarted:Z

.field private volatile mStopDownload:Z

.field private mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

.field private mStreamingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mStreamingEnabledChangedTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 102
    const/16 v0, 0x64

    sput v0, Lcom/google/android/music/dl/DownloadTaskImpl;->SERVICE_UNAVAILABLE_EVENTCODE:I

    .line 103
    const/16 v0, 0x65

    sput v0, Lcom/google/android/music/dl/DownloadTaskImpl;->HTTP_RESPONSE_EVENTCODE:I

    .line 104
    const/16 v0, 0x66

    sput v0, Lcom/google/android/music/dl/DownloadTaskImpl;->IO_EXCEPTION_EVENTCODE:I

    .line 106
    const/4 v0, 0x2

    sput v0, Lcom/google/android/music/dl/DownloadTaskImpl;->DOWNLOAD_COMPLETE_EVENTCODE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/dl/BufferProgress;Lcom/google/android/music/dl/cache/CacheManager;Lcom/google/android/music/dl/DownloadOrder;Lcom/google/android/music/NetworkMonitorServiceConnection;)V
    .registers 10
    .parameter "context"
    .parameter "bufferProgress"
    .parameter "cacheManager"
    .parameter "order"
    .parameter "networkMonitorServiceConnection"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "DownloadTask"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->LOGV:Z

    .line 93
    iput-boolean v1, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mStopDownload:Z

    .line 98
    iput-boolean v1, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mGoingToRestart:Z

    .line 100
    iput-boolean v1, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mStarted:Z

    .line 108
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mStreamingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 109
    iput-wide v2, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mStreamingEnabledChangedTime:J

    .line 110
    iput-wide v2, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mServerSpecifiedRetryTime:J

    .line 489
    new-instance v0, Lcom/google/android/music/dl/DownloadTaskImpl$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/dl/DownloadTaskImpl$1;-><init>(Lcom/google/android/music/dl/DownloadTaskImpl;)V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    .line 120
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mContext:Landroid/content/Context;

    .line 121
    iput-object p2, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    .line 122
    iput-object p3, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;

    .line 123
    iput-object p4, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    .line 124
    iput-object p5, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/dl/DownloadTaskImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mStreamingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/music/dl/DownloadTaskImpl;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mStreamingEnabledChangedTime:J

    return-wide p1
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mStopDownload:Z

    .line 149
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadOrder;->getHandler()Lcom/google/android/music/dl/DownloadHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadHandler;->cancel()V

    .line 150
    return-void
.end method

.method protected download()I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v14, 0x1

    const/4 v6, 0x5

    const/4 v7, 0x0

    .line 366
    :try_start_5
    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->LOGV:Z

    if-eqz v0, :cond_23

    const-string v0, "DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloading: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_23
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadOrder;->getHandler()Lcom/google/android/music/dl/DownloadHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadHandler;->prepareInputStream()V

    .line 371
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mBufferOut:Lcom/google/android/music/dl/BufferProgressOutputStream;

    if-nez v0, :cond_80

    .line 372
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v0, v1}, Lcom/google/android/music/dl/cache/CacheManager;->prepareForDownload(Lcom/google/android/music/dl/DownloadOrder;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 374
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/music/dl/DownloadOrder;->markDownloadFailed(I)V

    move v0, v6

    .line 473
    :goto_41
    return v0

    .line 378
    :cond_42
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadOrder;->getFullPath()Ljava/io/File;

    move-result-object v11

    .line 379
    .local v11, localLoaction:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z
    :try_end_4b
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_4b} :catch_d1
    .catch Ljava/io/InterruptedIOException; {:try_start_5 .. :try_end_4b} :catch_10c
    .catch Lcom/google/android/music/dl/ServiceUnavailableException; {:try_start_5 .. :try_end_4b} :catch_116
    .catch Lcom/google/android/music/dl/ServerRejectionException; {:try_start_5 .. :try_end_4b} :catch_12c
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_5 .. :try_end_4b} :catch_153
    .catch Lcom/google/android/music/dl/UnsupportedAudioTypeException; {:try_start_5 .. :try_end_4b} :catch_177
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_4b} :catch_19e

    move-result v0

    if-nez v0, :cond_70

    .line 381
    :try_start_4e
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_70

    .line 382
    const-string v0, "DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_70} :catch_a5
    .catch Ljava/net/SocketTimeoutException; {:try_start_4e .. :try_end_70} :catch_d1
    .catch Ljava/io/InterruptedIOException; {:try_start_4e .. :try_end_70} :catch_10c
    .catch Lcom/google/android/music/dl/ServiceUnavailableException; {:try_start_4e .. :try_end_70} :catch_116
    .catch Lcom/google/android/music/dl/ServerRejectionException; {:try_start_4e .. :try_end_70} :catch_12c
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_4e .. :try_end_70} :catch_153
    .catch Lcom/google/android/music/dl/UnsupportedAudioTypeException; {:try_start_4e .. :try_end_70} :catch_177

    .line 390
    :cond_70
    :goto_70
    const/4 v13, 0x0

    .line 392
    .local v13, out:Ljava/io/OutputStream;
    :try_start_71
    invoke-virtual {p0}, Lcom/google/android/music/dl/DownloadTaskImpl;->getWriteToStream()Ljava/io/OutputStream;
    :try_end_74
    .catch Ljava/io/FileNotFoundException; {:try_start_71 .. :try_end_74} :catch_f9
    .catch Ljava/net/SocketTimeoutException; {:try_start_71 .. :try_end_74} :catch_d1
    .catch Ljava/io/InterruptedIOException; {:try_start_71 .. :try_end_74} :catch_10c
    .catch Lcom/google/android/music/dl/ServiceUnavailableException; {:try_start_71 .. :try_end_74} :catch_116
    .catch Lcom/google/android/music/dl/ServerRejectionException; {:try_start_71 .. :try_end_74} :catch_12c
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_71 .. :try_end_74} :catch_153
    .catch Lcom/google/android/music/dl/UnsupportedAudioTypeException; {:try_start_71 .. :try_end_74} :catch_177
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_19e

    move-result-object v13

    .line 399
    :try_start_75
    new-instance v0, Lcom/google/android/music/dl/BufferProgressOutputStream;

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-direct {v0, v1, v13, v2}, Lcom/google/android/music/dl/BufferProgressOutputStream;-><init>(Lcom/google/android/music/dl/BufferProgress;Ljava/io/OutputStream;Lcom/google/android/music/dl/DownloadOrder;)V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mBufferOut:Lcom/google/android/music/dl/BufferProgressOutputStream;

    .line 403
    .end local v11           #localLoaction:Ljava/io/File;
    .end local v13           #out:Ljava/io/OutputStream;
    :cond_80
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadOrder;->getHandler()Lcom/google/android/music/dl/DownloadHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mBufferOut:Lcom/google/android/music/dl/BufferProgressOutputStream;

    invoke-virtual {v0, v1}, Lcom/google/android/music/dl/DownloadHandler;->downloadTo(Ljava/io/OutputStream;)V

    .line 405
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadOrder;->getHandler()Lcom/google/android/music/dl/DownloadHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadHandler;->downloadSucceeded()Z

    move-result v0

    if-eqz v0, :cond_1c6

    .line 406
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/google/android/music/dl/DownloadTaskImpl;->DOWNLOAD_COMPLETE_EVENTCODE:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/dl/DownloadOrder;->logStatusEvent(Landroid/content/Context;IIZZ)V

    move v0, v8

    .line 408
    goto :goto_41

    .line 384
    .restart local v11       #localLoaction:Ljava/io/File;
    :catch_a5
    move-exception v10

    .line 385
    .local v10, e:Ljava/io/IOException;
    const-string v0, "DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Lcom/google/android/music/log/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d0
    .catch Ljava/net/SocketTimeoutException; {:try_start_75 .. :try_end_d0} :catch_d1
    .catch Ljava/io/InterruptedIOException; {:try_start_75 .. :try_end_d0} :catch_10c
    .catch Lcom/google/android/music/dl/ServiceUnavailableException; {:try_start_75 .. :try_end_d0} :catch_116
    .catch Lcom/google/android/music/dl/ServerRejectionException; {:try_start_75 .. :try_end_d0} :catch_12c
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_75 .. :try_end_d0} :catch_153
    .catch Lcom/google/android/music/dl/UnsupportedAudioTypeException; {:try_start_75 .. :try_end_d0} :catch_177
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_d0} :catch_19e

    goto :goto_70

    .line 410
    .end local v10           #e:Ljava/io/IOException;
    .end local v11           #localLoaction:Ljava/io/File;
    :catch_d1
    move-exception v10

    .line 414
    .local v10, e:Ljava/net/SocketTimeoutException;
    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->LOGV:Z

    if-eqz v0, :cond_f6

    .line 415
    const-string v0, "DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" timed out"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :cond_f6
    const/4 v0, 0x3

    goto/16 :goto_41

    .line 393
    .end local v10           #e:Ljava/net/SocketTimeoutException;
    .restart local v11       #localLoaction:Ljava/io/File;
    .restart local v13       #out:Ljava/io/OutputStream;
    :catch_f9
    move-exception v10

    .line 394
    .local v10, e:Ljava/io/FileNotFoundException;
    :try_start_fa
    const-string v0, "DownloadTask"

    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 396
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/music/dl/DownloadOrder;->markDownloadFailed(I)V
    :try_end_109
    .catch Ljava/net/SocketTimeoutException; {:try_start_fa .. :try_end_109} :catch_d1
    .catch Ljava/io/InterruptedIOException; {:try_start_fa .. :try_end_109} :catch_10c
    .catch Lcom/google/android/music/dl/ServiceUnavailableException; {:try_start_fa .. :try_end_109} :catch_116
    .catch Lcom/google/android/music/dl/ServerRejectionException; {:try_start_fa .. :try_end_109} :catch_12c
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_fa .. :try_end_109} :catch_153
    .catch Lcom/google/android/music/dl/UnsupportedAudioTypeException; {:try_start_fa .. :try_end_109} :catch_177
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_109} :catch_19e

    move v0, v6

    .line 397
    goto/16 :goto_41

    .line 418
    .end local v10           #e:Ljava/io/FileNotFoundException;
    .end local v11           #localLoaction:Ljava/io/File;
    .end local v13           #out:Ljava/io/OutputStream;
    :catch_10c
    move-exception v10

    .line 420
    .local v10, e:Ljava/io/InterruptedIOException;
    new-instance v12, Ljava/lang/InterruptedException;

    invoke-direct {v12}, Ljava/lang/InterruptedException;-><init>()V

    .line 421
    .local v12, newEx:Ljava/lang/InterruptedException;
    invoke-virtual {v12, v10}, Ljava/lang/InterruptedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 422
    throw v12

    .line 423
    .end local v10           #e:Ljava/io/InterruptedIOException;
    .end local v12           #newEx:Ljava/lang/InterruptedException;
    :catch_116
    move-exception v10

    .line 424
    .local v10, e:Lcom/google/android/music/dl/ServiceUnavailableException;
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/google/android/music/dl/DownloadTaskImpl;->SERVICE_UNAVAILABLE_EVENTCODE:I

    move v3, v7

    move v4, v7

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/dl/DownloadOrder;->logStatusEvent(Landroid/content/Context;IIZZ)V

    .line 425
    invoke-virtual {v10}, Lcom/google/android/music/dl/ServiceUnavailableException;->getRetryAfterInSeconds()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mServerSpecifiedRetryTime:J

    move v0, v9

    .line 426
    goto/16 :goto_41

    .line 427
    .end local v10           #e:Lcom/google/android/music/dl/ServiceUnavailableException;
    :catch_12c
    move-exception v10

    .line 428
    .local v10, e:Lcom/google/android/music/dl/ServerRejectionException;
    sget-object v0, Lcom/google/android/music/dl/DownloadTaskImpl$2;->$SwitchMap$com$google$android$music$dl$ServerRejectionException$RejectionReason:[I

    invoke-virtual {v10}, Lcom/google/android/music/dl/ServerRejectionException;->getRejectionReason()Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1f2

    :goto_13c
    move v0, v6

    .line 439
    goto/16 :goto_41

    .line 430
    :pswitch_13f
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/android/music/dl/DownloadOrder;->setErrorType(I)V

    goto :goto_13c

    .line 433
    :pswitch_146
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v0, v6}, Lcom/google/android/music/dl/DownloadOrder;->setErrorType(I)V

    goto :goto_13c

    .line 436
    :pswitch_14c
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/google/android/music/dl/DownloadOrder;->setErrorType(I)V

    goto :goto_13c

    .line 441
    .end local v10           #e:Lcom/google/android/music/dl/ServerRejectionException;
    :catch_153
    move-exception v10

    .line 442
    .local v10, e:Lorg/apache/http/client/HttpResponseException;
    invoke-virtual {v10}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v3

    .line 443
    .local v3, statusCode:I
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/google/android/music/dl/DownloadTaskImpl;->HTTP_RESPONSE_EVENTCODE:I

    move v4, v7

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/dl/DownloadOrder;->logStatusEvent(Landroid/content/Context;IIZZ)V

    .line 446
    const/16 v0, 0x190

    if-lt v3, v0, :cond_1c6

    const/16 v0, 0x1f4

    if-ge v3, v0, :cond_1c6

    .line 450
    const/16 v0, 0x191

    if-ne v3, v0, :cond_174

    .line 451
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v0, v8}, Lcom/google/android/music/dl/DownloadOrder;->setErrorType(I)V

    :cond_174
    move v0, v6

    .line 453
    goto/16 :goto_41

    .line 457
    .end local v3           #statusCode:I
    .end local v10           #e:Lorg/apache/http/client/HttpResponseException;
    :catch_177
    move-exception v10

    .line 458
    .local v10, e:Lcom/google/android/music/dl/UnsupportedAudioTypeException;
    const-string v0, "DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download failed because of unsupported audio type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/google/android/music/dl/UnsupportedAudioTypeException;->getAudioType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/music/dl/DownloadOrder;->setErrorType(I)V

    move v0, v6

    .line 460
    goto/16 :goto_41

    .line 461
    .end local v10           #e:Lcom/google/android/music/dl/UnsupportedAudioTypeException;
    :catch_19e
    move-exception v10

    .line 462
    .local v10, e:Ljava/io/IOException;
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    iget-object v5, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mContext:Landroid/content/Context;

    sget v6, Lcom/google/android/music/dl/DownloadTaskImpl;->IO_EXCEPTION_EVENTCODE:I

    move v8, v7

    move v9, v7

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/music/dl/DownloadOrder;->logStatusEvent(Landroid/content/Context;IIZZ)V

    .line 467
    const-string v0, "DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download failed because of IO Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    .end local v10           #e:Ljava/io/IOException;
    :cond_1c6
    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->LOGV:Z

    if-eqz v0, :cond_1ee

    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mStopDownload:Z

    if-eqz v0, :cond_1ee

    .line 470
    const-string v0, "DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping download ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") because manager said to stop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1ee
    move v0, v14

    .line 473
    goto/16 :goto_41

    .line 428
    nop

    :pswitch_data_1f2
    .packed-switch 0x1
        :pswitch_13f
        :pswitch_146
        :pswitch_14c
    .end packed-switch
.end method

.method public getDownloadOrder()Lcom/google/android/music/dl/DownloadOrder;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    return-object v0
.end method

.method protected getWriteToStream()Ljava/io/OutputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 480
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadOrder;->clearCompleted()V

    .line 481
    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->LOGV:Z

    if-eqz v0, :cond_27

    const-string v0, "DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening file for download:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v2}, Lcom/google/android/music/dl/DownloadOrder;->getFullPath()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :cond_27
    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->LOGV:Z

    if-eqz v0, :cond_59

    .line 483
    const-string v0, "DownloadTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening file for download:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v2}, Lcom/google/android/music/dl/DownloadOrder;->getFullPath()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v2}, Lcom/google/android/music/dl/DownloadOrder;->toDetailedString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :cond_59
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v1}, Lcom/google/android/music/dl/DownloadOrder;->getFullPath()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public run()V
    .registers 32

    .prologue
    .line 153
    monitor-enter p0

    .line 154
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mStarted:Z

    move/from16 v23, v0

    if-eqz v23, :cond_14

    .line 155
    new-instance v23, Ljava/lang/RuntimeException;

    const-string v24, "The same DownloadTask should never be ran twice"

    invoke-direct/range {v23 .. v24}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 158
    :catchall_11
    move-exception v23

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v23

    .line 157
    :cond_14
    const/16 v23, 0x1

    :try_start_16
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/music/dl/DownloadTaskImpl;->mStarted:Z

    .line 158
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_11

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v23

    sget-object v24, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_3f

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/google/android/music/dl/BufferProgress;->notifyBufferProgress(Lcom/google/android/music/dl/DownloadOrder;)V

    .line 353
    :cond_3e
    :goto_3e
    return-void

    .line 164
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/music/dl/DownloadOrder;->requiresDownload()Z

    move-result v23

    if-nez v23, :cond_78

    .line 165
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->LOGV:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3e

    .line 166
    const-string v23, "DownloadTask"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Download state was finished for song ("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "). not starting download"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 172
    :cond_78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v23, v0

    sget-object v24, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->DOWNLOADING:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    invoke-virtual/range {v23 .. v24}, Lcom/google/android/music/dl/DownloadOrder;->setDownloadStatus(Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/google/android/music/dl/DownloadOrder;->setExperiencedGlitchDuringDownload(Z)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/music/dl/DownloadOrder;->clearCompleted()V

    .line 176
    const/4 v8, 0x1

    .line 177
    .local v8, downloadStatus:I
    const-wide/16 v19, 0x0

    .line 178
    .local v19, transferTime:J
    const-wide/16 v6, 0x0

    .line 179
    .local v6, downloadLength:J
    const/4 v12, 0x0

    .line 180
    .local v12, failedAttemptsWithNoProgress:I
    const-wide/16 v21, 0x3e8

    .line 181
    .local v21, waitBeforeRetryingMs:J
    const/4 v3, 0x1

    .line 184
    .local v3, continueRetries:Z
    :try_start_a0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/music/NetworkMonitorServiceConnection;->getNetworkMonitor()Lcom/google/android/music/dl/INetworkMonitor;

    move-result-object v15

    .line 185
    .local v15, monitor:Lcom/google/android/music/dl/INetworkMonitor;
    if-eqz v15, :cond_b7

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v15, v0}, Lcom/google/android/music/dl/INetworkMonitor;->registerStreamabilityChangeListener(Lcom/google/android/music/dl/IStreamabilityChangeListener;)V
    :try_end_b7
    .catch Landroid/os/RemoteException; {:try_start_a0 .. :try_end_b7} :catch_1f0

    .line 193
    .end local v15           #monitor:Lcom/google/android/music/dl/INetworkMonitor;
    :cond_b7
    :goto_b7
    const/4 v4, 0x1

    .local v4, downloadAttempt:I
    move v5, v4

    .line 194
    .end local v4           #downloadAttempt:I
    .local v5, downloadAttempt:I
    :goto_b9
    :try_start_b9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mStopDownload:Z

    move/from16 v23, v0
    :try_end_bf
    .catchall {:try_start_b9 .. :try_end_bf} :catchall_4a5

    if-nez v23, :cond_4b0

    if-eqz v3, :cond_4b0

    .line 196
    :try_start_c3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->LOGV:Z

    move/from16 v23, v0

    if-eqz v23, :cond_4ad

    .line 197
    const-string v23, "DownloadTask"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Attempt #"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_d7
    .catchall {:try_start_c3 .. :try_end_d7} :catchall_4a5
    .catch Ljava/lang/InterruptedException; {:try_start_c3 .. :try_end_d7} :catch_4a9

    move-result-object v24

    add-int/lit8 v4, v5, 0x1

    .end local v5           #downloadAttempt:I
    .restart local v4       #downloadAttempt:I
    :try_start_da
    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " to download "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :goto_f7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 201
    .local v17, startTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/music/dl/DownloadOrder;->getCompleted()J
    :try_end_104
    .catchall {:try_start_da .. :try_end_104} :catchall_239
    .catch Ljava/lang/InterruptedException; {:try_start_da .. :try_end_104} :catch_16c

    move-result-wide v13

    .line 203
    .local v13, initialCompleted:J
    :try_start_105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mStreamingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v23

    if-eqz v23, :cond_200

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/dl/DownloadTaskImpl;->download()I
    :try_end_114
    .catchall {:try_start_105 .. :try_end_114} :catchall_212

    move-result v8

    .line 212
    :goto_115
    :try_start_115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    sub-long v19, v23, v17

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/music/dl/DownloadOrder;->getCompleted()J

    move-result-wide v23

    sub-long v6, v23, v13

    .line 214
    const-wide/16 v23, 0x0

    cmp-long v23, v6, v23

    if-lez v23, :cond_13a

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-wide/from16 v1, v19

    invoke-static {v0, v6, v7, v1, v2}, Lcom/google/android/music/dl/NetworkMonitor;->reportBitrate(Landroid/content/Context;JJ)V

    .line 219
    :cond_13a
    const/16 v16, 0x0

    .line 220
    .local v16, nonRetriableFailure:Z
    const/16 v23, 0x4

    move/from16 v0, v23

    if-eq v8, v0, :cond_150

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/music/dl/DownloadOrder;->makeResumable()Z

    move-result v23

    if-nez v23, :cond_263

    const/16 v16, 0x1

    .line 223
    :cond_150
    :goto_150
    if-eqz v16, :cond_267

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v23, v0

    sget-object v24, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    invoke-virtual/range {v23 .. v24}, Lcom/google/android/music/dl/DownloadOrder;->setDownloadStatus(Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;)V

    .line 225
    const/4 v3, 0x0

    .line 317
    :cond_15e
    :goto_15e
    if-eqz v3, :cond_462

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v23

    if-eqz v23, :cond_462

    .line 318
    new-instance v23, Ljava/lang/InterruptedException;

    invoke-direct/range {v23 .. v23}, Ljava/lang/InterruptedException;-><init>()V

    throw v23
    :try_end_16c
    .catchall {:try_start_115 .. :try_end_16c} :catchall_239
    .catch Ljava/lang/InterruptedException; {:try_start_115 .. :try_end_16c} :catch_16c

    .line 320
    .end local v13           #initialCompleted:J
    .end local v16           #nonRetriableFailure:Z
    .end local v17           #startTime:J
    :catch_16c
    move-exception v9

    .line 321
    .local v9, e:Ljava/lang/InterruptedException;
    :goto_16d
    :try_start_16d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->LOGV:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1a1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mGoingToRestart:Z

    move/from16 v23, v0

    if-nez v23, :cond_1a1

    .line 322
    const-string v23, "DownloadTask"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Download ("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ") was interupted.  Exiting."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :cond_1a1
    const/4 v3, 0x0

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/google/android/music/dl/DownloadOrder;->setExperiencedGlitchDuringDownload(Z)V
    :try_end_1ad
    .catchall {:try_start_16d .. :try_end_1ad} :catchall_239

    .line 331
    .end local v9           #e:Ljava/lang/InterruptedException;
    :goto_1ad
    :try_start_1ad
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/music/NetworkMonitorServiceConnection;->getNetworkMonitor()Lcom/google/android/music/dl/INetworkMonitor;

    move-result-object v15

    .line 332
    .restart local v15       #monitor:Lcom/google/android/music/dl/INetworkMonitor;
    if-eqz v15, :cond_1c4

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v15, v0}, Lcom/google/android/music/dl/INetworkMonitor;->unregisterStreamabilityChangeListener(Lcom/google/android/music/dl/IStreamabilityChangeListener;)V
    :try_end_1c4
    .catch Landroid/os/RemoteException; {:try_start_1ad .. :try_end_1c4} :catch_465

    .line 339
    .end local v15           #monitor:Lcom/google/android/music/dl/INetworkMonitor;
    :cond_1c4
    :goto_1c4
    :try_start_1c4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mBufferOut:Lcom/google/android/music/dl/BufferProgressOutputStream;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1d5

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mBufferOut:Lcom/google/android/music/dl/BufferProgressOutputStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/music/dl/BufferProgressOutputStream;->close()V
    :try_end_1d5
    .catch Ljava/io/IOException; {:try_start_1c4 .. :try_end_1d5} :catch_475

    .line 347
    :cond_1d5
    :goto_1d5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mGoingToRestart:Z

    move/from16 v23, v0

    if-nez v23, :cond_3e

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mBufferOut:Lcom/google/android/music/dl/BufferProgressOutputStream;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3e

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mBufferOut:Lcom/google/android/music/dl/BufferProgressOutputStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/music/dl/BufferProgressOutputStream;->sendBufferProgress()V

    goto/16 :goto_3e

    .line 188
    .end local v4           #downloadAttempt:I
    :catch_1f0
    move-exception v11

    .line 189
    .local v11, e2:Landroid/os/RemoteException;
    const-string v23, "DownloadTask"

    invoke-virtual {v11}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v11}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b7

    .line 206
    .end local v11           #e2:Landroid/os/RemoteException;
    .restart local v4       #downloadAttempt:I
    .restart local v13       #initialCompleted:J
    .restart local v17       #startTime:J
    :cond_200
    :try_start_200
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->LOGV:Z

    move/from16 v23, v0

    if-eqz v23, :cond_20f

    .line 207
    const-string v23, "DownloadTask"

    const-string v24, "Not attempting download since streaming not enabled"

    invoke-static/range {v23 .. v24}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20f
    .catchall {:try_start_200 .. :try_end_20f} :catchall_212

    .line 209
    :cond_20f
    const/4 v8, 0x1

    goto/16 :goto_115

    .line 212
    :catchall_212
    move-exception v23

    :try_start_213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v19, v24, v17

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/music/dl/DownloadOrder;->getCompleted()J

    move-result-wide v24

    sub-long v6, v24, v13

    .line 214
    const-wide/16 v24, 0x0

    cmp-long v24, v6, v24

    if-lez v24, :cond_238

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v19

    invoke-static {v0, v6, v7, v1, v2}, Lcom/google/android/music/dl/NetworkMonitor;->reportBitrate(Landroid/content/Context;JJ)V

    :cond_238
    throw v23
    :try_end_239
    .catchall {:try_start_213 .. :try_end_239} :catchall_239
    .catch Ljava/lang/InterruptedException; {:try_start_213 .. :try_end_239} :catch_16c

    .line 330
    .end local v13           #initialCompleted:J
    .end local v17           #startTime:J
    :catchall_239
    move-exception v23

    .line 331
    :goto_23a
    :try_start_23a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/music/NetworkMonitorServiceConnection;->getNetworkMonitor()Lcom/google/android/music/dl/INetworkMonitor;

    move-result-object v15

    .line 332
    .restart local v15       #monitor:Lcom/google/android/music/dl/INetworkMonitor;
    if-eqz v15, :cond_251

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v15, v0}, Lcom/google/android/music/dl/INetworkMonitor;->unregisterStreamabilityChangeListener(Lcom/google/android/music/dl/IStreamabilityChangeListener;)V
    :try_end_251
    .catch Landroid/os/RemoteException; {:try_start_23a .. :try_end_251} :catch_485

    .line 339
    .end local v15           #monitor:Lcom/google/android/music/dl/INetworkMonitor;
    :cond_251
    :goto_251
    :try_start_251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mBufferOut:Lcom/google/android/music/dl/BufferProgressOutputStream;

    move-object/from16 v24, v0

    if-eqz v24, :cond_262

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mBufferOut:Lcom/google/android/music/dl/BufferProgressOutputStream;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/music/dl/BufferProgressOutputStream;->close()V
    :try_end_262
    .catch Ljava/io/IOException; {:try_start_251 .. :try_end_262} :catch_495

    .line 344
    :cond_262
    :goto_262
    throw v23

    .line 221
    .restart local v13       #initialCompleted:J
    .restart local v16       #nonRetriableFailure:Z
    .restart local v17       #startTime:J
    :cond_263
    const/16 v16, 0x0

    goto/16 :goto_150

    .line 227
    :cond_267
    const-wide/16 v21, 0x3e8

    .line 228
    packed-switch v8, :pswitch_data_4b4

    .line 270
    :try_start_26c
    new-instance v23, Ljava/lang/IllegalStateException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Unknown Download status: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 230
    :pswitch_287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v23, v0

    sget-object v24, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->COMPLETED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    invoke-virtual/range {v23 .. v24}, Lcom/google/android/music/dl/DownloadOrder;->setDownloadStatus(Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;)V

    .line 232
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->LOGV:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2e6

    .line 233
    const-string v23, "DownloadTask"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Download suceeded for: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " Avg speed: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-wide/16 v25, 0x8

    mul-long v25, v25, v6

    move-wide/from16 v0, v25

    long-to-double v0, v0

    move-wide/from16 v25, v0

    const-wide v27, 0x408f400000000000L

    div-double v25, v25, v27

    move-wide/from16 v0, v19

    long-to-double v0, v0

    move-wide/from16 v27, v0

    const-wide v29, 0x408f400000000000L

    div-double v27, v27, v29

    div-double v25, v25, v27

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " kbps"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_2e6
    const/4 v3, 0x0

    .line 274
    :goto_2e7
    if-eqz v3, :cond_15e

    .line 275
    const-wide/16 v23, 0x0

    cmp-long v23, v21, v23

    if-gtz v23, :cond_399

    .line 276
    new-instance v23, Ljava/lang/IllegalArgumentException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "waitBeforeRetryingMs was not initialized to a valid value: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 241
    :pswitch_30c
    const-string v23, "DownloadTask"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Download failed for: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v23, v0

    sget-object v24, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    invoke-virtual/range {v23 .. v24}, Lcom/google/android/music/dl/DownloadOrder;->setDownloadStatus(Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;)V

    .line 243
    const/4 v3, 0x0

    .line 244
    goto :goto_2e7

    .line 247
    :pswitch_337
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mServerSpecifiedRetryTime:J

    move-wide/from16 v23, v0

    const-wide/16 v25, 0x0

    cmp-long v23, v23, v25

    if-lez v23, :cond_34f

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mServerSpecifiedRetryTime:J

    move-wide/from16 v23, v0

    const-wide/16 v25, 0x4e20

    cmp-long v23, v23, v25

    if-lez v23, :cond_37b

    .line 249
    :cond_34f
    const-string v23, "DownloadTask"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Server said to wait too long: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mServerSpecifiedRetryTime:J

    move-wide/from16 v25, v0

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v23, v0

    sget-object v24, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    invoke-virtual/range {v23 .. v24}, Lcom/google/android/music/dl/DownloadOrder;->setDownloadStatus(Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;)V

    .line 252
    const/4 v3, 0x0

    goto/16 :goto_2e7

    .line 254
    :cond_37b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mServerSpecifiedRetryTime:J

    move-wide/from16 v21, v0

    .line 256
    goto/16 :goto_2e7

    .line 258
    :pswitch_383
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mStreamingEnabledChangedTime:J

    move-wide/from16 v23, v0

    cmp-long v23, v23, v17

    if-lez v23, :cond_391

    .line 261
    const-wide/16 v21, 0x1

    goto/16 :goto_2e7

    .line 263
    :cond_391
    const-wide/16 v21, 0x3e8

    .line 265
    goto/16 :goto_2e7

    .line 267
    :pswitch_395
    const-wide/16 v21, 0x3e8

    .line 268
    goto/16 :goto_2e7

    .line 280
    :cond_399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/google/android/music/dl/DownloadOrder;->setExperiencedGlitchDuringDownload(Z)V

    .line 282
    const-string v23, "DownloadTask"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Experienced error when trying to download: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-wide/16 v23, 0x400

    cmp-long v23, v6, v23

    if-gez v23, :cond_3e4

    .line 286
    add-int/lit8 v12, v12, 0x1

    .line 287
    const/16 v23, 0x3

    move/from16 v0, v23

    if-lt v12, v0, :cond_3e5

    .line 288
    const-string v23, "DownloadTask"

    const-string v24, "Too many failures with no download progress"

    invoke-static/range {v23 .. v24}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v23, v0

    sget-object v24, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    invoke-virtual/range {v23 .. v24}, Lcom/google/android/music/dl/DownloadOrder;->setDownloadStatus(Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;)V

    goto/16 :goto_1ad

    .line 293
    :cond_3e4
    const/4 v12, 0x0

    .line 295
    :cond_3e5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mStreamingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v24, v0

    monitor-enter v24
    :try_end_3ec
    .catchall {:try_start_26c .. :try_end_3ec} :catchall_239
    .catch Ljava/lang/InterruptedException; {:try_start_26c .. :try_end_3ec} :catch_16c

    .line 296
    :try_start_3ec
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mStreamingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v23

    if-eqz v23, :cond_43f

    .line 300
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->LOGV:Z

    move/from16 v23, v0

    if-eqz v23, :cond_42c

    const-wide/16 v25, 0x3e8

    cmp-long v23, v21, v25

    if-lez v23, :cond_42c

    .line 301
    const-string v23, "DownloadTask"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Waiting "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-wide/16 v26, 0x3e8

    div-long v26, v21, v26

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " seconds before retrying"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_42c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mStreamingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 313
    :goto_439
    monitor-exit v24

    goto/16 :goto_15e

    :catchall_43c
    move-exception v23

    monitor-exit v24
    :try_end_43e
    .catchall {:try_start_3ec .. :try_end_43e} :catchall_43c

    :try_start_43e
    throw v23
    :try_end_43f
    .catchall {:try_start_43e .. :try_end_43f} :catchall_239
    .catch Ljava/lang/InterruptedException; {:try_start_43e .. :try_end_43f} :catch_16c

    .line 307
    :cond_43f
    :try_start_43f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->LOGV:Z

    move/from16 v23, v0

    if-eqz v23, :cond_452

    .line 308
    const-string v23, "DownloadTask"

    const-string v25, "Waiting until streaming comes backonline (or gets interrupted)"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :cond_452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTaskImpl;->mStreamingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    const-wide/16 v25, 0x2710

    move-object/from16 v0, v23

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_461
    .catchall {:try_start_43f .. :try_end_461} :catchall_43c

    goto :goto_439

    :cond_462
    move v5, v4

    .line 327
    .end local v4           #downloadAttempt:I
    .restart local v5       #downloadAttempt:I
    goto/16 :goto_b9

    .line 335
    .end local v5           #downloadAttempt:I
    .end local v13           #initialCompleted:J
    .end local v16           #nonRetriableFailure:Z
    .end local v17           #startTime:J
    .restart local v4       #downloadAttempt:I
    :catch_465
    move-exception v10

    .line 336
    .local v10, e1:Landroid/os/RemoteException;
    const-string v23, "DownloadTask"

    invoke-virtual {v10}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v10}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c4

    .line 342
    .end local v10           #e1:Landroid/os/RemoteException;
    :catch_475
    move-exception v9

    .line 343
    .local v9, e:Ljava/io/IOException;
    const-string v23, "DownloadTask"

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v9}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d5

    .line 335
    .end local v9           #e:Ljava/io/IOException;
    :catch_485
    move-exception v10

    .line 336
    .restart local v10       #e1:Landroid/os/RemoteException;
    const-string v24, "DownloadTask"

    invoke-virtual {v10}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v10}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_251

    .line 342
    .end local v10           #e1:Landroid/os/RemoteException;
    :catch_495
    move-exception v9

    .line 343
    .restart local v9       #e:Ljava/io/IOException;
    const-string v24, "DownloadTask"

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v9}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_262

    .line 330
    .end local v4           #downloadAttempt:I
    .end local v9           #e:Ljava/io/IOException;
    .restart local v5       #downloadAttempt:I
    :catchall_4a5
    move-exception v23

    move v4, v5

    .end local v5           #downloadAttempt:I
    .restart local v4       #downloadAttempt:I
    goto/16 :goto_23a

    .line 320
    .end local v4           #downloadAttempt:I
    .restart local v5       #downloadAttempt:I
    :catch_4a9
    move-exception v9

    move v4, v5

    .end local v5           #downloadAttempt:I
    .restart local v4       #downloadAttempt:I
    goto/16 :goto_16d

    .end local v4           #downloadAttempt:I
    .restart local v5       #downloadAttempt:I
    :cond_4ad
    move v4, v5

    .end local v5           #downloadAttempt:I
    .restart local v4       #downloadAttempt:I
    goto/16 :goto_f7

    .end local v4           #downloadAttempt:I
    .restart local v5       #downloadAttempt:I
    :cond_4b0
    move v4, v5

    .end local v5           #downloadAttempt:I
    .restart local v4       #downloadAttempt:I
    goto/16 :goto_1ad

    .line 228
    nop

    :pswitch_data_4b4
    .packed-switch 0x1
        :pswitch_395
        :pswitch_337
        :pswitch_383
        :pswitch_287
        :pswitch_30c
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "task("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadTaskImpl;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
