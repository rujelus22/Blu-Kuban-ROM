.class public abstract Lcom/google/android/music/download/AbstractSchedulingService;
.super Landroid/app/Service;
.source "AbstractSchedulingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/download/AbstractSchedulingService$6;,
        Lcom/google/android/music/download/AbstractSchedulingService$ServiceWorker;,
        Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;
    }
.end annotation


# instance fields
.field private final LOGV:Z

.field private final TAG:Ljava/lang/String;

.field private volatile mCacheManager:Lcom/google/android/music/download/cache/ICacheManager;

.field private final mCacheServiceConnection:Lcom/google/android/music/utils/SafeServiceConnection;

.field private final mDeleteFilter:Lcom/google/android/music/download/cache/IDeleteFilter;

.field private final mDownloadProgressListener:Lcom/google/android/music/download/IDownloadProgressListener;

.field private volatile mDownloadQueueManager:Lcom/google/android/music/download/IDownloadQueueManager;

.field private final mDownloadServiceConnection:Lcom/google/android/music/utils/SafeServiceConnection;

.field private volatile mNumberOfScheduledDownloadRequests:I

.field private volatile mStartId:I

.field private volatile mState:Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;

.field private volatile mStoreService:Lcom/google/android/music/store/IStoreService;

.field private final mStoreServiceConnection:Lcom/google/android/music/utils/SafeServiceConnection;

.field private final mWorker:Lcom/google/android/music/download/AbstractSchedulingService$ServiceWorker;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/google/android/music/download/DownloadRequest$Owner;)V
    .registers 4
    .parameter "tag"
    .parameter "owner"

    .prologue
    .line 206
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 42
    sget-object v0, Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;->NOT_STARTED:Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;

    iput-object v0, p0, Lcom/google/android/music/download/AbstractSchedulingService;->mState:Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/download/AbstractSchedulingService;->mNumberOfScheduledDownloadRequests:I

    .line 57
    new-instance v0, Lcom/google/android/music/download/AbstractSchedulingService$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/download/AbstractSchedulingService$1;-><init>(Lcom/google/android/music/download/AbstractSchedulingService;)V

    iput-object v0, p0, Lcom/google/android/music/download/AbstractSchedulingService;->mStoreServiceConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    .line 68
    new-instance v0, Lcom/google/android/music/download/AbstractSchedulingService$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/download/AbstractSchedulingService$2;-><init>(Lcom/google/android/music/download/AbstractSchedulingService;)V

    iput-object v0, p0, Lcom/google/android/music/download/AbstractSchedulingService;->mDownloadServiceConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    .line 80
    new-instance v0, Lcom/google/android/music/download/AbstractSchedulingService$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/download/AbstractSchedulingService$3;-><init>(Lcom/google/android/music/download/AbstractSchedulingService;)V

    iput-object v0, p0, Lcom/google/android/music/download/AbstractSchedulingService;->mCacheServiceConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    .line 91
    new-instance v0, Lcom/google/android/music/download/AbstractSchedulingService$4;

    invoke-direct {v0, p0}, Lcom/google/android/music/download/AbstractSchedulingService$4;-><init>(Lcom/google/android/music/download/AbstractSchedulingService;)V

    iput-object v0, p0, Lcom/google/android/music/download/AbstractSchedulingService;->mDownloadProgressListener:Lcom/google/android/music/download/IDownloadProgressListener;

    .line 97
    new-instance v0, Lcom/google/android/music/download/AbstractSchedulingService$5;

    invoke-direct {v0, p0}, Lcom/google/android/music/download/AbstractSchedulingService$5;-><init>(Lcom/google/android/music/download/AbstractSchedulingService;)V

    iput-object v0, p0, Lcom/google/android/music/download/AbstractSchedulingService;->mDeleteFilter:Lcom/google/android/music/download/cache/IDeleteFilter;

    .line 207
    iput-object p1, p0, Lcom/google/android/music/download/AbstractSchedulingService;->TAG:Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lcom/google/android/music/download/AbstractSchedulingService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/download/AbstractSchedulingService;->LOGV:Z

    .line 209
    new-instance v0, Lcom/google/android/music/download/AbstractSchedulingService$ServiceWorker;

    invoke-direct {v0, p0, p1}, Lcom/google/android/music/download/AbstractSchedulingService$ServiceWorker;-><init>(Lcom/google/android/music/download/AbstractSchedulingService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/music/download/AbstractSchedulingService;->mWorker:Lcom/google/android/music/download/AbstractSchedulingService$ServiceWorker;

    .line 210
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/music/download/AbstractSchedulingService;Lcom/google/android/music/store/IStoreService;)Lcom/google/android/music/store/IStoreService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/android/music/download/AbstractSchedulingService;->mStoreService:Lcom/google/android/music/store/IStoreService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/music/download/AbstractSchedulingService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/music/download/AbstractSchedulingService;->updateServiceState()V

    return-void
