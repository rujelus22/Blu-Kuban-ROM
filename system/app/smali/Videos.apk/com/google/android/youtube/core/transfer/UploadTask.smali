.class public Lcom/google/android/youtube/core/transfer/UploadTask;
.super Ljava/lang/Object;
.source "UploadTask.java"

# interfaces
.implements Lcom/google/android/youtube/core/transfer/TransferTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/transfer/UploadTask$ProgressFilterOutputStream;,
        Lcom/google/android/youtube/core/transfer/UploadTask$ProgressEntity;
    }
.end annotation


# static fields
.field private static final RE_RANGE_HEADER:Ljava/util/regex/Pattern;


# instance fields
.field private final accountName:Ljava/lang/String;

.field private final analytics:Lcom/google/android/youtube/core/Analytics;

.field private volatile beforeFirstRequest:Z

.field private cancelCalled:Z

.field private volatile canceled:Z

.field private final context:Landroid/content/Context;

.field private final converter:Lcom/google/android/youtube/core/converter/http/VideoResponseConverter;

.field private volatile currentRequest:Lorg/apache/http/client/methods/HttpUriRequest;

.field private final currentRequestLock:Ljava/lang/Object;

.field private final executor:Ljava/util/concurrent/Executor;

.field private fileLength:J

.field private final gdataClient:Lcom/google/android/youtube/core/client/GDataClient;

.field private final httpClient:Lorg/apache/http/client/HttpClient;

.field private final listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

.field private final notificationManager:Landroid/app/NotificationManager;

.field private numBytesUploaded:J

.field private final transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;

.field private final userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 96
    const-string v0, "bytes=(\\d+)-(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/transfer/UploadTask;->RE_RANGE_HEADER:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/client/GDataClient;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/converter/http/VideoResponseConverter;Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;Lcom/google/android/youtube/core/transfer/TransferTask$Listener;)V
    .registers 12
    .parameter "context"
    .parameter "executor"
    .parameter "httpClient"
    .parameter "gdataClient"
    .parameter "userAuthorizer"
    .parameter "analytics"
    .parameter "converter"
    .parameter "transfer"
    .parameter "listener"

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->context:Landroid/content/Context;

    .line 134
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->notificationManager:Landroid/app/NotificationManager;

    .line 136
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/HttpClient;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 137
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->executor:Ljava/util/concurrent/Executor;

    .line 138
    invoke-static {p4}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/GDataClient;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->gdataClient:Lcom/google/android/youtube/core/client/GDataClient;

    .line 139
    invoke-static {p5}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/UserAuthorizer;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 140
    invoke-static {p6}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/Analytics;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->analytics:Lcom/google/android/youtube/core/Analytics;

    .line 141
    invoke-static {p7}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/converter/http/VideoResponseConverter;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->converter:Lcom/google/android/youtube/core/converter/http/VideoResponseConverter;

    .line 142
    invoke-static {p8}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;

    .line 143
    iget-object v0, p8, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->inputExtras:Landroid/os/Bundle;

    const-string v1, "authAccount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->accountName:Ljava/lang/String;

    .line 144
    invoke-static {p9}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    .line 145
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->currentRequestLock:Ljava/lang/Object;

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->beforeFirstRequest:Z

    .line 147
    return-void
.end method

.method private abortCurrentRequest()V
    .registers 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/youtube/core/transfer/UploadTask$1;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/core/transfer/UploadTask$1;-><init>(Lcom/google/android/youtube/core/transfer/UploadTask;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 184
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/core/transfer/UploadTask;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/UploadTask;->maybeAbortCurrentRequest()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/youtube/core/transfer/UploadTask;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->currentRequestLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/youtube/core/transfer/UploadTask;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-wide p1, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->numBytesUploaded:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/google/android/youtube/core/transfer/UploadTask;)Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/youtube/core/transfer/UploadTask;)Lcom/google/android/youtube/core/transfer/TransferTask$Listener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    return-object v0
.end method

.method private blockOnProcessing(Lcom/google/android/youtube/core/model/Video;)V
    .registers 4
    .parameter "video"

    .prologue
    .line 478
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    sget-object v1, Lcom/google/android/youtube/core/model/Video$State;->PLAYABLE:Lcom/google/android/youtube/core/model/Video$State;

    if-eq v0, v1, :cond_c

    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    sget-object v1, Lcom/google/android/youtube/core/model/Video$State;->PROCESSING:Lcom/google/android/youtube/core/model/Video$State;

    if-ne v0, v1, :cond_f

    .line 479
    :cond_c
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/transfer/UploadTask;->busyLoopUntilStreams(Lcom/google/android/youtube/core/model/Video;)V

    .line 482
    :cond_f
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/UploadTask;->getUserAuth()Lcom/google/android/youtube/core/model/UserAuth;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 483
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/transfer/UploadTask;->sendNotification(Lcom/google/android/youtube/core/model/Video;)V

    .line 485
    :cond_18
    return-void
.end method

