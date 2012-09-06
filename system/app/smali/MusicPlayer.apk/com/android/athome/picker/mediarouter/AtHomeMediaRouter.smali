.class public Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;
.super Ljava/lang/Object;
.source "AtHomeMediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$ToggleRxRunnable;,
        Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$ProcessTgsStateRunnable;,
        Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow;,
        Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AtHomeReceiver;,
        Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$Callback;,
        Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$DeviceId;
    }
.end annotation


# static fields
.field private static sAtHomeGroupCategory:Ljava/lang/Object;

.field private static sAtHomeReceiverCategory:Ljava/lang/Object;

.field static final sRouters:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mApplicationId:Ljava/lang/String;

.field private mAssigningRxToGroup:Z

.field private mAtHomeReceivers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AtHomeReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoSelectRouteId:Landroid/support/place/picker/MediaRouteProviderClient$SerialNumberRouteId;

.field private mAvailableRxs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$DeviceId;",
            "Landroid/support/place/rpc/EndpointInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBroker:Landroid/support/place/connector/Broker;

.field private mBrokerManager:Landroid/support/place/api/broker/BrokerManager;

.field private mCallback:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$Callback;

.field private mCanSendVolumeAdjustmentRpc:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mConnectorType:Ljava/lang/String;

.field private mCreatingGroup:Z

.field private final mGroupCreatingLock:Ljava/lang/Object;

.field private mGroupingListener:Landroid/support/place/music/TungstenGroupingService$Listener;

.field private mGroupingService:Landroid/support/place/music/TungstenGroupingService;

.field private mHandler:Landroid/os/Handler;

.field private mIgnoreTgsVolumeUpdates:Z

.field private mListener:Landroid/support/place/api/broker/BrokerManager$ConnectionListener;

.field private mMediaRouteProviderClient:Landroid/support/place/picker/MediaRouteProviderClient;

.field private mMediaRouter:Ljava/lang/Object;

.field private mMediaRouterCallback:Lcom/android/athome/picker/media/AbsMediaRouterCompat$SimpleCallback;

.field private mMediaRouterUpdateLock:Ljava/lang/Object;

.field private mMusicTxConnectors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/place/connector/ConnectorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mQueuedGroupRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Landroid/support/place/connector/ConnectorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRemovingFromGroup:Z

.field private mResumeTgsVolumeUpdates:Ljava/lang/Runnable;

.field private mRetryCheckTgsVersion:Ljava/lang/Runnable;

.field private mRxStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/athome/picker/UserRouteState;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedOutput:Ljava/lang/Object;

.field private mSendVolumeAdjustmentRpc:Ljava/lang/Runnable;

.field private mStarted:Z

.field private mTgsBeingChecked:Landroid/support/place/connector/ConnectorInfo;

.field private mUpdatingMediaRouter:Z

.field private mVolumeCallback:Lcom/android/athome/picker/media/AbsMediaRouterCompat$VolumeCallback;

