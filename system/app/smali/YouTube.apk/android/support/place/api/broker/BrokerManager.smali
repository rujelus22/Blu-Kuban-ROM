.class public Landroid/support/place/api/broker/BrokerManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/connector/BrokerConnection$Listener;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "aah-BrokerManager"

.field private static sInstance:Landroid/support/place/api/broker/BrokerManager;

.field private static final sPackageChangeIntentFilter:Landroid/content/IntentFilter;


# instance fields
.field private mAvailablePlaces:Ljava/util/LinkedHashMap;

.field private mBeaconScanner:Landroid/support/place/beacon/BeaconScanner;

.field private mBeaconsCache:Ljava/util/List;

.field private mBroker:Landroid/support/place/connector/Broker;

.field private mConnectStateMachine:Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;

.field private mConnection:Landroid/support/place/connector/BrokerConnection;

.field private mConnectorListener:Landroid/support/place/connector/ConnectorRegistry$Listener;

.field private mConnectors:Ljava/util/LinkedHashMap;

.field private mContext:Landroid/content/Context;

.field private mFetchConnectors:Z

.field private mHandler:Landroid/os/Handler;

.field private mListeners:Ljava/util/LinkedList;

.field private mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mPlaceListener:Landroid/support/place/beacon/BeaconScanner$Listener;

.field private mRegistry:Landroid/support/place/connector/ConnectorRegistry;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 559
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 561
    sput-object v0, Landroid/support/place/api/broker/BrokerManager;->sPackageChangeIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 562
    sget-object v0, Landroid/support/place/api/broker/BrokerManager;->sPackageChangeIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 563
    sget-object v0, Landroid/support/place/api/broker/BrokerManager;->sPackageChangeIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 564
    sget-object v0, Landroid/support/place/api/broker/BrokerManager;->sPackageChangeIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 565
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/place/api/broker/BrokerManager;->mFetchConnectors:Z

    .line 222
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mHandler:Landroid/os/Handler;

    .line 224
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;

    .line 225
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mAvailablePlaces:Ljava/util/LinkedHashMap;

    .line 227
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mConnectors:Ljava/util/LinkedHashMap;

    .line 232
    new-instance v0, Landroid/support/place/api/broker/BrokerManager$1;

    invoke-direct {v0, p0}, Landroid/support/place/api/broker/BrokerManager$1;-><init>(Landroid/support/place/api/broker/BrokerManager;)V

    iput-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mPlaceListener:Landroid/support/place/beacon/BeaconScanner$Listener;

    .line 363
    new-instance v0, Landroid/support/place/api/broker/BrokerManager$2;

    invoke-direct {v0, p0}, Landroid/support/place/api/broker/BrokerManager$2;-><init>(Landroid/support/place/api/broker/BrokerManager;)V

    iput-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mConnectorListener:Landroid/support/place/connector/ConnectorRegistry$Listener;

    .line 567
    new-instance v0, Landroid/support/place/api/broker/BrokerManager$5;

    invoke-direct {v0, p0}, Landroid/support/place/api/broker/BrokerManager$5;-><init>(Landroid/support/place/api/broker/BrokerManager;)V

    iput-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 446
    if-nez p1, :cond_41

    .line 447
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mContext:Landroid/content/Context;

    .line 450
    new-instance v0, Landroid/support/place/connector/BrokerConnection;

    iget-object v1, p0, Landroid/support/place/api/broker/BrokerManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/place/connector/BrokerConnection;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mConnection:Landroid/support/place/connector/BrokerConnection;

    .line 451
    new-instance v0, Landroid/support/place/beacon/BeaconScanner;

    iget-object v1, p0, Landroid/support/place/api/broker/BrokerManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/place/api/broker/BrokerManager;->mPlaceListener:Landroid/support/place/beacon/BeaconScanner$Listener;

    invoke-direct {v0, v1, v2}, Landroid/support/place/beacon/BeaconScanner;-><init>(Landroid/content/Context;Landroid/support/place/beacon/BeaconScanner$Listener;)V

    iput-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mBeaconScanner:Landroid/support/place/beacon/BeaconScanner;

    .line 452
    new-instance v0, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;

    invoke-direct {v0, p0}, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;-><init>(Landroid/support/place/api/broker/BrokerManager;)V

    iput-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mConnectStateMachine:Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;

    .line 453
    return-void