.method private busyLoopUntilStreams(Lcom/google/android/youtube/core/model/Video;)V
    .registers 9
    .parameter "video"

    .prologue
    .line 376
    const/4 v3, 0x0

    .line 377
    .local v3, tries:I
    :cond_1
    :goto_1
    const/16 v5, 0xa

    if-ge v3, v5, :cond_4a

    .line 378
    add-int/lit8 v3, v3, 0x1

    .line 379
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/UploadTask;->waitUntilTimeForNextTranscodingPoll()V

    .line 381
    :try_start_a
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/UploadTask;->getUserAuth()Lcom/google/android/youtube/core/model/UserAuth;

    move-result-object v4

    .line 382
    .local v4, userAuth:Lcom/google/android/youtube/core/model/UserAuth;
    if-nez v4, :cond_11

    .line 405
    .end local v4           #userAuth:Lcom/google/android/youtube/core/model/UserAuth;
    :goto_10
    return-void

    .line 386
    .restart local v4       #userAuth:Lcom/google/android/youtube/core/model/UserAuth;
    :cond_11
    new-instance v0, Lcom/google/android/youtube/core/async/SyncCallback;

    invoke-direct {v0}, Lcom/google/android/youtube/core/async/SyncCallback;-><init>()V

    .line 388
    .local v0, callback:Lcom/google/android/youtube/core/async/SyncCallback;,"Lcom/google/android/youtube/core/async/SyncCallback<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/VideoStreams;>;"
    iget-object v5, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->gdataClient:Lcom/google/android/youtube/core/client/GDataClient;

    iget-object v6, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-static {v6, v4}, Lcom/google/android/youtube/core/async/GDataRequests;->getMyStreamsRequest(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Lcom/google/android/youtube/core/client/GDataClient;->requestMyStreams(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Callback;)V

    .line 390
    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/SyncCallback;->getResponse()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/model/VideoStreams;

    .line 391
    .local v2, response:Lcom/google/android/youtube/core/model/VideoStreams;
    iget-object v5, v2, Lcom/google/android/youtube/core/model/VideoStreams;->hi:Lcom/google/android/youtube/core/model/Stream;

    if-eqz v5, :cond_1

    iget-object v5, v2, Lcom/google/android/youtube/core/model/VideoStreams;->lo:Lcom/google/android/youtube/core/model/Stream;

    if-eqz v5, :cond_1

    .line 392
    const-string v5, "Upload streams found"

    invoke-static {v5}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_a .. :try_end_34} :catch_35

    goto :goto_10

    .line 395
    .end local v0           #callback:Lcom/google/android/youtube/core/async/SyncCallback;,"Lcom/google/android/youtube/core/async/SyncCallback<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/VideoStreams;>;"
    .end local v2           #response:Lcom/google/android/youtube/core/model/VideoStreams;
    .end local v4           #userAuth:Lcom/google/android/youtube/core/model/UserAuth;
    :catch_35
    move-exception v1

    .line 396
    .local v1, e:Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    instance-of v5, v5, Lcom/google/android/youtube/core/player/MissingStreamException;

    if-nez v5, :cond_44

    .line 397
    const-string v5, "Error polling streams for upload"

    invoke-static {v5, v1}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    .line 400
    :cond_44
    const-string v5, "Upload streams not found yet"

    invoke-static {v5}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 403
    .end local v1           #e:Ljava/util/concurrent/ExecutionException;
    :cond_4a
    iget-object v5, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v6, "UploadTranscodingWaitAbort"

    invoke-virtual {v5, v6}, Lcom/google/android/youtube/core/Analytics;->trackEvent(Ljava/lang/String;)V

    .line 404
    const-string v5, "Upload streams not found, polling aborted"

    invoke-static {v5}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    goto :goto_10
.end method

