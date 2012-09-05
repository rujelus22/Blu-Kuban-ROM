.class public Lcom/android/providers/downloads/DownloadThread;
.super Ljava/lang/Thread;
.source "DownloadThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/DownloadThread$RetryDownload;,
        Lcom/android/providers/downloads/DownloadThread$InnerState;,
        Lcom/android/providers/downloads/DownloadThread$State;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDrmConvertSession:Lcom/android/providers/downloads/DrmConvertSession;

.field private final mInfo:Lcom/android/providers/downloads/DownloadInfo;

.field private volatile mPolicyDirty:Z

.field private mPolicyListener:Landroid/net/INetworkPolicyListener;

.field private final mStorageManager:Lcom/android/providers/downloads/StorageManager;

.field private final mSystemFacade:Lcom/android/providers/downloads/SystemFacade;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;Lcom/android/providers/downloads/DownloadInfo;Lcom/android/providers/downloads/StorageManager;)V
    .registers 6
    .parameter "context"
    .parameter "systemFacade"
    .parameter "info"
    .parameter "storageManager"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 977
    new-instance v0, Lcom/android/providers/downloads/DownloadThread$1;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/DownloadThread$1;-><init>(Lcom/android/providers/downloads/DownloadThread;)V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    .line 66
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/android/providers/downloads/DownloadThread;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    .line 68
    iput-object p3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    .line 69
    iput-object p4, p0, Lcom/android/providers/downloads/DownloadThread;->mStorageManager:Lcom/android/providers/downloads/StorageManager;

    .line 70
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    invoke-static {p0}, Lcom/android/providers/downloads/DownloadThread;->sanitizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/providers/downloads/DownloadThread;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/providers/downloads/DownloadThread;)Lcom/android/providers/downloads/DownloadInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/providers/downloads/DownloadThread;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/providers/downloads/DownloadThread;->mPolicyDirty:Z

    return p1
.end method

.method private addRequestHeaders(Lcom/android/providers/downloads/DownloadThread$State;Lorg/apache/http/client/methods/HttpGet;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 899
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v0}, Lcom/android/providers/downloads/DownloadInfo;->getHeaders()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 900
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 903
    :cond_22
    iget-boolean v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContinuingDownload:Z

    if-eqz v0, :cond_8f

    .line 904
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mHeaderETag:Ljava/lang/String;

    if-eqz v0, :cond_31

    .line 905
    const-string v0, "If-Match"

    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mHeaderETag:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    :cond_31
    const-string v0, "Range"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v0, :cond_8f

    .line 909
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding Range header: bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  totalBytes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mTotalBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_8f
    return-void
.end method

.method private cannotResume(Lcom/android/providers/downloads/DownloadThread$State;)Z
    .registers 6
    .parameter "state"

    .prologue
    .line 489
    iget-wide v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-boolean v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mNoIntegrity:Z

    if-nez v0, :cond_14

    iget-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mHeaderETag:Ljava/lang/String;

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private checkConnectivity()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 266
    iput-boolean v3, p0, Lcom/android/providers/downloads/DownloadThread;->mPolicyDirty:Z

    .line 268
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v2}, Lcom/android/providers/downloads/DownloadInfo;->checkCanUseNetwork()I

    move-result v0

    .line 269
    .local v0, networkUsable:I
    if-eq v0, v4, :cond_35

    .line 270
    const/16 v1, 0xc3

    .line 271
    .local v1, status:I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_24

    .line 272
    const/16 v1, 0xc4

    .line 273
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v2, v4}, Lcom/android/providers/downloads/DownloadInfo;->notifyPauseDueToSize(Z)V

    .line 280
    :cond_18
    :goto_18
    new-instance v2, Lcom/android/providers/downloads/StopRequestException;

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v3, v0}, Lcom/android/providers/downloads/DownloadInfo;->getLogMessageForNetworkError(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 274
    :cond_24
    const/4 v2, 0x4

    if-ne v0, v2, :cond_2f

    .line 275
    const/16 v1, 0xc4

    .line 276
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v2, v3}, Lcom/android/providers/downloads/DownloadInfo;->notifyPauseDueToSize(Z)V

    goto :goto_18

    .line 277
    :cond_2f
    const/4 v2, 0x7

    if-ne v0, v2, :cond_18

    .line 278
    const/16 v1, 0x1f2

    goto :goto_18

    .line 283
    .end local v1           #status:I
    :cond_35
    return-void
.end method

.method private checkPausedOrCanceled(Lcom/android/providers/downloads/DownloadThread$State;)V
    .registers 6
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x1ea

    .line 391
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    monitor-enter v1

    .line 392
    :try_start_5
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mControl:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_19

    .line 393
    new-instance v0, Lcom/android/providers/downloads/StopRequestException;

    const/16 v2, 0xc1

    const-string v3, "download paused by owner"

    invoke-direct {v0, v2, v3}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 399
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v0

    .line 396
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    if-ne v0, v3, :cond_29

    .line 397
    new-instance v0, Lcom/android/providers/downloads/StopRequestException;

    const/16 v2, 0x1ea

    const-string v3, "download canceled"

    invoke-direct {v0, v2, v3}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 399
    :cond_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_16

    .line 402
    iget-boolean v0, p0, Lcom/android/providers/downloads/DownloadThread;->mPolicyDirty:Z

    if-eqz v0, :cond_31

    .line 403
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadThread;->checkConnectivity()V

    .line 405
    :cond_31
    return-void
.end method

.method private cleanupDestination(Lcom/android/providers/downloads/DownloadThread$State;I)V
    .registers 5
    .parameter "state"
    .parameter "finalStatus"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mDrmConvertSession:Lcom/android/providers/downloads/DrmConvertSession;

    if-eqz v0, :cond_c

    .line 329
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mDrmConvertSession:Lcom/android/providers/downloads/DrmConvertSession;

    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/providers/downloads/DrmConvertSession;->close(Ljava/lang/String;)I

    move-result p2

    .line 332
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->closeDestination(Lcom/android/providers/downloads/DownloadThread$State;)V

    .line 333
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_26

    invoke-static {p2}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 334
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 335
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    .line 337
    :cond_26
    return-void
.end method

