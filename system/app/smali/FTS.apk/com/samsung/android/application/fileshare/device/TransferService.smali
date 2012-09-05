.class public Lcom/samsung/android/application/fileshare/device/TransferService;
.super Ljava/lang/Object;
.source "TransferService.java"

# interfaces
.implements Lcom/samsung/upnp/control/ActionListener;
.implements Lcom/samsung/upnp/control/QueryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/application/fileshare/device/TransferService$DefaultSenderInfo;,
        Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;,
        Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;
    }
.end annotation


# instance fields
.field mAvaiableSessionCount:I

.field mFileGetter:Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;

.field mParentDevice:Lcom/samsung/android/application/fileshare/device/TransferDevice;

.field mRandom:Ljava/util/Random;

.field mSessionListener:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ISessionRequestReceivedListener;

.field mSessionListenerMutex:Ljava/lang/Object;

.field mSessions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field mSessionsMutex:Ljava/lang/Object;

.field mTransferListener:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ITransferStateListener;

.field mTransferListenerMutex:Ljava/lang/Object;

.field mTransferStatus:Lcom/samsung/upnp/StateVariable;

.field mTransferTimeout:J

.field mWorkerHandler:Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;

.field mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Lcom/samsung/android/application/fileshare/device/TransferDevice;)V
    .registers 4
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const v0, 0x7fffffff

    iput v0, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mAvaiableSessionCount:I

    .line 64
    iput-object v1, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mTransferStatus:Lcom/samsung/upnp/StateVariable;

    .line 65
    iput-object v1, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mRandom:Ljava/util/Random;

    .line 66
    iput-object v1, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mFileGetter:Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;

    .line 67
    iput-object v1, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mWorkerThread:Landroid/os/HandlerThread;

    .line 68
    iput-object v1, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mWorkerHandler:Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;

    .line 69
    iput-object v1, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mParentDevice:Lcom/samsung/android/application/fileshare/device/TransferDevice;

    .line 70
    iput-object v1, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mSessionListener:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ISessionRequestReceivedListener;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mSessionListenerMutex:Ljava/lang/Object;

    .line 72
    iput-object v1, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mTransferListener:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ITransferStateListener;

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mTransferListenerMutex:Ljava/lang/Object;

    .line 74
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mSessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mSessionsMutex:Ljava/lang/Object;

    .line 76
    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mTransferTimeout:J

    .line 83
    invoke-virtual {p0, p1}, Lcom/samsung/android/application/fileshare/device/TransferService;->setParentDevice(Lcom/samsung/android/application/fileshare/device/TransferDevice;)V

    .line 84
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mRandom:Ljava/util/Random;

    .line 85
    new-instance v0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;

    invoke-direct {v0}, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mFileGetter:Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;

    .line 86
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Transfer Service Worker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mWorkerThread:Landroid/os/HandlerThread;

    .line 87
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 88
    new-instance v0, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;

    iget-object v1, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;-><init>(Lcom/samsung/android/application/fileshare/device/TransferService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mWorkerHandler:Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;

    .line 89
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mFileGetter:Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;

    iget-object v1, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mWorkerHandler:Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->setFileEventHandler(Landroid/os/Handler;)V

    .line 90
    return-void
.end method

.method private actionCancelSessionReceived(Lcom/samsung/upnp/Action;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 328
    const-string v0, "SessionID"

    invoke-virtual {p1, v0}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v0

    .line 329
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/samsung/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_15

    :cond_13
    move v0, v1

    .line 343
    :goto_14
    return v0

    .line 332
    :cond_15
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mSessionsMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 333
    :try_start_18
    iget-object v3, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/samsung/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;

    .line 334
    if-nez v0, :cond_29

    .line 335
    monitor-exit v2

    move v0, v1

    goto :goto_14

    .line 338
    :cond_29
    iget-object v1, v0, Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;->mSessionID:Ljava/lang/String;

    const-string v3, "CANCELED"

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/application/fileshare/device/TransferService;->setTransferStatus(Ljava/lang/String;Ljava/lang/String;)Z

    .line 339
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mWorkerHandler:Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;

    const/16 v3, 0x1581

    iget-object v4, v0, Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;->mSender:Lcom/samsung/android/application/fileshare/api/SenderInfo;

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 340
    iget-object v3, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mWorkerHandler:Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;

    const-wide/16 v4, 0xa

    invoke-virtual {v3, v1, v4, v5}, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 342
    const-string v1, "[FT]-Stack"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cancel Session Action is successfuly responsed.: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;->mSessionID:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    monitor-exit v2

    const/4 v0, 0x1

    goto :goto_14

    .line 332
    :catchall_5a
    move-exception v0

    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_18 .. :try_end_5c} :catchall_5a

    throw v0
.end method

.method private actionCloseSessionReceived(Lcom/samsung/upnp/Action;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 301
    const-string v0, "SessionID"

    invoke-virtual {p1, v0}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v0

    .line 302
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/samsung/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_15

    :cond_13
    move v0, v1

    .line 324
    :goto_14
    return v0

    .line 305
    :cond_15
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mSessionsMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 306
    :try_start_18
    iget-object v3, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/samsung/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;

    .line 307
    if-nez v0, :cond_29

    .line 308
    monitor-exit v2

    move v0, v1

    goto :goto_14

    .line 310
    :cond_29
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mWorkerHandler:Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;

    const/16 v3, 0x1580

    iget-object v0, v0, Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;->mSender:Lcom/samsung/android/application/fileshare/api/SenderInfo;

    invoke-virtual {v1, v3, v0}, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 321
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mWorkerHandler:Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;

    const-wide/16 v3, 0xa

    invoke-virtual {v1, v0, v3, v4}, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 305
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_18 .. :try_end_40} :catchall_49

    .line 323
    const-string v0, "[FT]-Stack"

    const-string v1, "Close Session Action is successfuly responsed."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v0, 0x1

    goto :goto_14

    .line 305
    :catchall_49
    move-exception v0

    :try_start_4a
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v0
.end method

.method private actionCreateSessionReceievd(Lcom/samsung/upnp/Action;)Z
    .registers 13
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 249
    iget v1, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mAvaiableSessionCount:I

    if-gtz v1, :cond_14

    .line 250
    const/16 v1, 0x2ca

    const-string v2, "Can not initiate another sessioned"

    invoke-virtual {p1, v1, v2}, Lcom/samsung/upnp/Action;->setStatus(ILjava/lang/String;)V

    .line 251
    const-string v1, "[FT]-Stack"

    const-string v2, "Can not initiate another sessioned"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :goto_13
    return v0

    .line 254
    :cond_14
    const-string v1, "SessionID"

    invoke-virtual {p1, v1}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v9

    .line 255
    const-string v1, "SenderFriendlyName"

    invoke-virtual {p1, v1}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v1

    .line 256
    const-string v2, "Message"

    invoke-virtual {p1, v2}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v4

    .line 257
    const-string v2, "TransportDescription"

    invoke-virtual {p1, v2}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v5

    .line 258
    const-string v2, "TotalBytes"

    invoke-virtual {p1, v2}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v6

    .line 259
    const-string v2, "TotalCount"

    invoke-virtual {p1, v2}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v10

    .line 261
    if-eqz v9, :cond_44

    if-eqz v1, :cond_44

    if-eqz v4, :cond_44

    if-eqz v6, :cond_44

    if-eqz v10, :cond_44

    if-nez v5, :cond_5a

    .line 262
    :cond_44
    const-string v1, "[FT]-Stack"

    const-string v2, "invalid create session request."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const-string v1, "[FT]-Stack"

    const-string v2, "SessionIDis required."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const-string v1, "[FT]-Stack"

    const-string v2, "SenderFriendlyNameis required."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 269
    :cond_5a
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mRandom:Ljava/util/Random;

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 270
    invoke-virtual {v1}, Lcom/samsung/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 271
    invoke-virtual {v4}, Lcom/samsung/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 272
    invoke-virtual {v5}, Lcom/samsung/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 273
    invoke-virtual {v6}, Lcom/samsung/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 274
    invoke-virtual {v10}, Lcom/samsung/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 276
    new-instance v0, Lcom/samsung/android/application/fileshare/device/TransferService$DefaultSenderInfo;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/application/fileshare/device/TransferService$DefaultSenderInfo;-><init>(Lcom/samsung/android/application/fileshare/device/TransferService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 279
    new-instance v1, Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;

    invoke-direct {v1, p0, v2, v0}, Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;-><init>(Lcom/samsung/android/application/fileshare/device/TransferService;Ljava/lang/String;Lcom/samsung/android/application/fileshare/api/SenderInfo;)V

    .line 281
    iget-object v3, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mSessionsMutex:Ljava/lang/Object;

    monitor-enter v3

    .line 282
    :try_start_99
    iget-object v4, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    monitor-exit v3
    :try_end_9f
    .catchall {:try_start_99 .. :try_end_9f} :catchall_c8

    .line 285
    invoke-virtual {v9, v2}, Lcom/samsung/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mWorkerHandler:Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;

    const/16 v3, 0x157f

    invoke-virtual {v1, v3, v0}, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 289
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mWorkerHandler:Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;

    const-wide/16 v3, 0xa

    invoke-virtual {v1, v0, v3, v4}, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 290
    const-string v0, "[FT]-Stack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Create Session Action is successfuly responsed : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const/4 v0, 0x1

    goto/16 :goto_13

    .line 281
    :catchall_c8
    move-exception v0

    :try_start_c9
    monitor-exit v3
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_c8

    throw v0
.end method

.method private actionTransportItemReceived(Lcom/samsung/upnp/Action;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 354
    const-string v0, "SessionID"

    invoke-virtual {p1, v0}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v0

    .line 355
    const-string v2, "ItemDescriptor"

    invoke-virtual {p1, v2}, Lcom/samsung/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/samsung/upnp/Argument;

    move-result-object v2

    .line 357
    if-eqz v0, :cond_11

    if-nez v2, :cond_1a

    .line 358
    :cond_11
    const-string v0, "[FT]-Stack"

    const-string v2, "Send Item Action is invoked with invalid action arguments"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 405
    :goto_19
    return v0

    .line 362
    :cond_1a
    invoke-virtual {v2}, Lcom/samsung/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 363
    invoke-virtual {v0}, Lcom/samsung/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 367
    invoke-static {v2}, Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;->parseString(Ljava/lang/String;)Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;

    move-result-object v2

    .line 368
    if-nez v2, :cond_31

    .line 369
    const-string v0, "[FT]-Stack"

    const-string v2, "Send Item Action is invoked with invalid item information"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 370
    goto :goto_19

    .line 374
    :cond_31
    iget-object v4, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mSessionsMutex:Ljava/lang/Object;

    monitor-enter v4

    .line 375
    :try_start_34
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;

    .line 376
    if-nez v0, :cond_4f

    .line 377
    const/16 v0, 0x2cb

    const-string v2, "Incorrect Session ID."

    invoke-virtual {p1, v0, v2}, Lcom/samsung/upnp/Action;->setStatus(ILjava/lang/String;)V

    .line 378
    const-string v0, "[FT]-Stack"

    const-string v2, "Send Item Action is invoked with invalid session id"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    monitor-exit v4

    move v0, v1

    goto :goto_19

    .line 380
    :cond_4f
    iget-object v5, v0, Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;->mTransferStatus:Ljava/lang/String;

    const-string v6, "TRANSPORTING"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 382
    const/16 v0, 0x2cb

    const-string v2, "Server is not ready."

    invoke-virtual {p1, v0, v2}, Lcom/samsung/upnp/Action;->setStatus(ILjava/lang/String;)V

    .line 383
    const-string v0, "[FT]-Stack"

    const-string v2, "session\'s transfer status is not ready."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    monitor-exit v4

    move v0, v1

    goto :goto_19

    .line 385
    :cond_6a
    iget-object v5, v0, Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;->mTransferStatus:Ljava/lang/String;

    const-string v6, "CANCELED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_85

    .line 387
    const/16 v0, 0x2cb

    const-string v2, "Server canceled this session"

    invoke-virtual {p1, v0, v2}, Lcom/samsung/upnp/Action;->setStatus(ILjava/lang/String;)V

    .line 388
    const-string v0, "[FT]-Stack"

    const-string v2, "Send Item Action is invoked with canceled session id"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    monitor-exit v4

    move v0, v1

    goto :goto_19

    .line 392
    :cond_85
    const-string v1, "TRANSPORTING"

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/application/fileshare/device/TransferService;->setTransferStatus(Ljava/lang/String;Ljava/lang/String;)Z

    .line 393
    iget-object v0, v0, Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;->mSender:Lcom/samsung/android/application/fileshare/api/SenderInfo;

    invoke-virtual {v2, v0}, Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;->setSenderInfo(Lcom/samsung/android/application/fileshare/api/SenderInfo;)V

    .line 374
    monitor-exit v4
    :try_end_90
    .catchall {:try_start_34 .. :try_end_90} :catchall_b6

    .line 398
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mWorkerHandler:Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;

    const v1, 0x182bb

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 399
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mWorkerHandler:Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 402
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mFileGetter:Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;

    const v1, 0x182b9

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 403
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mFileGetter:Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;

    invoke-virtual {v1, v0}, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->sendMessage(Landroid/os/Message;)Z

    .line 404
    const-string v0, "[FT]-Stack"

    const-string v1, "Send Item Action is successfuly responsed."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const/4 v0, 0x1

    goto/16 :goto_19

    .line 374
    :catchall_b6
    move-exception v0

    :try_start_b7
    monitor-exit v4
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b6

    throw v0
.end method


# virtual methods
.method public actionControlReceived(Lcom/samsung/upnp/Action;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 221
    if-nez p1, :cond_4

    .line 240
    :cond_3
    :goto_3
    return v0

    .line 223
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/samsung/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 226
    invoke-virtual {p1}, Lcom/samsung/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v1

    .line 228
    const-string v2, "CreateSession"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 229
    invoke-direct {p0, p1}, Lcom/samsung/android/application/fileshare/device/TransferService;->actionCreateSessionReceievd(Lcom/samsung/upnp/Action;)Z

    move-result v0

    goto :goto_3

    .line 231
    :cond_25
    const-string v2, "TransportItem"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 232
    invoke-direct {p0, p1}, Lcom/samsung/android/application/fileshare/device/TransferService;->actionTransportItemReceived(Lcom/samsung/upnp/Action;)Z

    move-result v0

    goto :goto_3

    .line 234
    :cond_32
    const-string v2, "CloseSession"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 235
    invoke-direct {p0, p1}, Lcom/samsung/android/application/fileshare/device/TransferService;->actionCloseSessionReceived(Lcom/samsung/upnp/Action;)Z

    move-result v0

    goto :goto_3

    .line 237
    :cond_3f
    const-string v2, "CancelSession"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 238
    invoke-direct {p0, p1}, Lcom/samsung/android/application/fileshare/device/TransferService;->actionCancelSessionReceived(Lcom/samsung/upnp/Action;)Z

    move-result v0

    goto :goto_3
.end method

.method getTransferStatusEventString(Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 172
    if-nez p1, :cond_4

    .line 173
    const/4 v0, 0x0

    .line 174
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;->mSessionID:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;->mTransferStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public queryControlReceived(Lcom/samsung/upnp/StateVariable;)Z
    .registers 3
    .parameter "stateVar"

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method setParentDevice(Lcom/samsung/android/application/fileshare/device/TransferDevice;)V
    .registers 4
    .parameter "device"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mParentDevice:Lcom/samsung/android/application/fileshare/device/TransferDevice;

    .line 94
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mParentDevice:Lcom/samsung/android/application/fileshare/device/TransferDevice;

    const-string v1, "TransportStatus"

    invoke-virtual {v0, v1}, Lcom/samsung/android/application/fileshare/device/TransferDevice;->getStateVariable(Ljava/lang/String;)Lcom/samsung/upnp/StateVariable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mTransferStatus:Lcom/samsung/upnp/StateVariable;

    .line 95
    return-void
.end method

.method setSessionRequestListener(Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ISessionRequestReceivedListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 200
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mSessionListenerMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 201
    :try_start_3
    iput-object p1, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mSessionListener:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ISessionRequestReceivedListener;

    .line 200
    monitor-exit v1

    .line 203
    return-void

    .line 200
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method setTransferListener(Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ITransferStateListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 206
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mTransferListenerMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 207
    :try_start_3
    iput-object p1, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mTransferListener:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ITransferStateListener;

    .line 206
    monitor-exit v1

    .line 209
    return-void

    .line 206
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method setTransferStatus(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .parameter "sessionID"
    .parameter "status"

    .prologue
    const/4 v2, 0x0

    .line 117
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_a

    .line 151
    :cond_9
    :goto_9
    return v2

    .line 120
    :cond_a
    iget-object v3, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mSessionsMutex:Ljava/lang/Object;

    monitor-enter v3

    .line 121
    :try_start_d
    iget-object v4, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;

    .line 122
    .local v1, session:Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;
    if-nez v1, :cond_1c

    .line 123
    monitor-exit v3

    goto :goto_9

    .line 120
    .end local v1           #session:Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;
    :catchall_19
    move-exception v2

    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_19

    throw v2

    .line 124
    .restart local v1       #session:Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;
    :cond_1c
    :try_start_1c
    iget-object v4, v1, Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;->mTransferStatus:Ljava/lang/String;

    if-nez v4, :cond_22

    .line 125
    monitor-exit v3

    goto :goto_9

    .line 127
    :cond_22
    iget-object v2, v1, Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;->mTransferStatus:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7a

    .line 130
    iput-object p2, v1, Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;->mTransferStatus:Ljava/lang/String;

    .line 131
    const-string v2, "READY_FOR_TRANSPORT"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 133
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mWorkerHandler:Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;

    const/16 v4, 0x1582

    invoke-virtual {v2, v4, v1}, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 134
    .local v0, msg:Landroid/os/Message;
    const-string v2, "[FT]-Stack"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "If there is no action, session ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;->mSessionID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") will be canceled after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mTransferTimeout:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mWorkerHandler:Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;

    iget-wide v4, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mTransferTimeout:J

    invoke-virtual {v2, v0, v4, v5}, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 146
    .end local v0           #msg:Landroid/os/Message;
    :cond_6b
    :goto_6b
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mWorkerHandler:Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;

    const/16 v4, 0x157e

    invoke-virtual {v2, v4, v1}, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 147
    .restart local v0       #msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mWorkerHandler:Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v0, v4, v5}, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 120
    .end local v0           #msg:Landroid/os/Message;
    :cond_7a
    monitor-exit v3

    .line 151
    const/4 v2, 0x1

    goto :goto_9

    .line 136
    :cond_7d
    const-string v2, "TRANSPORTING"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 138
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mWorkerHandler:Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;

    const/16 v4, 0x1582

    invoke-virtual {v2, v4, v1}, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->removeMessages(ILjava/lang/Object;)V

    goto :goto_6b

    .line 139
    :cond_8d
    const-string v2, "CANCELED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9d

    const-string v2, "ERROR"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 140
    :cond_9d
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mWorkerHandler:Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;

    const/16 v4, 0x1582

    invoke-virtual {v2, v4, v1}, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->removeMessages(ILjava/lang/Object;)V

    .line 142
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mWorkerHandler:Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;

    const/16 v4, 0x1583

    invoke-virtual {v2, v4, v1}, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 143
    .restart local v0       #msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mWorkerHandler:Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;

    invoke-virtual {v2, v0}, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    :try_end_b1
    .catchall {:try_start_1c .. :try_end_b1} :catchall_19

    goto :goto_6b
.end method

.method setTransferTimeout(J)V
    .registers 5
    .parameter "timeout"

    .prologue
    .line 189
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_c

    .line 190
    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mTransferTimeout:J

    .line 193
    :goto_b
    return-void

    .line 192
    :cond_c
    iput-wide p1, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mTransferTimeout:J

    goto :goto_b
.end method

.method setUploadPath(Ljava/io/File;)Z
    .registers 3
    .parameter "path"

    .prologue
    .line 178
    if-nez p1, :cond_4

    .line 179
    const/4 v0, 0x0

    .line 181
    :goto_3
    return v0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mFileGetter:Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;

    invoke-virtual {v0, p1}, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->setUploadPath(Ljava/io/File;)Z

    move-result v0

    goto :goto_3
.end method

.method stop()V
    .registers 3

    .prologue
    .line 542
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mWorkerHandler:Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;

    const/16 v1, 0x1582

    invoke-virtual {v0, v1}, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->removeMessages(I)V

    .line 544
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mTransferStatus:Lcom/samsung/upnp/StateVariable;

    if-eqz v0, :cond_12

    .line 545
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mTransferStatus:Lcom/samsung/upnp/StateVariable;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/StateVariable;->setValue(Ljava/lang/String;)V

    .line 546
    :cond_12
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mSessionsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 547
    :try_start_15
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 546
    monitor-exit v1

    .line 549
    return-void

    .line 546
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method terminate()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 557
    iput-object v1, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mTransferStatus:Lcom/samsung/upnp/StateVariable;

    .line 558
    iput-object v1, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mFileGetter:Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;

    .line 559
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 560
    iput-object v1, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mSessionListener:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ISessionRequestReceivedListener;

    .line 561
    iput-object v1, p0, Lcom/samsung/android/application/fileshare/device/TransferService;->mTransferListener:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ITransferStateListener;

    .line 562
    return-void
.end method
