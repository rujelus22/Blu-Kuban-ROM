.class public Lcom/google/android/youtube/videos/PinManager;
.super Ljava/lang/Object;
.source "PinManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/google/android/youtube/core/transfer/TransferService$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/PinManager$PinState;,
        Lcom/google/android/youtube/videos/PinManager$MediaMountedReceiver;,
        Lcom/google/android/youtube/videos/PinManager$Listener;
    }
.end annotation


# instance fields
.field private availableBytes:J

.field private final context:Landroid/content/Context;

.field private downloadDirectoryMounted:Z

.field private downloadJanitorStarted:Z

.field private downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

.field private downloadServiceBound:Z

.field private final downloadStreamRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            "Lcom/google/android/youtube/core/model/Stream;",
            ">;"
        }
    .end annotation
.end field

.field private downloadsRestored:Z

.field private final drmManager:Lcom/google/android/youtube/videos/DrmManager;

.field private final listener:Lcom/google/android/youtube/videos/PinManager$Listener;

.field private final mainHandler:Landroid/os/Handler;

.field private final mediaMountedReceiver:Lcom/google/android/youtube/videos/PinManager$MediaMountedReceiver;

.field private final pendingOperations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final purchaseStore:Lcom/google/android/youtube/videos/store/PurchaseStore;

.field private reservedBytes:J

.field private totalBytes:J

.field private userAuth:Lcom/google/android/youtube/core/model/UserAuth;

.field private final videoStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/videos/PinManager$PinState;",
            ">;"
        }
    .end annotation
.end field