.method private closeDestination(Lcom/android/providers/downloads/DownloadThread$State;)V
    .registers 6
    .parameter "state"

    .prologue
    .line 374
    :try_start_0
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_c

    .line 375
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 376
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    .line 384
    :cond_c
    :goto_c
    return-void

    .line 378
    :catch_d
    move-exception v0

    .line 379
    .local v0, ex:Ljava/io/IOException;
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v1, :cond_c

    .line 380
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception when closing the file after download : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method private executeDownload(Lcom/android/providers/downloads/DownloadThread$State;Landroid/net/http/AndroidHttpClient;Lorg/apache/http/client/methods/HttpGet;)V
    .registers 11
    .parameter "state"
    .parameter "client"
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;,
            Lcom/android/providers/downloads/DownloadThread$RetryDownload;
        }
    .end annotation

    .prologue
    .line 240
    new-instance v2, Lcom/android/providers/downloads/DownloadThread$InnerState;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/android/providers/downloads/DownloadThread$InnerState;-><init>(Lcom/android/providers/downloads/DownloadThread$1;)V

    .line 241
    .local v2, innerState:Lcom/android/providers/downloads/DownloadThread$InnerState;
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 243
    .local v0, data:[B
    invoke-direct {p0, p1, v2}, Lcom/android/providers/downloads/DownloadThread;->setupDestinationFile(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;)V

    .line 244
    invoke-direct {p0, p1, p3}, Lcom/android/providers/downloads/DownloadThread;->addRequestHeaders(Lcom/android/providers/downloads/DownloadThread$State;Lorg/apache/http/client/methods/HttpGet;)V

    .line 247
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadThread;->checkConnectivity()V

    .line 249
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/downloads/DownloadThread;->sendRequest(Lcom/android/providers/downloads/DownloadThread$State;Landroid/net/http/AndroidHttpClient;Lorg/apache/http/client/methods/HttpGet;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 250
    .local v3, response:Lorg/apache/http/HttpResponse;
    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/downloads/DownloadThread;->handleExceptionalStatus(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V

    .line 252
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v4, :cond_3a

    .line 253
    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "received response for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v6, v6, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_3a
    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/downloads/DownloadThread;->processResponseHeaders(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V

    .line 257
    invoke-direct {p0, p1, v3}, Lcom/android/providers/downloads/DownloadThread;->openResponseEntity(Lcom/android/providers/downloads/DownloadThread$State;Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;

    move-result-object v1

    .line 258
    .local v1, entityStream:Ljava/io/InputStream;
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/providers/downloads/DownloadThread;->transferData(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;[BLjava/io/InputStream;)V

    .line 259
    return-void
.end method

.method private finalizeDestinationFile(Lcom/android/providers/downloads/DownloadThread$State;)V
    .registers 5
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 319
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    const/16 v1, 0x1a4

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 320
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->syncDestination(Lcom/android/providers/downloads/DownloadThread$State;)V

    .line 321
    return-void
.end method

.method private getFinalStatusForHttpError(Lcom/android/providers/downloads/DownloadThread$State;)I
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 805
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v0}, Lcom/android/providers/downloads/DownloadInfo;->checkCanUseNetwork()I

    move-result v0

    .line 806
    if-eq v0, v2, :cond_15

    .line 807
    packed-switch v0, :pswitch_data_40

    .line 814
    :pswitch_c
    const/16 v0, 0xc3

    .line 821
    :goto_e
    return v0

    .line 810
    :pswitch_f
    const/16 v0, 0xc4

    goto :goto_e

    .line 812
    :pswitch_12
    const/16 v0, 0x1f2

    goto :goto_e

    .line 816
    :cond_15
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mNumFailed:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_21

    .line 817
    iput-boolean v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCountRetry:Z

    .line 818
    const/16 v0, 0xc2

    goto :goto_e

    .line 820
    :cond_21
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reached max retries for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    const/16 v0, 0x1ef

    goto :goto_e

    .line 807
    :pswitch_data_40
    .packed-switch 0x3
        :pswitch_f
        :pswitch_f
        :pswitch_c
        :pswitch_c
        :pswitch_12
    .end packed-switch
.end method

.method private handleEndOfStream(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;)V
    .registers 9
    .parameter "state"
    .parameter "innerState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 468
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 469
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "current_bytes"

    iget-wide v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 470
    iget-object v2, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    if-nez v2, :cond_20

    .line 471
    const-string v2, "total_bytes"

    iget-wide v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 473
    :cond_20
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v3}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 475
    iget-object v2, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    if-eqz v2, :cond_53

    iget-wide v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    iget-object v4, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_53

    const/4 v0, 0x1

    .line 477
    .local v0, lengthMismatched:Z
    :goto_41
    if-eqz v0, :cond_61

    .line 478
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->cannotResume(Lcom/android/providers/downloads/DownloadThread$State;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 479
    new-instance v2, Lcom/android/providers/downloads/StopRequestException;

    const/16 v3, 0x1e9

    const-string v4, "mismatched content length"

    invoke-direct {v2, v3, v4}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 475
    .end local v0           #lengthMismatched:Z
    :cond_53
    const/4 v0, 0x0

    goto :goto_41

    .line 482
    .restart local v0       #lengthMismatched:Z
    :cond_55
    new-instance v2, Lcom/android/providers/downloads/StopRequestException;

    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->getFinalStatusForHttpError(Lcom/android/providers/downloads/DownloadThread$State;)I

    move-result v3

    const-string v4, "closed socket before end of file"

    invoke-direct {v2, v3, v4}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 486
    :cond_61
    return-void
.end method

.method private handleExceptionalStatus(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V
    .registers 9
    .parameter "state"
    .parameter "innerState"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;,
            Lcom/android/providers/downloads/DownloadThread$RetryDownload;
        }
    .end annotation

    .prologue
    .line 670
    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 671
    .local v1, statusCode:I
    const/16 v2, 0x1f7

    if-ne v1, v2, :cond_16

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mNumFailed:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_16

    .line 672
    invoke-direct {p0, p1, p3}, Lcom/android/providers/downloads/DownloadThread;->handleServiceUnavailable(Lcom/android/providers/downloads/DownloadThread$State;Lorg/apache/http/HttpResponse;)V

    .line 674
    :cond_16
    const/16 v2, 0x12d

    if-eq v1, v2, :cond_26

    const/16 v2, 0x12e

    if-eq v1, v2, :cond_26

    const/16 v2, 0x12f

    if-eq v1, v2, :cond_26

    const/16 v2, 0x133

    if-ne v1, v2, :cond_29

    .line 675
    :cond_26
    invoke-direct {p0, p1, p3, v1}, Lcom/android/providers/downloads/DownloadThread;->handleRedirect(Lcom/android/providers/downloads/DownloadThread$State;Lorg/apache/http/HttpResponse;I)V

    .line 678
    :cond_29
    sget-boolean v2, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v2, :cond_51

    .line 679
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recevd_status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mContinuingDownload = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContinuingDownload:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_51
    iget-boolean v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContinuingDownload:Z

    if-eqz v2, :cond_5d

    const/16 v0, 0xce

    .line 683
    .local v0, expectedStatus:I
    :goto_57
    if-eq v1, v0, :cond_5c

    .line 684
    invoke-direct {p0, p1, p2, v1}, Lcom/android/providers/downloads/DownloadThread;->handleOtherStatus(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;I)V

    .line 686
    :cond_5c
    return-void

    .line 682
    .end local v0           #expectedStatus:I
    :cond_5d
    const/16 v0, 0xc8

    goto :goto_57
.end method

.method private handleOtherStatus(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;I)V
    .registers 9
    .parameter "state"
    .parameter "innerState"
    .parameter "statusCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 693
    const/16 v1, 0x1a0

    if-ne p3, v1, :cond_2b

    .line 695
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Http Range request failure: totalBytes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mTotalBytes:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bytes recvd so far: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 699
    :cond_2b
    invoke-static {p3}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 700
    move v0, p3

    .line 708
    .local v0, finalStatus:I
    :goto_32
    new-instance v1, Lcom/android/providers/downloads/StopRequestException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mContinuingDownload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContinuingDownload:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 701
    .end local v0           #finalStatus:I
    :cond_57
    const/16 v1, 0x12c

    if-lt p3, v1, :cond_62

    const/16 v1, 0x190

    if-ge p3, v1, :cond_62

    .line 702
    const/16 v0, 0x1ed

    .restart local v0       #finalStatus:I
    goto :goto_32

    .line 703
    .end local v0           #finalStatus:I
    :cond_62
    iget-boolean v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContinuingDownload:Z

    if-eqz v1, :cond_6d

    const/16 v1, 0xc8

    if-ne p3, v1, :cond_6d

    .line 704
    const/16 v0, 0x1e9

    .restart local v0       #finalStatus:I
    goto :goto_32

    .line 706
    .end local v0           #finalStatus:I
    :cond_6d
    const/16 v0, 0x1ee

    .restart local v0       #finalStatus:I
    goto :goto_32
.end method

.method private handleRedirect(Lcom/android/providers/downloads/DownloadThread$State;Lorg/apache/http/HttpResponse;I)V
    .registers 10
    .parameter "state"
    .parameter "response"
    .parameter "statusCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;,
            Lcom/android/providers/downloads/DownloadThread$RetryDownload;
        }
    .end annotation

    .prologue
    .line 717
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v3, :cond_1c

    .line 718
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got HTTP redirect "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_1c
    iget v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRedirectCount:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_2b

    .line 721
    new-instance v3, Lcom/android/providers/downloads/StopRequestException;

    const/16 v4, 0x1f1

    const-string v5, "too many redirects"

    invoke-direct {v3, v4, v5}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 724
    :cond_2b
    const-string v3, "Location"

    invoke-interface {p2, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 725
    .local v1, header:Lorg/apache/http/Header;
    if-nez v1, :cond_34

    .line 726
    return-void

    .line 728
    :cond_34
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v3, :cond_54

    .line 729
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Location :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :cond_54
    :try_start_54
    new-instance v3, Ljava/net/URI;

    iget-object v4, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v4, v4, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/net/URI;

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_6d
    .catch Ljava/net/URISyntaxException; {:try_start_54 .. :try_end_6d} :catch_87

    move-result-object v2

    .line 743
    .local v2, newUri:Ljava/lang/String;
    iget v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRedirectCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRedirectCount:I

    .line 744
    iput-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRequestUri:Ljava/lang/String;

    .line 745
    const/16 v3, 0x12d

    if-eq p3, v3, :cond_7e

    const/16 v3, 0x12f

    if-ne p3, v3, :cond_80

    .line 747
    :cond_7e
    iput-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mNewUri:Ljava/lang/String;

    .line 749
    :cond_80
    new-instance v3, Lcom/android/providers/downloads/DownloadThread$RetryDownload;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/providers/downloads/DownloadThread$RetryDownload;-><init>(Lcom/android/providers/downloads/DownloadThread;Lcom/android/providers/downloads/DownloadThread$1;)V

    throw v3

    .line 735
    .end local v2           #newUri:Ljava/lang/String;
    :catch_87
    move-exception v0

    .line 736
    .local v0, ex:Ljava/net/URISyntaxException;
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v3, :cond_b6

    .line 737
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t resolve redirect URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v5, v5, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_b6
    new-instance v3, Lcom/android/providers/downloads/StopRequestException;

    const/16 v4, 0x1ef

    const-string v5, "Couldn\'t resolve redirect URI"

    invoke-direct {v3, v4, v5}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method private handleServiceUnavailable(Lcom/android/providers/downloads/DownloadThread$State;Lorg/apache/http/HttpResponse;)V
    .registers 9
    .parameter "state"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    const v5, 0x15180

    const/16 v4, 0x1e

    .line 757
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_10

    .line 758
    const-string v1, "DownloadManager"

    const-string v2, "got HTTP response code 503"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :cond_10
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCountRetry:Z

    .line 761
    const-string v1, "Retry-After"

    invoke-interface {p2, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 762
    .local v0, header:Lorg/apache/http/Header;
    if-eqz v0, :cond_4c

    .line 764
    :try_start_1b
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_3b

    .line 765
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retry-After :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_3b
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    .line 768
    iget v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    if-gez v1, :cond_56

    .line 769
    const/4 v1, 0x0

    iput v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I
    :try_end_4c
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_4c} :catch_72

    .line 783
    :cond_4c
    :goto_4c
    new-instance v1, Lcom/android/providers/downloads/StopRequestException;

    const/16 v2, 0xc2

    const-string v3, "got 503 Service Unavailable, will retry later"

    invoke-direct {v1, v2, v3}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 771
    :cond_56
    :try_start_56
    iget v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    if-ge v1, v4, :cond_74

    .line 772
    const/16 v1, 0x1e

    iput v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    .line 776
    :cond_5e
    :goto_5e
    iget v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    sget-object v2, Lcom/android/providers/downloads/Helpers;->sRandom:Ljava/util/Random;

    const/16 v3, 0x1f

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    .line 777
    iget v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    mul-int/lit16 v1, v1, 0x3e8

    iput v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    goto :goto_4c

    .line 779
    :catch_72
    move-exception v1

    goto :goto_4c

    .line 773
    :cond_74
    iget v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    if-le v1, v5, :cond_5e

    .line 774
    const v1, 0x15180

    iput v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I
    :try_end_7d
    .catch Ljava/lang/NumberFormatException; {:try_start_56 .. :try_end_7d} :catch_72

    goto :goto_5e
.end method

.method private logNetworkState(I)V
    .registers 2
    .parameter "uid"

    .prologue
    .line 539
    return-void
.end method

.method private notifyDownloadCompleted(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "status"
    .parameter "countRetry"
    .parameter "retryAfter"
    .parameter "gotData"
    .parameter "filename"
    .parameter "uri"
    .parameter "mimeType"
    .parameter "errorMsg"

    .prologue
    .line 922
    invoke-direct/range {p0 .. p8}, Lcom/android/providers/downloads/DownloadThread;->notifyThroughDatabase(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    invoke-static {p1}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 926
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v0}, Lcom/android/providers/downloads/DownloadInfo;->sendIntentIfRequested()V

    .line 928
    :cond_e
    return-void
.end method

.method private notifyThroughDatabase(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 933
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 934
    const-string v1, "status"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 935
    const-string v1, "_data"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    if-eqz p6, :cond_1b

    .line 937
    const-string v1, "uri"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    :cond_1b
    const-string v1, "mimetype"

    invoke-virtual {v0, v1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    const-string v1, "lastmod"

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v2}, Lcom/android/providers/downloads/SystemFacade;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 941
    const-string v1, "method"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 942
    if-nez p2, :cond_5f

    .line 943
    const-string v1, "numfailed"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 950
    :goto_44
    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 951
    const-string v1, "errorMsg"

    invoke-virtual {v0, v1, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    :cond_4f
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v2}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 954
    return-void

    .line 944
    :cond_5f
    if-eqz p4, :cond_6c

    .line 945
    const-string v1, "numfailed"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_44

    .line 947
    :cond_6c
    const-string v1, "numfailed"

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mNumFailed:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_44
.end method

.method private openResponseEntity(Lcom/android/providers/downloads/DownloadThread$State;Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;
    .registers 8
    .parameter "state"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 526
    :try_start_0
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    return-object v1

    .line 527
    :catch_9
    move-exception v0

    .line 528
    .local v0, ex:Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v1, v1, Lcom/android/providers/downloads/DownloadInfo;->mUid:I

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadThread;->logNetworkState(I)V

    .line 529
    new-instance v1, Lcom/android/providers/downloads/StopRequestException;

    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->getFinalStatusForHttpError(Lcom/android/providers/downloads/DownloadThread$State;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "while getting entity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private processResponseHeaders(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V
    .registers 16
    .parameter "state"
    .parameter "innerState"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 547
    iget-boolean v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContinuingDownload:Z

    if-eqz v0, :cond_5

    .line 585
    :goto_4
    return-void

    .line 552
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/downloads/DownloadThread;->readResponseHeaders(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V

    .line 553
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/providers/downloads/DownloadDrmHelper;->isDrmConvertNeeded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 554
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/providers/downloads/DrmConvertSession;->open(Landroid/content/Context;Ljava/lang/String;)Lcom/android/providers/downloads/DrmConvertSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mDrmConvertSession:Lcom/android/providers/downloads/DrmConvertSession;

    .line 555
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mDrmConvertSession:Lcom/android/providers/downloads/DrmConvertSession;

    if-nez v0, :cond_41

    .line 556
    new-instance v0, Lcom/android/providers/downloads/StopRequestException;

    const/16 v1, 0x196

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mimetype "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can not be converted."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 561
    :cond_41
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v1, v1, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mHint:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentDisposition:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLocation:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v6, v6, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    iget-object v7, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    if-eqz v7, :cond_a8

    iget-object v7, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    :goto_5f
    iget-object v9, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-boolean v9, v9, Lcom/android/providers/downloads/DownloadInfo;->mIsPublicApi:Z

    iget-object v10, p0, Lcom/android/providers/downloads/DownloadThread;->mStorageManager:Lcom/android/providers/downloads/StorageManager;

    invoke-static/range {v0 .. v10}, Lcom/android/providers/downloads/Helpers;->generateSaveFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZLcom/android/providers/downloads/StorageManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    .line 573
    :try_start_6b
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;
    :try_end_74
    .catch Ljava/io/FileNotFoundException; {:try_start_6b .. :try_end_74} :catch_ab

    .line 578
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v0, :cond_a0

    .line 579
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_a0
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/DownloadThread;->updateDatabaseFromHeaders(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;)V

    .line 584
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadThread;->checkConnectivity()V

    goto/16 :goto_4

    .line 561
    :cond_a8
    const-wide/16 v7, 0x0

    goto :goto_5f

    .line 574
    :catch_ab
    move-exception v11

    .line 575
    .local v11, exc:Ljava/io/FileNotFoundException;
    new-instance v0, Lcom/android/providers/downloads/StopRequestException;

    const/16 v1, 0x1ec

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "while opening destination file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v11}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private readFromResponse(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;[BLjava/io/InputStream;)I
    .registers 12
    .parameter "state"
    .parameter "innerState"
    .parameter "data"
    .parameter "entityStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 501
    :try_start_1
    invoke-virtual {p4, p3}, Ljava/io/InputStream;->read([B)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_6

    move-result v3

    return v3

    .line 502
    :catch_6
    move-exception v0

    .line 503
    .local v0, ex:Ljava/io/IOException;
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mUid:I

    invoke-direct {p0, v3}, Lcom/android/providers/downloads/DownloadThread;->logNetworkState(I)V

    .line 504
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 505
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "current_bytes"

    iget-wide v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 506
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v4}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 507
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->cannotResume(Lcom/android/providers/downloads/DownloadThread$State;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 508
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "while reading response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", can\'t resume interrupted download with no ETag"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 510
    .local v1, message:Ljava/lang/String;
    new-instance v3, Lcom/android/providers/downloads/StopRequestException;

    const/16 v4, 0x1e9

    invoke-direct {v3, v4, v1, v0}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 513
    .end local v1           #message:Ljava/lang/String;
    :cond_58
    new-instance v3, Lcom/android/providers/downloads/StopRequestException;

    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->getFinalStatusForHttpError(Lcom/android/providers/downloads/DownloadThread$State;)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "while reading response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private readResponseHeaders(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V
    .registers 10
    .parameter "state"
    .parameter "innerState"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 609
    const-string v3, "Content-Disposition"

    invoke-interface {p3, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 610
    .local v0, header:Lorg/apache/http/Header;
    if-eqz v0, :cond_e

    .line 611
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentDisposition:Ljava/lang/String;

    .line 613
    :cond_e
    const-string v3, "Content-Location"

    invoke-interface {p3, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 614
    if-eqz v0, :cond_1c

    .line 615
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLocation:Ljava/lang/String;

    .line 617
    :cond_1c
    iget-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    if-nez v3, :cond_32

    .line 618
    const-string v3, "Content-Type"

    invoke-interface {p3, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 619
    if-eqz v0, :cond_32

    .line 620
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/providers/downloads/DownloadThread;->sanitizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    .line 623
    :cond_32
    const-string v3, "ETag"

    invoke-interface {p3, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 624
    if-eqz v0, :cond_40

    .line 625
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mHeaderETag:Ljava/lang/String;

    .line 627
    :cond_40
    const/4 v1, 0x0

    .line 628
    .local v1, headerTransferEncoding:Ljava/lang/String;
    const-string v3, "Transfer-Encoding"

    invoke-interface {p3, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 629
    if-eqz v0, :cond_4d

    .line 630
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 632
    :cond_4d
    if-nez v1, :cond_128

    .line 633
    const-string v3, "Content-Length"

    invoke-interface {p3, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 634
    if-eqz v0, :cond_69

    .line 635
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    .line 636
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v4, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    iput-wide v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mTotalBytes:J

    .line 646
    :cond_69
    :goto_69
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v3, :cond_107

    .line 647
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Content-Disposition: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentDisposition:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Content-Length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Content-Location: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLocation:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Content-Type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ETag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mHeaderETag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transfer-Encoding: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_107
    iget-object v3, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    if-nez v3, :cond_135

    if-eqz v1, :cond_115

    const-string v3, "chunked"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_135

    :cond_115
    const/4 v2, 0x1

    .line 659
    .local v2, noSizeInfo:Z
    :goto_116
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-boolean v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mNoIntegrity:Z

    if-nez v3, :cond_137

    if-eqz v2, :cond_137

    .line 660
    new-instance v3, Lcom/android/providers/downloads/StopRequestException;

    const/16 v4, 0x1ef

    const-string v5, "can\'t know size of download, giving up"

    invoke-direct {v3, v4, v5}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 641
    .end local v2           #noSizeInfo:Z
    :cond_128
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v3, :cond_69

    .line 642
    const-string v3, "DownloadManager"

    const-string v4, "ignoring content-length because of xfer-encoding"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_69

    .line 656
    :cond_135
    const/4 v2, 0x0

    goto :goto_116

    .line 663
    .restart local v2       #noSizeInfo:Z
    :cond_137
    return-void
.end method

.method private reportProgress(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;)V
    .registers 11
    .parameter "state"
    .parameter "innerState"

    .prologue
    const/4 v7, 0x0

    .line 411
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v3}, Lcom/android/providers/downloads/SystemFacade;->currentTimeMillis()J

    move-result-wide v0

    .line 412
    .local v0, now:J
    iget-wide v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    iget-wide v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mBytesNotified:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1000

    cmp-long v3, v3, v5

    if-lez v3, :cond_41

    iget-wide v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mTimeLastNotification:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x5dc

    cmp-long v3, v3, v5

    if-lez v3, :cond_41

    .line 414
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 415
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "current_bytes"

    iget-wide v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 416
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v4}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 417
    iget-wide v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    iput-wide v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mBytesNotified:J

    .line 418
    iput-wide v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mTimeLastNotification:J

    .line 420
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_41
    return-void
.end method

.method private static sanitizeMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "mimeType"

    .prologue
    .line 965
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 967
    const/16 v2, 0x3b

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 968
    .local v1, semicolonIndex:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_18

    .line 969
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_17} :catch_19

    move-result-object p0

    .line 973
    .end local v1           #semicolonIndex:I
    .end local p0
    :cond_18
    :goto_18
    return-object p0

    .line 972
    .restart local p0
    :catch_19
    move-exception v0

    .line 973
    .local v0, npe:Ljava/lang/NullPointerException;
    const/4 p0, 0x0

    goto :goto_18
.end method

.method private sendRequest(Lcom/android/providers/downloads/DownloadThread$State;Landroid/net/http/AndroidHttpClient;Lorg/apache/http/client/methods/HttpGet;)Lorg/apache/http/HttpResponse;
    .registers 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 793
    :try_start_0
    invoke-virtual {p2, p3}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_25

    move-result-object v0

    return-object v0

    .line 794
    :catch_5
    move-exception v0

    .line 795
    new-instance v1, Lcom/android/providers/downloads/StopRequestException;

    const/16 v2, 0x1ef

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "while trying to execute request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 797
    :catch_25
    move-exception v0

    .line 798
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v1, v1, Lcom/android/providers/downloads/DownloadInfo;->mUid:I

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadThread;->logNetworkState(I)V

    .line 799
    new-instance v1, Lcom/android/providers/downloads/StopRequestException;

    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->getFinalStatusForHttpError(Lcom/android/providers/downloads/DownloadThread$State;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "while trying to execute request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setupDestinationFile(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;)V
    .registers 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x1ec

    const/4 v6, 0x1

    .line 831
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_bc

    .line 832
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v0, :cond_37

    .line 833
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "have run thread before for id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", and state.mFilename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :cond_37
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mStorageManager:Lcom/android/providers/downloads/StorageManager;

    invoke-virtual {v1}, Lcom/android/providers/downloads/StorageManager;->getDownloadDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/providers/downloads/Helpers;->isFilenameValid(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 839
    new-instance v0, Lcom/android/providers/downloads/StopRequestException;

    const-string v1, "found invalid internal destination filename"

    invoke-direct {v0, v7, v1}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 843
    :cond_4d
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 844
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 845
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v1, :cond_86

    .line 846
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resuming download for id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", and state.mFilename: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :cond_86
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 850
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_ca

    .line 852
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 853
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    .line 854
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v0, :cond_bc

    .line 855
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resuming download for id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", BUT starting from scratch again: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_bc
    :goto_bc
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_c9

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    if-nez v0, :cond_c9

    .line 891
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->closeDestination(Lcom/android/providers/downloads/DownloadThread$State;)V

    .line 893
    :cond_c9
    return-void

    .line 858
    :cond_ca
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mETag:Ljava/lang/String;

    if-nez v3, :cond_e3

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-boolean v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mNoIntegrity:Z

    if-nez v3, :cond_e3

    .line 860
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 861
    new-instance v0, Lcom/android/providers/downloads/StopRequestException;

    const/16 v1, 0x1e9

    const-string v2, "Trying to resume a download that can\'t be resumed"

    invoke-direct {v0, v1, v2}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 865
    :cond_e3
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v0, :cond_10d

    .line 866
    const-string v0, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resuming download for id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v4, v4, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", and starting with file of length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :cond_10d
    :try_start_10d
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;
    :try_end_117
    .catch Ljava/io/FileNotFoundException; {:try_start_10d .. :try_end_117} :catch_16b

    .line 875
    long-to-int v0, v1

    int-to-long v0, v0

    iput-wide v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    .line 876
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12f

    .line 877
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    .line 879
    :cond_12f
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mETag:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mHeaderETag:Ljava/lang/String;

    .line 880
    iput-boolean v6, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContinuingDownload:Z

    .line 881
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v0, :cond_bc

    .line 882
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resuming download for id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state.mCurrentBytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", and setting mContinuingDownload to true: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bc

    .line 871
    :catch_16b
    move-exception v0

    .line 872
    new-instance v1, Lcom/android/providers/downloads/StopRequestException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "while opening destination for resuming: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v7, v2, v0}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private syncDestination(Lcom/android/providers/downloads/DownloadThread$State;)V
    .registers 8
    .parameter "state"

    .prologue
    .line 343
    const/4 v0, 0x0

    .line 345
    .local v0, downloadedFileStream:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_9} :catch_17
    .catch Ljava/io/SyncFailedException; {:try_start_1 .. :try_end_9} :catch_4b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_9} :catch_7c
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_9} :catch_ae

    .line 346
    .end local v0           #downloadedFileStream:Ljava/io/FileOutputStream;
    .local v1, downloadedFileStream:Ljava/io/FileOutputStream;
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_10c
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_10} :catch_11a
    .catch Ljava/io/SyncFailedException; {:try_start_9 .. :try_end_10} :catch_116
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_10} :catch_112
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_10} :catch_10f

    .line 356
    if-eqz v1, :cond_15

    .line 358
    :try_start_12
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_f8
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_15} :catch_102

    :cond_15
    :goto_15
    move-object v0, v1

    .line 366
    .end local v1           #downloadedFileStream:Ljava/io/FileOutputStream;
    .restart local v0       #downloadedFileStream:Ljava/io/FileOutputStream;
    :cond_16
    :goto_16
    return-void

    .line 347
    :catch_17
    move-exception v2

    .line 348
    .local v2, ex:Ljava/io/FileNotFoundException;
    :goto_18
    :try_start_18
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_18 .. :try_end_3c} :catchall_c3

    .line 356
    if-eqz v0, :cond_16

    .line 358
    :try_start_3e
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42
    .catch Ljava/lang/RuntimeException; {:try_start_3e .. :try_end_41} :catch_dc

    goto :goto_16

    .line 359
    :catch_42
    move-exception v2

    .line 360
    .local v2, ex:Ljava/io/IOException;
    const-string v3, "DownloadManager"

    const-string v4, "IOException while closing synced file: "

    :goto_47
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 349
    .end local v2           #ex:Ljava/io/IOException;
    :catch_4b
    move-exception v2

    .line 350
    .local v2, ex:Ljava/io/SyncFailedException;
    :goto_4c
    :try_start_4c
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sync failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catchall {:try_start_4c .. :try_end_70} :catchall_c3

    .line 356
    if-eqz v0, :cond_16

    .line 358
    :try_start_72
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_76
    .catch Ljava/lang/RuntimeException; {:try_start_72 .. :try_end_75} :catch_e6

    goto :goto_16

    .line 359
    :catch_76
    move-exception v2

    .line 360
    .local v2, ex:Ljava/io/IOException;
    const-string v3, "DownloadManager"

    const-string v4, "IOException while closing synced file: "

    goto :goto_47

    .line 351
    .end local v2           #ex:Ljava/io/IOException;
    :catch_7c
    move-exception v2

    .line 352
    .restart local v2       #ex:Ljava/io/IOException;
    :goto_7d
    :try_start_7d
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException trying to sync "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catchall {:try_start_7d .. :try_end_a1} :catchall_c3

    .line 356
    if-eqz v0, :cond_16

    .line 358
    :try_start_a3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_a8
    .catch Ljava/lang/RuntimeException; {:try_start_a3 .. :try_end_a6} :catch_ec

    goto/16 :goto_16

    .line 359
    :catch_a8
    move-exception v2

    .line 360
    const-string v3, "DownloadManager"

    const-string v4, "IOException while closing synced file: "

    goto :goto_47

    .line 353
    .end local v2           #ex:Ljava/io/IOException;
    :catch_ae
    move-exception v2

    .line 354
    .local v2, ex:Ljava/lang/RuntimeException;
    :goto_af
    :try_start_af
    const-string v3, "DownloadManager"

    const-string v4, "exception while syncing file: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b6
    .catchall {:try_start_af .. :try_end_b6} :catchall_c3

    .line 356
    if-eqz v0, :cond_16

    .line 358
    :try_start_b8
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bb} :catch_bd
    .catch Ljava/lang/RuntimeException; {:try_start_b8 .. :try_end_bb} :catch_f2

    goto/16 :goto_16

    .line 359
    :catch_bd
    move-exception v2

    .line 360
    .local v2, ex:Ljava/io/IOException;
    const-string v3, "DownloadManager"

    const-string v4, "IOException while closing synced file: "

    goto :goto_47

    .line 356
    .end local v2           #ex:Ljava/io/IOException;
    :catchall_c3
    move-exception v3

    :goto_c4
    if-eqz v0, :cond_c9

    .line 358
    :try_start_c6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_c9} :catch_ca
    .catch Ljava/lang/RuntimeException; {:try_start_c6 .. :try_end_c9} :catch_d3

    .line 356
    :cond_c9
    :goto_c9
    throw v3

    .line 359
    :catch_ca
    move-exception v2

    .line 360
    .restart local v2       #ex:Ljava/io/IOException;
    const-string v4, "DownloadManager"

    const-string v5, "IOException while closing synced file: "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c9

    .line 361
    .end local v2           #ex:Ljava/io/IOException;
    :catch_d3
    move-exception v2

    .line 362
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v4, "DownloadManager"

    const-string v5, "exception while closing file: "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c9

    .line 361
    .local v2, ex:Ljava/io/FileNotFoundException;
    :catch_dc
    move-exception v2

    .line 362
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v3, "DownloadManager"

    const-string v4, "exception while closing file: "

    :goto_e1
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_16

    .line 361
    .local v2, ex:Ljava/io/SyncFailedException;
    :catch_e6
    move-exception v2

    .line 362
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v3, "DownloadManager"

    const-string v4, "exception while closing file: "

    goto :goto_e1

    .line 361
    .local v2, ex:Ljava/io/IOException;
    :catch_ec
    move-exception v2

    .line 362
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v3, "DownloadManager"

    const-string v4, "exception while closing file: "

    goto :goto_e1

    .line 361
    :catch_f2
    move-exception v2

    .line 362
    const-string v3, "DownloadManager"

    const-string v4, "exception while closing file: "

    goto :goto_e1

    .line 359
    .end local v0           #downloadedFileStream:Ljava/io/FileOutputStream;
    .end local v2           #ex:Ljava/lang/RuntimeException;
    .restart local v1       #downloadedFileStream:Ljava/io/FileOutputStream;
    :catch_f8
    move-exception v2

    .line 360
    .local v2, ex:Ljava/io/IOException;
    const-string v3, "DownloadManager"

    const-string v4, "IOException while closing synced file: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_15

    .line 361
    .end local v2           #ex:Ljava/io/IOException;
    :catch_102
    move-exception v2

    .line 362
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v3, "DownloadManager"

    const-string v4, "exception while closing file: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_15

    .line 356
    .end local v2           #ex:Ljava/lang/RuntimeException;
    :catchall_10c
    move-exception v3

    move-object v0, v1

    .end local v1           #downloadedFileStream:Ljava/io/FileOutputStream;
    .restart local v0       #downloadedFileStream:Ljava/io/FileOutputStream;
    goto :goto_c4

    .line 353
    .end local v0           #downloadedFileStream:Ljava/io/FileOutputStream;
    .restart local v1       #downloadedFileStream:Ljava/io/FileOutputStream;
    :catch_10f
    move-exception v2

    move-object v0, v1

    .end local v1           #downloadedFileStream:Ljava/io/FileOutputStream;
    .restart local v0       #downloadedFileStream:Ljava/io/FileOutputStream;
    goto :goto_af

    .line 351
    .end local v0           #downloadedFileStream:Ljava/io/FileOutputStream;
    .restart local v1       #downloadedFileStream:Ljava/io/FileOutputStream;
    :catch_112
    move-exception v2

    move-object v0, v1

    .end local v1           #downloadedFileStream:Ljava/io/FileOutputStream;
    .restart local v0       #downloadedFileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_7d

    .line 349
    .end local v0           #downloadedFileStream:Ljava/io/FileOutputStream;
    .restart local v1       #downloadedFileStream:Ljava/io/FileOutputStream;
    :catch_116
    move-exception v2

    move-object v0, v1

    .end local v1           #downloadedFileStream:Ljava/io/FileOutputStream;
    .restart local v0       #downloadedFileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_4c

    .line 347
    .end local v0           #downloadedFileStream:Ljava/io/FileOutputStream;
    .restart local v1       #downloadedFileStream:Ljava/io/FileOutputStream;
    :catch_11a
    move-exception v2

    move-object v0, v1

    .end local v1           #downloadedFileStream:Ljava/io/FileOutputStream;
    .restart local v0       #downloadedFileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_18
.end method

.method private transferData(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;[BLjava/io/InputStream;)V
    .registers 10
    .parameter "state"
    .parameter "innerState"
    .parameter "data"
    .parameter "entityStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 294
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/downloads/DownloadThread;->readFromResponse(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;[BLjava/io/InputStream;)I

    move-result v0

    .line 295
    .local v0, bytesRead:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 296
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/DownloadThread;->handleEndOfStream(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;)V

    .line 297
    return-void

    .line 300
    :cond_b
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mGotData:Z

    .line 301
    invoke-direct {p0, p1, p3, v0}, Lcom/android/providers/downloads/DownloadThread;->writeDataToDestination(Lcom/android/providers/downloads/DownloadThread$State;[BI)V

    .line 302
    iget-wide v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    .line 303
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/DownloadThread;->reportProgress(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;)V

    .line 305
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_46

    .line 306
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloaded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_46
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->checkPausedOrCanceled(Lcom/android/providers/downloads/DownloadThread$State;)V

    goto :goto_0
.end method

.method private updateDatabaseFromHeaders(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;)V
    .registers 8
    .parameter "state"
    .parameter "innerState"

    .prologue
    const/4 v4, 0x0

    .line 592
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 593
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "_data"

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mHeaderETag:Ljava/lang/String;

    if-eqz v1, :cond_18

    .line 595
    const-string v1, "etag"

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mHeaderETag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    :cond_18
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    if-eqz v1, :cond_23

    .line 598
    const-string v1, "mimetype"

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :cond_23
    const-string v1, "total_bytes"

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 601
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v2}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 602
    return-void
.end method

.method private userAgent()Ljava/lang/String;
    .registers 3

    .prologue
    .line 76
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v0, v1, Lcom/android/providers/downloads/DownloadInfo;->mUserAgent:Ljava/lang/String;

    .line 77
    .local v0, userAgent:Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 79
    :cond_6
    if-nez v0, :cond_a

    .line 80
    const-string v0, "AndroidDownloadManager"

    .line 82
    :cond_a
    return-object v0
.end method

.method private writeDataToDestination(Lcom/android/providers/downloads/DownloadThread$State;[BI)V
    .registers 11
    .parameter "state"
    .parameter "data"
    .parameter "bytesRead"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 431
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    if-nez v2, :cond_e

    .line 432
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    .line 434
    :cond_e
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mStorageManager:Lcom/android/providers/downloads/StorageManager;

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    iget-object v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    int-to-long v5, p3

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/providers/downloads/StorageManager;->verifySpaceBeforeWritingToFile(ILjava/lang/String;J)V

    .line 436
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mMimeType:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/providers/downloads/DownloadDrmHelper;->isDrmConvertNeeded(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 437
    iget-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3, p3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_69
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2a} :catch_44

    .line 456
    :goto_2a
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    if-nez v2, :cond_33

    .line 457
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->closeDestination(Lcom/android/providers/downloads/DownloadThread$State;)V

    .line 447
    :cond_33
    return-void

    .line 439
    :cond_34
    :try_start_34
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mDrmConvertSession:Lcom/android/providers/downloads/DrmConvertSession;

    invoke-virtual {v2, p2, p3}, Lcom/android/providers/downloads/DrmConvertSession;->convert([BI)[B

    move-result-object v0

    .line 440
    .local v0, convertedData:[B
    if-eqz v0, :cond_5f

    .line 441
    iget-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_43
    .catchall {:try_start_34 .. :try_end_43} :catchall_69
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_43} :catch_44

    goto :goto_2a

    .line 448
    .end local v0           #convertedData:[B
    :catch_44
    move-exception v1

    .line 452
    .local v1, ex:Ljava/io/IOException;
    :try_start_45
    iget-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_55

    .line 453
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mStorageManager:Lcom/android/providers/downloads/StorageManager;

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    iget-object v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    int-to-long v5, p3

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/providers/downloads/StorageManager;->verifySpace(ILjava/lang/String;J)V
    :try_end_55
    .catchall {:try_start_45 .. :try_end_55} :catchall_69

    .line 456
    :cond_55
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    if-nez v2, :cond_0

    .line 457
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->closeDestination(Lcom/android/providers/downloads/DownloadThread$State;)V

    goto :goto_0

    .line 443
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v0       #convertedData:[B
    :cond_5f
    :try_start_5f
    new-instance v2, Lcom/android/providers/downloads/StopRequestException;

    const/16 v3, 0x1ec

    const-string v4, "Error converting drm data."

    invoke-direct {v2, v3, v4}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_69
    .catchall {:try_start_5f .. :try_end_69} :catchall_69
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_69} :catch_44

    .line 456
    .end local v0           #convertedData:[B
    :catchall_69
    move-exception v2

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    if-nez v3, :cond_73

    .line 457
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->closeDestination(Lcom/android/providers/downloads/DownloadThread$State;)V

    .line 456
    :cond_73
    throw v2
.end method


# virtual methods
.method public run()V
    .registers 24

    .prologue
    .line 134
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 136
    new-instance v20, Lcom/android/providers/downloads/DownloadThread$State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Lcom/android/providers/downloads/DownloadThread$State;-><init>(Lcom/android/providers/downloads/DownloadInfo;)V

    .line 137
    .local v20, state:Lcom/android/providers/downloads/DownloadThread$State;
    const/4 v12, 0x0

    .line 138
    .local v12, client:Landroid/net/http/AndroidHttpClient;
    const/16 v21, 0x0

    .line 139
    .local v21, wakeLock:Landroid/os/PowerManager$WakeLock;
    const/16 v4, 0x1eb

    .line 140
    .local v4, finalStatus:I
    const/4 v11, 0x0

    .line 142
    .local v11, errorMsg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/net/NetworkPolicyManager;->getSystemService(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v17

    .line 143
    .local v17, netPolicy:Landroid/net/NetworkPolicyManager;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/PowerManager;

    .line 146
    .local v18, pm:Landroid/os/PowerManager;
    const/4 v3, 0x1

    :try_start_2b
    const-string v5, "DownloadManager"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v21

    .line 147
    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 150
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadThread;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/net/NetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V

    .line 152
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v3, :cond_61

    .line 153
    const-string v3, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initiating download for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v6, v6, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_61
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadThread;->userAgent()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v12

    .line 160
    const/16 v3, -0xff

    invoke-static {v3}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 161
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mUid:I

    invoke-static {v3}, Landroid/net/TrafficStats;->setThreadStatsUid(I)V

    .line 163
    const/4 v15, 0x0

    .line 164
    .local v15, finished:Z
    :goto_7c
    if-nez v15, :cond_af

    .line 165
    move-object/from16 v0, v20

    iget-wide v5, v0, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    move-object/from16 v0, v20

    iget-wide v7, v0, Lcom/android/providers/downloads/DownloadThread$State;->mTotalBytes:J

    cmp-long v3, v5, v7

    if-nez v3, :cond_12f

    .line 166
    const-string v3, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping initiating request for download "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v6, v6, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; already completed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v15, 0x1

    .line 189
    :cond_af
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v3, :cond_d1

    .line 190
    const-string v3, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "download completed for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v6, v6, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_d1
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/providers/downloads/DownloadThread;->finalizeDestinationFile(Lcom/android/providers/downloads/DownloadThread$State;)V
    :try_end_d8
    .catchall {:try_start_2b .. :try_end_d8} :catchall_28a
    .catch Lcom/android/providers/downloads/StopRequestException; {:try_start_2b .. :try_end_d8} :catch_183
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_d8} :catch_20c

    .line 193
    const/16 v4, 0xc8

    .line 211
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 212
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    .line 214
    if-eqz v12, :cond_e6

    .line 215
    invoke-virtual {v12}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 216
    const/4 v12, 0x0

    .line 218
    :cond_e6
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Lcom/android/providers/downloads/DownloadThread;->cleanupDestination(Lcom/android/providers/downloads/DownloadThread$State;I)V

    .line 219
    move-object/from16 v0, v20

    iget-boolean v5, v0, Lcom/android/providers/downloads/DownloadThread$State;->mCountRetry:Z

    move-object/from16 v0, v20

    iget v6, v0, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    move-object/from16 v0, v20

    iget-boolean v7, v0, Lcom/android/providers/downloads/DownloadThread$State;->mGotData:Z

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/android/providers/downloads/DownloadThread$State;->mNewUri:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v10, v0, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/android/providers/downloads/DownloadThread;->notifyDownloadCompleted(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-static {}, Lcom/android/providers/downloads/DownloadHandler;->getInstance()Lcom/android/providers/downloads/DownloadHandler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v5, v5, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v3, v5, v6}, Lcom/android/providers/downloads/DownloadHandler;->dequeueDownload(J)V

    .line 224
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadThread;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/net/NetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V

    .line 226
    if-eqz v21, :cond_127

    .line 227
    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 228
    .end local v15           #finished:Z
    :goto_125
    const/16 v21, 0x0

    .line 231
    :cond_127
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadThread;->mStorageManager:Lcom/android/providers/downloads/StorageManager;

    invoke-virtual {v3}, Lcom/android/providers/downloads/StorageManager;->incrementNumDownloadsSoFar()V

    .line 232
    return-void

    .line 172
    .restart local v15       #finished:Z
    :cond_12f
    :try_start_12f
    const-string v3, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Initiating request for download "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v6, v6, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {v12}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/android/providers/downloads/DownloadThread$State;->mRequestUri:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/net/Proxy;->getPreferredHttpHost(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/HttpHost;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 177
    new-instance v19, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadThread$State;->mRequestUri:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_16b
    .catchall {:try_start_12f .. :try_end_16b} :catchall_28a
    .catch Lcom/android/providers/downloads/StopRequestException; {:try_start_12f .. :try_end_16b} :catch_183
    .catch Ljava/lang/Throwable; {:try_start_12f .. :try_end_16b} :catch_20c

    .line 179
    .local v19, request:Lorg/apache/http/client/methods/HttpGet;
    :try_start_16b
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v12, v2}, Lcom/android/providers/downloads/DownloadThread;->executeDownload(Lcom/android/providers/downloads/DownloadThread$State;Landroid/net/http/AndroidHttpClient;Lorg/apache/http/client/methods/HttpGet;)V
    :try_end_174
    .catchall {:try_start_16b .. :try_end_174} :catchall_17c
    .catch Lcom/android/providers/downloads/DownloadThread$RetryDownload; {:try_start_16b .. :try_end_174} :catch_2db

    .line 180
    const/4 v15, 0x1

    .line 184
    :try_start_175
    invoke-virtual/range {v19 .. v19}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 185
    :goto_178
    const/16 v19, 0x0

    goto/16 :goto_7c

    .line 184
    :catchall_17c
    move-exception v3

    invoke-virtual/range {v19 .. v19}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 185
    const/16 v19, 0x0

    .line 184
    throw v3
    :try_end_183
    .catchall {:try_start_175 .. :try_end_183} :catchall_28a
    .catch Lcom/android/providers/downloads/StopRequestException; {:try_start_175 .. :try_end_183} :catch_183
    .catch Ljava/lang/Throwable; {:try_start_175 .. :try_end_183} :catch_20c

    .line 194
    .end local v15           #finished:Z
    .end local v19           #request:Lorg/apache/http/client/methods/HttpGet;
    :catch_183
    move-exception v13

    .line 196
    .local v13, error:Lcom/android/providers/downloads/StopRequestException;
    :try_start_184
    invoke-virtual {v13}, Lcom/android/providers/downloads/StopRequestException;->getMessage()Ljava/lang/String;

    move-result-object v11

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Aborting request for download "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v5, v5, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 198
    .local v16, msg:Ljava/lang/String;
    const-string v3, "DownloadManager"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v3, :cond_1bd

    .line 200
    const-string v3, "DownloadManager"

    move-object/from16 v0, v16

    invoke-static {v3, v0, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    :cond_1bd
    iget v4, v13, Lcom/android/providers/downloads/StopRequestException;->mFinalStatus:I
    :try_end_1bf
    .catchall {:try_start_184 .. :try_end_1bf} :catchall_28a

    .line 211
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 212
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    .line 214
    if-eqz v12, :cond_1cb

    .line 215
    invoke-virtual {v12}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 216
    const/4 v12, 0x0

    .line 218
    :cond_1cb
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Lcom/android/providers/downloads/DownloadThread;->cleanupDestination(Lcom/android/providers/downloads/DownloadThread$State;I)V

    .line 219
    move-object/from16 v0, v20

    iget-boolean v5, v0, Lcom/android/providers/downloads/DownloadThread$State;->mCountRetry:Z

    move-object/from16 v0, v20

    iget v6, v0, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    move-object/from16 v0, v20

    iget-boolean v7, v0, Lcom/android/providers/downloads/DownloadThread$State;->mGotData:Z

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/android/providers/downloads/DownloadThread$State;->mNewUri:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v10, v0, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/android/providers/downloads/DownloadThread;->notifyDownloadCompleted(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-static {}, Lcom/android/providers/downloads/DownloadHandler;->getInstance()Lcom/android/providers/downloads/DownloadHandler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v5, v5, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v3, v5, v6}, Lcom/android/providers/downloads/DownloadHandler;->dequeueDownload(J)V

    .line 224
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadThread;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/net/NetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V

    .line 226
    if-eqz v21, :cond_127

    .line 227
    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_125

    .line 204
    .end local v13           #error:Lcom/android/providers/downloads/StopRequestException;
    .end local v16           #msg:Ljava/lang/String;
    :catch_20c
    move-exception v14

    .line 205
    .local v14, ex:Ljava/lang/Throwable;
    :try_start_20d
    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception for id "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v5, v5, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 207
    .restart local v16       #msg:Ljava/lang/String;
    const-string v3, "DownloadManager"

    move-object/from16 v0, v16

    invoke-static {v3, v0, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23b
    .catchall {:try_start_20d .. :try_end_23b} :catchall_28a

    .line 208
    const/16 v4, 0x1eb

    .line 211
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 212
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    .line 214
    if-eqz v12, :cond_249

    .line 215
    invoke-virtual {v12}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 216
    const/4 v12, 0x0

    .line 218
    :cond_249
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Lcom/android/providers/downloads/DownloadThread;->cleanupDestination(Lcom/android/providers/downloads/DownloadThread$State;I)V

    .line 219
    move-object/from16 v0, v20

    iget-boolean v5, v0, Lcom/android/providers/downloads/DownloadThread$State;->mCountRetry:Z

    move-object/from16 v0, v20

    iget v6, v0, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    move-object/from16 v0, v20

    iget-boolean v7, v0, Lcom/android/providers/downloads/DownloadThread$State;->mGotData:Z

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/android/providers/downloads/DownloadThread$State;->mNewUri:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v10, v0, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/android/providers/downloads/DownloadThread;->notifyDownloadCompleted(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-static {}, Lcom/android/providers/downloads/DownloadHandler;->getInstance()Lcom/android/providers/downloads/DownloadHandler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v5, v5, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v3, v5, v6}, Lcom/android/providers/downloads/DownloadHandler;->dequeueDownload(J)V

    .line 224
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadThread;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/net/NetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V

    .line 226
    if-eqz v21, :cond_127

    .line 227
    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_125

    .line 211
    .end local v14           #ex:Ljava/lang/Throwable;
    .end local v16           #msg:Ljava/lang/String;
    :catchall_28a
    move-exception v3

    move-object/from16 v22, v3

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 212
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    .line 214
    if-eqz v12, :cond_299

    .line 215
    invoke-virtual {v12}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 216
    const/4 v12, 0x0

    .line 218
    :cond_299
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Lcom/android/providers/downloads/DownloadThread;->cleanupDestination(Lcom/android/providers/downloads/DownloadThread$State;I)V

    .line 219
    move-object/from16 v0, v20

    iget-boolean v5, v0, Lcom/android/providers/downloads/DownloadThread$State;->mCountRetry:Z

    move-object/from16 v0, v20

    iget v6, v0, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    move-object/from16 v0, v20

    iget-boolean v7, v0, Lcom/android/providers/downloads/DownloadThread$State;->mGotData:Z

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/android/providers/downloads/DownloadThread$State;->mNewUri:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v10, v0, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/android/providers/downloads/DownloadThread;->notifyDownloadCompleted(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-static {}, Lcom/android/providers/downloads/DownloadHandler;->getInstance()Lcom/android/providers/downloads/DownloadHandler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v5, v5, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v3, v5, v6}, Lcom/android/providers/downloads/DownloadHandler;->dequeueDownload(J)V

    .line 224
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadThread;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/net/NetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V

    .line 226
    if-eqz v21, :cond_2da

    .line 227
    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 228
    const/16 v21, 0x0

    .line 211
    :cond_2da
    throw v22

    .line 181
    .restart local v15       #finished:Z
    .restart local v19       #request:Lorg/apache/http/client/methods/HttpGet;
    :catch_2db
    move-exception v3

    .line 184
    :try_start_2dc
    invoke-virtual/range {v19 .. v19}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_2df
    .catchall {:try_start_2dc .. :try_end_2df} :catchall_28a
    .catch Lcom/android/providers/downloads/StopRequestException; {:try_start_2dc .. :try_end_2df} :catch_183
    .catch Ljava/lang/Throwable; {:try_start_2dc .. :try_end_2df} :catch_20c

    goto/16 :goto_178
.end method