.method private complete(Lorg/apache/http/HttpResponse;)V
    .registers 8
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/transfer/TransferException;
        }
    .end annotation

    .prologue
    .line 433
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    iget-object v3, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;

    iget-object v3, v3, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->filePath:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->fileLength:J

    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;->onProgress(Ljava/lang/String;J)V

    .line 435
    :try_start_b
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->converter:Lcom/google/android/youtube/core/converter/http/VideoResponseConverter;

    invoke-virtual {v2, p1}, Lcom/google/android/youtube/core/converter/http/VideoResponseConverter;->convertResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Video;

    .line 436
    .local v1, video:Lcom/google/android/youtube/core/model/Video;
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;

    iget-object v2, v2, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->outputExtras:Landroid/os/Bundle;

    const-string v3, "video"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 437
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;

    iget-object v2, v2, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->inputExtras:Landroid/os/Bundle;

    const-string v3, "metadata_updated"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 438
    invoke-direct {p0, v1}, Lcom/google/android/youtube/core/transfer/UploadTask;->updateMetadata(Lcom/google/android/youtube/core/model/Video;)V
    :try_end_2b
    .catch Lcom/google/android/youtube/core/converter/ConverterException; {:try_start_b .. :try_end_2b} :catch_45

    .line 445
    .end local v1           #video:Lcom/google/android/youtube/core/model/Video;
    :goto_2b
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->gdataClient:Lcom/google/android/youtube/core/client/GDataClient;

    invoke-interface {v2}, Lcom/google/android/youtube/core/client/GDataClient;->evictMyUploads()V

    .line 446
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/UploadTask;->trackUploadCompleted()V

    .line 447
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    iget-object v3, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;

    iget-object v3, v3, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->filePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;

    iget-object v4, v4, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->outputExtras:Landroid/os/Bundle;

    invoke-interface {v2, v3, v4}, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;->onCompleted(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 448
    return-void

    .line 440
    .restart local v1       #video:Lcom/google/android/youtube/core/model/Video;
    :cond_41
    :try_start_41
    invoke-direct {p0, v1}, Lcom/google/android/youtube/core/transfer/UploadTask;->blockOnProcessing(Lcom/google/android/youtube/core/model/Video;)V
    :try_end_44
    .catch Lcom/google/android/youtube/core/converter/ConverterException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_2b

    .line 442
    .end local v1           #video:Lcom/google/android/youtube/core/model/Video;
    :catch_45
    move-exception v0

    .line 443
    .local v0, e:Lcom/google/android/youtube/core/converter/ConverterException;
    const-string v2, "error parsing uploaded video"

    invoke-static {v2, v0}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2b
.end method

.method private consume(Lorg/apache/http/HttpResponse;)V
    .registers 3
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 358
    .local v0, httpEntity:Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_9

    .line 359
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 361
    :cond_9
    return-void
.end method

.method private doUpload()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Lcom/google/android/youtube/core/transfer/TransferException;
        }
    .end annotation

    .prologue
    .line 187
    iget-boolean v7, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->canceled:Z

    if-eqz v7, :cond_34

    .line 188
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Upload cancelled before the task started ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;

    iget-object v8, v8, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->filePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 190
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/UploadTask;->maybeCallOnCancel()V

    .line 253
    :cond_33
    :goto_33
    return-void

    .line 193
    :cond_34
    new-instance v0, Ljava/io/File;

    iget-object v7, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;

    iget-object v7, v7, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->filePath:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_4c

    .line 195
    new-instance v7, Lcom/google/android/youtube/core/transfer/TransferException;

    const-string v8, "file not found"

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    throw v7

    .line 197
    :cond_4c
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_5b

    .line 198
    new-instance v7, Lcom/google/android/youtube/core/transfer/TransferException;

    const-string v8, "file is a directory"

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    throw v7

    .line 200
    :cond_5b
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->fileLength:J

    .line 201
    iget-object v7, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    iget-object v8, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;

    iget-object v8, v8, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->filePath:Ljava/lang/String;

    iget-wide v9, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->fileLength:J

    invoke-interface {v7, v8, v9, v10}, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;->onSize(Ljava/lang/String;J)V

    .line 202
    iget-wide v7, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->fileLength:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_7d

    .line 203
    new-instance v7, Lcom/google/android/youtube/core/transfer/TransferException;

    const-string v8, "file is empty"

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    throw v7

    .line 206
    :cond_7d
    iget-boolean v7, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->canceled:Z

    if-eqz v7, :cond_85

    .line 207
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/UploadTask;->maybeCallOnCancel()V

    goto :goto_33

    .line 210
    :cond_85
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->beforeFirstRequest:Z

    .line 211
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/UploadTask;->requestRange()Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 212
    .local v1, rangeResponse:Lorg/apache/http/HttpResponse;
    iget-boolean v7, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->canceled:Z

    if-nez v7, :cond_92

    if-nez v1, :cond_96

    .line 213
    :cond_92
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/UploadTask;->maybeCallOnCancel()V

    goto :goto_33

    .line 216
    :cond_96
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 217
    .local v2, rangeStatusCode:I
    const/16 v7, 0x134

    if-ne v2, v7, :cond_12c

    .line 218
    invoke-direct {p0, v1}, Lcom/google/android/youtube/core/transfer/UploadTask;->consume(Lorg/apache/http/HttpResponse;)V

    .line 219
    const-string v7, "range"

    invoke-interface {v1, v7}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/google/android/youtube/core/transfer/UploadTask;->parseRangeHeaderLastByte(Lorg/apache/http/Header;)J

    move-result-wide v3

    .line 220
    .local v3, sentByte:J
    iget-object v8, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->currentRequestLock:Ljava/lang/Object;

    monitor-enter v8

    .line 221
    :try_start_b2
    iput-wide v3, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->numBytesUploaded:J

    .line 222
    monitor-exit v8
    :try_end_b5
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_cf

    .line 225
    iget-object v7, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;

    iget-object v7, v7, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->inputExtras:Landroid/os/Bundle;

    const-string v8, "metadata_updated"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-direct {p0, v0, v3, v4, v7}, Lcom/google/android/youtube/core/transfer/UploadTask;->requestUpload(Ljava/io/File;JZ)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 227
    .local v5, uploadResponse:Lorg/apache/http/HttpResponse;
    iget-boolean v7, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->canceled:Z

    if-nez v7, :cond_ca

    if-nez v5, :cond_d2

    .line 228
    :cond_ca
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/UploadTask;->maybeCallOnCancel()V

    goto/16 :goto_33

    .line 222
    .end local v5           #uploadResponse:Lorg/apache/http/HttpResponse;
    :catchall_cf
    move-exception v7

    :try_start_d0
    monitor-exit v8
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_cf

    throw v7

    .line 231
    .restart local v5       #uploadResponse:Lorg/apache/http/HttpResponse;
    :cond_d2
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 232
    .local v6, uploadStatusCode:I
    const/16 v7, 0xc8

    if-eq v6, v7, :cond_e2

    const/16 v7, 0xc9

    if-ne v6, v7, :cond_e7

    .line 233
    :cond_e2
    invoke-direct {p0, v5}, Lcom/google/android/youtube/core/transfer/UploadTask;->complete(Lorg/apache/http/HttpResponse;)V

    goto/16 :goto_33

    .line 234
    :cond_e7
    const/16 v7, 0x134

    if-ne v6, v7, :cond_10f

    .line 235
    invoke-direct {p0, v5}, Lcom/google/android/youtube/core/transfer/UploadTask;->consume(Lorg/apache/http/HttpResponse;)V

    .line 239
    iget-object v7, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;

    iget-object v7, v7, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->inputExtras:Landroid/os/Bundle;

    const-string v8, "metadata_updated"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_33

    iget-wide v7, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->numBytesUploaded:J

    iget-wide v9, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->fileLength:J

    const-wide/16 v11, 0x2

    sub-long/2addr v9, v11

    cmp-long v7, v7, v9

    if-gez v7, :cond_33

    .line 241
    new-instance v7, Lcom/google/android/youtube/core/transfer/TransferException;

    const-string v8, "upload request got http status: 308"

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    throw v7

    .line 244
    :cond_10f
    invoke-direct {p0, v5}, Lcom/google/android/youtube/core/transfer/UploadTask;->consume(Lorg/apache/http/HttpResponse;)V

    .line 245
    new-instance v7, Lcom/google/android/youtube/core/transfer/TransferException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "upload request got http status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    throw v7

    .line 247
    .end local v3           #sentByte:J
    .end local v5           #uploadResponse:Lorg/apache/http/HttpResponse;
    .end local v6           #uploadStatusCode:I
    :cond_12c
    const/16 v7, 0xc8

    if-eq v2, v7, :cond_134

    const/16 v7, 0xc9

    if-ne v2, v7, :cond_139

    .line 248
    :cond_134
    invoke-direct {p0, v1}, Lcom/google/android/youtube/core/transfer/UploadTask;->complete(Lorg/apache/http/HttpResponse;)V

    goto/16 :goto_33

    .line 250
    :cond_139
    invoke-direct {p0, v1}, Lcom/google/android/youtube/core/transfer/UploadTask;->consume(Lorg/apache/http/HttpResponse;)V

    .line 251
    new-instance v7, Lcom/google/android/youtube/core/transfer/TransferException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "range request got http status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    throw v7