.field private final videosPlatformUtil:Lcom/google/android/youtube/videos/VideosPlatformUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/videos/VideosPlatformUtil;Landroid/content/SharedPreferences;Lcom/google/android/youtube/videos/Requesters;Lcom/google/android/youtube/videos/store/PurchaseStore;Lcom/google/android/youtube/videos/DrmManager;Lcom/google/android/youtube/videos/PinManager$Listener;)V
    .registers 10
    .parameter "context"
    .parameter "videosPlatformUtil"
    .parameter "preferences"
    .parameter "requesters"
    .parameter "purchaseStore"
    .parameter "drmManager"
    .parameter "listener"

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->context:Landroid/content/Context;

    .line 107
    const-string v0, "drmManager cannot be null"

    invoke-static {p6, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/videos/DrmManager;

    iput-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->drmManager:Lcom/google/android/youtube/videos/DrmManager;

    .line 108
    const-string v0, "listener cannot be null"

    invoke-static {p7, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/videos/PinManager$Listener;

    iput-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->listener:Lcom/google/android/youtube/videos/PinManager$Listener;

    .line 109
    const-string v0, "purchaseStore cannot be null"

    invoke-static {p5, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/videos/store/PurchaseStore;

    iput-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->purchaseStore:Lcom/google/android/youtube/videos/store/PurchaseStore;

    .line 110
    const-string v0, "videosPlatformUtil cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/videos/VideosPlatformUtil;

    iput-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->videosPlatformUtil:Lcom/google/android/youtube/videos/VideosPlatformUtil;

    .line 112
    invoke-interface {p4}, Lcom/google/android/youtube/videos/Requesters;->getDownloadStreamRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->downloadStreamRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->mainHandler:Landroid/os/Handler;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->pendingOperations:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->videoStates:Ljava/util/Map;

    .line 118
    new-instance v0, Lcom/google/android/youtube/videos/PinManager$MediaMountedReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/videos/PinManager$MediaMountedReceiver;-><init>(Lcom/google/android/youtube/videos/PinManager;Lcom/google/android/youtube/videos/PinManager$1;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->mediaMountedReceiver:Lcom/google/android/youtube/videos/PinManager$MediaMountedReceiver;

    .line 119
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->mediaMountedReceiver:Lcom/google/android/youtube/videos/PinManager$MediaMountedReceiver;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/PinManager$MediaMountedReceiver;->register()V

    .line 120
    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/youtube/videos/PinManager;)Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/youtube/videos/PinManager;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/google/android/youtube/videos/PinManager;->reservedBytes:J

    return-wide v0
.end method

.method static synthetic access$1214(Lcom/google/android/youtube/videos/PinManager;J)J
    .registers 5
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/google/android/youtube/videos/PinManager;->reservedBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/youtube/videos/PinManager;->reservedBytes:J

    return-wide v0
.end method

.method static synthetic access$1222(Lcom/google/android/youtube/videos/PinManager;J)J
    .registers 5
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/google/android/youtube/videos/PinManager;->reservedBytes:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/youtube/videos/PinManager;->reservedBytes:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/google/android/youtube/videos/PinManager;Lcom/google/android/youtube/videos/PinManager$PinState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/PinManager;->pinVideo(Lcom/google/android/youtube/videos/PinManager$PinState;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/youtube/videos/PinManager;Lcom/google/android/youtube/videos/PinManager$PinState;Lcom/google/android/youtube/core/model/Purchase;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/videos/PinManager;->onPurchaseResponse(Lcom/google/android/youtube/videos/PinManager$PinState;Lcom/google/android/youtube/core/model/Purchase;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/youtube/videos/PinManager;Lcom/google/android/youtube/videos/PinManager$PinState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/PinManager;->clearPinState(Lcom/google/android/youtube/videos/PinManager$PinState;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/youtube/videos/PinManager;Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/videos/PinManager$PinState;Lcom/google/android/youtube/core/model/Stream;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/youtube/videos/PinManager;->requestLicenseForPinning(Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/videos/PinManager$PinState;Lcom/google/android/youtube/core/model/Stream;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/youtube/videos/PinManager;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/youtube/videos/PinManager;)Lcom/google/android/youtube/videos/VideosPlatformUtil;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->videosPlatformUtil:Lcom/google/android/youtube/videos/VideosPlatformUtil;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/youtube/videos/PinManager;)Lcom/google/android/youtube/core/model/UserAuth;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/android/youtube/videos/PinManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/PinManager;->downloadJanitorStarted:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/google/android/youtube/videos/PinManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/google/android/youtube/videos/PinManager;->downloadJanitorStarted:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/google/android/youtube/videos/PinManager;Lcom/google/android/youtube/videos/PinManager$PinState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/PinManager;->unpinVideo(Lcom/google/android/youtube/videos/PinManager$PinState;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/android/youtube/videos/PinManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/PinManager;->downloadsRestored:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/google/android/youtube/videos/PinManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/android/youtube/videos/PinManager;->updateDirectoryStats()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/youtube/videos/PinManager;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->videoStates:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/youtube/videos/PinManager;)Lcom/google/android/youtube/videos/PinManager$Listener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->listener:Lcom/google/android/youtube/videos/PinManager$Listener;

    return-object v0
.end method

.method private clearPinState(Lcom/google/android/youtube/videos/PinManager$PinState;)V
    .registers 4
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 416
    #setter for: Lcom/google/android/youtube/videos/PinManager$PinState;->isPinned:Z
    invoke-static {p1, v0}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$202(Lcom/google/android/youtube/videos/PinManager$PinState;Z)Z

    .line 417
    #setter for: Lcom/google/android/youtube/videos/PinManager$PinState;->downloadStatus:Lcom/google/android/youtube/core/transfer/Transfer$Status;
    invoke-static {p1, v1}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$302(Lcom/google/android/youtube/videos/PinManager$PinState;Lcom/google/android/youtube/core/transfer/Transfer$Status;)Lcom/google/android/youtube/core/transfer/Transfer$Status;

    .line 418
    #setter for: Lcom/google/android/youtube/videos/PinManager$PinState;->downloadPath:Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$102(Lcom/google/android/youtube/videos/PinManager$PinState;Ljava/lang/String;)Ljava/lang/String;

    .line 419
    #setter for: Lcom/google/android/youtube/videos/PinManager$PinState;->operationInProgress:Z
    invoke-static {p1, v0}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$902(Lcom/google/android/youtube/videos/PinManager$PinState;Z)Z

    .line 420
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->listener:Lcom/google/android/youtube/videos/PinManager$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/videos/PinManager$Listener;->onPinStateChange(Lcom/google/android/youtube/videos/PinManager$PinState;)V

    .line 421
    return-void
.end method

.method private doBindService()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 430
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/PinManager;->downloadServiceBound:Z

    if-nez v0, :cond_12

    .line 431
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/youtube/videos/transfer/VideoDownloadService;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 433
    iput-boolean v2, p0, Lcom/google/android/youtube/videos/PinManager;->downloadServiceBound:Z

    .line 435
    :cond_12
    return-void
.end method

.method private doUnbindService()V
    .registers 2

    .prologue
    .line 438
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/PinManager;->downloadServiceBound:Z

    if-eqz v0, :cond_15

    .line 439
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    if-eqz v0, :cond_d

    .line 440
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->removeTransferListener(Lcom/google/android/youtube/core/transfer/TransferService$Listener;)Z

    .line 442
    :cond_d
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 443
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/videos/PinManager;->downloadServiceBound:Z

    .line 445
    :cond_15
    return-void
.end method

.method private downloadBelongsToUser(Ljava/lang/String;)Z
    .registers 4
    .parameter "filePath"

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/youtube/videos/utils/OfflineUtil;->getUserFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private onDownloadStateChanged(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 5
    .parameter "download"

    .prologue
    .line 499
    iget-object v2, p1, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/google/android/youtube/videos/PinManager;->downloadBelongsToUser(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 500
    iget-object v2, p1, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/youtube/videos/utils/OfflineUtil;->getVideoIdFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, videoId:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/youtube/videos/PinManager;->videoStates:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/videos/PinManager$PinState;

    .line 502
    .local v1, videoState:Lcom/google/android/youtube/videos/PinManager$PinState;
    iget-object v2, p1, Lcom/google/android/youtube/core/transfer/Transfer;->status:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    #setter for: Lcom/google/android/youtube/videos/PinManager$PinState;->downloadStatus:Lcom/google/android/youtube/core/transfer/Transfer$Status;
    invoke-static {v1, v2}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$302(Lcom/google/android/youtube/videos/PinManager$PinState;Lcom/google/android/youtube/core/transfer/Transfer$Status;)Lcom/google/android/youtube/core/transfer/Transfer$Status;

    .line 503
    iget-object v2, p0, Lcom/google/android/youtube/videos/PinManager;->listener:Lcom/google/android/youtube/videos/PinManager$Listener;

    invoke-interface {v2, v1}, Lcom/google/android/youtube/videos/PinManager$Listener;->onPinStateChange(Lcom/google/android/youtube/videos/PinManager$PinState;)V

    .line 505
    .end local v0           #videoId:Ljava/lang/String;
    .end local v1           #videoState:Lcom/google/android/youtube/videos/PinManager$PinState;
    :cond_20
    return-void
.end method

.method private onPurchaseResponse(Lcom/google/android/youtube/videos/PinManager$PinState;Lcom/google/android/youtube/core/model/Purchase;)V
    .registers 8
    .parameter "state"
    .parameter "purchase"

    .prologue
    .line 341
    iget-object v0, p2, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    .line 342
    .local v0, video:Lcom/google/android/youtube/core/model/Video;
    iget-object v1, v0, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    sget-object v2, Lcom/google/android/youtube/core/model/Video$State;->PLAYABLE:Lcom/google/android/youtube/core/model/Video$State;

    if-eq v1, v2, :cond_15

    .line 343
    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager;->listener:Lcom/google/android/youtube/videos/PinManager$Listener;

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    invoke-interface {v1, v2, v3}, Lcom/google/android/youtube/videos/PinManager$Listener;->onPinErrorVideoNotPlayable(Ljava/lang/String;Lcom/google/android/youtube/core/model/Video$State;)V

    .line 344
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/PinManager;->clearPinState(Lcom/google/android/youtube/videos/PinManager$PinState;)V

    .line 367
    :goto_14
    return-void

    .line 348
    :cond_15
    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager;->downloadStreamRequester:Lcom/google/android/youtube/core/async/Requester;

    new-instance v2, Lcom/google/android/youtube/core/async/HandlerCallback;

    iget-object v3, p0, Lcom/google/android/youtube/videos/PinManager;->mainHandler:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/youtube/videos/PinManager$4;

    invoke-direct {v4, p0, p1, p2}, Lcom/google/android/youtube/videos/PinManager$4;-><init>(Lcom/google/android/youtube/videos/PinManager;Lcom/google/android/youtube/videos/PinManager$PinState;Lcom/google/android/youtube/core/model/Purchase;)V

    invoke-direct {v2, v3, v4}, Lcom/google/android/youtube/core/async/HandlerCallback;-><init>(Landroid/os/Handler;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v1, p2, v2}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    goto :goto_14
.end method

.method private pinVideo(Lcom/google/android/youtube/videos/PinManager$PinState;)V
    .registers 7
    .parameter "state"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->purchaseStore:Lcom/google/android/youtube/videos/store/PurchaseStore;

    new-instance v1, Landroid/util/Pair;

    iget-object v2, p0, Lcom/google/android/youtube/videos/PinManager;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    #getter for: Lcom/google/android/youtube/videos/PinManager$PinState;->videoId:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$1000(Lcom/google/android/youtube/videos/PinManager$PinState;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/youtube/core/async/HandlerCallback;

    iget-object v3, p0, Lcom/google/android/youtube/videos/PinManager;->mainHandler:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/youtube/videos/PinManager$3;

    invoke-direct {v4, p0, p1}, Lcom/google/android/youtube/videos/PinManager$3;-><init>(Lcom/google/android/youtube/videos/PinManager;Lcom/google/android/youtube/videos/PinManager$PinState;)V

    invoke-direct {v2, v3, v4}, Lcom/google/android/youtube/core/async/HandlerCallback;-><init>(Landroid/os/Handler;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/videos/store/PurchaseStore;->syncActivePurchaseForVideo(Landroid/util/Pair;Lcom/google/android/youtube/core/async/Callback;)V

    .line 338
    return-void
.end method

.method public static readIdsFromExtras(Landroid/os/Bundle;)Lcom/google/android/youtube/videos/DrmManager$Identifiers;
    .registers 2
    .parameter "extras"

    .prologue
    .line 322
    const-string v0, "license_ids"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/videos/DrmManager$Identifiers;

    return-object v0
.end method

.method private refreshExpirationTimes()V
    .registers 11

    .prologue
    .line 196
    new-instance v0, Lcom/google/android/youtube/core/async/HandlerCallback;

    iget-object v8, p0, Lcom/google/android/youtube/videos/PinManager;->mainHandler:Landroid/os/Handler;

    new-instance v9, Lcom/google/android/youtube/videos/PinManager$1;

    invoke-direct {v9, p0}, Lcom/google/android/youtube/videos/PinManager$1;-><init>(Lcom/google/android/youtube/videos/PinManager;)V

    invoke-direct {v0, v8, v9}, Lcom/google/android/youtube/core/async/HandlerCallback;-><init>(Landroid/os/Handler;Lcom/google/android/youtube/core/async/Callback;)V

    .line 218
    .local v0, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;>;"
    iget-object v8, p0, Lcom/google/android/youtube/videos/PinManager;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    invoke-virtual {v8}, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->getSnapshot()Ljava/util/Map;

    move-result-object v6

    .line 219
    .local v6, snapshot:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/youtube/core/transfer/Transfer;>;"
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1a
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 220
    .local v4, key:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/google/android/youtube/videos/PinManager;->downloadBelongsToUser(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 221
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/transfer/Transfer;

    .line 222
    .local v1, download:Lcom/google/android/youtube/core/transfer/Transfer;
    invoke-static {v4}, Lcom/google/android/youtube/videos/utils/OfflineUtil;->getVideoIdFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 223
    .local v7, videoId:Ljava/lang/String;
    iget-object v8, v1, Lcom/google/android/youtube/core/transfer/Transfer;->inputExtras:Landroid/os/Bundle;

    invoke-static {v8}, Lcom/google/android/youtube/videos/PinManager;->readIdsFromExtras(Landroid/os/Bundle;)Lcom/google/android/youtube/videos/DrmManager$Identifiers;

    move-result-object v3

    .line 224
    .local v3, ids:Lcom/google/android/youtube/videos/DrmManager$Identifiers;
    new-instance v8, Ljava/io/File;

    iget-object v9, v1, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/google/android/youtube/videos/PinManager;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-static {v8, v7, v9, v3}, Lcom/google/android/youtube/videos/DrmRequest;->createOfflineRequest(Ljava/io/File;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/videos/DrmManager$Identifiers;)Lcom/google/android/youtube/videos/DrmRequest;

    move-result-object v5

    .line 226
    .local v5, request:Lcom/google/android/youtube/videos/DrmRequest;
    iget-object v8, p0, Lcom/google/android/youtube/videos/PinManager;->drmManager:Lcom/google/android/youtube/videos/DrmManager;

    invoke-virtual {v8, v5, v0}, Lcom/google/android/youtube/videos/DrmManager;->request(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V

    goto :goto_1a

    .line 229
    .end local v1           #download:Lcom/google/android/youtube/core/transfer/Transfer;
    .end local v3           #ids:Lcom/google/android/youtube/videos/DrmManager$Identifiers;
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #request:Lcom/google/android/youtube/videos/DrmRequest;
    .end local v7           #videoId:Ljava/lang/String;
    :cond_4f
    return-void
.end method

.method private requestLicenseForPinning(Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/videos/PinManager$PinState;Lcom/google/android/youtube/core/model/Stream;)V
    .registers 14
    .parameter "purchase"
    .parameter "state"
    .parameter "stream"

    .prologue
    .line 371
    #getter for: Lcom/google/android/youtube/videos/PinManager$PinState;->videoId:Ljava/lang/String;
    invoke-static {p2}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$1000(Lcom/google/android/youtube/videos/PinManager$PinState;)Ljava/lang/String;

    move-result-object v2

    .line 372
    .local v2, videoId:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/youtube/videos/PinManager;->drmManager:Lcom/google/android/youtube/videos/DrmManager;

    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-static {p3, v2, v0}, Lcom/google/android/youtube/videos/DrmRequest;->createPinRequest(Lcom/google/android/youtube/core/model/Stream;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/videos/DrmRequest;

    move-result-object v7

    new-instance v8, Lcom/google/android/youtube/core/async/HandlerCallback;

    iget-object v9, p0, Lcom/google/android/youtube/videos/PinManager;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/youtube/videos/PinManager$5;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/videos/PinManager$5;-><init>(Lcom/google/android/youtube/videos/PinManager;Ljava/lang/String;Lcom/google/android/youtube/videos/PinManager$PinState;Lcom/google/android/youtube/core/model/Stream;Lcom/google/android/youtube/core/model/Purchase;)V

    invoke-direct {v8, v9, v0}, Lcom/google/android/youtube/core/async/HandlerCallback;-><init>(Landroid/os/Handler;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-virtual {v6, v7, v8}, Lcom/google/android/youtube/videos/DrmManager;->request(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V

    .line 413
    return-void
.end method

.method private restoreDownloads()V
    .registers 13

    .prologue
    const/4 v11, 0x1

    .line 164
    iget-object v7, p0, Lcom/google/android/youtube/videos/PinManager;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    invoke-virtual {v7}, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->getSnapshot()Ljava/util/Map;

    move-result-object v4

    .line 165
    .local v4, snapshot:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/youtube/core/transfer/Transfer;>;"
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 166
    .local v2, key:Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/Transfer;

    .line 167
    .local v0, download:Lcom/google/android/youtube/core/transfer/Transfer;
    invoke-direct {p0, v2}, Lcom/google/android/youtube/videos/PinManager;->downloadBelongsToUser(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 168
    invoke-static {v2}, Lcom/google/android/youtube/videos/utils/OfflineUtil;->getVideoIdFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 169
    .local v6, videoId:Ljava/lang/String;
    new-instance v5, Lcom/google/android/youtube/videos/PinManager$PinState;

    invoke-direct {v5, p0, v6}, Lcom/google/android/youtube/videos/PinManager$PinState;-><init>(Lcom/google/android/youtube/videos/PinManager;Ljava/lang/String;)V

    .line 170
    .local v5, state:Lcom/google/android/youtube/videos/PinManager$PinState;
    iget-object v7, v0, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    #setter for: Lcom/google/android/youtube/videos/PinManager$PinState;->downloadPath:Ljava/lang/String;
    invoke-static {v5, v7}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$102(Lcom/google/android/youtube/videos/PinManager$PinState;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    #setter for: Lcom/google/android/youtube/videos/PinManager$PinState;->isPinned:Z
    invoke-static {v5, v11}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$202(Lcom/google/android/youtube/videos/PinManager$PinState;Z)Z

    .line 172
    iget-object v7, v0, Lcom/google/android/youtube/core/transfer/Transfer;->status:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    #setter for: Lcom/google/android/youtube/videos/PinManager$PinState;->downloadStatus:Lcom/google/android/youtube/core/transfer/Transfer$Status;
    invoke-static {v5, v7}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$302(Lcom/google/android/youtube/videos/PinManager$PinState;Lcom/google/android/youtube/core/transfer/Transfer$Status;)Lcom/google/android/youtube/core/transfer/Transfer$Status;

    .line 173
    iget-wide v7, v0, Lcom/google/android/youtube/core/transfer/Transfer;->bytesTransfered:J

    #setter for: Lcom/google/android/youtube/videos/PinManager$PinState;->bytesDownloaded:J
    invoke-static {v5, v7, v8}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$402(Lcom/google/android/youtube/videos/PinManager$PinState;J)J

    .line 175
    iget-wide v7, v0, Lcom/google/android/youtube/core/transfer/Transfer;->bytesTotal:J

    #setter for: Lcom/google/android/youtube/videos/PinManager$PinState;->bytesTotal:J
    invoke-static {v5, v7, v8}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$502(Lcom/google/android/youtube/videos/PinManager$PinState;J)J

    .line 176
    #getter for: Lcom/google/android/youtube/videos/PinManager$PinState;->bytesTotal:J
    invoke-static {v5}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$500(Lcom/google/android/youtube/videos/PinManager$PinState;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_5c

    .line 179
    iget-object v7, v0, Lcom/google/android/youtube/core/transfer/Transfer;->inputExtras:Landroid/os/Bundle;

    const-string v8, "stream_length"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    #setter for: Lcom/google/android/youtube/videos/PinManager$PinState;->bytesTotal:J
    invoke-static {v5, v7, v8}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$502(Lcom/google/android/youtube/videos/PinManager$PinState;J)J

    .line 182
    :cond_5c
    iget-object v7, p0, Lcom/google/android/youtube/videos/PinManager;->videoStates:Ljava/util/Map;

    invoke-interface {v7, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 185
    .end local v0           #download:Lcom/google/android/youtube/core/transfer/Transfer;
    .end local v2           #key:Ljava/lang/String;
    .end local v5           #state:Lcom/google/android/youtube/videos/PinManager$PinState;
    .end local v6           #videoId:Ljava/lang/String;
    :cond_62
    invoke-direct {p0}, Lcom/google/android/youtube/videos/PinManager;->updateDirectoryStats()V

    .line 186
    iput-boolean v11, p0, Lcom/google/android/youtube/videos/PinManager;->downloadsRestored:Z

    .line 187
    iget-object v7, p0, Lcom/google/android/youtube/videos/PinManager;->listener:Lcom/google/android/youtube/videos/PinManager$Listener;

    invoke-interface {v7}, Lcom/google/android/youtube/videos/PinManager$Listener;->onRestored()V

    .line 188
    invoke-direct {p0}, Lcom/google/android/youtube/videos/PinManager;->refreshExpirationTimes()V

    .line 189
    iget-object v7, p0, Lcom/google/android/youtube/videos/PinManager;->pendingOperations:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_75
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_91

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 190
    .local v3, pendingOperation:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget-object v7, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/google/android/youtube/videos/PinManager;->setPinned(Ljava/lang/String;Z)V

    goto :goto_75

    .line 192
    .end local v3           #pendingOperation:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_91
    iget-object v7, p0, Lcom/google/android/youtube/videos/PinManager;->pendingOperations:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 193
    return-void
.end method

.method private unpinVideo(Lcom/google/android/youtube/videos/PinManager$PinState;)V
    .registers 10
    .parameter "state"

    .prologue
    .line 288
    new-instance v1, Ljava/io/File;

    #getter for: Lcom/google/android/youtube/videos/PinManager$PinState;->downloadPath:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$100(Lcom/google/android/youtube/videos/PinManager$PinState;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 289
    .local v1, file:Ljava/io/File;
    iget-object v3, p0, Lcom/google/android/youtube/videos/PinManager;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    invoke-virtual {v3}, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->getSnapshot()Ljava/util/Map;

    move-result-object v3

    #getter for: Lcom/google/android/youtube/videos/PinManager$PinState;->downloadPath:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$100(Lcom/google/android/youtube/videos/PinManager$PinState;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v0, v3, Lcom/google/android/youtube/core/transfer/Transfer;->inputExtras:Landroid/os/Bundle;

    .line 290
    .local v0, extras:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/google/android/youtube/videos/PinManager;->readIdsFromExtras(Landroid/os/Bundle;)Lcom/google/android/youtube/videos/DrmManager$Identifiers;

    move-result-object v2

    .line 291
    .local v2, ids:Lcom/google/android/youtube/videos/DrmManager$Identifiers;
    iget-object v3, p0, Lcom/google/android/youtube/videos/PinManager;->drmManager:Lcom/google/android/youtube/videos/DrmManager;

    #getter for: Lcom/google/android/youtube/videos/PinManager$PinState;->videoId:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$1000(Lcom/google/android/youtube/videos/PinManager$PinState;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/youtube/videos/PinManager;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-static {v1, v4, v5, v2}, Lcom/google/android/youtube/videos/DrmRequest;->createUnpinRequest(Ljava/io/File;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/videos/DrmManager$Identifiers;)Lcom/google/android/youtube/videos/DrmRequest;

    move-result-object v4

    new-instance v5, Lcom/google/android/youtube/core/async/HandlerCallback;

    iget-object v6, p0, Lcom/google/android/youtube/videos/PinManager;->mainHandler:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/youtube/videos/PinManager$2;

    invoke-direct {v7, p0, p1}, Lcom/google/android/youtube/videos/PinManager$2;-><init>(Lcom/google/android/youtube/videos/PinManager;Lcom/google/android/youtube/videos/PinManager$PinState;)V

    invoke-direct {v5, v6, v7}, Lcom/google/android/youtube/core/async/HandlerCallback;-><init>(Landroid/os/Handler;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-virtual {v3, v4, v5}, Lcom/google/android/youtube/videos/DrmManager;->request(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V

    .line 319
    return-void
.end method

.method private updateDirectoryStats()V
    .registers 11

    .prologue
    const-wide/16 v8, 0x0

    .line 232
    iget-object v4, p0, Lcom/google/android/youtube/videos/PinManager;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/youtube/videos/utils/OfflineUtil;->getRootPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, downloadDirectory:Ljava/lang/String;
    if-eqz v0, :cond_61

    const/4 v4, 0x1

    :goto_b
    iput-boolean v4, p0, Lcom/google/android/youtube/videos/PinManager;->downloadDirectoryMounted:Z

    .line 234
    iget-boolean v4, p0, Lcom/google/android/youtube/videos/PinManager;->downloadDirectoryMounted:Z

    if-eqz v4, :cond_63

    .line 235
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 236
    .local v2, statFs:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/youtube/videos/PinManager;->totalBytes:J

    .line 237
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/youtube/videos/PinManager;->availableBytes:J

    .line 238
    iput-wide v8, p0, Lcom/google/android/youtube/videos/PinManager;->reservedBytes:J

    .line 239
    iget-object v4, p0, Lcom/google/android/youtube/videos/PinManager;->videoStates:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3c
    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/videos/PinManager$PinState;

    .line 240
    .local v3, state:Lcom/google/android/youtube/videos/PinManager$PinState;
    #getter for: Lcom/google/android/youtube/videos/PinManager$PinState;->isPinned:Z
    invoke-static {v3}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$200(Lcom/google/android/youtube/videos/PinManager$PinState;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 241
    iget-wide v4, p0, Lcom/google/android/youtube/videos/PinManager;->availableBytes:J

    #getter for: Lcom/google/android/youtube/videos/PinManager$PinState;->bytesDownloaded:J
    invoke-static {v3}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$400(Lcom/google/android/youtube/videos/PinManager$PinState;)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/youtube/videos/PinManager;->availableBytes:J

    .line 242
    iget-wide v4, p0, Lcom/google/android/youtube/videos/PinManager;->reservedBytes:J

    #getter for: Lcom/google/android/youtube/videos/PinManager$PinState;->bytesTotal:J
    invoke-static {v3}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$500(Lcom/google/android/youtube/videos/PinManager$PinState;)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/youtube/videos/PinManager;->reservedBytes:J

    goto :goto_3c

    .line 233
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #statFs:Landroid/os/StatFs;
    .end local v3           #state:Lcom/google/android/youtube/videos/PinManager$PinState;
    :cond_61
    const/4 v4, 0x0

    goto :goto_b

    .line 246
    :cond_63
    iput-wide v8, p0, Lcom/google/android/youtube/videos/PinManager;->availableBytes:J

    .line 247
    iput-wide v8, p0, Lcom/google/android/youtube/videos/PinManager;->totalBytes:J

    .line 249
    :cond_67
    return-void
.end method


# virtual methods
.method public getAvailableBytes()J
    .registers 3

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/google/android/youtube/videos/PinManager;->availableBytes:J

    return-wide v0
.end method

.method public getState(Ljava/lang/String;)Lcom/google/android/youtube/videos/PinManager$PinState;
    .registers 3
    .parameter "videoId"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->videoStates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->videoStates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/videos/PinManager$PinState;

    :goto_10
    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/youtube/videos/PinManager$PinState;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/videos/PinManager$PinState;-><init>(Lcom/google/android/youtube/videos/PinManager;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public getStates()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/videos/PinManager$PinState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 424
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->videoStates:Ljava/util/Map;

    return-object v0
.end method

.method public getTotalBytes()J
    .registers 3

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/google/android/youtube/videos/PinManager;->totalBytes:J

    return-wide v0
.end method

.method public init(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 5
    .parameter "userAuth"

    .prologue
    const-wide/16 v1, 0x0

    .line 138
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/model/UserAuth;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 141
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/PinManager;->downloadsRestored:Z

    if-eqz v0, :cond_19

    .line 143
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->listener:Lcom/google/android/youtube/videos/PinManager$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/videos/PinManager$Listener;->onRestored()V

    .line 144
    invoke-direct {p0}, Lcom/google/android/youtube/videos/PinManager;->refreshExpirationTimes()V

    .line 161
    :cond_19
    :goto_19
    return-void

    .line 148
    :cond_1a
    iput-object p1, p0, Lcom/google/android/youtube/videos/PinManager;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    .line 149
    iput-wide v1, p0, Lcom/google/android/youtube/videos/PinManager;->totalBytes:J

    .line 150
    iput-wide v1, p0, Lcom/google/android/youtube/videos/PinManager;->availableBytes:J

    .line 151
    iput-wide v1, p0, Lcom/google/android/youtube/videos/PinManager;->reservedBytes:J

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/videos/PinManager;->downloadsRestored:Z

    .line 153
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->videoStates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 154
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    if-eqz v0, :cond_39

    .line 155
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->removeTransferListener(Lcom/google/android/youtube/core/transfer/TransferService$Listener;)Z

    .line 156
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->addTransferListener(Lcom/google/android/youtube/core/transfer/TransferService$Listener;)Z

    goto :goto_19

    .line 158
    :cond_39
    invoke-direct {p0}, Lcom/google/android/youtube/videos/PinManager;->doBindService()V

    goto :goto_19
.end method

.method public isDownloadDirectoryMounted()Z
    .registers 2

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/PinManager;->downloadDirectoryMounted:Z

    return v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->mediaMountedReceiver:Lcom/google/android/youtube/videos/PinManager$MediaMountedReceiver;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/PinManager$MediaMountedReceiver;->unregister()V

    .line 460
    invoke-direct {p0}, Lcom/google/android/youtube/videos/PinManager;->doUnbindService()V

    .line 461
    return-void
.end method

.method public onProgress(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 6
    .parameter "download"

    .prologue
    .line 478
    iget-object v2, p1, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/google/android/youtube/videos/PinManager;->downloadBelongsToUser(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 479
    iget-object v2, p1, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/youtube/videos/utils/OfflineUtil;->getVideoIdFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, videoId:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/youtube/videos/PinManager;->videoStates:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/videos/PinManager$PinState;

    .line 481
    .local v1, videoState:Lcom/google/android/youtube/videos/PinManager$PinState;
    iget-wide v2, p1, Lcom/google/android/youtube/core/transfer/Transfer;->bytesTransfered:J

    #setter for: Lcom/google/android/youtube/videos/PinManager$PinState;->bytesDownloaded:J
    invoke-static {v1, v2, v3}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$402(Lcom/google/android/youtube/videos/PinManager$PinState;J)J

    .line 482
    iget-object v2, p0, Lcom/google/android/youtube/videos/PinManager;->listener:Lcom/google/android/youtube/videos/PinManager$Listener;

    invoke-interface {v2, v1}, Lcom/google/android/youtube/videos/PinManager$Listener;->onPinStateChange(Lcom/google/android/youtube/videos/PinManager$PinState;)V

    .line 484
    .end local v0           #videoId:Ljava/lang/String;
    .end local v1           #videoState:Lcom/google/android/youtube/videos/PinManager$PinState;
    :cond_20
    return-void
.end method

.method public onRemoved(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 6
    .parameter "download"

    .prologue
    .line 487
    iget-object v2, p1, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/google/android/youtube/videos/PinManager;->downloadBelongsToUser(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 488
    iget-object v2, p1, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/youtube/videos/utils/OfflineUtil;->getVideoIdFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, videoId:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/youtube/videos/PinManager;->videoStates:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/videos/PinManager$PinState;

    .line 490
    .local v1, videoState:Lcom/google/android/youtube/videos/PinManager$PinState;
    iget-object v2, p1, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/youtube/videos/utils/OfflineUtil;->deleteFile(Ljava/lang/String;)V

    .line 491
    const/4 v2, 0x0

    #setter for: Lcom/google/android/youtube/videos/PinManager$PinState;->downloadStatus:Lcom/google/android/youtube/core/transfer/Transfer$Status;
    invoke-static {v1, v2}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$302(Lcom/google/android/youtube/videos/PinManager$PinState;Lcom/google/android/youtube/core/transfer/Transfer$Status;)Lcom/google/android/youtube/core/transfer/Transfer$Status;

    .line 492
    const-wide/16 v2, 0x0

    #setter for: Lcom/google/android/youtube/videos/PinManager$PinState;->bytesDownloaded:J
    invoke-static {v1, v2, v3}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$402(Lcom/google/android/youtube/videos/PinManager$PinState;J)J

    .line 493
    const/4 v2, 0x0

    #setter for: Lcom/google/android/youtube/videos/PinManager$PinState;->operationInProgress:Z
    invoke-static {v1, v2}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$902(Lcom/google/android/youtube/videos/PinManager$PinState;Z)Z

    .line 494
    iget-object v2, p0, Lcom/google/android/youtube/videos/PinManager;->listener:Lcom/google/android/youtube/videos/PinManager$Listener;

    invoke-interface {v2, v1}, Lcom/google/android/youtube/videos/PinManager$Listener;->onPinStateChange(Lcom/google/android/youtube/videos/PinManager$PinState;)V

    .line 496
    .end local v0           #videoId:Ljava/lang/String;
    .end local v1           #videoState:Lcom/google/android/youtube/videos/PinManager$PinState;
    :cond_2d
    return-void
.end method

.method public onRestored()V
    .registers 1

    .prologue
    .line 466
    invoke-direct {p0}, Lcom/google/android/youtube/videos/PinManager;->restoreDownloads()V

    .line 467
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .parameter "className"
    .parameter "serviceBinder"

    .prologue
    .line 448
    check-cast p2, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    .end local p2
    iput-object p2, p0, Lcom/google/android/youtube/videos/PinManager;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    .line 449
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v0, :cond_d

    .line 450
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->addTransferListener(Lcom/google/android/youtube/core/transfer/TransferService$Listener;)Z

    .line 452
    :cond_d
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .parameter "className"

    .prologue
    .line 455
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    .line 456
    return-void
.end method

.method public onSize(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 2
    .parameter "download"

    .prologue
    .line 470
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/PinManager;->onDownloadStateChanged(Lcom/google/android/youtube/core/transfer/Transfer;)V

    .line 471
    return-void
.end method

.method public onStatusChanged(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 2
    .parameter "download"

    .prologue
    .line 474
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/PinManager;->onDownloadStateChanged(Lcom/google/android/youtube/core/transfer/Transfer;)V

    .line 475
    return-void
.end method

.method public setPinned(Ljava/lang/String;Z)V
    .registers 8
    .parameter "videoId"
    .parameter "pin"

    .prologue
    const/4 v2, 0x1

    .line 260
    iget-boolean v3, p0, Lcom/google/android/youtube/videos/PinManager;->downloadsRestored:Z

    if-nez v3, :cond_14

    .line 261
    iget-object v2, p0, Lcom/google/android/youtube/videos/PinManager;->pendingOperations:Ljava/util/List;

    new-instance v3, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_13
    :goto_13
    return-void

    .line 264
    :cond_14
    iget-object v3, p0, Lcom/google/android/youtube/videos/PinManager;->videoStates:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/videos/PinManager$PinState;

    .line 265
    .local v0, state:Lcom/google/android/youtube/videos/PinManager$PinState;
    if-nez v0, :cond_44

    move v1, p2

    .line 266
    .local v1, togglePin:Z
    :goto_1f
    if-eqz v1, :cond_13

    .line 267
    if-nez v0, :cond_2d

    .line 268
    new-instance v0, Lcom/google/android/youtube/videos/PinManager$PinState;

    .end local v0           #state:Lcom/google/android/youtube/videos/PinManager$PinState;
    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/videos/PinManager$PinState;-><init>(Lcom/google/android/youtube/videos/PinManager;Ljava/lang/String;)V

    .line 269
    .restart local v0       #state:Lcom/google/android/youtube/videos/PinManager$PinState;
    iget-object v3, p0, Lcom/google/android/youtube/videos/PinManager;->videoStates:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :cond_2d
    #setter for: Lcom/google/android/youtube/videos/PinManager$PinState;->isPinned:Z
    invoke-static {v0, p2}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$202(Lcom/google/android/youtube/videos/PinManager$PinState;Z)Z

    .line 272
    iget-object v3, p0, Lcom/google/android/youtube/videos/PinManager;->listener:Lcom/google/android/youtube/videos/PinManager$Listener;

    invoke-interface {v3, v0}, Lcom/google/android/youtube/videos/PinManager$Listener;->onPinStateChange(Lcom/google/android/youtube/videos/PinManager$PinState;)V

    .line 273
    #getter for: Lcom/google/android/youtube/videos/PinManager$PinState;->operationInProgress:Z
    invoke-static {v0}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$900(Lcom/google/android/youtube/videos/PinManager$PinState;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 277
    #setter for: Lcom/google/android/youtube/videos/PinManager$PinState;->operationInProgress:Z
    invoke-static {v0, v2}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$902(Lcom/google/android/youtube/videos/PinManager$PinState;Z)Z

    .line 278
    if-nez p2, :cond_4e

    .line 279
    invoke-direct {p0, v0}, Lcom/google/android/youtube/videos/PinManager;->unpinVideo(Lcom/google/android/youtube/videos/PinManager$PinState;)V

    goto :goto_13

    .line 265
    .end local v1           #togglePin:Z
    :cond_44
    #getter for: Lcom/google/android/youtube/videos/PinManager$PinState;->isPinned:Z
    invoke-static {v0}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$200(Lcom/google/android/youtube/videos/PinManager$PinState;)Z

    move-result v3

    if-eq v3, p2, :cond_4c

    move v1, v2

    goto :goto_1f

    :cond_4c
    const/4 v1, 0x0

    goto :goto_1f

    .line 281
    .restart local v1       #togglePin:Z
    :cond_4e
    invoke-direct {p0, v0}, Lcom/google/android/youtube/videos/PinManager;->pinVideo(Lcom/google/android/youtube/videos/PinManager$PinState;)V

    goto :goto_13
.end method