.end method

.method static synthetic access$000(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedHashMap;
    .registers 2
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mAvailablePlaces:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedList;
    .registers 2
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/support/place/api/broker/BrokerManager;)V
    .registers 1
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/support/place/api/broker/BrokerManager;->disconnect()V

    return-void
.end method

.method static synthetic access$1300(Landroid/support/place/api/broker/BrokerManager;)Landroid/support/place/connector/BrokerConnection;
    .registers 2
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mConnection:Landroid/support/place/connector/BrokerConnection;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/place/api/broker/BrokerManager;)Landroid/support/place/connector/Broker;
    .registers 2
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mBroker:Landroid/support/place/connector/Broker;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mBeaconsCache:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Landroid/support/place/api/broker/BrokerManager;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Landroid/support/place/api/broker/BrokerManager;->mBeaconsCache:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedHashMap;
    .registers 2
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mConnectors:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/place/api/broker/BrokerManager;)Landroid/content/BroadcastReceiver;
    .registers 2
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$600()Landroid/content/IntentFilter;
    .registers 1

    .prologue
    .line 90
    sget-object v0, Landroid/support/place/api/broker/BrokerManager;->sPackageChangeIntentFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method static synthetic access$700(Landroid/support/place/api/broker/BrokerManager;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Landroid/support/place/api/broker/BrokerManager;)Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;
    .registers 2
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mConnectStateMachine:Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;

    return-object v0
.end method

.method private disconnect()V
    .registers 3

    .prologue
    .line 540
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mRegistry:Landroid/support/place/connector/ConnectorRegistry;

    if-eqz v0, :cond_b

    .line 541
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mRegistry:Landroid/support/place/connector/ConnectorRegistry;

    iget-object v1, p0, Landroid/support/place/api/broker/BrokerManager;->mConnectorListener:Landroid/support/place/connector/ConnectorRegistry$Listener;

    invoke-virtual {v0, v1}, Landroid/support/place/connector/ConnectorRegistry;->stopListeningForConnectors(Landroid/support/place/connector/ConnectorRegistry$Listener;)V

    .line 543
    :cond_b
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mBroker:Landroid/support/place/connector/Broker;

    if-eqz v0, :cond_1d

    .line 544
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mBroker:Landroid/support/place/connector/Broker;

    invoke-virtual {v0}, Landroid/support/place/connector/Broker;->getPlace()Landroid/support/place/connector/PlaceInfo;

    move-result-object v0

    .line 545
    if-eqz v0, :cond_1a

    .line 549
    invoke-virtual {p0}, Landroid/support/place/api/broker/BrokerManager;->onPlaceDisconnected()V

    .line 554
    :cond_1a
    invoke-virtual {p0}, Landroid/support/place/api/broker/BrokerManager;->onBrokerDisconnected()V

    .line 556
    :cond_1d
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mConnection:Landroid/support/place/connector/BrokerConnection;

    invoke-virtual {v0, p0}, Landroid/support/place/connector/BrokerConnection;->disconnect(Landroid/support/place/connector/BrokerConnection$Listener;)V

    .line 557
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/support/place/api/broker/BrokerManager;
    .registers 3
    .parameter

    .prologue
    .line 204
    const-class v1, Landroid/support/place/api/broker/BrokerManager;

    monitor-enter v1

    .line 205
    :try_start_3
    sget-object v0, Landroid/support/place/api/broker/BrokerManager;->sInstance:Landroid/support/place/api/broker/BrokerManager;

    if-nez v0, :cond_e

    .line 206
    new-instance v0, Landroid/support/place/api/broker/BrokerManager;

    invoke-direct {v0, p0}, Landroid/support/place/api/broker/BrokerManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/support/place/api/broker/BrokerManager;->sInstance:Landroid/support/place/api/broker/BrokerManager;

    .line 208
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 209
    sget-object v0, Landroid/support/place/api/broker/BrokerManager;->sInstance:Landroid/support/place/api/broker/BrokerManager;

    return-object v0

    .line 208
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private purgeConnectors()V
    .registers 4

    .prologue
    .line 994
    iget-object v1, p0, Landroid/support/place/api/broker/BrokerManager;->mConnectors:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 995
    :try_start_3
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mConnectors:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 996
    if-eqz v2, :cond_27

    .line 997
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1001
    :goto_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_2d

    .line 1003
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/ConnectorInfo;

    .line 1004
    iget-object v2, p0, Landroid/support/place/api/broker/BrokerManager;->mConnectorListener:Landroid/support/place/connector/ConnectorRegistry$Listener;

    invoke-virtual {v2, v0}, Landroid/support/place/connector/ConnectorRegistry$Listener;->onConnectorRemoved(Landroid/support/place/connector/ConnectorInfo;)V

    goto :goto_15

    .line 999
    :cond_27
    :try_start_27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_2d

    goto :goto_10

    .line 1001
    :catchall_2d
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1006
    :cond_30
    return-void