.end method

.method private getUserAuth()Lcom/google/android/youtube/core/model/UserAuth;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 416
    iget-object v4, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->accountName:Ljava/lang/String;

    if-nez v4, :cond_7

    move-object v2, v3

    .line 428
    :cond_6
    :goto_6
    return-object v2

    .line 419
    :cond_7
    new-instance v0, Lcom/google/android/youtube/core/async/SyncAuthenticatee;

    invoke-direct {v0}, Lcom/google/android/youtube/core/async/SyncAuthenticatee;-><init>()V

    .line 420
    .local v0, authenticatee:Lcom/google/android/youtube/core/async/SyncAuthenticatee;
    iget-object v4, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v4, v0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->peek(Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V

    .line 422
    :try_start_11
    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/SyncAuthenticatee;->getUserAuth()Lcom/google/android/youtube/core/model/UserAuth;

    move-result-object v2

    .line 423
    .local v2, userAuth:Lcom/google/android/youtube/core/model/UserAuth;
    if-eqz v2, :cond_21

    iget-object v4, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->accountName:Ljava/lang/String;

    iget-object v5, v2, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_11 .. :try_end_1e} :catch_23

    move-result v4

    if-nez v4, :cond_6

    :cond_21
    move-object v2, v3

    .line 424
    goto :goto_6

    .line 427
    .end local v2           #userAuth:Lcom/google/android/youtube/core/model/UserAuth;
    :catch_23
    move-exception v1

    .local v1, e:Ljava/util/concurrent/ExecutionException;
    move-object v2, v3

    .line 428
    goto :goto_6
.end method

