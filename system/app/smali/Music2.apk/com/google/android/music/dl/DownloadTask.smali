.class public Lcom/google/android/music/dl/DownloadTask;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/dl/DownloadTask$2;
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

.field private final mNetworkMonitor:Lcom/google/android/music/dl/INetworkMonitor;

.field private mServerSpecifiedRetryTime:J

.field private mStarted:Z

.field private mStopDownload:Z

.field private mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

.field private mStreamingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mStreamingEnabledChangedTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 102
    const/16 v0, 0x64

    sput v0, Lcom/google/android/music/dl/DownloadTask;->SERVICE_UNAVAILABLE_EVENTCODE:I

    .line 103
    const/16 v0, 0x65

    sput v0, Lcom/google/android/music/dl/DownloadTask;->HTTP_RESPONSE_EVENTCODE:I

    .line 104
    const/16 v0, 0x66

    sput v0, Lcom/google/android/music/dl/DownloadTask;->IO_EXCEPTION_EVENTCODE:I

    .line 106
    const/4 v0, 0x2

    sput v0, Lcom/google/android/music/dl/DownloadTask;->DOWNLOAD_COMPLETE_EVENTCODE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/dl/BufferProgress;Lcom/google/android/music/dl/cache/CacheManager;Lcom/google/android/music/dl/DownloadOrder;Lcom/google/android/music/dl/INetworkMonitor;)V
    .registers 10
    .parameter "context"
    .parameter "bufferProgress"
    .parameter "cacheManager"
    .parameter "order"
    .parameter "networkMonitor"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "MusicDL"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/dl/DownloadTask;->LOGV:Z

    .line 93
    iput-boolean v1, p0, Lcom/google/android/music/dl/DownloadTask;->mStopDownload:Z

    .line 98
    iput-boolean v1, p0, Lcom/google/android/music/dl/DownloadTask;->mGoingToRestart:Z

    .line 100
    iput-boolean v1, p0, Lcom/google/android/music/dl/DownloadTask;->mStarted:Z

    .line 108
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadTask;->mStreamingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 109
    iput-wide v2, p0, Lcom/google/android/music/dl/DownloadTask;->mStreamingEnabledChangedTime:J

    .line 110
    iput-wide v2, p0, Lcom/google/android/music/dl/DownloadTask;->mServerSpecifiedRetryTime:J

    .line 463
    new-instance v0, Lcom/google/android/music/dl/DownloadTask$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/dl/DownloadTask$1;-><init>(Lcom/google/android/music/dl/DownloadTask;)V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadTask;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    .line 119
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadTask;->mContext:Landroid/content/Context;

    .line 120
    iput-object p2, p0, Lcom/google/android/music/dl/DownloadTask;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    .line 121
    iput-object p3, p0, Lcom/google/android/music/dl/DownloadTask;->mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;

    .line 122
    iput-object p4, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    .line 123
    iput-object p5, p0, Lcom/google/android/music/dl/DownloadTask;->mNetworkMonitor:Lcom/google/android/music/dl/INetworkMonitor;

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/dl/DownloadTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTask;->mStreamingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/music/dl/DownloadTask;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/google/android/music/dl/DownloadTask;->mStreamingEnabledChangedTime:J

    return-wide p1
.end method