.end method


# virtual methods
.method public connectToPlace(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 860
    invoke-virtual {p0, p1}, Landroid/support/place/api/broker/BrokerManager;->isPlaceAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 861
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mBroker:Landroid/support/place/connector/Broker;

    invoke-virtual {v0, p1}, Landroid/support/place/connector/Broker;->setPlaceId(Ljava/lang/String;)V

    .line 862
    const/4 v0, 0x1

    .line 864
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public connectToPlaceAsGuestOrAuthorized(Landroid/support/place/connector/PlaceInfo;Ljava/lang/String;ZLandroid/support/place/rpc/RpcErrorHandler;)Z
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 876
    invoke-virtual {p1}, Landroid/support/place/connector/PlaceInfo;->getPlaceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/place/api/broker/BrokerManager;->isPlaceAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mBroker:Landroid/support/place/connector/Broker;

    if-eqz v0, :cond_24

    .line 877
    new-instance v2, Landroid/support/place/api/broker/PlaceConnectHelper;

    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mBroker:Landroid/support/place/connector/Broker;

    invoke-direct {v2, v0}, Landroid/support/place/api/broker/PlaceConnectHelper;-><init>(Landroid/support/place/connector/Broker;)V

    .line 879
    new-instance v0, Landroid/support/place/api/broker/BrokerManager$6;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/support/place/api/broker/BrokerManager$6;-><init>(Landroid/support/place/api/broker/BrokerManager;Landroid/support/place/api/broker/PlaceConnectHelper;Landroid/support/place/connector/PlaceInfo;Ljava/lang/String;ZLandroid/support/place/rpc/RpcErrorHandler;)V

    .line 894
    invoke-virtual {v2, p1, p2, p3, v0}, Landroid/support/place/api/broker/PlaceConnectHelper;->connect(Landroid/support/place/connector/PlaceInfo;Ljava/lang/String;ZLandroid/support/place/rpc/RpcErrorHandler;)Z

    move-result v0

    .line 896
    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public getBroker()Landroid/support/place/connector/Broker;
    .registers 2

    .prologue
    .line 733
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mBroker:Landroid/support/place/connector/Broker;

    return-object v0
.end method

.method public getConnectedPlace()Landroid/support/place/connector/PlaceInfo;
    .registers 2

    .prologue
    .line 742
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mBroker:Landroid/support/place/connector/Broker;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mBroker:Landroid/support/place/connector/Broker;

    invoke-virtual {v0}, Landroid/support/place/connector/Broker;->getPlace()Landroid/support/place/connector/PlaceInfo;

    move-result-object v0

    goto :goto_5
.end method

.method public getConnectors()Ljava/util/List;
    .registers 4

    .prologue
    .line 760
    iget-boolean v0, p0, Landroid/support/place/api/broker/BrokerManager;->mFetchConnectors:Z

    if-nez v0, :cond_12

    .line 761
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/place/api/broker/BrokerManager;->mFetchConnectors:Z

    .line 762
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mRegistry:Landroid/support/place/connector/ConnectorRegistry;

    if-eqz v0, :cond_12

    .line 763
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mRegistry:Landroid/support/place/connector/ConnectorRegistry;

    iget-object v1, p0, Landroid/support/place/api/broker/BrokerManager;->mConnectorListener:Landroid/support/place/connector/ConnectorRegistry$Listener;

    invoke-virtual {v0, v1}, Landroid/support/place/connector/ConnectorRegistry;->startListeningForConnectors(Landroid/support/place/connector/ConnectorRegistry$Listener;)V

    .line 767
    :cond_12
    iget-object v1, p0, Landroid/support/place/api/broker/BrokerManager;->mConnectors:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 768
    :try_start_15
    new-instance v0, Ljava/util/LinkedList;

    iget-object v2, p0, Landroid/support/place/api/broker/BrokerManager;->mConnectors:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 769
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_22

    .line 770
    return-object v0

    .line 769
    :catchall_22
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getConnectorsForDevice(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .parameter

    .prologue
    .line 808
    iget-boolean v0, p0, Landroid/support/place/api/broker/BrokerManager;->mFetchConnectors:Z

    if-nez v0, :cond_12

    .line 809
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/place/api/broker/BrokerManager;->mFetchConnectors:Z

    .line 810
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mRegistry:Landroid/support/place/connector/ConnectorRegistry;

    if-eqz v0, :cond_12

    .line 811
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mRegistry:Landroid/support/place/connector/ConnectorRegistry;

    iget-object v1, p0, Landroid/support/place/api/broker/BrokerManager;->mConnectorListener:Landroid/support/place/connector/ConnectorRegistry$Listener;

    invoke-virtual {v0, v1}, Landroid/support/place/connector/ConnectorRegistry;->startListeningForConnectors(Landroid/support/place/connector/ConnectorRegistry$Listener;)V

    .line 814
    :cond_12
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 815
    iget-object v2, p0, Landroid/support/place/api/broker/BrokerManager;->mConnectors:Ljava/util/LinkedHashMap;

    monitor-enter v2

    .line 816
    :try_start_1a
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mConnectors:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 817
    :cond_24
    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 818
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/ConnectorInfo;

    .line 819
    invoke-virtual {v0}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/place/rpc/EndpointInfo;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 820
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_41
    .catchall {:try_start_1a .. :try_end_41} :catchall_42

    goto :goto_24

    .line 823
    :catchall_42
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_45
    :try_start_45
    monitor-exit v2
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_42

    .line 824
    return-object v1
.end method

.method public getConnectorsWithType(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .parameter

    .prologue
    .line 781
    iget-boolean v0, p0, Landroid/support/place/api/broker/BrokerManager;->mFetchConnectors:Z

    if-nez v0, :cond_12

    .line 782
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/place/api/broker/BrokerManager;->mFetchConnectors:Z

    .line 783
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mRegistry:Landroid/support/place/connector/ConnectorRegistry;

    if-eqz v0, :cond_12

    .line 784
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mRegistry:Landroid/support/place/connector/ConnectorRegistry;

    iget-object v1, p0, Landroid/support/place/api/broker/BrokerManager;->mConnectorListener:Landroid/support/place/connector/ConnectorRegistry$Listener;

    invoke-virtual {v0, v1}, Landroid/support/place/connector/ConnectorRegistry;->startListeningForConnectors(Landroid/support/place/connector/ConnectorRegistry$Listener;)V

    .line 787
    :cond_12
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 788
    iget-object v2, p0, Landroid/support/place/api/broker/BrokerManager;->mConnectors:Ljava/util/LinkedHashMap;

    monitor-enter v2

    .line 789
    :try_start_1a
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mConnectors:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 790
    :cond_24
    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 791
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/ConnectorInfo;

    .line 792
    invoke-virtual {v0}, Landroid/support/place/connector/ConnectorInfo;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 793
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catchall {:try_start_1a .. :try_end_3d} :catchall_3e

    goto :goto_24

    .line 796
    :catchall_3e
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_41
    :try_start_41
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_3e

    .line 797
    return-object v1
.end method

.method public getPlaces()Ljava/util/List;
    .registers 4

    .prologue
    .line 834
    iget-object v1, p0, Landroid/support/place/api/broker/BrokerManager;->mAvailablePlaces:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 835
    :try_start_3
    new-instance v0, Ljava/util/LinkedList;

    iget-object v2, p0, Landroid/support/place/api/broker/BrokerManager;->mAvailablePlaces:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 836
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_10

    .line 837
    return-object v0

    .line 836
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isPlaceAvailable(Ljava/lang/String;)Z
    .registers 4
    .parameter

    .prologue
    .line 847
    iget-object v1, p0, Landroid/support/place/api/broker/BrokerManager;->mAvailablePlaces:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 848
    :try_start_3
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mAvailablePlaces:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_b

    return v0

    .line 849
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onBrokerConnected(Landroid/support/place/connector/Broker;)V
    .registers 10
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 905
    iput-object p1, p0, Landroid/support/place/api/broker/BrokerManager;->mBroker:Landroid/support/place/connector/Broker;

    .line 906
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mBeaconScanner:Landroid/support/place/beacon/BeaconScanner;

    invoke-virtual {v0}, Landroid/support/place/beacon/BeaconScanner;->startListening()V

    .line 907
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mBeaconScanner:Landroid/support/place/beacon/BeaconScanner;

    invoke-virtual {v0}, Landroid/support/place/beacon/BeaconScanner;->getBeacons()Ljava/util/List;

    move-result-object v3

    .line 909
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 910
    iget-object v5, p0, Landroid/support/place/api/broker/BrokerManager;->mAvailablePlaces:Ljava/util/LinkedHashMap;

    monitor-enter v5

    move v2, v1

    .line 911
    :goto_16
    if-ge v2, v4, :cond_2d

    .line 912
    :try_start_18
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/beacon/BeaconInfo;

    iget-object v0, v0, Landroid/support/place/beacon/BeaconInfo;->place:Landroid/support/place/connector/PlaceInfo;

    .line 913
    iget-object v6, p0, Landroid/support/place/api/broker/BrokerManager;->mAvailablePlaces:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Landroid/support/place/connector/PlaceInfo;->getPlaceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_16

    .line 915
    :cond_2d
    monitor-exit v5
    :try_end_2e
    .catchall {:try_start_18 .. :try_end_2e} :catchall_4e

    .line 918
    iget-object v2, p0, Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;

    monitor-enter v2

    .line 919
    :try_start_31
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 920
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_51

    .line 921
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    move v2, v1

    .line 922
    :goto_3f
    if-ge v2, v3, :cond_54

    .line 923
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;

    .line 924
    invoke-virtual {v1, p1}, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;->onBrokerConnected(Landroid/support/place/connector/Broker;)V

    .line 922
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3f

    .line 915
    :catchall_4e
    move-exception v0

    monitor-exit v5

    throw v0

    .line 920
    :catchall_51
    move-exception v0

    monitor-exit v2

    throw v0

    .line 926
    :cond_54
    return-void
.end method

.method public onBrokerDisconnected()V
    .registers 5

    .prologue
    .line 933
    iget-object v1, p0, Landroid/support/place/api/broker/BrokerManager;->mAvailablePlaces:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 934
    :try_start_3
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mAvailablePlaces:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 935
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_37

    .line 938
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mConnectors:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 939
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mBroker:Landroid/support/place/connector/Broker;

    .line 940
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mBeaconScanner:Landroid/support/place/beacon/BeaconScanner;

    invoke-virtual {v0}, Landroid/support/place/beacon/BeaconScanner;->stopListening()V

    .line 942
    iget-object v1, p0, Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;

    monitor-enter v1

    .line 943
    :try_start_19
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 944
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_3a

    .line 945
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    .line 946
    const/4 v1, 0x0

    move v2, v1

    :goto_28
    if-ge v2, v3, :cond_3d

    .line 947
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;

    .line 948
    invoke-virtual {v1}, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;->onBrokerDisconnected()V

    .line 946
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_28

    .line 935
    :catchall_37
    move-exception v0

    monitor-exit v1

    throw v0

    .line 944
    :catchall_3a
    move-exception v0

    monitor-exit v1

    throw v0

    .line 950
    :cond_3d
    return-void
.end method

.method public onMasterChanged(Landroid/support/place/rpc/EndpointInfo;)V
    .registers 4
    .parameter

    .prologue
    .line 1010
    const-string v0, "aah-BrokerManager"

    const-string v1, "*****Master has changed! Stuff may go wonky.******"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mRegistry:Landroid/support/place/connector/ConnectorRegistry;

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Landroid/support/place/api/broker/BrokerManager;->mFetchConnectors:Z

    if-eqz v0, :cond_19

    .line 1012
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mRegistry:Landroid/support/place/connector/ConnectorRegistry;

    iget-object v1, p0, Landroid/support/place/api/broker/BrokerManager;->mConnectorListener:Landroid/support/place/connector/ConnectorRegistry$Listener;

    invoke-virtual {v0, v1}, Landroid/support/place/connector/ConnectorRegistry;->stopListeningForConnectors(Landroid/support/place/connector/ConnectorRegistry$Listener;)V

    .line 1013
    invoke-direct {p0}, Landroid/support/place/api/broker/BrokerManager;->purgeConnectors()V

    .line 1015
    :cond_19
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mBroker:Landroid/support/place/connector/Broker;

    invoke-virtual {v0}, Landroid/support/place/connector/Broker;->getConnectorRegistry()Landroid/support/place/connector/ConnectorRegistry;

    move-result-object v0

    iput-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mRegistry:Landroid/support/place/connector/ConnectorRegistry;

    .line 1016
    iget-boolean v0, p0, Landroid/support/place/api/broker/BrokerManager;->mFetchConnectors:Z

    if-eqz v0, :cond_2c

    .line 1017
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mRegistry:Landroid/support/place/connector/ConnectorRegistry;

    iget-object v1, p0, Landroid/support/place/api/broker/BrokerManager;->mConnectorListener:Landroid/support/place/connector/ConnectorRegistry$Listener;

    invoke-virtual {v0, v1}, Landroid/support/place/connector/ConnectorRegistry;->startListeningForConnectors(Landroid/support/place/connector/ConnectorRegistry$Listener;)V

    .line 1021
    :cond_2c
    return-void
.end method

.method public onPlaceConnected(Landroid/support/place/connector/PlaceInfo;)V
    .registers 6
    .parameter

    .prologue
    .line 954
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mBroker:Landroid/support/place/connector/Broker;

    invoke-virtual {v0}, Landroid/support/place/connector/Broker;->getConnectorRegistry()Landroid/support/place/connector/ConnectorRegistry;

    move-result-object v0

    iput-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mRegistry:Landroid/support/place/connector/ConnectorRegistry;

    .line 955
    iget-boolean v0, p0, Landroid/support/place/api/broker/BrokerManager;->mFetchConnectors:Z

    if-eqz v0, :cond_13

    .line 956
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mRegistry:Landroid/support/place/connector/ConnectorRegistry;

    iget-object v1, p0, Landroid/support/place/api/broker/BrokerManager;->mConnectorListener:Landroid/support/place/connector/ConnectorRegistry$Listener;

    invoke-virtual {v0, v1}, Landroid/support/place/connector/ConnectorRegistry;->startListeningForConnectors(Landroid/support/place/connector/ConnectorRegistry$Listener;)V

    .line 960
    :cond_13
    iget-object v1, p0, Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;

    monitor-enter v1

    .line 961
    :try_start_16
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 962
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_34

    .line 963
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    .line 967
    const/4 v1, 0x0

    move v2, v1

    :goto_25
    if-ge v2, v3, :cond_37

    .line 968
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;

    .line 969
    invoke-virtual {v1, p1}, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;->onPlaceConnected(Landroid/support/place/connector/PlaceInfo;)V

    .line 967
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_25

    .line 962
    :catchall_34
    move-exception v0

    monitor-exit v1

    throw v0

    .line 971
    :cond_37
    return-void
.end method

.method public onPlaceDisconnected()V
    .registers 5

    .prologue
    .line 975
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mConnectors:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 976
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mRegistry:Landroid/support/place/connector/ConnectorRegistry;

    .line 979
    iget-object v1, p0, Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;

    monitor-enter v1

    .line 980
    :try_start_b
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 981
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_29

    .line 982
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    .line 986
    const/4 v1, 0x0

    move v2, v1

    :goto_1a
    if-ge v2, v3, :cond_2c

    .line 987
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;

    .line 988
    invoke-virtual {v1}, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;->onPlaceDisconnected()V

    .line 986
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1a

    .line 981
    :catchall_29
    move-exception v0

    monitor-exit v1

    throw v0

    .line 990
    :cond_2c
    return-void
.end method

.method public onPlaceNameChanged(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 1026
    iget-object v1, p0, Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;

    monitor-enter v1

    .line 1027
    :try_start_3
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 1028
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_21

    .line 1029
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    .line 1030
    const/4 v1, 0x0

    move v2, v1

    :goto_12
    if-ge v2, v3, :cond_24

    .line 1031
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;

    .line 1032
    invoke-virtual {v1, p1}, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;->onPlaceNameChanged(Ljava/lang/String;)V

    .line 1030
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_12

    .line 1028
    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1034
    :cond_24
    return-void
.end method

.method public startListening(Landroid/support/place/api/broker/BrokerManager$ConnectionListener;)V
    .registers 5
    .parameter

    .prologue
    .line 464
    iget-object v1, p0, Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;

    monitor-enter v1

    .line 465
    :try_start_3
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 466
    const-string v0, "aah-BrokerManager"

    const-string v2, "Attempted to add listener multiple times"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    monitor-exit v1

    .line 499
    :cond_13
    :goto_13
    return-void

    .line 469
    :cond_14
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 472
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2c

    .line 473
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/support/place/api/broker/BrokerManager$3;

    invoke-direct {v2, p0}, Landroid/support/place/api/broker/BrokerManager$3;-><init>(Landroid/support/place/api/broker/BrokerManager;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 484
    :cond_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_56

    .line 486
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mConnectStateMachine:Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->sendMessage(I)V

    .line 488
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mBroker:Landroid/support/place/connector/Broker;

    if-eqz v0, :cond_13

    .line 489
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mBroker:Landroid/support/place/connector/Broker;

    invoke-virtual {p1, v0}, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;->onBrokerConnected(Landroid/support/place/connector/Broker;)V

    .line 490
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mBroker:Landroid/support/place/connector/Broker;

    invoke-virtual {v0}, Landroid/support/place/connector/Broker;->getPlace()Landroid/support/place/connector/PlaceInfo;

    move-result-object v0

    .line 491
    if-eqz v0, :cond_13

    .line 492
    invoke-virtual {p1, v0}, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;->onPlaceConnected(Landroid/support/place/connector/PlaceInfo;)V

    .line 493
    invoke-virtual {p0}, Landroid/support/place/api/broker/BrokerManager;->getConnectors()Ljava/util/List;

    move-result-object v0

    .line 494
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_13

    .line 495
    invoke-virtual {p1, v0}, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;->onConnectedToRegistry(Ljava/util/List;)V

    goto :goto_13

    .line 484
    :catchall_56
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public startListeningForConnectors()V
    .registers 3

    .prologue
    .line 746
    iget-boolean v0, p0, Landroid/support/place/api/broker/BrokerManager;->mFetchConnectors:Z

    if-nez v0, :cond_12

    .line 747
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/place/api/broker/BrokerManager;->mFetchConnectors:Z

    .line 748
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mRegistry:Landroid/support/place/connector/ConnectorRegistry;

    if-eqz v0, :cond_12

    .line 749
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mRegistry:Landroid/support/place/connector/ConnectorRegistry;

    iget-object v1, p0, Landroid/support/place/api/broker/BrokerManager;->mConnectorListener:Landroid/support/place/connector/ConnectorRegistry$Listener;

    invoke-virtual {v0, v1}, Landroid/support/place/connector/ConnectorRegistry;->startListeningForConnectors(Landroid/support/place/connector/ConnectorRegistry$Listener;)V

    .line 752
    :cond_12
    return-void
.end method

.method public stopListening(Landroid/support/place/api/broker/BrokerManager$ConnectionListener;)V
    .registers 5
    .parameter

    .prologue
    .line 508
    iget-object v1, p0, Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;

    monitor-enter v1

    .line 509
    :try_start_3
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 512
    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 513
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/support/place/api/broker/BrokerManager$4;

    invoke-direct {v2, p0}, Landroid/support/place/api/broker/BrokerManager$4;-><init>(Landroid/support/place/api/broker/BrokerManager;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 519
    :cond_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_26

    .line 521
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager;->mConnectStateMachine:Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/support/place/api/broker/BrokerManager$ConnectStateMachine;->sendMessage(I)V

    .line 522
    return-void

    .line 519
    :catchall_26
    move-exception v0

    monitor-exit v1

    throw v0
.end method