.end method

.method static synthetic access$202(Lcom/google/android/music/download/AbstractSchedulingService;Lcom/google/android/music/download/IDownloadQueueManager;)Lcom/google/android/music/download/IDownloadQueueManager;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/android/music/download/AbstractSchedulingService;->mDownloadQueueManager:Lcom/google/android/music/download/IDownloadQueueManager;

    return-object p1
.end method

.method static synthetic access$302(Lcom/google/android/music/download/AbstractSchedulingService;Lcom/google/android/music/download/cache/ICacheManager;)Lcom/google/android/music/download/cache/ICacheManager;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/android/music/download/AbstractSchedulingService;->mCacheManager:Lcom/google/android/music/download/cache/ICacheManager;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/music/download/AbstractSchedulingService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/google/android/music/download/AbstractSchedulingService;->LOGV:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/music/download/AbstractSchedulingService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/music/download/AbstractSchedulingService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/music/download/AbstractSchedulingService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/google/android/music/download/AbstractSchedulingService;->mStartId:I

    return p1
.end method

.method static synthetic access$700(Lcom/google/android/music/download/AbstractSchedulingService;)Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/music/download/AbstractSchedulingService;->mState:Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/music/download/AbstractSchedulingService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/music/download/AbstractSchedulingService;->handleScheduleDownloads()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/music/download/AbstractSchedulingService;Lcom/google/android/music/download/DownloadProgress;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/music/download/AbstractSchedulingService;->handleProgress(Lcom/google/android/music/download/DownloadProgress;)V

    return-void
.end method

.method private handleProgress(Lcom/google/android/music/download/DownloadProgress;)V
    .registers 7
    .parameter "progress"

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/google/android/music/download/AbstractSchedulingService;->LOGV:Z

    if-eqz v0, :cond_1e

    .line 172
    iget-object v0, p0, Lcom/google/android/music/download/AbstractSchedulingService;->TAG:Ljava/lang/String;

    const-string v1, "numberOfRequest: %d progress: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/music/download/AbstractSchedulingService;->mNumberOfScheduledDownloadRequests:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_1e
    sget-object v0, Lcom/google/android/music/download/AbstractSchedulingService$6;->$SwitchMap$com$google$android$music$download$DownloadState$State:[I

    invoke-virtual {p1}, Lcom/google/android/music/download/DownloadProgress;->getState()Lcom/google/android/music/download/DownloadState$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/download/DownloadState$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_56

    .line 196
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unhandled request state"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :pswitch_35
    iget v0, p0, Lcom/google/android/music/download/AbstractSchedulingService;->mNumberOfScheduledDownloadRequests:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/music/download/AbstractSchedulingService;->mNumberOfScheduledDownloadRequests:I

    .line 199
    :goto_3b
    :pswitch_3b
    invoke-virtual {p0, p1}, Lcom/google/android/music/download/AbstractSchedulingService;->notifyDownloadProgress(Lcom/google/android/music/download/DownloadProgress;)V

    .line 201
    iget v0, p0, Lcom/google/android/music/download/AbstractSchedulingService;->mNumberOfScheduledDownloadRequests:I

    if-nez v0, :cond_47

    .line 202
    iget v0, p0, Lcom/google/android/music/download/AbstractSchedulingService;->mStartId:I

    invoke-virtual {p0, v0}, Lcom/google/android/music/download/AbstractSchedulingService;->sendScheduleDownloadsMessage(I)V

    .line 204
    :cond_47
    return-void

    .line 188
    :pswitch_48
    iget v0, p0, Lcom/google/android/music/download/AbstractSchedulingService;->mNumberOfScheduledDownloadRequests:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/music/download/AbstractSchedulingService;->mNumberOfScheduledDownloadRequests:I

    goto :goto_3b

    .line 192
    :pswitch_4f
    iget v0, p0, Lcom/google/android/music/download/AbstractSchedulingService;->mNumberOfScheduledDownloadRequests:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/music/download/AbstractSchedulingService;->mNumberOfScheduledDownloadRequests:I

    goto :goto_3b

    .line 176
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_3b
        :pswitch_35
        :pswitch_48
        :pswitch_4f
    .end packed-switch
.end method

.method private handleScheduleDownloads()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 153
    iget-boolean v3, p0, Lcom/google/android/music/download/AbstractSchedulingService;->LOGV:Z

    if-eqz v3, :cond_c

    .line 154
    iget-object v3, p0, Lcom/google/android/music/download/AbstractSchedulingService;->TAG:Ljava/lang/String;

    const-string v4, "handleScheduleDownloads"

    invoke-static {v3, v4}, Lcom/google/android/music/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_c
    iget-object v3, p0, Lcom/google/android/music/download/AbstractSchedulingService;->mStoreService:Lcom/google/android/music/store/IStoreService;

    iget-object v4, p0, Lcom/google/android/music/download/AbstractSchedulingService;->mCacheManager:Lcom/google/android/music/download/cache/ICacheManager;

    invoke-virtual {p0, v3, v4}, Lcom/google/android/music/download/AbstractSchedulingService;->getNextDownloads(Lcom/google/android/music/store/IStoreService;Lcom/google/android/music/download/cache/ICacheManager;)Ljava/util/List;

    move-result-object v1

    .line 160
    .local v1, requests:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/download/DownloadRequest;>;"
    :try_start_14
    iget-object v3, p0, Lcom/google/android/music/download/AbstractSchedulingService;->mDownloadQueueManager:Lcom/google/android/music/download/IDownloadQueueManager;

    iget-object v4, p0, Lcom/google/android/music/download/AbstractSchedulingService;->mDownloadProgressListener:Lcom/google/android/music/download/IDownloadProgressListener;

    const/4 v5, 0x1

    invoke-interface {v3, v1, v4, v5}, Lcom/google/android/music/download/IDownloadQueueManager;->download(Ljava/util/List;Lcom/google/android/music/download/IDownloadProgressListener;I)V

    .line 162
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/google/android/music/download/AbstractSchedulingService;->mNumberOfScheduledDownloadRequests:I
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_22} :catch_23

    .line 167
    :goto_22
    return v2

    .line 164
    :catch_23
    move-exception v0

    .line 165
    .local v0, e:Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/google/android/music/download/AbstractSchedulingService;->TAG:Ljava/lang/String;

    const-string v3, "Failed to schedule downloads"

    invoke-static {v2, v3}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const/4 v2, 0x0

    goto :goto_22