# virtual methods
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

    .line 344
    :try_start_5
    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadTask;->LOGV:Z

    if-eqz v0, :cond_23

    const-string v0, "MusicDL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloading: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_23
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadOrder;->getHandler()Lcom/google/android/music/dl/DownloadHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadHandler;->prepareInputStream()V

    .line 349
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTask;->mBufferOut:Lcom/google/android/music/dl/BufferProgressOutputStream;

    if-nez v0, :cond_80

    .line 350
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTask;->mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v0, v1}, Lcom/google/android/music/dl/cache/CacheManager;->prepareForDownload(Lcom/google/android/music/dl/DownloadOrder;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 352
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/music/dl/DownloadOrder;->markDownloadFailed(I)V

    move v0, v6

    .line 451
    :goto_41
    return v0

    .line 356
    :cond_42
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadOrder;->getLocalLocation()Ljava/io/File;

    move-result-object v11

    .line 357
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

    .line 359
    :try_start_4e
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_70

    .line 360
    const-string v0, "MusicDL"

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

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_70} :catch_a5
    .catch Ljava/net/SocketTimeoutException; {:try_start_4e .. :try_end_70} :catch_d1
    .catch Ljava/io/InterruptedIOException; {:try_start_4e .. :try_end_70} :catch_10c
    .catch Lcom/google/android/music/dl/ServiceUnavailableException; {:try_start_4e .. :try_end_70} :catch_116
    .catch Lcom/google/android/music/dl/ServerRejectionException; {:try_start_4e .. :try_end_70} :catch_12c
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_4e .. :try_end_70} :catch_153
    .catch Lcom/google/android/music/dl/UnsupportedAudioTypeException; {:try_start_4e .. :try_end_70} :catch_177

    .line 368
    :cond_70
    :goto_70
    const/4 v13, 0x0

    .line 370
    .local v13, out:Ljava/io/OutputStream;
    :try_start_71
    invoke-virtual {p0}, Lcom/google/android/music/dl/DownloadTask;->getWriteToStream()Ljava/io/OutputStream;
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

    .line 377
    :try_start_75
    new-instance v0, Lcom/google/android/music/dl/BufferProgressOutputStream;

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadTask;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-direct {v0, v1, v13, v2}, Lcom/google/android/music/dl/BufferProgressOutputStream;-><init>(Lcom/google/android/music/dl/BufferProgress;Ljava/io/OutputStream;Lcom/google/android/music/dl/DownloadOrder;)V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadTask;->mBufferOut:Lcom/google/android/music/dl/BufferProgressOutputStream;

    .line 381
    .end local v11           #localLoaction:Ljava/io/File;
    .end local v13           #out:Ljava/io/OutputStream;
    :cond_80
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadOrder;->getHandler()Lcom/google/android/music/dl/DownloadHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadTask;->mBufferOut:Lcom/google/android/music/dl/BufferProgressOutputStream;

    invoke-virtual {v0, v1}, Lcom/google/android/music/dl/DownloadHandler;->downloadTo(Ljava/io/OutputStream;)V

    .line 383
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadOrder;->getHandler()Lcom/google/android/music/dl/DownloadHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadHandler;->downloadSucceeded()Z

    move-result v0

    if-eqz v0, :cond_1c6

    .line 384
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadTask;->mContext:Landroid/content/Context;

    sget v2, Lcom/google/android/music/dl/DownloadTask;->DOWNLOAD_COMPLETE_EVENTCODE:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/dl/DownloadOrder;->logStatusEvent(Landroid/content/Context;IIZZ)V

    move v0, v8

    .line 386
    goto :goto_41

    .line 362
    .restart local v11       #localLoaction:Ljava/io/File;
    :catch_a5
    move-exception v10

    .line 363
    .local v10, e:Ljava/io/IOException;
    const-string v0, "MusicDL"

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

    invoke-static {v0, v1, v10}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d0
    .catch Ljava/net/SocketTimeoutException; {:try_start_75 .. :try_end_d0} :catch_d1
    .catch Ljava/io/InterruptedIOException; {:try_start_75 .. :try_end_d0} :catch_10c
    .catch Lcom/google/android/music/dl/ServiceUnavailableException; {:try_start_75 .. :try_end_d0} :catch_116
    .catch Lcom/google/android/music/dl/ServerRejectionException; {:try_start_75 .. :try_end_d0} :catch_12c
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_75 .. :try_end_d0} :catch_153
    .catch Lcom/google/android/music/dl/UnsupportedAudioTypeException; {:try_start_75 .. :try_end_d0} :catch_177
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_d0} :catch_19e

    goto :goto_70

    .line 388
    .end local v10           #e:Ljava/io/IOException;
    .end local v11           #localLoaction:Ljava/io/File;
    :catch_d1
    move-exception v10

    .line 392
    .local v10, e:Ljava/net/SocketTimeoutException;
    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadTask;->LOGV:Z

    if-eqz v0, :cond_f6

    .line 393
    const-string v0, "MusicDL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" timed out"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_f6
    const/4 v0, 0x3

    goto/16 :goto_41

    .line 371
    .end local v10           #e:Ljava/net/SocketTimeoutException;
    .restart local v11       #localLoaction:Ljava/io/File;
    .restart local v13       #out:Ljava/io/OutputStream;
    :catch_f9
    move-exception v10

    .line 372
    .local v10, e:Ljava/io/FileNotFoundException;
    :try_start_fa
    const-string v0, "MusicDL"

    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 374
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

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

    .line 375
    goto/16 :goto_41

    .line 396
    .end local v10           #e:Ljava/io/FileNotFoundException;
    .end local v11           #localLoaction:Ljava/io/File;
    .end local v13           #out:Ljava/io/OutputStream;
    :catch_10c
    move-exception v10

    .line 398
    .local v10, e:Ljava/io/InterruptedIOException;
    new-instance v12, Ljava/lang/InterruptedException;

    invoke-direct {v12}, Ljava/lang/InterruptedException;-><init>()V

    .line 399
    .local v12, newEx:Ljava/lang/InterruptedException;
    invoke-virtual {v12, v10}, Ljava/lang/InterruptedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 400
    throw v12

    .line 401
    .end local v10           #e:Ljava/io/InterruptedIOException;
    .end local v12           #newEx:Ljava/lang/InterruptedException;
    :catch_116
    move-exception v10

    .line 402
    .local v10, e:Lcom/google/android/music/dl/ServiceUnavailableException;
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadTask;->mContext:Landroid/content/Context;

    sget v2, Lcom/google/android/music/dl/DownloadTask;->SERVICE_UNAVAILABLE_EVENTCODE:I

    move v3, v7

    move v4, v7

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/dl/DownloadOrder;->logStatusEvent(Landroid/content/Context;IIZZ)V

    .line 403
    invoke-virtual {v10}, Lcom/google/android/music/dl/ServiceUnavailableException;->getRetryAfterInSeconds()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/dl/DownloadTask;->mServerSpecifiedRetryTime:J

    move v0, v9

    .line 404
    goto/16 :goto_41

    .line 405
    .end local v10           #e:Lcom/google/android/music/dl/ServiceUnavailableException;
    :catch_12c
    move-exception v10

    .line 406
    .local v10, e:Lcom/google/android/music/dl/ServerRejectionException;
    sget-object v0, Lcom/google/android/music/dl/DownloadTask$2;->$SwitchMap$com$google$android$music$dl$ServerRejectionException$RejectionReason:[I

    invoke-virtual {v10}, Lcom/google/android/music/dl/ServerRejectionException;->getRejectionReason()Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1f2

    :goto_13c
    move v0, v6

    .line 417
    goto/16 :goto_41

    .line 408
    :pswitch_13f
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/android/music/dl/DownloadOrder;->setErrorType(I)V

    goto :goto_13c

    .line 411
    :pswitch_146
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v0, v6}, Lcom/google/android/music/dl/DownloadOrder;->setErrorType(I)V

    goto :goto_13c

    .line 414
    :pswitch_14c
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/google/android/music/dl/DownloadOrder;->setErrorType(I)V

    goto :goto_13c

    .line 419
    .end local v10           #e:Lcom/google/android/music/dl/ServerRejectionException;
    :catch_153
    move-exception v10

    .line 420
    .local v10, e:Lorg/apache/http/client/HttpResponseException;
    invoke-virtual {v10}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v3

    .line 421
    .local v3, statusCode:I
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadTask;->mContext:Landroid/content/Context;

    sget v2, Lcom/google/android/music/dl/DownloadTask;->HTTP_RESPONSE_EVENTCODE:I

    move v4, v7

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/dl/DownloadOrder;->logStatusEvent(Landroid/content/Context;IIZZ)V

    .line 424
    const/16 v0, 0x190

    if-lt v3, v0, :cond_1c6

    const/16 v0, 0x1f4

    if-ge v3, v0, :cond_1c6

    .line 428
    const/16 v0, 0x191

    if-ne v3, v0, :cond_174

    .line 429
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v0, v8}, Lcom/google/android/music/dl/DownloadOrder;->setErrorType(I)V

    :cond_174
    move v0, v6

    .line 431
    goto/16 :goto_41

    .line 435
    .end local v3           #statusCode:I
    .end local v10           #e:Lorg/apache/http/client/HttpResponseException;
    :catch_177
    move-exception v10

    .line 436
    .local v10, e:Lcom/google/android/music/dl/UnsupportedAudioTypeException;
    const-string v0, "MusicDL"

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

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/music/dl/DownloadOrder;->setErrorType(I)V

    move v0, v6

    .line 438
    goto/16 :goto_41

    .line 439
    .end local v10           #e:Lcom/google/android/music/dl/UnsupportedAudioTypeException;
    :catch_19e
    move-exception v10

    .line 440
    .local v10, e:Ljava/io/IOException;
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    iget-object v5, p0, Lcom/google/android/music/dl/DownloadTask;->mContext:Landroid/content/Context;

    sget v6, Lcom/google/android/music/dl/DownloadTask;->IO_EXCEPTION_EVENTCODE:I

    move v8, v7

    move v9, v7

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/music/dl/DownloadOrder;->logStatusEvent(Landroid/content/Context;IIZZ)V

    .line 445
    const-string v0, "MusicDL"

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

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    .end local v10           #e:Ljava/io/IOException;
    :cond_1c6
    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadTask;->LOGV:Z

    if-eqz v0, :cond_1ee

    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadTask;->mStopDownload:Z

    if-eqz v0, :cond_1ee

    .line 448
    const-string v0, "MusicDL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping download ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") because manager said to stop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1ee
    move v0, v14

    .line 451
    goto/16 :goto_41

    .line 406
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
    .line 127
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

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
    .line 458
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadOrder;->clearCompleted()V

    .line 459
    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadTask;->LOGV:Z

    if-eqz v0, :cond_27

    const-string v0, "MusicDL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening file for download:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v2}, Lcom/google/android/music/dl/DownloadOrder;->getLocalLocation()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_27
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v1}, Lcom/google/android/music/dl/DownloadOrder;->getLocalLocation()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public run()V
    .registers 31

    .prologue
    .line 139
    monitor-enter p0

    .line 140
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/dl/DownloadTask;->mStarted:Z

    move/from16 v22, v0

    if-eqz v22, :cond_14

    .line 141
    new-instance v22, Ljava/lang/RuntimeException;

    const-string v23, "The same DownloadTask should never be ran twice"

    invoke-direct/range {v22 .. v23}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 144
    :catchall_11
    move-exception v22

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v22

    .line 143
    :cond_14
    const/16 v22, 0x1

    :try_start_16
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/music/dl/DownloadTask;->mStarted:Z

    .line 144
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_11

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v22

    sget-object v23, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_3f

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/google/android/music/dl/BufferProgress;->notifyBufferProgress(Lcom/google/android/music/dl/DownloadOrder;)V

    .line 331
    :cond_3e
    :goto_3e
    return-void

    .line 150
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/music/dl/DownloadOrder;->requiresDownload()Z

    move-result v22

    if-nez v22, :cond_78

    .line 151
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/dl/DownloadTask;->LOGV:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3e

    .line 152
    const-string v22, "MusicDL"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Download state was finished for song ("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "). not starting download"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 158
    :cond_78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/google/android/music/dl/DownloadOrder;->setExperiencedGlitchDuringDownload(Z)V

    .line 160
    const/4 v8, 0x1

    .line 161
    .local v8, downloadStatus:I
    const-wide/16 v18, 0x0

    .line 162
    .local v18, transferTime:J
    const-wide/16 v6, 0x0

    .line 163
    .local v6, downloadLength:J
    const/4 v12, 0x0

    .line 164
    .local v12, failedAttemptsWithNoProgress:I
    const-wide/16 v20, 0x3e8

    .line 165
    .local v20, waitBeforeRetryingMs:J
    const/4 v3, 0x1

    .line 168
    .local v3, continueRetries:Z
    :try_start_8c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mNetworkMonitor:Lcom/google/android/music/dl/INetworkMonitor;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    move-object/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Lcom/google/android/music/dl/INetworkMonitor;->registerStreamabilityChangeListener(Lcom/google/android/music/dl/IStreamabilityChangeListener;)V
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_8c .. :try_end_9b} :catch_1ce

    .line 174
    :goto_9b
    const/4 v4, 0x1

    .local v4, downloadAttempt:I
    move v5, v4

    .line 175
    .end local v4           #downloadAttempt:I
    .local v5, downloadAttempt:I
    :goto_9d
    :try_start_9d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/dl/DownloadTask;->mStopDownload:Z

    move/from16 v22, v0
    :try_end_a3
    .catchall {:try_start_9d .. :try_end_a3} :catchall_47a

    if-nez v22, :cond_485

    if-eqz v3, :cond_485

    .line 177
    :try_start_a7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/dl/DownloadTask;->LOGV:Z

    move/from16 v22, v0

    if-eqz v22, :cond_482

    .line 178
    const-string v22, "MusicDL"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Attempt #"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_bb
    .catchall {:try_start_a7 .. :try_end_bb} :catchall_47a
    .catch Ljava/lang/InterruptedException; {:try_start_a7 .. :try_end_bb} :catch_47e

    move-result-object v23

    add-int/lit8 v4, v5, 0x1

    .end local v5           #downloadAttempt:I
    .restart local v4       #downloadAttempt:I
    :try_start_be
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " to download "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_db
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 182
    .local v16, startTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/music/dl/DownloadOrder;->getCompleted()J
    :try_end_e8
    .catchall {:try_start_be .. :try_end_e8} :catchall_217
    .catch Ljava/lang/InterruptedException; {:try_start_be .. :try_end_e8} :catch_152

    move-result-wide v13

    .line 184
    .local v13, initialCompleted:J
    :try_start_e9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mStreamingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v22

    if-eqz v22, :cond_1de

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/dl/DownloadTask;->download()I
    :try_end_f8
    .catchall {:try_start_e9 .. :try_end_f8} :catchall_1f0

    move-result v8

    .line 193
    :goto_f9
    :try_start_f9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v18, v22, v16

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/music/dl/DownloadOrder;->getCompleted()J

    move-result-wide v22

    sub-long v6, v22, v13

    .line 195
    const-wide/16 v22, 0x0

    cmp-long v22, v6, v22

    if-lez v22, :cond_11e

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v18

    invoke-static {v0, v6, v7, v1, v2}, Lcom/google/android/music/dl/NetworkMonitor;->reportBitrate(Landroid/content/Context;JJ)V

    .line 200
    :cond_11e
    const/4 v15, 0x0

    .line 201
    .local v15, nonRetriableFailure:Z
    const/16 v22, 0x4

    move/from16 v0, v22

    if-eq v8, v0, :cond_132

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/music/dl/DownloadOrder;->makeResumable()Z

    move-result v22

    if-nez v22, :cond_239

    const/4 v15, 0x1

    .line 204
    :cond_132
    :goto_132
    if-eqz v15, :cond_23c

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v22, v0

    sget-object v23, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    invoke-virtual/range {v22 .. v23}, Lcom/google/android/music/dl/DownloadOrder;->setDownloadStatus(Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;)V

    .line 206
    const/4 v3, 0x0

    .line 298
    :cond_140
    :goto_140
    if-eqz v3, :cond_437

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v22

    if-eqz v22, :cond_437

    .line 299
    new-instance v22, Ljava/lang/InterruptedException;

    invoke-direct/range {v22 .. v22}, Ljava/lang/InterruptedException;-><init>()V

    throw v22
    :try_end_152
    .catchall {:try_start_f9 .. :try_end_152} :catchall_217
    .catch Ljava/lang/InterruptedException; {:try_start_f9 .. :try_end_152} :catch_152

    .line 301
    .end local v13           #initialCompleted:J
    .end local v15           #nonRetriableFailure:Z
    .end local v16           #startTime:J
    :catch_152
    move-exception v9

    .line 302
    .local v9, e:Ljava/lang/InterruptedException;
    :goto_153
    :try_start_153
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/dl/DownloadTask;->LOGV:Z

    move/from16 v22, v0

    if-eqz v22, :cond_187

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/dl/DownloadTask;->mGoingToRestart:Z

    move/from16 v22, v0

    if-nez v22, :cond_187

    .line 303
    const-string v22, "MusicDL"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Download ("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ") was interupted.  Exiting."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_187
    const/4 v3, 0x0

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/google/android/music/dl/DownloadOrder;->setExperiencedGlitchDuringDownload(Z)V
    :try_end_193
    .catchall {:try_start_153 .. :try_end_193} :catchall_217

    .line 312
    .end local v9           #e:Ljava/lang/InterruptedException;
    :goto_193
    :try_start_193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mNetworkMonitor:Lcom/google/android/music/dl/INetworkMonitor;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    move-object/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Lcom/google/android/music/dl/INetworkMonitor;->unregisterStreamabilityChangeListener(Lcom/google/android/music/dl/IStreamabilityChangeListener;)V
    :try_end_1a2
    .catch Landroid/os/RemoteException; {:try_start_193 .. :try_end_1a2} :catch_43a

    .line 317
    :goto_1a2
    :try_start_1a2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mBufferOut:Lcom/google/android/music/dl/BufferProgressOutputStream;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1b3

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mBufferOut:Lcom/google/android/music/dl/BufferProgressOutputStream;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/music/dl/BufferProgressOutputStream;->close()V
    :try_end_1b3
    .catch Ljava/io/IOException; {:try_start_1a2 .. :try_end_1b3} :catch_44a

    .line 325
    :cond_1b3
    :goto_1b3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/dl/DownloadTask;->mGoingToRestart:Z

    move/from16 v22, v0

    if-nez v22, :cond_3e

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mBufferOut:Lcom/google/android/music/dl/BufferProgressOutputStream;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3e

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mBufferOut:Lcom/google/android/music/dl/BufferProgressOutputStream;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/music/dl/BufferProgressOutputStream;->sendBufferProgress()V

    goto/16 :goto_3e

    .line 169
    .end local v4           #downloadAttempt:I
    :catch_1ce
    move-exception v11

    .line 170
    .local v11, e2:Landroid/os/RemoteException;
    const-string v22, "MusicDL"

    invoke-virtual {v11}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9b

    .line 187
    .end local v11           #e2:Landroid/os/RemoteException;
    .restart local v4       #downloadAttempt:I
    .restart local v13       #initialCompleted:J
    .restart local v16       #startTime:J
    :cond_1de
    :try_start_1de
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/dl/DownloadTask;->LOGV:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1ed

    .line 188
    const-string v22, "MusicDL"

    const-string v23, "Not attempting download since streaming not enabled"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ed
    .catchall {:try_start_1de .. :try_end_1ed} :catchall_1f0

    .line 190
    :cond_1ed
    const/4 v8, 0x1

    goto/16 :goto_f9

    .line 193
    :catchall_1f0
    move-exception v22

    :try_start_1f1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    sub-long v18, v23, v16

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/music/dl/DownloadOrder;->getCompleted()J

    move-result-wide v23

    sub-long v6, v23, v13

    .line 195
    const-wide/16 v23, 0x0

    cmp-long v23, v6, v23

    if-lez v23, :cond_216

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-wide/from16 v1, v18

    invoke-static {v0, v6, v7, v1, v2}, Lcom/google/android/music/dl/NetworkMonitor;->reportBitrate(Landroid/content/Context;JJ)V

    :cond_216
    throw v22
    :try_end_217
    .catchall {:try_start_1f1 .. :try_end_217} :catchall_217
    .catch Ljava/lang/InterruptedException; {:try_start_1f1 .. :try_end_217} :catch_152

    .line 311
    .end local v13           #initialCompleted:J
    .end local v16           #startTime:J
    :catchall_217
    move-exception v22

    .line 312
    :goto_218
    :try_start_218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mNetworkMonitor:Lcom/google/android/music/dl/INetworkMonitor;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    move-object/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Lcom/google/android/music/dl/INetworkMonitor;->unregisterStreamabilityChangeListener(Lcom/google/android/music/dl/IStreamabilityChangeListener;)V
    :try_end_227
    .catch Landroid/os/RemoteException; {:try_start_218 .. :try_end_227} :catch_45a

    .line 317
    :goto_227
    :try_start_227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mBufferOut:Lcom/google/android/music/dl/BufferProgressOutputStream;

    move-object/from16 v23, v0

    if-eqz v23, :cond_238

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mBufferOut:Lcom/google/android/music/dl/BufferProgressOutputStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/music/dl/BufferProgressOutputStream;->close()V
    :try_end_238
    .catch Ljava/io/IOException; {:try_start_227 .. :try_end_238} :catch_46a

    .line 322
    :cond_238
    :goto_238
    throw v22

    .line 202
    .restart local v13       #initialCompleted:J
    .restart local v15       #nonRetriableFailure:Z
    .restart local v16       #startTime:J
    :cond_239
    const/4 v15, 0x0

    goto/16 :goto_132

    .line 208
    :cond_23c
    const-wide/16 v20, 0x3e8

    .line 209
    packed-switch v8, :pswitch_data_488

    .line 251
    :try_start_241
    new-instance v22, Ljava/lang/IllegalStateException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unknown Download status: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 211
    :pswitch_25c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v22, v0

    sget-object v23, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->COMPLETED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    invoke-virtual/range {v22 .. v23}, Lcom/google/android/music/dl/DownloadOrder;->setDownloadStatus(Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;)V

    .line 213
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/dl/DownloadTask;->LOGV:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2bb

    .line 214
    const-string v22, "MusicDL"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Download suceeded for: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " Avg speed: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-wide/16 v24, 0x8

    mul-long v24, v24, v6

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0x408f400000000000L

    div-double v24, v24, v26

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x408f400000000000L

    div-double v26, v26, v28

    div-double v24, v24, v26

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " kbps"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_2bb
    const/4 v3, 0x0

    .line 255
    :goto_2bc
    if-eqz v3, :cond_140

    .line 256
    const-wide/16 v22, 0x0

    cmp-long v22, v20, v22

    if-gtz v22, :cond_36e

    .line 257
    new-instance v22, Ljava/lang/IllegalArgumentException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "waitBeforeRetryingMs was not initialized to a valid value: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 222
    :pswitch_2e1
    const-string v22, "MusicDL"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Download failed for: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v22, v0

    sget-object v23, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    invoke-virtual/range {v22 .. v23}, Lcom/google/android/music/dl/DownloadOrder;->setDownloadStatus(Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;)V

    .line 224
    const/4 v3, 0x0

    .line 225
    goto :goto_2bc

    .line 228
    :pswitch_30c
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/dl/DownloadTask;->mServerSpecifiedRetryTime:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-lez v22, :cond_324

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/dl/DownloadTask;->mServerSpecifiedRetryTime:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x4e20

    cmp-long v22, v22, v24

    if-lez v22, :cond_350

    .line 230
    :cond_324
    const-string v22, "MusicDL"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Server said to wait too long: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/dl/DownloadTask;->mServerSpecifiedRetryTime:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v22, v0

    sget-object v23, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    invoke-virtual/range {v22 .. v23}, Lcom/google/android/music/dl/DownloadOrder;->setDownloadStatus(Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;)V

    .line 233
    const/4 v3, 0x0

    goto/16 :goto_2bc

    .line 235
    :cond_350
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/dl/DownloadTask;->mServerSpecifiedRetryTime:J

    move-wide/from16 v20, v0

    .line 237
    goto/16 :goto_2bc

    .line 239
    :pswitch_358
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/dl/DownloadTask;->mStreamingEnabledChangedTime:J

    move-wide/from16 v22, v0

    cmp-long v22, v22, v16

    if-lez v22, :cond_366

    .line 242
    const-wide/16 v20, 0x1

    goto/16 :goto_2bc

    .line 244
    :cond_366
    const-wide/16 v20, 0x3e8

    .line 246
    goto/16 :goto_2bc

    .line 248
    :pswitch_36a
    const-wide/16 v20, 0x3e8

    .line 249
    goto/16 :goto_2bc

    .line 261
    :cond_36e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/google/android/music/dl/DownloadOrder;->setExperiencedGlitchDuringDownload(Z)V

    .line 263
    const-string v22, "MusicDL"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Experienced error when trying to download: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-wide/16 v22, 0x400

    cmp-long v22, v6, v22

    if-gez v22, :cond_3b9

    .line 267
    add-int/lit8 v12, v12, 0x1

    .line 268
    const/16 v22, 0x3

    move/from16 v0, v22

    if-lt v12, v0, :cond_3ba

    .line 269
    const-string v22, "MusicDL"

    const-string v23, "Too many failures with no download progress"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mDownloadOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v22, v0

    sget-object v23, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    invoke-virtual/range {v22 .. v23}, Lcom/google/android/music/dl/DownloadOrder;->setDownloadStatus(Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;)V

    goto/16 :goto_193

    .line 274
    :cond_3b9
    const/4 v12, 0x0

    .line 276
    :cond_3ba
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mStreamingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    monitor-enter v23
    :try_end_3c1
    .catchall {:try_start_241 .. :try_end_3c1} :catchall_217
    .catch Ljava/lang/InterruptedException; {:try_start_241 .. :try_end_3c1} :catch_152

    .line 277
    :try_start_3c1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mStreamingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v22

    if-eqz v22, :cond_414

    .line 281
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/dl/DownloadTask;->LOGV:Z

    move/from16 v22, v0

    if-eqz v22, :cond_401

    const-wide/16 v24, 0x3e8

    cmp-long v22, v20, v24

    if-lez v22, :cond_401

    .line 282
    const-string v22, "MusicDL"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Waiting "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-wide/16 v25, 0x3e8

    div-long v25, v20, v25

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " seconds before retrying"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mStreamingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 294
    :goto_40e
    monitor-exit v23

    goto/16 :goto_140

    :catchall_411
    move-exception v22

    monitor-exit v23
    :try_end_413
    .catchall {:try_start_3c1 .. :try_end_413} :catchall_411

    :try_start_413
    throw v22
    :try_end_414
    .catchall {:try_start_413 .. :try_end_414} :catchall_217
    .catch Ljava/lang/InterruptedException; {:try_start_413 .. :try_end_414} :catch_152

    .line 288
    :cond_414
    :try_start_414
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/dl/DownloadTask;->LOGV:Z

    move/from16 v22, v0

    if-eqz v22, :cond_427

    .line 289
    const-string v22, "MusicDL"

    const-string v24, "Waiting until streaming comes backonline (or gets interrupted)"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadTask;->mStreamingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v22, v0

    const-wide/16 v24, 0x2710

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_436
    .catchall {:try_start_414 .. :try_end_436} :catchall_411

    goto :goto_40e

    :cond_437
    move v5, v4

    .line 308
    .end local v4           #downloadAttempt:I
    .restart local v5       #downloadAttempt:I
    goto/16 :goto_9d

    .line 313
    .end local v5           #downloadAttempt:I
    .end local v13           #initialCompleted:J
    .end local v15           #nonRetriableFailure:Z
    .end local v16           #startTime:J
    .restart local v4       #downloadAttempt:I
    :catch_43a
    move-exception v10

    .line 314
    .local v10, e1:Landroid/os/RemoteException;
    const-string v22, "MusicDL"

    invoke-virtual {v10}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1a2

    .line 320
    .end local v10           #e1:Landroid/os/RemoteException;
    :catch_44a
    move-exception v9

    .line 321
    .local v9, e:Ljava/io/IOException;
    const-string v22, "MusicDL"

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1b3

    .line 313
    .end local v9           #e:Ljava/io/IOException;
    :catch_45a
    move-exception v10

    .line 314
    .restart local v10       #e1:Landroid/os/RemoteException;
    const-string v23, "MusicDL"

    invoke-virtual {v10}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_227

    .line 320
    .end local v10           #e1:Landroid/os/RemoteException;
    :catch_46a
    move-exception v9

    .line 321
    .restart local v9       #e:Ljava/io/IOException;
    const-string v23, "MusicDL"

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_238

    .line 311
    .end local v4           #downloadAttempt:I
    .end local v9           #e:Ljava/io/IOException;
    .restart local v5       #downloadAttempt:I
    :catchall_47a
    move-exception v22

    move v4, v5

    .end local v5           #downloadAttempt:I
    .restart local v4       #downloadAttempt:I
    goto/16 :goto_218

    .line 301
    .end local v4           #downloadAttempt:I
    .restart local v5       #downloadAttempt:I
    :catch_47e
    move-exception v9

    move v4, v5

    .end local v5           #downloadAttempt:I
    .restart local v4       #downloadAttempt:I
    goto/16 :goto_153

    .end local v4           #downloadAttempt:I
    .restart local v5       #downloadAttempt:I
    :cond_482
    move v4, v5

    .end local v5           #downloadAttempt:I
    .restart local v4       #downloadAttempt:I
    goto/16 :goto_db

    .end local v4           #downloadAttempt:I
    .restart local v5       #downloadAttempt:I
    :cond_485
    move v4, v5

    .end local v5           #downloadAttempt:I
    .restart local v4       #downloadAttempt:I
    goto/16 :goto_193

    .line 209
    :pswitch_data_488
    .packed-switch 0x1
        :pswitch_36a
        :pswitch_30c
        :pswitch_358
        :pswitch_25c
        :pswitch_2e1
    .end packed-switch
.end method

.method protected signalGoingToRestart()V
    .registers 2

    .prologue
    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/dl/DownloadTask;->mGoingToRestart:Z

    .line 136
    return-void
.end method