.method private maybeAbortCurrentRequest()V
    .registers 9

    .prologue
    .line 333
    iget-object v3, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->currentRequestLock:Ljava/lang/Object;

    monitor-enter v3

    .line 338
    :try_start_3
    iget-wide v4, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->fileLength:J

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;

    iget-object v2, v2, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->inputExtras:Landroid/os/Bundle;

    const-string v6, "metadata_updated"

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2f

    const/4 v2, 0x0

    :goto_13
    int-to-long v6, v2

    sub-long v0, v4, v6

    .line 340
    .local v0, expectedEndOfTransfer:J
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->currentRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->currentRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v2

    if-nez v2, :cond_31

    iget-wide v4, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->numBytesUploaded:J

    cmp-long v2, v4, v0

    if-gez v2, :cond_31

    .line 342
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->currentRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 346
    :goto_2d
    monitor-exit v3

    .line 347
    return-void

    .line 338
    .end local v0           #expectedEndOfTransfer:J
    :cond_2f
    const/4 v2, 0x2

    goto :goto_13

    .line 344
    .restart local v0       #expectedEndOfTransfer:J
    :cond_31
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/UploadTask;->maybeCallOnCancel()V

    goto :goto_2d

    .line 346
    .end local v0           #expectedEndOfTransfer:J
    :catchall_35
    move-exception v2

    monitor-exit v3
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v2
.end method

.method private maybeCallOnCancel()V
    .registers 3

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->cancelCalled:Z

    if-nez v0, :cond_10

    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->cancelCalled:Z

    .line 352
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;

    iget-object v1, v1, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->filePath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;->onCanceled(Ljava/lang/String;)V

    .line 354
    :cond_10
    return-void
.end method

.method private parseRangeHeaderLastByte(Lorg/apache/http/Header;)J
    .registers 8
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 364
    if-nez p1, :cond_5

    .line 365
    const-wide/16 v2, -0x1

    .line 372
    :goto_4
    return-wide v2

    .line 367
    :cond_5
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, value:Ljava/lang/String;
    sget-object v2, Lcom/google/android/youtube/core/transfer/UploadTask;->RE_RANGE_HEADER:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 369
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_27

    .line 370
    new-instance v2, Ljava/io/IOException;

    const-string v3, "malformed range header=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 372
    :cond_27
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_4
.end method

.method private requestRange()Lorg/apache/http/HttpResponse;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/transfer/TransferException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 310
    new-instance v1, Lorg/apache/http/client/methods/HttpPut;

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;

    iget-object v2, v2, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->networkUri:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 311
    .local v1, request:Lorg/apache/http/client/methods/HttpPut;
    const-string v2, "Content-Range"

    const-string v3, "bytes */*"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v3, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->currentRequestLock:Ljava/lang/Object;

    monitor-enter v3

    .line 313
    :try_start_14
    iput-object v1, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->currentRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 314
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_20

    .line 316
    :try_start_17
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->httpClient:Lorg/apache/http/client/HttpClient;

    iget-object v3, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->currentRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1e
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_17 .. :try_end_1e} :catch_23
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1e} :catch_2d

    move-result-object v2

    .line 324
    :goto_1f
    return-object v2

    .line 314
    :catchall_20
    move-exception v2

    :try_start_21
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v2

    .line 317
    :catch_23
    move-exception v0

    .line 318
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/UploadTask;->maybeAbortCurrentRequest()V

    .line 319
    new-instance v2, Lcom/google/android/youtube/core/transfer/TransferException;

    invoke-direct {v2, v0, v4}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    throw v2

    .line 320
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_2d
    move-exception v0

    .line 321
    .local v0, e:Ljava/io/IOException;
    iget-object v3, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->currentRequestLock:Ljava/lang/Object;

    monitor-enter v3

    .line 322
    :try_start_31
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->currentRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 323
    const-string v2, "Range request was aborted"

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 324
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_1f

    .line 328
    :catchall_41
    move-exception v2

    monitor-exit v3
    :try_end_43
    .catchall {:try_start_31 .. :try_end_43} :catchall_41

    throw v2

    .line 326
    :cond_44
    :try_start_44
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->currentRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 327
    new-instance v2, Lcom/google/android/youtube/core/transfer/TransferException;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    throw v2
    :try_end_50
    .catchall {:try_start_44 .. :try_end_50} :catchall_41
.end method