.end method

.method private isAllServicesConnected()Z
    .registers 5

    .prologue
    .line 275
    iget-object v1, p0, Lcom/google/android/music/download/AbstractSchedulingService;->mStoreService:Lcom/google/android/music/store/IStoreService;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/google/android/music/download/AbstractSchedulingService;->mDownloadQueueManager:Lcom/google/android/music/download/IDownloadQueueManager;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/google/android/music/download/AbstractSchedulingService;->mCacheManager:Lcom/google/android/music/download/cache/ICacheManager;

    if-eqz v1, :cond_2a

    const/4 v0, 0x1

    .line 276
    .local v0, res:Z
    :goto_d
    iget-boolean v1, p0, Lcom/google/android/music/download/AbstractSchedulingService;->LOGV:Z

    if-eqz v1, :cond_29

    .line 277
    iget-object v1, p0, Lcom/google/android/music/download/AbstractSchedulingService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAllServicesConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/music/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_29
    return v0

    .line 275
    .end local v0           #res:Z
    :cond_2a
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private updateServiceState()V
    .registers 3

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/google/android/music/download/AbstractSchedulingService;->LOGV:Z

    if-eqz v0, :cond_b

    .line 266
    iget-object v0, p0, Lcom/google/android/music/download/AbstractSchedulingService;->TAG:Ljava/lang/String;

    const-string v1, "updateServiceState"

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_b
    invoke-direct {p0}, Lcom/google/android/music/download/AbstractSchedulingService;->isAllServicesConnected()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 269
    sget-object v0, Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;->INITIALIZED:Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;

    iput-object v0, p0, Lcom/google/android/music/download/AbstractSchedulingService;->mState:Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;

    .line 270
    iget v0, p0, Lcom/google/android/music/download/AbstractSchedulingService;->mStartId:I

    invoke-virtual {p0, v0}, Lcom/google/android/music/download/AbstractSchedulingService;->sendScheduleDownloadsMessage(I)V

    .line 272
    :cond_1a
    return-void
.end method