.field private mVolumeHardkeyDelta:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 63
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->sRouters:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Landroid/support/place/api/broker/BrokerManager;)V
    .registers 8
    .parameter "context"
    .parameter "mediaRouter"
    .parameter "brokerManager"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-boolean v2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mStarted:Z

    .line 73
    iput-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mBrokerManager:Landroid/support/place/api/broker/BrokerManager;

    .line 74
    iput-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mGroupingService:Landroid/support/place/music/TungstenGroupingService;

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mHandler:Landroid/os/Handler;

    .line 77
    iput-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mMediaRouter:Ljava/lang/Object;

    .line 78
    iput-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mMediaRouteProviderClient:Landroid/support/place/picker/MediaRouteProviderClient;

    .line 79
    iput-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mApplicationId:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mVolumeHardkeyDelta:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mCanSendVolumeAdjustmentRpc:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mRxStates:Ljava/util/HashMap;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mAvailableRxs:Ljava/util/HashMap;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mReceivers:Ljava/util/HashMap;

    .line 102
    iput-boolean v2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mCreatingGroup:Z

    .line 103
    iput-boolean v2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mAssigningRxToGroup:Z

    .line 104
    iput-boolean v2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mRemovingFromGroup:Z

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mQueuedGroupRequests:Ljava/util/ArrayList;

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mMediaRouterUpdateLock:Ljava/lang/Object;

    .line 109
    iput-boolean v2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mUpdatingMediaRouter:Z

    .line 112
    iput-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mAutoSelectRouteId:Landroid/support/place/picker/MediaRouteProviderClient$SerialNumberRouteId;

    .line 118
    new-instance v0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$1;

    invoke-direct {v0, p0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$1;-><init>(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)V

    iput-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mRetryCheckTgsVersion:Ljava/lang/Runnable;

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mAtHomeReceivers:Ljava/util/Map;

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mMusicTxConnectors:Ljava/util/Map;

    .line 162
    iput-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mSelectedOutput:Ljava/lang/Object;

    .line 164
    new-instance v0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$2;

    invoke-direct {v0, p0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$2;-><init>(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)V

    iput-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mVolumeCallback:Lcom/android/athome/picker/media/AbsMediaRouterCompat$VolumeCallback;

    .line 195
    new-instance v0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$3;

    invoke-direct {v0, p0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$3;-><init>(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)V

    iput-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mMediaRouterCallback:Lcom/android/athome/picker/media/AbsMediaRouterCompat$SimpleCallback;

    .line 324
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mGroupCreatingLock:Ljava/lang/Object;

    .line 327
    iput-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mConnectorType:Ljava/lang/String;

    .line 338
    iput-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mCallback:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$Callback;

    .line 502
    new-instance v0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$4;

    invoke-direct {v0, p0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$4;-><init>(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)V

    iput-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mListener:Landroid/support/place/api/broker/BrokerManager$ConnectionListener;

    .line 572
    new-instance v0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$5;

    invoke-direct {v0, p0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$5;-><init>(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)V

    iput-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mResumeTgsVolumeUpdates:Ljava/lang/Runnable;

    .line 882
    new-instance v0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$11;

    invoke-direct {v0, p0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$11;-><init>(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)V

    iput-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mSendVolumeAdjustmentRpc:Ljava/lang/Runnable;

    .line 890
    new-instance v0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$12;

    invoke-direct {v0, p0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$12;-><init>(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)V

    iput-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mGroupingListener:Landroid/support/place/music/TungstenGroupingService$Listener;

    .line 380
    iput-object p2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mMediaRouter:Ljava/lang/Object;

    .line 381
    iput-object p3, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mBrokerManager:Landroid/support/place/api/broker/BrokerManager;

    .line 382
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mAppContext:Landroid/content/Context;

    .line 383
    sget-object v0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->sAtHomeReceiverCategory:Ljava/lang/Object;

    if-nez v0, :cond_c0

    .line 384
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mMediaRouter:Ljava/lang/Object;

    const-string v1, "Nexus Q"

    invoke-static {v0, v1, v2}, Lcom/android/athome/picker/media/MediaRouterCompat;->createRouteCategory(Ljava/lang/Object;Ljava/lang/CharSequence;Z)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->sAtHomeReceiverCategory:Ljava/lang/Object;

    .line 388
    :cond_c0
    sget-object v0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->sAtHomeGroupCategory:Ljava/lang/Object;

    if-nez v0, :cond_ce

    .line 389
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mMediaRouter:Ljava/lang/Object;

    const-string v1, "Nexus Q"

    invoke-static {v0, v1, v3}, Lcom/android/athome/picker/media/MediaRouterCompat;->createRouteCategory(Ljava/lang/Object;Ljava/lang/CharSequence;Z)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->sAtHomeGroupCategory:Ljava/lang/Object;

    .line 393
    :cond_ce
    new-instance v0, Landroid/support/place/picker/MediaRouteProviderClient;

    invoke-direct {v0, p1}, Landroid/support/place/picker/MediaRouteProviderClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mMediaRouteProviderClient:Landroid/support/place/picker/MediaRouteProviderClient;

    .line 394
    return-void
.end method

.method static synthetic access$000(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Landroid/support/place/connector/ConnectorInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mTgsBeingChecked:Landroid/support/place/connector/ConnectorInfo;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Landroid/support/place/connector/ConnectorInfo;)Landroid/support/place/connector/ConnectorInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mTgsBeingChecked:Landroid/support/place/connector/ConnectorInfo;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Landroid/support/place/connector/ConnectorInfo;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->checkTgsVersion(Landroid/support/place/connector/ConnectorInfo;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Ljava/util/List;Ljava/lang/Object;Z)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->createNewTgsGroup(Ljava/util/List;Ljava/lang/Object;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$Callback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mCallback:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$Callback;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mStarted:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mApplicationId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Landroid/support/place/picker/MediaRouteProviderClient;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mMediaRouteProviderClient:Landroid/support/place/picker/MediaRouteProviderClient;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mSelectedOutput:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mSelectedOutput:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->updateGroupMemberShip(Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Landroid/support/place/music/TungstenGroupingService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mGroupingService:Landroid/support/place/music/TungstenGroupingService;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Landroid/support/place/music/TungstenGroupingService;)Landroid/support/place/music/TungstenGroupingService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mGroupingService:Landroid/support/place/music/TungstenGroupingService;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Landroid/support/place/connector/Broker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mBroker:Landroid/support/place/connector/Broker;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Landroid/support/place/connector/Broker;)Landroid/support/place/connector/Broker;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mBroker:Landroid/support/place/connector/Broker;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->onTgsLost()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->sAtHomeReceiverCategory:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mConnectorType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Landroid/support/place/connector/ConnectorInfo;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->addConnector(Landroid/support/place/connector/ConnectorInfo;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mIgnoreTgsVolumeUpdates:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mIgnoreTgsVolumeUpdates:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Landroid/support/place/api/broker/BrokerManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mBrokerManager:Landroid/support/place/api/broker/BrokerManager;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Landroid/support/place/connector/ConnectorInfo;)Lcom/android/athome/picker/UserRouteState;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->getRxServiceState(Landroid/support/place/connector/ConnectorInfo;)Lcom/android/athome/picker/UserRouteState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;FZ)Ljava/lang/Object;
    .registers 8
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 50
    invoke-direct/range {p0 .. p6}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->buildUserRoute(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;FZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mMediaRouter:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Landroid/support/place/picker/MediaRouteProviderClient$SerialNumberRouteId;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mAutoSelectRouteId:Landroid/support/place/picker/MediaRouteProviderClient$SerialNumberRouteId;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Landroid/support/place/picker/MediaRouteProviderClient$SerialNumberRouteId;)Landroid/support/place/picker/MediaRouteProviderClient$SerialNumberRouteId;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mAutoSelectRouteId:Landroid/support/place/picker/MediaRouteProviderClient$SerialNumberRouteId;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Landroid/support/place/music/TungstenGroupingService;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->setGroupingService(Landroid/support/place/music/TungstenGroupingService;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mRetryCheckTgsVersion:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->sAtHomeGroupCategory:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Ljava/util/List;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->processRxVolumes(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mCanSendVolumeAdjustmentRpc:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mVolumeHardkeyDelta:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->adjustGroupVolume(I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->useGroupingService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Landroid/support/place/music/TgsState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->processGroupAndReceiverList(Landroid/support/place/music/TgsState;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Landroid/support/place/music/TgsState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->addRxServiceConnector(Landroid/support/place/music/TgsState;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mCreatingGroup:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mCreatingGroup:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Landroid/support/place/music/TgsGroup;Ljava/util/ArrayList;Ljava/lang/Object;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->addRouteGroup(Landroid/support/place/music/TgsGroup;Ljava/util/ArrayList;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Ljava/lang/Object;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->setReceiverVolume(Ljava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$4002(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mRemovingFromGroup:Z

    return p1
.end method

.method static synthetic access$4102(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mAssigningRxToGroup:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->getLatestTgsState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->stopTgsVolumeUpdates(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mAtHomeReceivers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mMusicTxConnectors:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mUpdatingMediaRouter:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method private addConnector(Landroid/support/place/connector/ConnectorInfo;)V
    .registers 5
    .parameter "connector"

    .prologue
    .line 628
    if-nez p1, :cond_3

    .line 637
    :goto_2
    return-void

    .line 631
    :cond_3
    invoke-virtual {p1}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/place/rpc/EndpointInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 632
    .local v0, id:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mAtHomeReceivers:Ljava/util/Map;

    monitor-enter v2

    .line 633
    :try_start_e
    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mAtHomeReceivers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 634
    new-instance v1, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow;-><init>(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Ljava/lang/String;Landroid/support/place/connector/ConnectorInfo;)V

    invoke-virtual {v1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AddConnectorWorkflow;->run()V

    .line 636
    :cond_1e
    monitor-exit v2

    goto :goto_2

    :catchall_20
    move-exception v1

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_20

    throw v1
.end method

.method private addRouteGroup(Landroid/support/place/music/TgsGroup;Ljava/util/ArrayList;Ljava/lang/Object;)V
    .registers 7
    .parameter "group"
    .parameter
    .parameter "routeGroup"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/place/music/TgsGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/place/connector/ConnectorInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1251
    .local p2, connectors:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/support/place/connector/ConnectorInfo;>;"
    invoke-virtual {p1}, Landroid/support/place/music/TgsGroup;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->getMaxVolume(Ljava/lang/Object;)F

    move-result v1

    invoke-direct {p0, p3}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->isGroupMuted(Ljava/lang/Object;)Z

    move-result v2

    invoke-direct {p0, p3, v0, v1, v2}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->setRouteState(Ljava/lang/Object;Ljava/lang/String;FZ)V

    .line 1255
    const/4 v0, 0x1

    invoke-direct {p0, p3, v0, p2}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->logRouteGroup(Ljava/lang/Object;ZLjava/util/List;)V

    .line 1256
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mAtHomeReceivers:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/support/place/music/TgsGroup;->getGroupId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AtHomeReceiver;

    invoke-direct {v2, p0, p3, p2}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AtHomeReceiver;-><init>(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Ljava/lang/Object;Ljava/util/List;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mMusicTxConnectors:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/support/place/music/TgsGroup;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/place/music/TgsGroup;->getTx()Landroid/support/place/music/TgsTxService;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/place/music/TgsTxService;->getAppConnector()Landroid/support/place/connector/ConnectorInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    return-void
.end method

.method private addRxService(Landroid/support/place/music/TgsService;)V
    .registers 7
    .parameter "receiver"

    .prologue
    .line 1045
    invoke-virtual {p1}, Landroid/support/place/music/TgsService;->getConnectorInfo()Landroid/support/place/connector/ConnectorInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v0

    .line 1046
    .local v0, endpoint:Landroid/support/place/rpc/EndpointInfo;
    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mAvailableRxs:Ljava/util/HashMap;

    new-instance v2, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$DeviceId;

    invoke-virtual {v0}, Landroid/support/place/rpc/EndpointInfo;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/support/place/rpc/EndpointInfo;->getPort()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$DeviceId;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    return-void
.end method

.method private addRxServiceConnector(Landroid/support/place/music/TgsState;)V
    .registers 9
    .parameter "state"

    .prologue
    .line 1004
    const-string v4, "AtHomeMediaRouter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRxServiceConnector tgsState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    if-nez p1, :cond_1b

    .line 1020
    :cond_1a
    return-void

    .line 1009
    :cond_1b
    iget-object v4, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mAvailableRxs:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1010
    invoke-virtual {p1}, Landroid/support/place/music/TgsState;->getGroups()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/music/TgsGroup;

    .line 1011
    .local v0, group:Landroid/support/place/music/TgsGroup;
    invoke-virtual {v0}, Landroid/support/place/music/TgsGroup;->getRxs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/place/music/TgsService;

    .line 1012
    .local v3, receiver:Landroid/support/place/music/TgsService;
    invoke-direct {p0, v3}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->addRxService(Landroid/support/place/music/TgsService;)V

    goto :goto_3c

    .line 1017
    .end local v0           #group:Landroid/support/place/music/TgsGroup;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #receiver:Landroid/support/place/music/TgsService;
    :cond_4c
    invoke-virtual {p1}, Landroid/support/place/music/TgsState;->getAvailableRxs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_54
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/place/music/TgsService;

    .line 1018
    .restart local v3       #receiver:Landroid/support/place/music/TgsService;
    invoke-direct {p0, v3}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->addRxService(Landroid/support/place/music/TgsService;)V

    goto :goto_54
.end method

.method private declared-synchronized addTgsGroup(Landroid/support/place/music/TgsGroup;)V
    .registers 16
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 1221
    monitor-enter p0

    :try_start_2
    invoke-virtual {p1}, Landroid/support/place/music/TgsGroup;->getRxs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    .line 1222
    if-lez v12, :cond_7c

    .line 1223
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 1224
    const/4 v1, 0x0

    move v10, v9

    move-object v11, v1

    .line 1225
    :goto_14
    if-ge v10, v12, :cond_77

    .line 1226
    invoke-virtual {p1}, Landroid/support/place/music/TgsGroup;->getRxs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/support/place/music/TgsService;

    move-object v8, v0

    .line 1227
    invoke-virtual {v8}, Landroid/support/place/music/TgsService;->getConnectorInfo()Landroid/support/place/connector/ConnectorInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/place/rpc/EndpointInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 1228
    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mRxStates:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/athome/picker/UserRouteState;

    .line 1229
    const/4 v3, 0x1

    invoke-virtual {v8}, Landroid/support/place/music/TgsService;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    if-nez v1, :cond_68

    const/4 v6, 0x0

    :goto_40
    if-nez v1, :cond_6d

    move v7, v9

    :goto_43
    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->buildUserRoute(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;FZ)Ljava/lang/Object;

    move-result-object v1

    .line 1232
    if-nez v10, :cond_72

    .line 1235
    iget-object v2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mMediaRouter:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/android/athome/picker/media/MediaRouterCompat;->addUserRoute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1236
    invoke-static {v1}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteInfo;->getGroup(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1240
    :goto_53
    iget-object v3, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v8}, Landroid/support/place/music/TgsService;->getConnectorInfo()Landroid/support/place/connector/ConnectorInfo;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    invoke-virtual {v8}, Landroid/support/place/music/TgsService;->getConnectorInfo()Landroid/support/place/connector/ConnectorInfo;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1225
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    move-object v11, v2

    goto :goto_14

    .line 1229
    :cond_68
    invoke-virtual {v1}, Lcom/android/athome/picker/UserRouteState;->getVolume()F

    move-result v6

    goto :goto_40

    :cond_6d
    invoke-virtual {v1}, Lcom/android/athome/picker/UserRouteState;->getMute()Z

    move-result v7

    goto :goto_43

    .line 1238
    :cond_72
    invoke-static {v11, v1}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteGroup;->addRoute(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v11

    goto :goto_53

    .line 1243
    :cond_77
    if-eqz v11, :cond_7c

    .line 1244
    invoke-direct {p0, p1, v13, v11}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->addRouteGroup(Landroid/support/place/music/TgsGroup;Ljava/util/ArrayList;Ljava/lang/Object;)V
    :try_end_7c
    .catchall {:try_start_2 .. :try_end_7c} :catchall_7e

    .line 1247
    :cond_7c
    monitor-exit p0

    return-void

    .line 1221
    :catchall_7e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized addUserRoute(Landroid/support/place/music/TgsService;)V
    .registers 9
    .parameter

    .prologue
    .line 1145
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Landroid/support/place/music/TgsService;->getConnectorInfo()Landroid/support/place/connector/ConnectorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/place/rpc/EndpointInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 1146
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mRxStates:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/UserRouteState;

    .line 1147
    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/support/place/music/TgsService;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-nez v0, :cond_59

    const/4 v5, 0x0

    :goto_1f
    if-nez v0, :cond_5e

    const/4 v6, 0x0

    :goto_22
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->buildUserRoute(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;FZ)Ljava/lang/Object;

    move-result-object v0

    .line 1150
    iget-object v2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mMediaRouter:Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/android/athome/picker/media/MediaRouterCompat;->addUserRoute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1151
    const-string v2, "AtHomeMediaRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Added user route:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/support/place/music/TgsService;->getConnectorInfo()Landroid/support/place/connector/ConnectorInfo;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_57
    .catchall {:try_start_1 .. :try_end_57} :catchall_63

    .line 1153
    monitor-exit p0

    return-void

    .line 1147
    :cond_59
    :try_start_59
    invoke-virtual {v0}, Lcom/android/athome/picker/UserRouteState;->getVolume()F

    move-result v5

    goto :goto_1f

    :cond_5e
    invoke-virtual {v0}, Lcom/android/athome/picker/UserRouteState;->getMute()Z
    :try_end_61
    .catchall {:try_start_59 .. :try_end_61} :catchall_63

    move-result v6

    goto :goto_22

    .line 1145
    :catchall_63
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized adjustGroupVolume(I)V
    .registers 6
    .parameter "steps"

    .prologue
    .line 802
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mSendVolumeAdjustmentRpc:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_18

    .line 803
    if-nez p1, :cond_c

    .line 822
    :goto_a
    monitor-exit p0

    return-void

    .line 806
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mGroupingService:Landroid/support/place/music/TungstenGroupingService;

    if-nez v0, :cond_1b

    .line 807
    const-string v0, "AtHomeMediaRouter"

    const-string v1, "TGS is not available yet. Not adjusting Rx volumes."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_18

    goto :goto_a

    .line 802
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0

    .line 812
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mSendVolumeAdjustmentRpc:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 813
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mCanSendVolumeAdjustmentRpc:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 815
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mGroupingService:Landroid/support/place/music/TungstenGroupingService;

    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mSelectedOutput:Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->getRouteId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$8;

    invoke-direct {v2, p0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$8;-><init>(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)V

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/place/music/TungstenGroupingService;->adjustGroupVolume(Ljava/lang/String;ILandroid/support/place/rpc/RpcErrorHandler;)V
    :try_end_3a
    .catchall {:try_start_1b .. :try_end_3a} :catchall_18

    goto :goto_a
.end method

.method private buildUserRoute(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;FZ)Ljava/lang/Object;
    .registers 11
    .parameter "id"
    .parameter "isGroup"
    .parameter "name"
    .parameter "status"
    .parameter "volume"
    .parameter "isMuted"

    .prologue
    const/4 v3, 0x1

    .line 733
    iget-object v2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mMediaRouter:Ljava/lang/Object;

    if-eqz p2, :cond_2c

    sget-object v1, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->sAtHomeGroupCategory:Ljava/lang/Object;

    :goto_7
    invoke-static {v2, v1}, Lcom/android/athome/picker/media/MediaRouterCompat;->createUserRoute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 735
    .local v0, route:Ljava/lang/Object;
    invoke-static {v0, p3}, Lcom/android/athome/picker/media/MediaRouterCompat$UserRouteInfo;->setName(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 736
    invoke-static {v0, p4}, Lcom/android/athome/picker/media/MediaRouterCompat$UserRouteInfo;->setStatus(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 737
    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/android/athome/picker/media/MediaRouterCompat$UserRouteInfo;->setVolumeMax(Ljava/lang/Object;I)V

    .line 738
    const/high16 v1, 0x42c8

    mul-float/2addr v1, p5

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/android/athome/picker/media/MediaRouterCompat$UserRouteInfo;->setVolume(Ljava/lang/Object;I)V

    .line 739
    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mVolumeCallback:Lcom/android/athome/picker/media/AbsMediaRouterCompat$VolumeCallback;

    invoke-static {v0, v1}, Lcom/android/athome/picker/media/MediaRouterCompat$UserRouteInfo;->setVolumeCallback(Ljava/lang/Object;Lcom/android/athome/picker/media/AbsMediaRouterCompat$VolumeCallback;)V

    .line 740
    invoke-static {v0, v3}, Lcom/android/athome/picker/media/MediaRouterCompat$UserRouteInfo;->setVolumeHandling(Ljava/lang/Object;I)V

    .line 742
    invoke-static {v0, v3}, Lcom/android/athome/picker/media/MediaRouterCompat$UserRouteInfo;->setPlaybackType(Ljava/lang/Object;I)V

    .line 745
    invoke-direct {p0, v0, p1, p5, p6}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->setRouteState(Ljava/lang/Object;Ljava/lang/String;FZ)V

    .line 746
    return-object v0

    .line 733
    .end local v0           #route:Ljava/lang/Object;
    :cond_2c
    sget-object v1, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->sAtHomeReceiverCategory:Ljava/lang/Object;

    goto :goto_7
.end method

.method private checkTgsVersion(Landroid/support/place/connector/ConnectorInfo;)V
    .registers 6
    .parameter "tgsInfo"

    .prologue
    const/4 v3, 0x1

    .line 755
    iput-object p1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mTgsBeingChecked:Landroid/support/place/connector/ConnectorInfo;

    .line 756
    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mBroker:Landroid/support/place/connector/Broker;

    if-nez v1, :cond_f

    .line 757
    const-string v1, "AtHomeMediaRouter"

    const-string v2, "Broker not ready."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :goto_e
    return-void

    .line 760
    :cond_f
    new-instance v0, Landroid/support/place/music/TungstenGroupingService;

    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mBroker:Landroid/support/place/connector/Broker;

    invoke-virtual {p1}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/support/place/music/TungstenGroupingService;-><init>(Landroid/support/place/connector/Broker;Landroid/support/place/rpc/EndpointInfo;)V

    .line 762
    .local v0, tgs:Landroid/support/place/music/TungstenGroupingService;
    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mRetryCheckTgsVersion:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 764
    new-instance v1, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$6;

    invoke-direct {v1, p0, v0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$6;-><init>(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Landroid/support/place/music/TungstenGroupingService;)V

    new-instance v2, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$7;

    invoke-direct {v2, p0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$7;-><init>(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)V

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/support/place/music/TungstenGroupingService;->versionCheck(IILandroid/support/place/music/TungstenGroupingService$OnVersionCheck;Landroid/support/place/rpc/RpcErrorHandler;)V

    goto :goto_e
.end method

.method private clearAllRoutes()V
    .registers 9

    .prologue
    .line 1023
    const-string v5, "AtHomeMediaRouter"

    const-string v6, "Clear all routes."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    iget-object v6, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mMediaRouterUpdateLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1025
    const/4 v5, 0x1

    :try_start_b
    iput-boolean v5, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mUpdatingMediaRouter:Z

    .line 1027
    sget-object v5, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->sAtHomeGroupCategory:Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteCategory;->getRoutes(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1029
    .local v4, routeGroup:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteGroup;->getRouteCount(Ljava/lang/Object;)I

    move-result v3

    .line 1030
    .local v3, routeCount:I
    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_28
    if-ltz v0, :cond_18

    .line 1031
    invoke-static {v4, v0}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteGroup;->removeRouteAt(Ljava/lang/Object;I)V

    .line 1030
    add-int/lit8 v0, v0, -0x1

    goto :goto_28

    .line 1034
    .end local v0           #i:I
    .end local v3           #routeCount:I
    .end local v4           #routeGroup:Ljava/lang/Object;
    :cond_30
    sget-object v5, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->sAtHomeReceiverCategory:Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteCategory;->getRoutes(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1036
    .local v2, route:Ljava/lang/Object;
    iget-object v5, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mMediaRouter:Ljava/lang/Object;

    invoke-static {v5, v2}, Lcom/android/athome/picker/media/MediaRouterCompat;->removeUserRoute(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3b

    .line 1041
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #route:Ljava/lang/Object;
    :catchall_4b
    move-exception v5

    monitor-exit v6
    :try_end_4d
    .catchall {:try_start_b .. :try_end_4d} :catchall_4b

    throw v5

    .line 1038
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_4e
    :try_start_4e
    iget-object v5, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mAtHomeReceivers:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 1039
    iget-object v5, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mMusicTxConnectors:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 1040
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mUpdatingMediaRouter:Z

    .line 1041
    monitor-exit v6
    :try_end_5c
    .catchall {:try_start_4e .. :try_end_5c} :catchall_4b

    .line 1042
    return-void
.end method

.method private createNewTgsGroup(Ljava/util/List;Ljava/lang/Object;Z)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mGroupingService:Landroid/support/place/music/TungstenGroupingService;

    if-nez v0, :cond_c

    .line 1292
    const-string v0, "AtHomeMediaRouter"

    const-string v1, "TGS is not available. Not creating group."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    :goto_b
    return-void

    .line 1295
    :cond_c
    iget-object v6, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mGroupCreatingLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1296
    :try_start_f
    iget-boolean v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mCreatingGroup:Z

    if-nez v0, :cond_49

    .line 1297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mCreatingGroup:Z

    .line 1298
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1301
    const-string v0, "AtHomeMediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating group "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    iget-object v7, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mGroupingService:Landroid/support/place/music/TungstenGroupingService;

    new-instance v0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$13;

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$13;-><init>(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/Object;)V

    new-instance v1, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$14;

    invoke-direct {v1, p0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$14;-><init>(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)V

    invoke-virtual {v7, v2, p1, v0, v1}, Landroid/support/place/music/TungstenGroupingService;->createGroup(Ljava/lang/String;Ljava/util/List;Landroid/support/place/music/TungstenGroupingService$OnCreateGroup;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 1334
    :cond_49
    monitor-exit v6

    goto :goto_b

    :catchall_4b
    move-exception v0

    monitor-exit v6
    :try_end_4d
    .catchall {:try_start_f .. :try_end_4d} :catchall_4b

    throw v0
.end method

.method public static forApplication(Landroid/content/Context;)Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;
    .registers 7
    .parameter "context"

    .prologue
    .line 412
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 413
    .local v0, appContext:Landroid/content/Context;
    sget-object v4, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->sRouters:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    .line 414
    invoke-static {v0}, Lcom/android/athome/picker/media/MediaRouterCompat;->forApplication(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    .line 415
    .local v2, mediaRouter:Ljava/lang/Object;
    if-nez v2, :cond_1a

    .line 416
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Media Router must be initialized before using AtHomeMediaRouter."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 419
    :cond_1a
    invoke-static {v0}, Landroid/support/place/api/broker/BrokerManager;->getInstance(Landroid/content/Context;)Landroid/support/place/api/broker/BrokerManager;

    move-result-object v1

    .line 420
    .local v1, brokerManager:Landroid/support/place/api/broker/BrokerManager;
    if-nez v1, :cond_28

    .line 421
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Broker Manager must be initialized before using AtHomeMediaRouter."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 424
    :cond_28
    new-instance v3, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    invoke-direct {v3, v0, v2, v1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;-><init>(Landroid/content/Context;Ljava/lang/Object;Landroid/support/place/api/broker/BrokerManager;)V

    .line 425
    .local v3, r:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;
    sget-object v4, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->sRouters:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v0, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    .end local v1           #brokerManager:Landroid/support/place/api/broker/BrokerManager;
    .end local v2           #mediaRouter:Ljava/lang/Object;
    .end local v3           #r:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;
    :goto_32
    return-object v3

    :cond_33
    sget-object v4, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->sRouters:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;

    move-object v3, v4

    goto :goto_32
.end method

.method private getLatestTgsState()V
    .registers 4

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mGroupingService:Landroid/support/place/music/TungstenGroupingService;

    if-nez v0, :cond_c

    .line 1481
    const-string v0, "AtHomeMediaRouter"

    const-string v1, "TGS not ready."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    :goto_b
    return-void

    .line 1485
    :cond_c
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mGroupingService:Landroid/support/place/music/TungstenGroupingService;

    new-instance v1, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$16;

    invoke-direct {v1, p0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$16;-><init>(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)V

    new-instance v2, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$17;

    invoke-direct {v2, p0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$17;-><init>(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/place/music/TungstenGroupingService;->getGroupState(Landroid/support/place/music/TungstenGroupingService$OnGetGroupState;Landroid/support/place/rpc/RpcErrorHandler;)V

    goto :goto_b
.end method

.method private getMaxVolume(Ljava/lang/Object;)F
    .registers 6
    .parameter

    .prologue
    .line 1274
    const/high16 v1, 0x7fc0

    .line 1276
    const/4 v0, 0x0

    :goto_3
    invoke-static {p1}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteGroup;->getRouteCount(Ljava/lang/Object;)I

    move-result v2

    if-ge v0, v2, :cond_2b

    .line 1277
    invoke-static {p1, v0}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteGroup;->getRouteAt(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 1278
    if-eqz v2, :cond_1f

    invoke-static {v2}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->getRouteMute(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 1279
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1280
    invoke-static {v2}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->getRouteVolume(Ljava/lang/Object;)F

    move-result v1

    .line 1276
    :cond_1f
    :goto_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1282
    :cond_22
    invoke-static {v2}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->getRouteVolume(Ljava/lang/Object;)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_1f

    .line 1286
    :cond_2b
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v1, 0x0

    :cond_32
    return v1
.end method

.method public static getRouteId(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter "route"

    .prologue
    .line 825
    if-eqz p0, :cond_13

    .line 826
    invoke-static {p0}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteInfo;->getTag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 827
    .local v0, tag:Ljava/lang/Object;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/athome/picker/UserRouteState;

    if-eqz v1, :cond_13

    .line 828
    check-cast v0, Lcom/android/athome/picker/UserRouteState;

    .end local v0           #tag:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/android/athome/picker/UserRouteState;->getId()Ljava/lang/String;

    move-result-object v1

    .line 831
    :goto_12
    return-object v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public static getRouteMute(Ljava/lang/Object;)Z
    .registers 3
    .parameter "route"

    .prologue
    .line 845
    if-eqz p0, :cond_13

    .line 846
    invoke-static {p0}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteInfo;->getTag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 847
    .local v0, tag:Ljava/lang/Object;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/athome/picker/UserRouteState;

    if-eqz v1, :cond_13

    .line 848
    check-cast v0, Lcom/android/athome/picker/UserRouteState;

    .end local v0           #tag:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/android/athome/picker/UserRouteState;->getMute()Z

    move-result v1

    .line 851
    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public static getRouteVolume(Ljava/lang/Object;)F
    .registers 3
    .parameter "route"

    .prologue
    .line 835
    if-eqz p0, :cond_13

    .line 836
    invoke-static {p0}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteInfo;->getTag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 837
    .local v0, tag:Ljava/lang/Object;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/athome/picker/UserRouteState;

    if-eqz v1, :cond_13

    .line 838
    check-cast v0, Lcom/android/athome/picker/UserRouteState;

    .end local v0           #tag:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/android/athome/picker/UserRouteState;->getVolume()F

    move-result v1

    .line 841
    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method private getRxServiceEndpoint(Landroid/support/place/rpc/EndpointInfo;)Landroid/support/place/rpc/EndpointInfo;
    .registers 5
    .parameter "endpoint"

    .prologue
    .line 1472
    new-instance v0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$DeviceId;

    invoke-virtual {p1}, Landroid/support/place/rpc/EndpointInfo;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/place/rpc/EndpointInfo;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$DeviceId;-><init>(Ljava/lang/String;I)V

    .line 1473
    .local v0, deviceId:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$DeviceId;
    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mAvailableRxs:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1474
    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mAvailableRxs:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/place/rpc/EndpointInfo;

    .line 1476
    :goto_1d
    return-object v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method private getRxServiceState(Landroid/support/place/connector/ConnectorInfo;)Lcom/android/athome/picker/UserRouteState;
    .registers 5
    .parameter "connector"

    .prologue
    const/4 v1, 0x0

    .line 717
    if-nez p1, :cond_4

    .line 724
    :cond_3
    :goto_3
    return-object v1

    .line 720
    :cond_4
    invoke-virtual {p1}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->getRxServiceEndpoint(Landroid/support/place/rpc/EndpointInfo;)Landroid/support/place/rpc/EndpointInfo;

    move-result-object v0

    .line 721
    .local v0, rxEndpoint:Landroid/support/place/rpc/EndpointInfo;
    if-eqz v0, :cond_3

    .line 722
    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mRxStates:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/support/place/rpc/EndpointInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/athome/picker/UserRouteState;

    goto :goto_3
.end method

.method private getUserRoute(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .parameter "rxId"

    .prologue
    .line 984
    const/4 v2, 0x0

    .line 985
    .local v2, result:Ljava/lang/Object;
    iget-object v3, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2           #result:Ljava/lang/Object;
    .local v1, i$:Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 986
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Landroid/support/place/connector/ConnectorInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/place/connector/ConnectorInfo;

    invoke-virtual {v3}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/place/rpc/EndpointInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 988
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .restart local v2       #result:Ljava/lang/Object;
    goto :goto_b

    .line 991
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Landroid/support/place/connector/ConnectorInfo;>;"
    .end local v2           #result:Ljava/lang/Object;
    :cond_36
    return-object v2
.end method

.method private isGroupMuted(Ljava/lang/Object;)Z
    .registers 6
    .parameter "routeGroup"

    .prologue
    .line 1262
    const/4 v1, 0x1

    .line 1263
    .local v1, result:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-static {p1}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteGroup;->getRouteCount(Ljava/lang/Object;)I

    move-result v3

    if-ge v0, v3, :cond_15

    .line 1264
    invoke-static {p1, v0}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteGroup;->getRouteAt(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 1265
    .local v2, routeInfo:Ljava/lang/Object;
    if-eqz v2, :cond_16

    invoke-static {v2}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->getRouteMute(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 1266
    const/4 v1, 0x0

    .line 1270
    .end local v2           #routeInfo:Ljava/lang/Object;
    :cond_15
    return v1

    .line 1263
    .restart local v2       #routeInfo:Ljava/lang/Object;
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private logRouteGroup(Ljava/lang/Object;ZLjava/util/List;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/util/List",
            "<",
            "Landroid/support/place/connector/ConnectorInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1209
    invoke-static {p1}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteInfo;->getName(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1210
    invoke-static {p1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->getRouteId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1211
    if-eqz p2, :cond_3f

    .line 1212
    const-string v2, "AtHomeMediaRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add route group to cache: Name= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " Id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "connector size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    :goto_3e
    return-void

    .line 1215
    :cond_3f
    const-string v2, "AtHomeMediaRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update route group in cache: Name= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " Id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "connector size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e
.end method

.method private onTgsLost()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 590
    const-string v0, "AtHomeMediaRouter"

    const-string v1, "OnTgsLost:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mGroupingService:Landroid/support/place/music/TungstenGroupingService;

    if-eqz v0, :cond_13

    .line 592
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mGroupingService:Landroid/support/place/music/TungstenGroupingService;

    invoke-virtual {v0}, Landroid/support/place/music/TungstenGroupingService;->stopListening()V

    .line 593
    iput-object v2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mGroupingService:Landroid/support/place/music/TungstenGroupingService;

    .line 595
    :cond_13
    invoke-direct {p0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->clearAllRoutes()V

    .line 597
    iput-object v2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mTgsBeingChecked:Landroid/support/place/connector/ConnectorInfo;

    .line 598
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mRetryCheckTgsVersion:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 600
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mBrokerManager:Landroid/support/place/api/broker/BrokerManager;

    invoke-virtual {v0}, Landroid/support/place/api/broker/BrokerManager;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mBrokerManager:Landroid/support/place/api/broker/BrokerManager;

    invoke-virtual {v0}, Landroid/support/place/api/broker/BrokerManager;->getConnectedPlace()Landroid/support/place/connector/PlaceInfo;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 601
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mBrokerManager:Landroid/support/place/api/broker/BrokerManager;

    const-class v1, Landroid/support/place/music/TungstenGroupingService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/place/api/broker/BrokerManager;->getConnectorsWithType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 603
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4d

    .line 604
    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mListener:Landroid/support/place/api/broker/BrokerManager$ConnectionListener;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/ConnectorInfo;

    invoke-virtual {v1, v0}, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;->onConnectorAdded(Landroid/support/place/connector/ConnectorInfo;)V

    .line 607
    :cond_4d
    return-void
.end method

.method private processGroupAndReceiverList(Landroid/support/place/music/TgsState;)V
    .registers 18
    .parameter "state"

    .prologue
    .line 1050
    const-string v11, "AtHomeMediaRouter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "processGroupAndReceiverList tgsState="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    if-nez p1, :cond_1d

    .line 1127
    :goto_1c
    return-void

    .line 1054
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mCreatingGroup:Z

    if-eqz v11, :cond_2b

    .line 1055
    const-string v11, "AtHomeMediaRouter"

    const-string v12, "Creating group. Ignore TGS update."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 1058
    :cond_2b
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mAssigningRxToGroup:Z

    if-eqz v11, :cond_39

    .line 1059
    const-string v11, "AtHomeMediaRouter"

    const-string v12, "Assigning rx to group. Ignore TGS update."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 1062
    :cond_39
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mRemovingFromGroup:Z

    if-eqz v11, :cond_47

    .line 1063
    const-string v11, "AtHomeMediaRouter"

    const-string v12, "Removing rx from group. Ignore TGS update."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 1067
    :cond_47
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mMediaRouterUpdateLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1068
    const/4 v11, 0x1

    :try_start_4d
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mUpdatingMediaRouter:Z

    .line 1069
    const-string v11, "AtHomeMediaRouter"

    const-string v13, "Before updates."

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1073
    .local v3, groupIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/support/place/music/TgsState;->getGroups()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_65
    :goto_65
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/place/music/TgsGroup;

    .line 1074
    .local v1, group:Landroid/support/place/music/TgsGroup;
    invoke-virtual {v1}, Landroid/support/place/music/TgsGroup;->getRxs()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-eqz v11, :cond_65

    .line 1077
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mAtHomeReceivers:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/support/place/music/TgsGroup;->getGroupId()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_99

    .line 1078
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->updateTgsGroup(Landroid/support/place/music/TgsGroup;)V

    .line 1082
    :goto_8e
    invoke-virtual {v1}, Landroid/support/place/music/TgsGroup;->getGroupId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_65

    .line 1126
    .end local v1           #group:Landroid/support/place/music/TgsGroup;
    .end local v3           #groupIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    :catchall_96
    move-exception v11

    monitor-exit v12
    :try_end_98
    .catchall {:try_start_4d .. :try_end_98} :catchall_96

    throw v11

    .line 1080
    .restart local v1       #group:Landroid/support/place/music/TgsGroup;
    .restart local v3       #groupIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_99
    :try_start_99
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->addTgsGroup(Landroid/support/place/music/TgsGroup;)V

    goto :goto_8e

    .line 1086
    .end local v1           #group:Landroid/support/place/music/TgsGroup;
    :cond_9f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mAtHomeReceivers:Ljava/util/Map;

    monitor-enter v13
    :try_end_a4
    .catchall {:try_start_99 .. :try_end_a4} :catchall_96

    .line 1087
    :try_start_a4
    new-instance v6, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mAtHomeReceivers:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1088
    .local v6, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_b5
    :goto_b5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1089
    .local v2, groupId:Ljava/lang/String;
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b5

    .line 1092
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mAtHomeReceivers:Ljava/util/Map;

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AtHomeReceiver;

    invoke-virtual {v11}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AtHomeReceiver;->getRoute()Ljava/lang/Object;

    move-result-object v10

    .line 1093
    .local v10, routeGroup:Ljava/lang/Object;
    const-string v11, "AtHomeMediaRouter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "routeGroup to be removed: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    invoke-static {v10}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteGroup;->getRouteCount(Ljava/lang/Object;)I

    move-result v9

    .line 1096
    .local v9, routeCount:I
    add-int/lit8 v4, v9, -0x1

    .local v4, i:I
    :goto_fb
    if-ltz v4, :cond_103

    .line 1097
    invoke-static {v10, v4}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteGroup;->removeRouteAt(Ljava/lang/Object;I)V

    .line 1096
    add-int/lit8 v4, v4, -0x1

    goto :goto_fb

    .line 1099
    :cond_103
    const-string v11, "AtHomeMediaRouter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Remove stale group:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mAtHomeReceivers:Ljava/util/Map;

    invoke-interface {v11, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mMusicTxConnectors:Ljava/util/Map;

    invoke-interface {v11, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b5

    .line 1104
    .end local v2           #groupId:Ljava/lang/String;
    .end local v4           #i:I
    .end local v6           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9           #routeCount:I
    .end local v10           #routeGroup:Ljava/lang/Object;
    :catchall_12a
    move-exception v11

    monitor-exit v13
    :try_end_12c
    .catchall {:try_start_a4 .. :try_end_12c} :catchall_12a

    :try_start_12c
    throw v11
    :try_end_12d
    .catchall {:try_start_12c .. :try_end_12d} :catchall_96

    .restart local v6       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_12d
    :try_start_12d
    monitor-exit v13
    :try_end_12e
    .catchall {:try_start_12d .. :try_end_12e} :catchall_12a

    .line 1107
    :try_start_12e
    sget-object v11, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->sAtHomeGroupCategory:Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v11, v13}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteCategory;->getRoutes(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_139
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_177

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 1109
    .restart local v10       #routeGroup:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->getRouteId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_139

    .line 1110
    invoke-static {v10}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteGroup;->getRouteCount(Ljava/lang/Object;)I

    move-result v9

    .line 1111
    .restart local v9       #routeCount:I
    add-int/lit8 v4, v9, -0x1

    .restart local v4       #i:I
    :goto_14f
    if-ltz v4, :cond_139

    .line 1112
    invoke-static {v10, v4}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteGroup;->getRouteAt(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    .line 1113
    .local v8, route:Ljava/lang/Object;
    invoke-static {v10, v4}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteGroup;->removeRouteAt(Ljava/lang/Object;I)V

    .line 1114
    const-string v11, "AtHomeMediaRouter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Removed free pool rx: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v8}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->getRouteId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    add-int/lit8 v4, v4, -0x1

    goto :goto_14f

    .line 1120
    .end local v4           #i:I
    .end local v8           #route:Ljava/lang/Object;
    .end local v9           #routeCount:I
    .end local v10           #routeGroup:Ljava/lang/Object;
    :cond_177
    invoke-virtual/range {p1 .. p1}, Landroid/support/place/music/TgsState;->getAvailableRxs()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_17f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_191

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/place/music/TgsService;

    .line 1121
    .local v7, receiver:Landroid/support/place/music/TgsService;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->addUserRoute(Landroid/support/place/music/TgsService;)V

    goto :goto_17f

    .line 1123
    .end local v7           #receiver:Landroid/support/place/music/TgsService;
    :cond_191
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mUpdatingMediaRouter:Z

    .line 1124
    const-string v11, "AtHomeMediaRouter"

    const-string v13, "After updates."

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    monitor-exit v12
    :try_end_19e
    .catchall {:try_start_12e .. :try_end_19e} :catchall_96

    goto/16 :goto_1c
.end method

.method private processRxVolumes(Ljava/util/List;)V
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/place/music/TgsRxVolume;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 948
    .local p1, rxVolumes:Ljava/util/List;,"Ljava/util/List<Landroid/support/place/music/TgsRxVolume;>;"
    const-string v5, "AtHomeMediaRouter"

    const-string v6, "processRxVolumes:"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/place/music/TgsRxVolume;

    .line 951
    .local v3, rxVolume:Landroid/support/place/music/TgsRxVolume;
    const/4 v4, 0x0

    .line 952
    .local v4, vs:Lcom/android/athome/picker/UserRouteState;
    iget-object v5, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mRxStates:Ljava/util/HashMap;

    invoke-virtual {v3}, Landroid/support/place/music/TgsRxVolume;->getRxId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 953
    new-instance v4, Lcom/android/athome/picker/UserRouteState;

    .end local v4           #vs:Lcom/android/athome/picker/UserRouteState;
    iget-object v5, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mRxStates:Ljava/util/HashMap;

    invoke-virtual {v3}, Landroid/support/place/music/TgsRxVolume;->getRxId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/athome/picker/UserRouteState;

    invoke-virtual {v5}, Lcom/android/athome/picker/UserRouteState;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/support/place/music/TgsRxVolume;->getVolume()F

    move-result v6

    invoke-virtual {v3}, Landroid/support/place/music/TgsRxVolume;->getMute()Z

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lcom/android/athome/picker/UserRouteState;-><init>(Ljava/lang/String;FZ)V

    .line 964
    .restart local v4       #vs:Lcom/android/athome/picker/UserRouteState;
    :goto_41
    iget-object v5, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mRxStates:Ljava/util/HashMap;

    invoke-virtual {v3}, Landroid/support/place/music/TgsRxVolume;->getRxId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    invoke-direct {p0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->useGroupingService()Z

    move-result v5

    if-eqz v5, :cond_83

    .line 967
    invoke-virtual {v3}, Landroid/support/place/music/TgsRxVolume;->getRxId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->getUserRoute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 968
    .local v2, route:Ljava/lang/Object;
    if-eqz v2, :cond_b

    .line 969
    invoke-direct {p0, v2, v4}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->setVolumeState(Ljava/lang/Object;Lcom/android/athome/picker/UserRouteState;)V

    goto :goto_b

    .line 955
    .end local v2           #route:Ljava/lang/Object;
    :cond_5e
    iget-object v5, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mConnectorType:Ljava/lang/String;

    if-nez v5, :cond_74

    .line 957
    new-instance v4, Lcom/android/athome/picker/UserRouteState;

    .end local v4           #vs:Lcom/android/athome/picker/UserRouteState;
    invoke-virtual {v3}, Landroid/support/place/music/TgsRxVolume;->getRxId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/support/place/music/TgsRxVolume;->getVolume()F

    move-result v6

    invoke-virtual {v3}, Landroid/support/place/music/TgsRxVolume;->getMute()Z

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lcom/android/athome/picker/UserRouteState;-><init>(Ljava/lang/String;FZ)V

    .restart local v4       #vs:Lcom/android/athome/picker/UserRouteState;
    goto :goto_41

    .line 960
    :cond_74
    new-instance v4, Lcom/android/athome/picker/UserRouteState;

    .end local v4           #vs:Lcom/android/athome/picker/UserRouteState;
    const/4 v5, 0x0

    invoke-virtual {v3}, Landroid/support/place/music/TgsRxVolume;->getVolume()F

    move-result v6

    invoke-virtual {v3}, Landroid/support/place/music/TgsRxVolume;->getMute()Z

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lcom/android/athome/picker/UserRouteState;-><init>(Ljava/lang/String;FZ)V

    .restart local v4       #vs:Lcom/android/athome/picker/UserRouteState;
    goto :goto_41

    .line 973
    :cond_83
    invoke-virtual {v4}, Lcom/android/athome/picker/UserRouteState;->getId()Ljava/lang/String;

    move-result-object v0

    .line 974
    .local v0, connectorId:Ljava/lang/String;
    if-eqz v0, :cond_b

    iget-object v5, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mAtHomeReceivers:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 975
    iget-object v5, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mAtHomeReceivers:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AtHomeReceiver;

    invoke-virtual {v5}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AtHomeReceiver;->getRoute()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->setVolumeState(Ljava/lang/Object;Lcom/android/athome/picker/UserRouteState;)V

    goto/16 :goto_b

    .line 979
    .end local v0           #connectorId:Ljava/lang/String;
    .end local v3           #rxVolume:Landroid/support/place/music/TgsRxVolume;
    .end local v4           #vs:Lcom/android/athome/picker/UserRouteState;
    :cond_a2
    return-void
.end method

.method private requestVolumes()V
    .registers 4

    .prologue
    .line 867
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mGroupingService:Landroid/support/place/music/TungstenGroupingService;

    new-instance v1, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$9;

    invoke-direct {v1, p0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$9;-><init>(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)V

    new-instance v2, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$10;

    invoke-direct {v2, p0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$10;-><init>(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/place/music/TungstenGroupingService;->getRxVolumes(Landroid/support/place/music/TungstenGroupingService$OnGetRxVolumes;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 880
    return-void
.end method

.method private setGroupingService(Landroid/support/place/music/TungstenGroupingService;)V
    .registers 4
    .parameter "tgs"

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mGroupingService:Landroid/support/place/music/TungstenGroupingService;

    if-eqz v0, :cond_9

    .line 790
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mGroupingService:Landroid/support/place/music/TungstenGroupingService;

    invoke-virtual {v0}, Landroid/support/place/music/TungstenGroupingService;->stopListening()V

    .line 792
    :cond_9
    iput-object p1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mGroupingService:Landroid/support/place/music/TungstenGroupingService;

    .line 793
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mGroupingService:Landroid/support/place/music/TungstenGroupingService;

    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mGroupingListener:Landroid/support/place/music/TungstenGroupingService$Listener;

    invoke-virtual {v0, v1}, Landroid/support/place/music/TungstenGroupingService;->startListening(Landroid/support/place/music/TungstenGroupingService$Listener;)V

    .line 796
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mVolumeHardkeyDelta:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->adjustGroupVolume(I)V

    .line 797
    invoke-direct {p0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->requestVolumes()V

    .line 798
    return-void
.end method

.method private setReceiverVolume(Ljava/lang/Object;I)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/high16 v8, 0x42c8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1413
    if-nez p1, :cond_7

    .line 1446
    :cond_6
    :goto_6
    return-void

    .line 1416
    :cond_7
    invoke-static {p1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->getRouteId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1417
    invoke-static {p1}, Lcom/android/athome/picker/media/MediaRouterCompat$UserRouteInfo;->getGroup(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->getRouteId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1418
    const-string v4, "AtHomeMediaRouter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RouteId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " GroupId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " volume: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    if-eqz v3, :cond_8c

    if-eqz v0, :cond_8c

    iget-object v4, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mAtHomeReceivers:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8c

    .line 1421
    iget-object v4, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mAtHomeReceivers:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AtHomeReceiver;

    .line 1422
    invoke-virtual {v0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AtHomeReceiver;->getConnectors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/ConnectorInfo;

    .line 1423
    invoke-virtual {v0}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v5

    .line 1424
    invoke-virtual {v5}, Landroid/support/place/rpc/EndpointInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 1425
    iget-object v4, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mRxStates:Ljava/util/HashMap;

    new-instance v6, Lcom/android/athome/picker/UserRouteState;

    int-to-float v0, p2

    div-float v7, v0, v8

    if-nez p2, :cond_8a

    move v0, v1

    :goto_7f
    invoke-direct {v6, v3, v7, v0}, Lcom/android/athome/picker/UserRouteState;-><init>(Ljava/lang/String;FZ)V

    invoke-virtual {v4, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1427
    invoke-virtual {p0, v5}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->sendReceiverVolumeRpc(Landroid/support/place/rpc/EndpointInfo;)V

    goto/16 :goto_6

    :cond_8a
    move v0, v2

    .line 1425
    goto :goto_7f

    .line 1431
    :cond_8c
    invoke-direct {p0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->useGroupingService()Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz v3, :cond_6

    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mAtHomeReceivers:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1433
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mAtHomeReceivers:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AtHomeReceiver;

    .line 1435
    invoke-virtual {v0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AtHomeReceiver;->getConnectors()Ljava/util/List;

    move-result-object v0

    .line 1436
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v1, :cond_6

    .line 1437
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/ConnectorInfo;

    invoke-virtual {v0}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->getRxServiceEndpoint(Landroid/support/place/rpc/EndpointInfo;)Landroid/support/place/rpc/EndpointInfo;

    move-result-object v0

    .line 1439
    if-eqz v0, :cond_6

    .line 1440
    iget-object v4, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mRxStates:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/support/place/rpc/EndpointInfo;->getId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/athome/picker/UserRouteState;

    int-to-float v7, p2

    div-float/2addr v7, v8

    if-nez p2, :cond_d7

    :goto_cc
    invoke-direct {v6, v3, v7, v1}, Lcom/android/athome/picker/UserRouteState;-><init>(Ljava/lang/String;FZ)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    invoke-virtual {p0, v0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->sendReceiverVolumeRpc(Landroid/support/place/rpc/EndpointInfo;)V

    goto/16 :goto_6

    :cond_d7
    move v1, v2

    .line 1440
    goto :goto_cc
.end method

.method private setRouteState(Ljava/lang/Object;Ljava/lang/String;FZ)V
    .registers 6
    .parameter "route"
    .parameter "id"
    .parameter "volume"
    .parameter "isMuted"

    .prologue
    .line 750
    new-instance v0, Lcom/android/athome/picker/UserRouteState;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/athome/picker/UserRouteState;-><init>(Ljava/lang/String;FZ)V

    .line 751
    .local v0, state:Lcom/android/athome/picker/UserRouteState;
    invoke-static {p1, v0}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteInfo;->setTag(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 752
    return-void
.end method

.method private setVolumeState(Ljava/lang/Object;Lcom/android/athome/picker/UserRouteState;)V
    .registers 6
    .parameter "route"
    .parameter "vs"

    .prologue
    .line 995
    if-eqz p1, :cond_2c

    .line 996
    const-string v0, "AtHomeMediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolumeState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/athome/picker/UserRouteState;->getVolume()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    invoke-static {p1, p2}, Lcom/android/athome/picker/media/MediaRouterCompat$UserRouteInfo;->setTag(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 998
    invoke-virtual {p2}, Lcom/android/athome/picker/UserRouteState;->getVolume()F

    move-result v0

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {p1, v0}, Lcom/android/athome/picker/media/MediaRouterCompat$UserRouteInfo;->setVolume(Ljava/lang/Object;I)V

    .line 1001
    :cond_2c
    return-void
.end method

.method private stopTgsVolumeUpdates(I)V
    .registers 6
    .parameter "intervalMs"

    .prologue
    .line 567
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mIgnoreTgsVolumeUpdates:Z

    .line 568
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mResumeTgsVolumeUpdates:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 569
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mResumeTgsVolumeUpdates:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 570
    return-void
.end method

.method private updateGroupMemberShip(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .registers 10
    .parameter "routeInfo"
    .parameter "routeGroup"
    .parameter "remove"

    .prologue
    .line 580
    invoke-static {p1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->getRouteId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 581
    .local v1, receiverId:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->getRouteId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, groupId:Ljava/lang/String;
    const-string v3, "AtHomeMediaRouter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UpdateGroupMembership: routeId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " groupId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    if-eqz v1, :cond_36

    if-eqz v0, :cond_36

    .line 584
    new-instance v2, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$ToggleRxRunnable;

    invoke-direct {v2, p0, v1, v0, p3}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$ToggleRxRunnable;-><init>(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 585
    .local v2, toggle:Ljava/lang/Runnable;
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 587
    .end local v2           #toggle:Ljava/lang/Runnable;
    :cond_36
    return-void
.end method

.method private declared-synchronized updateTgsGroup(Landroid/support/place/music/TgsGroup;)V
    .registers 17
    .parameter

    .prologue
    .line 1156
    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/support/place/music/TgsGroup;->getRxs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    .line 1157
    if-lez v10, :cond_11e

    .line 1158
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 1160
    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mAtHomeReceivers:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Landroid/support/place/music/TgsGroup;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AtHomeReceiver;

    invoke-virtual {v1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AtHomeReceiver;->getRoute()Ljava/lang/Object;

    move-result-object v12

    .line 1161
    invoke-static {v12}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteGroup;->getRouteCount(Ljava/lang/Object;)I

    move-result v2

    .line 1162
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 1163
    const/4 v1, 0x0

    :goto_2a
    if-ge v1, v2, :cond_3c

    .line 1164
    invoke-static {v12, v1}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteGroup;->getRouteAt(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 1165
    invoke-static {v3}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->getRouteId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1166
    if-eqz v4, :cond_39

    .line 1167
    invoke-virtual {v13, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 1171
    :cond_3c
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 1172
    const/4 v1, 0x0

    move v9, v1

    :goto_43
    if-ge v9, v10, :cond_d2

    .line 1173
    invoke-virtual/range {p1 .. p1}, Landroid/support/place/music/TgsGroup;->getRxs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/support/place/music/TgsService;

    move-object v8, v0

    .line 1174
    invoke-virtual {v8}, Landroid/support/place/music/TgsService;->getConnectorInfo()Landroid/support/place/connector/ConnectorInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/place/rpc/EndpointInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 1175
    invoke-virtual {v14, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1176
    invoke-virtual {v13, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 1178
    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8}, Landroid/support/place/music/TgsService;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/athome/picker/media/MediaRouterCompat$UserRouteInfo;->setName(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 1191
    :goto_71
    invoke-virtual {v8}, Landroid/support/place/music/TgsService;->getConnectorInfo()Landroid/support/place/connector/ConnectorInfo;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1172
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_43

    .line 1182
    :cond_7c
    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mRxStates:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/athome/picker/UserRouteState;

    .line 1184
    const/4 v3, 0x1

    invoke-virtual {v8}, Landroid/support/place/music/TgsService;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    if-nez v1, :cond_c8

    const/4 v6, 0x0

    :goto_8e
    if-nez v1, :cond_cd

    const/4 v7, 0x0

    :goto_91
    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->buildUserRoute(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;FZ)Ljava/lang/Object;

    move-result-object v1

    .line 1187
    invoke-static {v12, v1}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteGroup;->addRoute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1188
    iget-object v2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v8}, Landroid/support/place/music/TgsService;->getConnectorInfo()Landroid/support/place/connector/ConnectorInfo;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    const-string v2, "AtHomeMediaRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Added route: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to existing group: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c4
    .catchall {:try_start_1 .. :try_end_c4} :catchall_c5

    goto :goto_71

    .line 1156
    :catchall_c5
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1184
    :cond_c8
    :try_start_c8
    invoke-virtual {v1}, Lcom/android/athome/picker/UserRouteState;->getVolume()F

    move-result v6

    goto :goto_8e

    :cond_cd
    invoke-virtual {v1}, Lcom/android/athome/picker/UserRouteState;->getMute()Z

    move-result v7

    goto :goto_91

    .line 1195
    :cond_d2
    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_da
    :goto_da
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_fd

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1196
    invoke-virtual {v14, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_da

    .line 1197
    invoke-virtual {v13, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteGroup;->removeRoute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1198
    iget-object v3, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v13, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_da

    .line 1201
    :cond_fd
    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mAtHomeReceivers:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Landroid/support/place/music/TgsGroup;->getGroupId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AtHomeReceiver;

    invoke-direct {v3, p0, v12, v11}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AtHomeReceiver;-><init>(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;Ljava/lang/Object;Ljava/util/List;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    invoke-virtual/range {p1 .. p1}, Landroid/support/place/music/TgsGroup;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v12}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->getMaxVolume(Ljava/lang/Object;)F

    move-result v2

    invoke-direct {p0, v12}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->isGroupMuted(Ljava/lang/Object;)Z

    move-result v3

    invoke-direct {p0, v12, v1, v2, v3}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->setRouteState(Ljava/lang/Object;Ljava/lang/String;FZ)V

    .line 1204
    const/4 v1, 0x0

    invoke-direct {p0, v12, v1, v11}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->logRouteGroup(Ljava/lang/Object;ZLjava/util/List;)V
    :try_end_11e
    .catchall {:try_start_c8 .. :try_end_11e} :catchall_c5

    .line 1206
    :cond_11e
    monitor-exit p0

    return-void
.end method

.method private useGroupingService()Z
    .registers 2

    .prologue
    .line 728
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mConnectorType:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public clearAllAtHomeRoutes()V
    .registers 8

    .prologue
    .line 437
    const-string v4, "AtHomeMediaRouter"

    const-string v5, "Clear at home groups."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v5, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mMediaRouterUpdateLock:Ljava/lang/Object;

    monitor-enter v5

    .line 439
    const/4 v4, 0x1

    :try_start_b
    iput-boolean v4, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mUpdatingMediaRouter:Z

    .line 441
    sget-object v4, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->sAtHomeGroupCategory:Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteCategory;->getRoutes(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 443
    .local v3, routeGroup:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteGroup;->getRouteCount(Ljava/lang/Object;)I

    move-result v2

    .line 444
    .local v2, routeCount:I
    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_28
    if-ltz v0, :cond_18

    .line 445
    invoke-static {v3, v0}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteGroup;->removeRouteAt(Ljava/lang/Object;I)V

    .line 444
    add-int/lit8 v0, v0, -0x1

    goto :goto_28

    .line 448
    .end local v0           #i:I
    .end local v2           #routeCount:I
    .end local v3           #routeGroup:Ljava/lang/Object;
    :cond_30
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mUpdatingMediaRouter:Z

    .line 449
    monitor-exit v5
    :try_end_34
    .catchall {:try_start_b .. :try_end_34} :catchall_38

    .line 451
    invoke-direct {p0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->getLatestTgsState()V

    .line 452
    return-void

    .line 449
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_38
    move-exception v4

    :try_start_39
    monitor-exit v5
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v4
.end method

.method public getAppConnectorForRoute(Ljava/lang/Object;)Landroid/support/place/connector/ConnectorInfo;
    .registers 4
    .parameter "route"

    .prologue
    .line 857
    invoke-static {p1}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->getRouteId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 858
    .local v0, groupId:Ljava/lang/String;
    if-nez v0, :cond_8

    .line 859
    const/4 v1, 0x0

    .line 862
    :goto_7
    return-object v1

    :cond_8
    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mMusicTxConnectors:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/place/connector/ConnectorInfo;

    goto :goto_7
.end method

.method public getReceiver(Ljava/lang/Object;)Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AtHomeReceiver;
    .registers 5
    .parameter "route"

    .prologue
    .line 493
    if-eqz p1, :cond_1b

    .line 494
    invoke-static {p1}, Lcom/android/athome/picker/media/MediaRouterCompat$RouteInfo;->getTag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 495
    .local v0, tag:Ljava/lang/Object;
    if-eqz v0, :cond_1b

    instance-of v1, v0, Lcom/android/athome/picker/UserRouteState;

    if-eqz v1, :cond_1b

    .line 496
    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mAtHomeReceivers:Ljava/util/Map;

    check-cast v0, Lcom/android/athome/picker/UserRouteState;

    .end local v0           #tag:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/android/athome/picker/UserRouteState;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AtHomeReceiver;

    .line 499
    :goto_1a
    return-object v1

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method protected removeConnector(Landroid/support/place/connector/ConnectorInfo;)V
    .registers 8
    .parameter "connector"

    .prologue
    .line 610
    if-nez p1, :cond_3

    .line 625
    :goto_2
    return-void

    .line 613
    :cond_3
    invoke-virtual {p1}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/place/rpc/EndpointInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 614
    .local v0, id:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mAtHomeReceivers:Ljava/util/Map;

    monitor-enter v3

    .line 615
    :try_start_e
    iget-object v2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mAtHomeReceivers:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 616
    const-string v2, "AtHomeMediaRouter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeConnector: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v4, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mMediaRouter:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mAtHomeReceivers:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AtHomeReceiver;

    invoke-virtual {v2}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$AtHomeReceiver;->getRoute()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/athome/picker/media/MediaRouterCompat;->removeUserRoute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 618
    iget-object v2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mAtHomeReceivers:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    invoke-virtual {p1}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->getRxServiceEndpoint(Landroid/support/place/rpc/EndpointInfo;)Landroid/support/place/rpc/EndpointInfo;

    move-result-object v1

    .line 620
    .local v1, rxEndpoint:Landroid/support/place/rpc/EndpointInfo;
    if-eqz v1, :cond_57

    .line 621
    iget-object v2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mRxStates:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/support/place/rpc/EndpointInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    .end local v1           #rxEndpoint:Landroid/support/place/rpc/EndpointInfo;
    :cond_57
    monitor-exit v3

    goto :goto_2

    :catchall_59
    move-exception v2

    monitor-exit v3
    :try_end_5b
    .catchall {:try_start_e .. :try_end_5b} :catchall_59

    throw v2
.end method

.method sendReceiverVolumeRpc(Landroid/support/place/rpc/EndpointInfo;)V
    .registers 9
    .parameter

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mRxStates:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/support/place/rpc/EndpointInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/UserRouteState;

    .line 1394
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 1395
    const-string v2, "AtHomeMediaRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "volume: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/athome/picker/UserRouteState;->getVolume()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mute: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/athome/picker/UserRouteState;->getMute()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    const-string v2, "volume"

    invoke-virtual {v0}, Lcom/android/athome/picker/UserRouteState;->getVolume()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/support/place/rpc/RpcData;->putFloat(Ljava/lang/String;F)V

    .line 1397
    const-string v2, "mute"

    invoke-virtual {v0}, Lcom/android/athome/picker/UserRouteState;->getMute()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    .line 1398
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mBroker:Landroid/support/place/connector/Broker;

    if-nez v0, :cond_59

    .line 1399
    const-string v0, "AtHomeMediaRouter"

    const-string v1, "Broker not ready."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    :goto_58
    return-void

    .line 1402
    :cond_59
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mBroker:Landroid/support/place/connector/Broker;

    const-string v2, "setMasterVolume"

    invoke-virtual {v1}, Landroid/support/place/rpc/RpcData;->ser()[B

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$15;

    invoke-direct {v5, p0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$15;-><init>(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;)V

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/support/place/connector/Broker;->sendRpc(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;[BLandroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;I)V

    goto :goto_58
.end method

.method public setApplicationId(Ljava/lang/String;)V
    .registers 2
    .parameter "applicationId"

    .prologue
    .line 459
    iput-object p1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mApplicationId:Ljava/lang/String;

    .line 460
    return-void
.end method

.method public setCallback(Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$Callback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mCallback:Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter$Callback;

    .line 343
    return-void
.end method

.method public start()V
    .registers 5

    .prologue
    .line 463
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mStarted:Z

    .line 465
    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mBrokerManager:Landroid/support/place/api/broker/BrokerManager;

    iget-object v2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mListener:Landroid/support/place/api/broker/BrokerManager$ConnectionListener;

    invoke-virtual {v1, v2}, Landroid/support/place/api/broker/BrokerManager;->startListening(Landroid/support/place/api/broker/BrokerManager$ConnectionListener;)V

    .line 466
    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mMediaRouter:Ljava/lang/Object;

    const/high16 v2, 0x80

    iget-object v3, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mMediaRouterCallback:Lcom/android/athome/picker/media/AbsMediaRouterCompat$SimpleCallback;

    invoke-static {v1, v2, v3}, Lcom/android/athome/picker/media/MediaRouterCompat;->addCallback(Ljava/lang/Object;ILcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;)V

    .line 469
    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mApplicationId:Ljava/lang/String;

    if-eqz v1, :cond_29

    .line 470
    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mMediaRouteProviderClient:Landroid/support/place/picker/MediaRouteProviderClient;

    iget-object v2, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mApplicationId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/place/picker/MediaRouteProviderClient;->getRouteIdForApplication(Ljava/lang/String;)Landroid/support/place/picker/MediaRouteProviderClient$RouteId;

    move-result-object v0

    .line 472
    .local v0, autoSelectRouteId:Landroid/support/place/picker/MediaRouteProviderClient$RouteId;
    if-eqz v0, :cond_29

    instance-of v1, v0, Landroid/support/place/picker/MediaRouteProviderClient$SerialNumberRouteId;

    if-eqz v1, :cond_29

    .line 474
    check-cast v0, Landroid/support/place/picker/MediaRouteProviderClient$SerialNumberRouteId;

    .end local v0           #autoSelectRouteId:Landroid/support/place/picker/MediaRouteProviderClient$RouteId;
    iput-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mAutoSelectRouteId:Landroid/support/place/picker/MediaRouteProviderClient$SerialNumberRouteId;

    .line 478
    :cond_29
    return-void
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 481
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mStarted:Z

    .line 483
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mBrokerManager:Landroid/support/place/api/broker/BrokerManager;

    invoke-virtual {v0}, Landroid/support/place/api/broker/BrokerManager;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 484
    invoke-direct {p0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->onTgsLost()V

    .line 486
    :cond_e
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mBrokerManager:Landroid/support/place/api/broker/BrokerManager;

    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mListener:Landroid/support/place/api/broker/BrokerManager$ConnectionListener;

    invoke-virtual {v0, v1}, Landroid/support/place/api/broker/BrokerManager;->stopListening(Landroid/support/place/api/broker/BrokerManager$ConnectionListener;)V

    .line 487
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mBroker:Landroid/support/place/connector/Broker;

    .line 488
    invoke-direct {p0}, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->clearAllRoutes()V

    .line 489
    iget-object v0, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mMediaRouter:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/athome/picker/mediarouter/AtHomeMediaRouter;->mMediaRouterCallback:Lcom/android/athome/picker/media/AbsMediaRouterCompat$SimpleCallback;

    invoke-static {v0, v1}, Lcom/android/athome/picker/media/MediaRouterCompat;->removeCallback(Ljava/lang/Object;Lcom/android/athome/picker/media/AbsMediaRouterCompat$Callback;)V

    .line 490
    return-void
.end method