.method private requestUpload(Ljava/io/File;JZ)Lorg/apache/http/HttpResponse;
    .registers 22
    .parameter "file"
    .parameter "sentByte"
    .parameter "uploadAll"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/transfer/TransferException;
        }
    .end annotation

    .prologue
    .line 257
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/youtube/core/transfer/UploadTask;->canceled:Z

    if-eqz v3, :cond_8

    .line 258
    const/4 v3, 0x0

    .line 301
    :goto_7
    return-object v3

    .line 260
    :cond_8
    const-wide/16 v5, 0x1

    add-long v12, p2, v5

    .line 261
    .local v12, nextByte:J
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/google/android/youtube/core/transfer/UploadTask;->fileLength:J

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    if-eqz p4, :cond_30

    const/4 v3, 0x0

    :goto_16
    int-to-long v7, v3

    sub-long v10, v5, v7

    .line 263
    .local v10, lastByte:J
    if-nez p4, :cond_32

    cmp-long v3, v12, v10

    if-lez v3, :cond_32

    .line 264
    new-instance v3, Lorg/apache/http/message/BasicHttpResponse;

    new-instance v5, Lorg/apache/http/message/BasicStatusLine;

    sget-object v6, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    const/16 v7, 0x134

    const-string v8, "Already uploaded all possible content for a gated upload."

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    invoke-direct {v3, v5}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;)V

    goto :goto_7

    .line 261
    .end local v10           #lastByte:J
    :cond_30
    const/4 v3, 0x1

    goto :goto_16

    .line 268
    .restart local v10       #lastByte:J
    :cond_32
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/core/transfer/UploadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/core/transfer/UploadTask;->transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;

    iget-object v5, v5, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->filePath:Ljava/lang/String;

    move-wide/from16 v0, p2

    invoke-interface {v3, v5, v0, v1}, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;->onProgress(Ljava/lang/String;J)V

    .line 269
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/core/transfer/UploadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/core/transfer/UploadTask;->transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;

    iget-object v5, v5, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->filePath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/youtube/core/transfer/UploadTask;->fileLength:J

    invoke-interface {v3, v5, v6, v7}, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;->onSize(Ljava/lang/String;J)V

    .line 271
    new-instance v14, Lorg/apache/http/client/methods/HttpPut;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/core/transfer/UploadTask;->transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;

    iget-object v3, v3, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->networkUri:Ljava/lang/String;

    invoke-direct {v14, v3}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 272
    .local v14, request:Lorg/apache/http/client/methods/HttpPut;
    const-string v3, "Content-Type"

    const-string v5, "application/octet-stream"

    invoke-virtual {v14, v3, v5}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v3, "Content-Range"

    const-string v5, "bytes %d-%d/%d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/google/android/youtube/core/transfer/UploadTask;->fileLength:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v3, v5}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :try_start_8b
    new-instance v4, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 279
    .local v4, fis:Ljava/io/FileInputStream;
    invoke-virtual {v4, v12, v13}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v5

    cmp-long v3, v5, v12

    if-eqz v3, :cond_ab

    .line 280
    new-instance v3, Lcom/google/android/youtube/core/transfer/TransferException;

    const-string v5, "unable to skip to upload position"

    const/4 v6, 0x1

    invoke-direct {v3, v5, v6}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    throw v3
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_a3} :catch_a3

    .line 282
    .end local v4           #fis:Ljava/io/FileInputStream;
    :catch_a3
    move-exception v9

    .line 283
    .local v9, e:Ljava/io/IOException;
    new-instance v3, Lcom/google/android/youtube/core/transfer/TransferException;

    const/4 v5, 0x1

    invoke-direct {v3, v9, v5}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    throw v3

    .line 287
    .end local v9           #e:Ljava/io/IOException;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :cond_ab
    :try_start_ab
    new-instance v2, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressEntity;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/google/android/youtube/core/transfer/UploadTask;->fileLength:J

    sub-long/2addr v5, v12

    if-eqz p4, :cond_d9

    const/4 v3, 0x0

    :goto_b5
    int-to-long v7, v3

    sub-long/2addr v5, v7

    move-object/from16 v3, p0

    move-wide/from16 v7, p2

    invoke-direct/range {v2 .. v8}, Lcom/google/android/youtube/core/transfer/UploadTask$ProgressEntity;-><init>(Lcom/google/android/youtube/core/transfer/UploadTask;Ljava/io/InputStream;JJ)V

    .line 289
    .local v2, entity:Lorg/apache/http/HttpEntity;
    invoke-virtual {v14, v2}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/core/transfer/UploadTask;->currentRequestLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_c6
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_ab .. :try_end_c6} :catch_de
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_c6} :catch_e9

    .line 291
    :try_start_c6
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/android/youtube/core/transfer/UploadTask;->currentRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 292
    monitor-exit v5
    :try_end_cb
    .catchall {:try_start_c6 .. :try_end_cb} :catchall_db

    .line 293
    :try_start_cb
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/core/transfer/UploadTask;->httpClient:Lorg/apache/http/client/HttpClient;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/core/transfer/UploadTask;->currentRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v3, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_d6
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_cb .. :try_end_d6} :catch_de
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_d6} :catch_e9

    move-result-object v3

    goto/16 :goto_7

    .line 287
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    :cond_d9
    const/4 v3, 0x1

    goto :goto_b5

    .line 292
    .restart local v2       #entity:Lorg/apache/http/HttpEntity;
    :catchall_db
    move-exception v3

    :try_start_dc
    monitor-exit v5
    :try_end_dd
    .catchall {:try_start_dc .. :try_end_dd} :catchall_db

    :try_start_dd
    throw v3
    :try_end_de
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_dd .. :try_end_de} :catch_de
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_de} :catch_e9

    .line 294
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    :catch_de
    move-exception v9

    .line 295
    .local v9, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/youtube/core/transfer/UploadTask;->maybeAbortCurrentRequest()V

    .line 296
    new-instance v3, Lcom/google/android/youtube/core/transfer/TransferException;

    const/4 v5, 0x0

    invoke-direct {v3, v9, v5}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    throw v3

    .line 297
    .end local v9           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_e9
    move-exception v9

    .line 298
    .local v9, e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/core/transfer/UploadTask;->currentRequestLock:Ljava/lang/Object;

    monitor-enter v5

    .line 299
    :try_start_ef
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/core/transfer/UploadTask;->currentRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v3

    if-eqz v3, :cond_105

    .line 300
    const-string v3, "Upload request was aborted"

    invoke-static {v3}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 301
    const/4 v3, 0x0

    monitor-exit v5

    goto/16 :goto_7

    .line 305
    :catchall_102
    move-exception v3

    monitor-exit v5
    :try_end_104
    .catchall {:try_start_ef .. :try_end_104} :catchall_102

    throw v3

    .line 303
    :cond_105
    :try_start_105
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/core/transfer/UploadTask;->currentRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 304
    new-instance v3, Lcom/google/android/youtube/core/transfer/TransferException;

    const/4 v6, 0x0

    invoke-direct {v3, v9, v6}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    throw v3
    :try_end_113
    .catchall {:try_start_105 .. :try_end_113} :catchall_102