# virtual methods
.method protected abstract getNextDownloads(Lcom/google/android/music/store/IStoreService;Lcom/google/android/music/download/cache/ICacheManager;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/music/store/IStoreService;",
            "Lcom/google/android/music/download/cache/ICacheManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/download/DownloadRequest;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract notifyDownloadProgress(Lcom/google/android/music/download/DownloadProgress;)V
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 249
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 214
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 215
    iget-boolean v0, p0, Lcom/google/android/music/download/AbstractSchedulingService;->LOGV:Z

    if-eqz v0, :cond_f

    .line 216
    iget-object v0, p0, Lcom/google/android/music/download/AbstractSchedulingService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_f
    iget-object v0, p0, Lcom/google/android/music/download/AbstractSchedulingService;->mStoreServiceConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/music/store/StoreService$StoreServiceBinder;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p0, v1, v3}, Lcom/google/android/music/utils/SafeServiceConnection;->bindService(Landroid/content/Context;Landroid/content/Intent;I)Z

    .line 222
    iget-object v0, p0, Lcom/google/android/music/download/AbstractSchedulingService;->mDownloadServiceConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/music/download/DownloadQueueService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p0, v1, v3}, Lcom/google/android/music/utils/SafeServiceConnection;->bindService(Landroid/content/Context;Landroid/content/Intent;I)Z

    .line 225
    iget-object v0, p0, Lcom/google/android/music/download/AbstractSchedulingService;->mCacheServiceConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/music/download/cache/CacheService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p0, v1, v3}, Lcom/google/android/music/utils/SafeServiceConnection;->bindService(Landroid/content/Context;Landroid/content/Intent;I)Z

    .line 228
    sget-object v0, Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;->WAITING_FOR_SERVICES:Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;

    iput-object v0, p0, Lcom/google/android/music/download/AbstractSchedulingService;->mState:Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;

    .line 229
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/google/android/music/download/AbstractSchedulingService;->LOGV:Z

    if-eqz v0, :cond_b

    .line 234
    iget-object v0, p0, Lcom/google/android/music/download/AbstractSchedulingService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_b
    iget-object v0, p0, Lcom/google/android/music/download/AbstractSchedulingService;->mWorker:Lcom/google/android/music/download/AbstractSchedulingService$ServiceWorker;

    invoke-virtual {v0}, Lcom/google/android/music/download/AbstractSchedulingService$ServiceWorker;->quit()V

    .line 238
    iget-object v0, p0, Lcom/google/android/music/download/AbstractSchedulingService;->mCacheServiceConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/android/music/utils/SafeServiceConnection;->unbindService(Landroid/content/Context;)V

    .line 240
    iget-object v0, p0, Lcom/google/android/music/download/AbstractSchedulingService;->mDownloadServiceConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/android/music/utils/SafeServiceConnection;->unbindService(Landroid/content/Context;)V

    .line 242
    iget-object v0, p0, Lcom/google/android/music/download/AbstractSchedulingService;->mStoreServiceConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/android/music/utils/SafeServiceConnection;->unbindService(Landroid/content/Context;)V

    .line 244
    sget-object v0, Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;->FINISHED:Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;

    iput-object v0, p0, Lcom/google/android/music/download/AbstractSchedulingService;->mState:Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;

    .line 245
    return-void
.end method

.method protected sendScheduleDownloadsMessage(I)V
    .registers 5
    .parameter "startId"

    .prologue
    .line 253
    iget-object v1, p0, Lcom/google/android/music/download/AbstractSchedulingService;->mWorker:Lcom/google/android/music/download/AbstractSchedulingService$ServiceWorker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/music/download/AbstractSchedulingService$ServiceWorker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 254
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 255
    iget-object v1, p0, Lcom/google/android/music/download/AbstractSchedulingService;->mWorker:Lcom/google/android/music/download/AbstractSchedulingService$ServiceWorker;

    invoke-virtual {v1, v0}, Lcom/google/android/music/download/AbstractSchedulingService$ServiceWorker;->sendMessage(Landroid/os/Message;)Z

    .line 256
    return-void
.end method

.method protected sendUpdateProgressMessage(Lcom/google/android/music/download/DownloadProgress;)V
    .registers 5
    .parameter "progress"

    .prologue
    .line 259
    iget-object v1, p0, Lcom/google/android/music/download/AbstractSchedulingService;->mWorker:Lcom/google/android/music/download/AbstractSchedulingService$ServiceWorker;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/music/download/AbstractSchedulingService$ServiceWorker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 260
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 261
    iget-object v1, p0, Lcom/google/android/music/download/AbstractSchedulingService;->mWorker:Lcom/google/android/music/download/AbstractSchedulingService$ServiceWorker;

    invoke-virtual {v1, v0}, Lcom/google/android/music/download/AbstractSchedulingService$ServiceWorker;->sendMessage(Landroid/os/Message;)Z

    .line 262
    return-void
.end method