.end method

.method private sendNotification(Lcom/google/android/youtube/core/model/Video;)V
    .registers 16
    .parameter "video"

    .prologue
    const v11, 0x7f0b0040

    const/4 v13, 0x1

    .line 494
    const v3, 0x7f020020

    .line 495
    .local v3, icon:I
    iget-object v10, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->context:Landroid/content/Context;

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 496
    .local v7, tickerText:Ljava/lang/String;
    iget-object v10, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->context:Landroid/content/Context;

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 497
    .local v6, notificationTitle:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 498
    .local v8, when:J
    iget-object v2, p1, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    .line 500
    .local v2, contentText:Ljava/lang/CharSequence;
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "http://www.youtube.com/watch?v="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v5, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 502
    .local v5, notificationIntent:Landroid/content/Intent;
    iget-object v10, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v10

    const/high16 v11, 0x1000

    or-int/2addr v10, v11

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 504
    const-string v10, "authenticate"

    invoke-virtual {v5, v10, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 505
    const-string v10, "uploader_notification"

    invoke-virtual {v5, v10, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 507
    iget-object v10, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->context:Landroid/content/Context;

    const/4 v11, 0x0

    const/high16 v12, 0x4000

    invoke-static {v10, v11, v5, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 511
    .local v1, contentIntent:Landroid/app/PendingIntent;
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4, v3, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 512
    .local v4, notification:Landroid/app/Notification;
    iget-object v10, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->context:Landroid/content/Context;

    invoke-virtual {v4, v10, v6, v2, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 513
    const/16 v10, 0x10

    iput v10, v4, Landroid/app/Notification;->flags:I

    .line 515
    iget-object v10, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 516
    .local v0, UPLOAD_FINISHED_ID:I
    iget-object v10, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->notificationManager:Landroid/app/NotificationManager;

    iget-object v11, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v10, v11, v0, v4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 517
    return-void
.end method

.method private trackUploadCompleted()V
    .registers 9

    .prologue
    const-wide/16 v0, -0x1

    .line 488
    iget-object v4, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;

    iget-object v4, v4, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->inputExtras:Landroid/os/Bundle;

    const-string v5, "upload_start_time_millis"

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 489
    .local v2, startTime:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v2

    .line 490
    .local v0, elapsedTime:J
    :cond_18
    iget-object v4, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v5, "UploadCompleted"

    const/4 v6, 0x0

    long-to-int v7, v0

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/youtube/core/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;I)V

    .line 491
    return-void
.end method

.method private updateMetadata(Lcom/google/android/youtube/core/model/Video;)V
    .registers 18
    .parameter "video"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/transfer/TransferException;
        }
    .end annotation

    .prologue
    .line 452
    :try_start_0
    const-string v1, "Executing metadata update"

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 453
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/core/transfer/UploadTask;->transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;

    iget-object v1, v1, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->inputExtras:Landroid/os/Bundle;

    const-string v2, "upload_title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/core/transfer/UploadTask;->transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;

    iget-object v2, v2, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->inputExtras:Landroid/os/Bundle;

    const-string v3, "upload_description"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/youtube/core/model/Video;->categoryTerm:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/youtube/core/model/Video;->categoryLabel:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/core/transfer/UploadTask;->transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;

    iget-object v5, v5, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->inputExtras:Landroid/os/Bundle;

    const-string v6, "upload_keywords"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/core/transfer/UploadTask;->transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;

    iget-object v6, v6, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->inputExtras:Landroid/os/Bundle;

    const-string v7, "upload_privacy"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/google/android/youtube/core/model/Video$Privacy;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/youtube/core/model/Video;->accessControl:Ljava/util/Map;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/google/android/youtube/core/model/Video;->location:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/youtube/core/transfer/UploadTask;->transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;

    iget-object v9, v9, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->inputExtras:Landroid/os/Bundle;

    const-string v10, "upload_location"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/google/android/youtube/core/model/Video;->editUri:Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/youtube/core/transfer/UploadTask;->getUserAuth()Lcom/google/android/youtube/core/model/UserAuth;

    move-result-object v11

    invoke-static/range {v1 .. v11}, Lcom/google/android/youtube/core/async/GDataRequests;->getEditMetadataRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/Video$Privacy;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v14

    .line 466
    .local v14, request:Lcom/google/android/youtube/core/async/GDataRequest;
    new-instance v12, Lcom/google/android/youtube/core/async/SyncCallback;

    invoke-direct {v12}, Lcom/google/android/youtube/core/async/SyncCallback;-><init>()V

    .line 468
    .local v12, callback:Lcom/google/android/youtube/core/async/SyncCallback;,"Lcom/google/android/youtube/core/async/SyncCallback<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Video;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/core/transfer/UploadTask;->gdataClient:Lcom/google/android/youtube/core/client/GDataClient;

    invoke-interface {v1, v14, v12}, Lcom/google/android/youtube/core/client/GDataClient;->editMetadata(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Callback;)V

    .line 469
    invoke-virtual {v12}, Lcom/google/android/youtube/core/async/SyncCallback;->getResponse()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/youtube/core/model/Video;

    .line 471
    .local v15, response:Lcom/google/android/youtube/core/model/Video;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/android/youtube/core/transfer/UploadTask;->blockOnProcessing(Lcom/google/android/youtube/core/model/Video;)V
    :try_end_76
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_76} :catch_77

    .line 475
    return-void

    .line 472
    .end local v12           #callback:Lcom/google/android/youtube/core/async/SyncCallback;,"Lcom/google/android/youtube/core/async/SyncCallback<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Video;>;"
    .end local v14           #request:Lcom/google/android/youtube/core/async/GDataRequest;
    .end local v15           #response:Lcom/google/android/youtube/core/model/Video;
    :catch_77
    move-exception v13

    .line 473
    .local v13, e:Ljava/util/concurrent/ExecutionException;
    new-instance v1, Lcom/google/android/youtube/core/transfer/TransferException;

    const-string v2, "Error updating video metadata after upload"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    throw v1
.end method

.method private waitUntilTimeForNextTranscodingPoll()V
    .registers 4

    .prologue
    .line 409
    const-wide/16 v1, 0x7530

    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_6

    .line 413
    :goto_5
    return-void

    .line 410
    :catch_6
    move-exception v0

    .line 411
    .local v0, e:Ljava/lang/InterruptedException;
    goto :goto_5
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->canceled:Z

    .line 173
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->beforeFirstRequest:Z

    if-nez v0, :cond_a

    .line 174
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/UploadTask;->abortCurrentRequest()V

    .line 176
    :cond_a
    return-void
.end method

.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 151
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upload starting ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;

    iget-object v2, v2, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 152
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/UploadTask;->doUpload()V
    :try_end_30
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_1 .. :try_end_30} :catch_31
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_30} :catch_46
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_30} :catch_67
    .catch Lcom/google/android/youtube/core/transfer/TransferException; {:try_start_1 .. :try_end_30} :catch_87

    .line 169
    :goto_30
    return-void

    .line 153
    :catch_31
    move-exception v0

    .line 154
    .local v0, e:Lorg/apache/http/conn/HttpHostConnectException;
    const-string v1, "failure uploading"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;

    iget-object v2, v2, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->filePath:Ljava/lang/String;

    new-instance v3, Lcom/google/android/youtube/core/transfer/TransferException;

    invoke-direct {v3, v0, v4}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    invoke-interface {v1, v2, v3}, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;->onError(Ljava/lang/String;Lcom/google/android/youtube/core/transfer/TransferException;)V

    goto :goto_30

    .line 156
    .end local v0           #e:Lorg/apache/http/conn/HttpHostConnectException;
    :catch_46
    move-exception v0

    .line 157
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    const-string v1, "FATAL failure uploading"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v2, "UploadFatalError"

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/core/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;

    iget-object v2, v2, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->filePath:Ljava/lang/String;

    new-instance v3, Lcom/google/android/youtube/core/transfer/TransferException;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    invoke-interface {v1, v2, v3}, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;->onError(Ljava/lang/String;Lcom/google/android/youtube/core/transfer/TransferException;)V

    goto :goto_30

    .line 160
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_67
    move-exception v0

    .line 161
    .local v0, e:Ljava/io/IOException;
    const-string v1, "failure uploading"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v2, "UploadError"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/core/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;

    iget-object v2, v2, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->filePath:Ljava/lang/String;

    new-instance v3, Lcom/google/android/youtube/core/transfer/TransferException;

    invoke-direct {v3, v0, v4}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    invoke-interface {v1, v2, v3}, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;->onError(Ljava/lang/String;Lcom/google/android/youtube/core/transfer/TransferException;)V

    goto :goto_30

    .line 164
    .end local v0           #e:Ljava/io/IOException;
    :catch_87
    move-exception v0

    .line 165
    .local v0, e:Lcom/google/android/youtube/core/transfer/TransferException;
    const-string v1, "failure uploading"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v2, "UploadError"

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/TransferException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/core/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->listener:Lcom/google/android/youtube/core/transfer/TransferTask$Listener;

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/UploadTask;->transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;

    iget-object v2, v2, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->filePath:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/google/android/youtube/core/transfer/TransferTask$Listener;->onError(Ljava/lang/String;Lcom/google/android/youtube/core/transfer/TransferException;)V

    goto :goto_30
.end method
