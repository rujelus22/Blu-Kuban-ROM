.class public Lcom/google/android/music/athome/AtHomeMusicServer;
.super Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;
.source "AtHomeMusicServer.java"

# interfaces
.implements Lcom/google/android/music/athome/AtHomePlayQueue$OnRemovedHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;,
        Lcom/google/android/music/athome/AtHomeMusicServer$AtHomeTgsTransmitter;
    }
.end annotation


# static fields
.field private static final ANYONE_PERMISSIONS:[Ljava/lang/String;

.field private static final LOGV:Z


# instance fields
.field private mConnectorInfo:Landroid/support/place/connector/ConnectorInfo;

.field private final mConnectorListener:Landroid/support/place/connector/ConnectorRegistry$Listener;

.field private mMediaPlayerConfigurator:Landroid/support/place/music/MediaPlayerConfigurator;

.field private mMediaPlayerConfiguratorErrorHandler:Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;

.field private final mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

.field private mPlayState:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/music/athome/api/AtHomePlayState;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaybackServiceListener:Landroid/content/BroadcastReceiver;

.field private mQueueAccess:Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;

.field private mRegisteredListener:Z

.field private mSessionInfo:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

.field private final mSongQueueIdToTokenMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTgs:Landroid/support/place/music/TungstenGroupingService;

.field private mTgsGroupId:Ljava/lang/String;

.field private mTgsTransmitter:Lcom/google/android/music/athome/AtHomeMusicServer$AtHomeTgsTransmitter;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 64
    sget-boolean v0, Lcom/google/android/music/athome/AtHomeUtils;->LOGV:Z

    sput-boolean v0, Lcom/google/android/music/athome/AtHomeMusicServer;->LOGV:Z

    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "guest"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "user"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/athome/AtHomeMusicServer;->ANYONE_PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/support/place/connector/ConnectorContainer;Landroid/support/place/connector/Broker;Landroid/support/place/connector/PlaceInfo;Landroid/support/place/connector/ConnectorInfo;)V
    .registers 9
    .parameter "container"
    .parameter "broker"
    .parameter "placeInfo"
    .parameter "connectorInfo"

    .prologue
    const/4 v3, 0x0

    .line 147
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;-><init>(Landroid/content/Context;Landroid/support/place/connector/Broker;Landroid/support/place/connector/PlaceInfo;)V

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/music/athome/api/AtHomePlayState;

    invoke-direct {v1}, Lcom/google/android/music/athome/api/AtHomePlayState;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 80
    new-instance v0, Lcom/google/android/music/athome/AtHomePlayQueue;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/music/athome/AtHomePlayQueue;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSongQueueIdToTokenMap:Ljava/util/HashMap;

    .line 89
    new-instance v0, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;-><init>(Lcom/google/android/music/athome/AtHomeMusicServer;Lcom/google/android/music/athome/AtHomeMusicServer$1;)V

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mMediaPlayerConfiguratorErrorHandler:Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;

    .line 92
    iput-boolean v3, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mRegisteredListener:Z

    .line 93
    new-instance v0, Lcom/google/android/music/athome/AtHomeMusicServer$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/athome/AtHomeMusicServer$1;-><init>(Lcom/google/android/music/athome/AtHomeMusicServer;)V

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlaybackServiceListener:Landroid/content/BroadcastReceiver;

    .line 108
    new-instance v0, Lcom/google/android/music/athome/AtHomeMusicServer$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/athome/AtHomeMusicServer$2;-><init>(Lcom/google/android/music/athome/AtHomeMusicServer;)V

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mQueueAccess:Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;

    .line 221
    new-instance v0, Lcom/google/android/music/athome/AtHomeMusicServer$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/athome/AtHomeMusicServer$3;-><init>(Lcom/google/android/music/athome/AtHomeMusicServer;)V

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mConnectorListener:Landroid/support/place/connector/ConnectorRegistry$Listener;

    .line 149
    iput-object p4, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mConnectorInfo:Landroid/support/place/connector/ConnectorInfo;

    .line 150
    new-instance v0, Lcom/google/android/music/athome/AtHomeMusicServer$AtHomeTgsTransmitter;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/music/athome/AtHomeMusicServer$AtHomeTgsTransmitter;-><init>(Lcom/google/android/music/athome/AtHomeMusicServer;Landroid/content/Context;Landroid/support/place/connector/Broker;Landroid/support/place/connector/PlaceInfo;)V

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mTgsTransmitter:Lcom/google/android/music/athome/AtHomeMusicServer$AtHomeTgsTransmitter;

    .line 158
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/AtHomeMusicServer;->setCustomHandler(Landroid/os/Handler;)V

    .line 159
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mQueueAccess:Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;

    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeContentProvider;->setPlayQueue(Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;)V

    .line 161
    new-instance v0, Landroid/support/place/music/MediaPlayerConfigurator;

    invoke-direct {v0}, Landroid/support/place/music/MediaPlayerConfigurator;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mMediaPlayerConfigurator:Landroid/support/place/music/MediaPlayerConfigurator;

    .line 162
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mMediaPlayerConfigurator:Landroid/support/place/music/MediaPlayerConfigurator;

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mMediaPlayerConfiguratorErrorHandler:Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;

    invoke-virtual {v0, v1}, Landroid/support/place/music/MediaPlayerConfigurator;->setErrorHandler(Landroid/support/place/music/MediaPlayerConfigurator$ErrorHandler;)V

    .line 163
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/music/athome/AtHomeMusicServer;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/google/android/music/athome/AtHomeMusicServer;->updateShuffleMode(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/music/athome/AtHomeMusicServer;)Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mMediaPlayerConfiguratorErrorHandler:Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/music/athome/AtHomeMusicServer;)Landroid/support/place/connector/ConnectorInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mConnectorInfo:Landroid/support/place/connector/ConnectorInfo;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/music/athome/AtHomeMusicServer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->pause()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/music/athome/AtHomeMusicServer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->play()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/music/athome/AtHomeMusicServer;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/google/android/music/athome/AtHomeMusicServer;->updateRepeatMode(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/music/athome/AtHomeMusicServer;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/google/android/music/athome/AtHomeMusicServer;->updatePlayState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/music/athome/AtHomeMusicServer;)Lcom/google/android/music/athome/AtHomePlayQueue;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/music/athome/AtHomeMusicServer;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSongQueueIdToTokenMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/music/athome/AtHomeMusicServer;)Landroid/support/place/music/TungstenGroupingService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mTgs:Landroid/support/place/music/TungstenGroupingService;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/music/athome/AtHomeMusicServer;Landroid/support/place/music/TungstenGroupingService;)Landroid/support/place/music/TungstenGroupingService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mTgs:Landroid/support/place/music/TungstenGroupingService;

    return-object p1
.end method

.method static synthetic access$700()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lcom/google/android/music/athome/AtHomeMusicServer;->ANYONE_PERMISSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/music/athome/AtHomeMusicServer;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mTgsGroupId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/android/music/athome/AtHomeMusicServer;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mTgsGroupId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/android/music/athome/AtHomeMusicServer;)Landroid/support/place/music/MediaPlayerConfigurator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mMediaPlayerConfigurator:Landroid/support/place/music/MediaPlayerConfigurator;

    return-object v0
.end method

.method private addToken(Ljava/util/List;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter "token"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1189
    .local p1, songs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 1190
    .local v0, songIter:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    :goto_4
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1191
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSongQueueIdToTokenMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/athome/api/AtHomeSongInfo;

    invoke-virtual {v1}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getQueueId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1193
    :cond_1e
    return-void
.end method

.method private checkSession(J)Z
    .registers 7
    .parameter "callerSessionId"

    .prologue
    .line 1397
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    monitor-enter v1

    .line 1398
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSessionInfo:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSessionInfo:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    invoke-virtual {v0}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getSessionId()J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_12
    monitor-exit v1

    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_12

    .line 1399
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private clearPlayQueueLocked(JZ)Lcom/google/android/music/athome/api/AtHomeModificationResult;
    .registers 6
    .parameter "sessionId"
    .parameter "clearSubmitters"

    .prologue
    .line 1024
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/music/athome/AtHomePlayQueue;->clear(JZ)Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v0

    .line 1025
    .local v0, result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    invoke-virtual {v0}, Lcom/google/android/music/athome/api/AtHomeModificationResult;->modificationApplied()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1026
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSongQueueIdToTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1028
    :cond_11
    return-object v0
.end method

.method private getAtHomeRepeatMode()I
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 816
    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    .line 817
    .local v2, service:Lcom/google/android/music/IMusicPlaybackService;
    if-nez v2, :cond_d

    .line 818
    const-string v4, "aah.Music"

    const-string v5, "No playback service"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :goto_c
    return v3

    .line 823
    :cond_d
    :try_start_d
    invoke-interface {v2}, Lcom/google/android/music/IMusicPlaybackService;->getRepeatMode()I

    move-result v1

    .line 824
    .local v1, repeatMode:I
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeUtils;->playbackServiceToAtHomeRepeatMode(I)I
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_16

    move-result v3

    goto :goto_c

    .line 825
    .end local v1           #repeatMode:I
    :catch_16
    move-exception v0

    .line 826
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "aah.Music"

    const-string v5, "Failed to get repeat mode from palyback service"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method private getSessionId()J
    .registers 4

    .prologue
    .line 1403
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    monitor-enter v2

    .line 1404
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSessionInfo:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    if-nez v0, :cond_b

    const-wide/16 v0, 0x0

    :goto_9
    monitor-exit v2

    return-wide v0

    :cond_b
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSessionInfo:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    invoke-virtual {v0}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getSessionId()J

    move-result-wide v0

    goto :goto_9

    .line 1405
    :catchall_12
    move-exception v0

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private pause()V
    .registers 4

    .prologue
    .line 547
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-nez v1, :cond_5

    .line 556
    :goto_4
    return-void

    .line 552
    :cond_5
    :try_start_5
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->pause()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 553
    :catch_b
    move-exception v0

    .line 554
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "aah.Music"

    const-string v2, "pause failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method private play()V
    .registers 4

    .prologue
    .line 516
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-nez v1, :cond_5

    .line 525
    :goto_4
    return-void

    .line 521
    :cond_5
    :try_start_5
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->play()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 522
    :catch_b
    move-exception v0

    .line 523
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "aah.Music"

    const-string v2, "play failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method private removeAllSongsOfCurrentSongSubmitterAndKeepPlaying(Lcom/google/android/music/IMusicPlaybackService;J)Z
    .registers 15
    .parameter "music"
    .parameter "currentSongId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 965
    const/4 v7, 0x1

    .line 966
    .local v7, isSomethingLeftAfterRemoval:Z
    const/4 v9, -0x1

    .line 967
    .local v9, songToSkipToPosition:I
    iget-object v10, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    monitor-enter v10

    .line 968
    const/4 v8, 0x0

    .line 969
    .local v8, songToSkipTo:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1b

    .line 970
    :try_start_c
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/music/athome/AtHomePlayQueue;->findSong(J)Lcom/google/android/music/athome/api/AtHomeSongInfo;

    move-result-object v6

    .line 971
    .local v6, currentSong:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    if-nez v6, :cond_43

    .line 972
    const-string v0, "aah.Music"

    const-string v1, "Could not find current song in the queue"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    .end local v6           #currentSong:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v0}, Lcom/google/android/music/athome/AtHomePlayQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7e

    const/4 v7, 0x1

    .line 988
    :goto_24
    monitor-exit v10
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_80

    .line 989
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->updateMediaList()V

    .line 990
    const/4 v0, -0x1

    if-eq v9, v0, :cond_42

    .line 991
    new-instance v0, Lcom/google/android/music/athome/AtHomeSongList;

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v1}, Lcom/google/android/music/athome/AtHomePlayQueue;->getVersion()I

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x1

    iget-object v10, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v10}, Lcom/google/android/music/athome/AtHomePlayQueue;->getMaxSize()I

    move-result v10

    invoke-direct {v0, v1, v2, v3, v10}, Lcom/google/android/music/athome/AtHomeSongList;-><init>(JZI)V

    const/4 v1, 0x1

    invoke-interface {p1, v0, v9, v1}, Lcom/google/android/music/IMusicPlaybackService;->open(Lcom/google/android/music/medialist/SongList;IZ)V

    .line 996
    :cond_42
    return v7

    .line 974
    .restart local v6       #currentSong:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    :cond_43
    :try_start_43
    invoke-virtual {v6}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getSubmitterId()J

    move-result-wide v4

    .line 975
    .local v4, submitterToRemove:J
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v0, p2, p3, v4, v5}, Lcom/google/android/music/athome/AtHomePlayQueue;->skipSongsFromSubmitter(JJ)Lcom/google/android/music/athome/api/AtHomeSongInfo;

    move-result-object v8

    .line 977
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v1}, Lcom/google/android/music/athome/AtHomePlayQueue;->getSessionId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v3}, Lcom/google/android/music/athome/AtHomePlayQueue;->getVersion()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/athome/AtHomePlayQueue;->removeSubmitterSongs(JIJ)Lcom/google/android/music/athome/api/AtHomeModificationResult;

    .line 979
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v0}, Lcom/google/android/music/athome/AtHomePlayQueue;->getSessionId()J

    move-result-wide v1

    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v0}, Lcom/google/android/music/athome/AtHomePlayQueue;->getVersion()I

    move-result v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/athome/AtHomeMusicServer;->pushOnSubmitterSongsRemoved(JIJ)V

    .line 981
    if-eqz v8, :cond_1b

    .line 982
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v8}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getQueueId()J

    move-result-wide v1

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/athome/AtHomePlayQueue;->getPosition(JI)I

    move-result v9

    goto :goto_1b

    .line 987
    .end local v4           #submitterToRemove:J
    .end local v6           #currentSong:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    :cond_7e
    const/4 v7, 0x0

    goto :goto_24

    .line 988
    :catchall_80
    move-exception v0

    monitor-exit v10
    :try_end_82
    .catchall {:try_start_43 .. :try_end_82} :catchall_80

    throw v0
.end method

.method private setRepeatMode(I)V
    .registers 6
    .parameter "repeatMode"

    .prologue
    .line 670
    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-nez v2, :cond_c

    .line 671
    const-string v2, "aah.Music"

    const-string v3, "Cannot set repeat mode. No playback service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :goto_b
    return-void

    .line 675
    :cond_c
    invoke-static {p1}, Lcom/google/android/music/athome/AtHomeUtils;->atHomeToPlaybackServiceRepeatMode(I)I

    move-result v1

    .line 678
    .local v1, playbackServiceRepeatMode:I
    :try_start_10
    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v2, v1}, Lcom/google/android/music/IMusicPlaybackService;->setRepeatMode(I)V

    .line 679
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getSessionId()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, p1}, Lcom/google/android/music/athome/AtHomeMusicServer;->pushOnRepeatModeChanged(JI)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1c} :catch_1d

    goto :goto_b

    .line 680
    :catch_1d
    move-exception v0

    .line 681
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "aah.Music"

    const-string v3, "setRepeatMode failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method private setShuffleMode(Z)V
    .registers 20
    .parameter "shuffle"

    .prologue
    .line 631
    sget-object v2, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-nez v2, :cond_5

    .line 655
    :cond_4
    :goto_4
    return-void

    .line 636
    :cond_5
    :try_start_5
    sget-object v3, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz p1, :cond_62

    const/4 v2, 0x1

    :goto_a
    invoke-interface {v3, v2}, Lcom/google/android/music/IMusicPlaybackService;->setShuffleMode(I)V

    .line 638
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getSessionId()J

    move-result-wide v2

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/music/athome/AtHomeMusicServer;->pushOnShuffleChanged(JZ)V

    .line 640
    if-eqz p1, :cond_4

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    move-object/from16 v17, v0

    monitor-enter v17
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_21} :catch_59

    .line 642
    :try_start_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/android/music/athome/api/AtHomePlayState;

    .line 643
    .local v16, state:Lcom/google/android/music/athome/api/AtHomePlayState;
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/music/athome/api/AtHomePlayState;->getCurrentSongQueueId()J

    move-result-wide v5

    .line 644
    .local v5, currentSong:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getSessionId()J

    move-result-wide v3

    const/4 v7, -0x1

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/music/athome/AtHomePlayQueue;->shuffle(JJI)[J

    move-result-object v15

    .line 645
    .local v15, reOrderedSongs:[J
    if-eqz v15, :cond_54

    .line 646
    invoke-static {v15}, Lcom/google/android/music/athome/api/AtHomeApiUtils;->toRpcData([J)Landroid/support/place/rpc/RpcData;

    move-result-object v13

    .line 647
    .local v13, rpcArray:Landroid/support/place/rpc/RpcData;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getSessionId()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v2}, Lcom/google/android/music/athome/AtHomePlayQueue;->getVersion()I

    move-result v10

    move-object/from16 v7, p0

    move-wide v11, v5

    invoke-virtual/range {v7 .. v13}, Lcom/google/android/music/athome/AtHomeMusicServer;->pushOnSongsReodered(JIJLandroid/support/place/rpc/RpcData;)V

    .line 650
    .end local v13           #rpcArray:Landroid/support/place/rpc/RpcData;
    :cond_54
    monitor-exit v17

    goto :goto_4

    .end local v5           #currentSong:J
    .end local v15           #reOrderedSongs:[J
    .end local v16           #state:Lcom/google/android/music/athome/api/AtHomePlayState;
    :catchall_56
    move-exception v2

    monitor-exit v17
    :try_end_58
    .catchall {:try_start_21 .. :try_end_58} :catchall_56

    :try_start_58
    throw v2
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_59} :catch_59

    .line 652
    :catch_59
    move-exception v14

    .line 653
    .local v14, e:Landroid/os/RemoteException;
    const-string v2, "aah.Music"

    const-string v3, "setShuffleMode failed"

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 636
    .end local v14           #e:Landroid/os/RemoteException;
    :cond_62
    const/4 v2, 0x0

    goto :goto_a
.end method

.method private updateMediaList()V
    .registers 2

    .prologue
    .line 1260
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeContentProvider;->notifyOfChange(Landroid/content/Context;)V

    .line 1261
    return-void
.end method

.method private updatePlayState(Landroid/content/Intent;)V
    .registers 15
    .parameter "intent"

    .prologue
    .line 834
    sget-object v5, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    .line 835
    .local v5, music:Lcom/google/android/music/IMusicPlaybackService;
    if-nez v5, :cond_c

    .line 836
    const-string v9, "aah.Music"

    const-string v10, "No music service?"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_b
    :goto_b
    return-void

    .line 840
    :cond_c
    const/4 v4, 0x1

    .line 841
    .local v4, errorType:I
    new-instance v6, Lcom/google/android/music/athome/api/AtHomePlayState;

    invoke-direct {v6}, Lcom/google/android/music/athome/api/AtHomePlayState;-><init>()V

    .line 843
    .local v6, newState:Lcom/google/android/music/athome/api/AtHomePlayState;
    :try_start_12
    const-string v9, "com.android.music.playbackfailed"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_30

    .line 845
    const-string v9, "id"

    const-wide/16 v10, -0x1

    invoke-virtual {p1, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 848
    .local v1, currentSongId:J
    const-string v9, "errorType"

    const/4 v10, 0x1

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 852
    packed-switch v4, :pswitch_data_fc

    .line 877
    .end local v1           #currentSongId:J
    :cond_30
    :goto_30
    :pswitch_30
    invoke-interface {v5}, Lcom/google/android/music/IMusicPlaybackService;->getAudioId()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v0

    .line 878
    .local v0, audioId:Lcom/google/android/music/dl/ContentIdentifier;
    if-eqz v0, :cond_3d

    .line 879
    invoke-virtual {v0}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Lcom/google/android/music/athome/api/AtHomePlayState;->setCurrentSongQueueId(J)V

    .line 881
    :cond_3d
    invoke-interface {v5}, Lcom/google/android/music/IMusicPlaybackService;->isPlaying()Z

    move-result v9

    invoke-virtual {v6, v9}, Lcom/google/android/music/athome/api/AtHomePlayState;->setPlaying(Z)V

    .line 882
    invoke-interface {v5}, Lcom/google/android/music/IMusicPlaybackService;->isPreparing()Z

    move-result v9

    invoke-virtual {v6, v9}, Lcom/google/android/music/athome/api/AtHomePlayState;->setPreparing(Z)V

    .line 883
    invoke-interface {v5}, Lcom/google/android/music/IMusicPlaybackService;->isInErrorState()Z

    move-result v9

    invoke-virtual {v6, v9}, Lcom/google/android/music/athome/api/AtHomePlayState;->setInErrorState(Z)V

    .line 884
    invoke-static {v4}, Lcom/google/android/music/athome/AtHomeUtils;->internalToApiErrorType(I)I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/google/android/music/athome/api/AtHomePlayState;->setErrorType(I)V

    .line 885
    sget-boolean v9, Lcom/google/android/music/athome/AtHomeMusicServer;->LOGV:Z

    if-eqz v9, :cond_97

    invoke-interface {v5}, Lcom/google/android/music/IMusicPlaybackService;->isInErrorState()Z

    move-result v9

    if-eqz v9, :cond_97

    .line 886
    const-string v9, "aah.Music"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Mapped internal err: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to api err: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/google/android/music/athome/api/AtHomePlayState;->getErrorType()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ". isErr:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v5}, Lcom/google/android/music/IMusicPlaybackService;->isInErrorState()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :cond_97
    invoke-interface {v5}, Lcom/google/android/music/IMusicPlaybackService;->position()J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Lcom/google/android/music/athome/api/AtHomePlayState;->setPlaybackPosition(J)V
    :try_end_9e
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_9e} :catch_f2

    .line 894
    .end local v0           #audioId:Lcom/google/android/music/dl/ContentIdentifier;
    :goto_9e
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getSessionId()J

    move-result-wide v7

    .line 895
    .local v7, sessionId:J
    invoke-virtual {v6, v7, v8}, Lcom/google/android/music/athome/api/AtHomePlayState;->setSessionId(J)V

    .line 896
    iget-object v9, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 897
    invoke-virtual {p0, v7, v8, v6}, Lcom/google/android/music/athome/AtHomeMusicServer;->pushOnPlayStateChanged(JLcom/google/android/music/athome/api/AtHomePlayState;)V

    .line 898
    iget-object v9, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mTgsTransmitter:Lcom/google/android/music/athome/AtHomeMusicServer$AtHomeTgsTransmitter;

    iget-object v10, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mTgsTransmitter:Lcom/google/android/music/athome/AtHomeMusicServer$AtHomeTgsTransmitter;

    invoke-virtual {v10}, Lcom/google/android/music/athome/AtHomeMusicServer$AtHomeTgsTransmitter;->getPlayState()Landroid/support/place/music/TgsTransmitterPlayState;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/music/athome/AtHomeMusicServer$AtHomeTgsTransmitter;->pushOnPlayStateChanged(Landroid/support/place/music/TgsTransmitterPlayState;)V

    .line 901
    iget-object v9, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mTgs:Landroid/support/place/music/TungstenGroupingService;

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mTgsGroupId:Ljava/lang/String;

    if-eqz v9, :cond_b

    .line 902
    iget-object v9, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mTgs:Landroid/support/place/music/TungstenGroupingService;

    iget-object v10, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mTgsGroupId:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/google/android/music/athome/api/AtHomePlayState;->isPlaying()Z

    move-result v11

    new-instance v12, Lcom/google/android/music/athome/AtHomeMusicServer$4;

    invoke-direct {v12, p0}, Lcom/google/android/music/athome/AtHomeMusicServer$4;-><init>(Lcom/google/android/music/athome/AtHomeMusicServer;)V

    invoke-virtual {v9, v10, v11, v12}, Landroid/support/place/music/TungstenGroupingService;->setIsPlaying(Ljava/lang/String;ZLandroid/support/place/rpc/RpcErrorHandler;)V

    goto/16 :goto_b

    .line 854
    .end local v7           #sessionId:J
    .restart local v1       #currentSongId:J
    :pswitch_d2
    :try_start_d2
    const-string v9, "aah.Music"

    const-string v10, "Expired token"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    invoke-direct {p0, v5, v1, v2}, Lcom/google/android/music/athome/AtHomeMusicServer;->removeAllSongsOfCurrentSongSubmitterAndKeepPlaying(Lcom/google/android/music/IMusicPlaybackService;J)Z

    move-result v9

    if-nez v9, :cond_b

    .line 863
    const/16 v4, 0x1390

    .line 865
    goto/16 :goto_30

    .line 867
    :pswitch_e3
    const-string v9, "aah.Music"

    const-string v10, "Another stream is being played"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    invoke-direct {p0, v5, v1, v2}, Lcom/google/android/music/athome/AtHomeMusicServer;->removeAllSongsOfCurrentSongSubmitterAndKeepPlaying(Lcom/google/android/music/IMusicPlaybackService;J)Z
    :try_end_ed
    .catch Landroid/os/RemoteException; {:try_start_d2 .. :try_end_ed} :catch_f2

    move-result v9

    if-eqz v9, :cond_30

    goto/16 :goto_b

    .line 890
    .end local v1           #currentSongId:J
    :catch_f2
    move-exception v3

    .line 891
    .local v3, e:Landroid/os/RemoteException;
    const-string v9, "aah.Music"

    const-string v10, "Failed to get playback state"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9e

    .line 852
    nop

    :pswitch_data_fc
    .packed-switch 0x4
        :pswitch_d2
        :pswitch_30
        :pswitch_e3
    .end packed-switch
.end method

.method private updateRepeatMode(Landroid/content/Intent;)V
    .registers 10
    .parameter "intent"

    .prologue
    const/high16 v6, -0x8000

    .line 935
    const-string v5, "repeat"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 937
    .local v1, newMode:I
    if-ne v1, v6, :cond_17

    .line 938
    const-string v5, "aah.Music"

    const-string v6, "Missing repeat mode parameter"

    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    invoke-static {v5, v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 954
    :cond_16
    :goto_16
    return-void

    .line 941
    :cond_17
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeUtils;->playbackServiceToAtHomeRepeatMode(I)I

    move-result v0

    .line 942
    .local v0, atHomeRepeatMode:I
    const/4 v2, 0x0

    .line 943
    .local v2, repeatModeChanged:Z
    const-wide/16 v3, 0x0

    .line 944
    .local v3, sessionId:J
    iget-object v6, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    monitor-enter v6

    .line 945
    :try_start_21
    iget-object v5, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSessionInfo:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    if-eqz v5, :cond_39

    iget-object v5, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSessionInfo:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    invoke-virtual {v5}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getRepeatMode()I

    move-result v5

    if-ne v5, v0, :cond_39

    .line 946
    iget-object v5, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSessionInfo:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    invoke-virtual {v5, v0}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->setRepeatMode(I)V

    .line 947
    const/4 v2, 0x1

    .line 948
    iget-object v5, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSessionInfo:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    invoke-virtual {v5}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getSessionId()J

    move-result-wide v3

    .line 950
    :cond_39
    monitor-exit v6
    :try_end_3a
    .catchall {:try_start_21 .. :try_end_3a} :catchall_40

    .line 951
    if-eqz v2, :cond_16

    .line 952
    invoke-virtual {p0, v3, v4, v0}, Lcom/google/android/music/athome/AtHomeMusicServer;->pushOnRepeatModeChanged(JI)V

    goto :goto_16

    .line 950
    :catchall_40
    move-exception v5

    :try_start_41
    monitor-exit v6
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v5
.end method

.method private updateShuffleMode(Landroid/content/Intent;)V
    .registers 10
    .parameter "intent"

    .prologue
    const/high16 v6, -0x8000

    .line 912
    const-string v5, "shuffle"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 914
    .local v0, newMode:I
    if-ne v0, v6, :cond_17

    .line 915
    const-string v5, "aah.Music"

    const-string v6, "Missing shuffle mode parameter"

    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    invoke-static {v5, v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 932
    :cond_16
    :goto_16
    return-void

    .line 918
    :cond_17
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeUtils;->isShuffle(I)Z

    move-result v1

    .line 919
    .local v1, newValue:Z
    const/4 v4, 0x0

    .line 920
    .local v4, shuffleModeChanged:Z
    const-wide/16 v2, 0x0

    .line 921
    .local v2, sessionId:J
    iget-object v6, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    monitor-enter v6

    .line 923
    :try_start_21
    iget-object v5, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSessionInfo:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    if-eqz v5, :cond_39

    iget-object v5, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSessionInfo:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    invoke-virtual {v5}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->isShuffle()Z

    move-result v5

    if-ne v5, v1, :cond_39

    .line 924
    iget-object v5, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSessionInfo:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    invoke-virtual {v5, v1}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->setShuffle(Z)V

    .line 925
    const/4 v4, 0x1

    .line 926
    iget-object v5, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSessionInfo:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    invoke-virtual {v5}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getSessionId()J

    move-result-wide v2

    .line 928
    :cond_39
    monitor-exit v6
    :try_end_3a
    .catchall {:try_start_21 .. :try_end_3a} :catchall_40

    .line 929
    if-eqz v4, :cond_16

    .line 930
    invoke-virtual {p0, v2, v3, v1}, Lcom/google/android/music/athome/AtHomeMusicServer;->pushOnShuffleChanged(JZ)V

    goto :goto_16

    .line 928
    :catchall_40
    move-exception v5

    :try_start_41
    monitor-exit v6
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v5
.end method

.method private updateTimestamp()V
    .registers 4

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSessionInfo:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    if-eqz v0, :cond_d

    .line 1255
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSessionInfo:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->setUpdateTime(J)V

    .line 1257
    :cond_d
    return-void
.end method


# virtual methods
.method public appendSongs(JJILjava/util/List;Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)Lcom/google/android/music/athome/api/AtHomeModificationResult;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/support/place/rpc/RpcContext;",
            ")",
            "Lcom/google/android/music/athome/api/AtHomeModificationResult;"
        }
    .end annotation

    .prologue
    .line 1049
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    const-class v1, Lcom/google/android/music/athome/api/MusicConnector;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/athome/AtHomeMusicServer;->ANYONE_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {v0, p8, v1, v2}, Landroid/support/place/connector/Broker;->enforceCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1052
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1c

    .line 1053
    const-string v0, "aah.Music"

    const-string v1, "Empty song list"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    :cond_1c
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    monitor-enter v1

    .line 1059
    :try_start_1f
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v0}, Lcom/google/android/music/athome/AtHomePlayQueue;->isEmpty()Z

    move-result v0

    .line 1062
    invoke-direct {p0, p6, p7}, Lcom/google/android/music/athome/AtHomeMusicServer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    .line 1063
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v2, p1, p2, p5, p6}, Lcom/google/android/music/athome/AtHomePlayQueue;->appendSongs(JILjava/util/Collection;)Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v2

    .line 1064
    invoke-virtual {v2}, Lcom/google/android/music/athome/api/AtHomeModificationResult;->modificationApplied()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 1065
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->updateTimestamp()V

    .line 1066
    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v3}, Lcom/google/android/music/athome/AtHomePlayQueue;->getSessionId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v5}, Lcom/google/android/music/athome/AtHomePlayQueue;->getVersion()I

    move-result v5

    invoke-virtual {p0, v3, v4, v5, p6}, Lcom/google/android/music/athome/AtHomeMusicServer;->pushOnSongsAppended(JILjava/util/List;)V

    .line 1069
    :cond_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_1f .. :try_end_47} :catchall_71

    .line 1070
    invoke-virtual {v2}, Lcom/google/android/music/athome/api/AtHomeModificationResult;->modificationApplied()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 1071
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->updateMediaList()V

    .line 1073
    :cond_50
    if-eqz v0, :cond_70

    .line 1074
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v0, :cond_70

    .line 1076
    :try_start_56
    new-instance v0, Lcom/google/android/music/athome/AtHomeSongList;

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v1}, Lcom/google/android/music/athome/AtHomePlayQueue;->getVersion()I

    move-result v1

    int-to-long v3, v1

    const/4 v1, 0x1

    iget-object v5, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v5}, Lcom/google/android/music/athome/AtHomePlayQueue;->getMaxSize()I

    move-result v5

    invoke-direct {v0, v3, v4, v1, v5}, Lcom/google/android/music/athome/AtHomeSongList;-><init>(JZI)V

    .line 1078
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-interface {v1, v0, v3, v4}, Lcom/google/android/music/IMusicPlaybackService;->open(Lcom/google/android/music/medialist/SongList;IZ)V
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_70} :catch_74

    .line 1086
    :cond_70
    :goto_70
    return-object v2

    .line 1069
    :catchall_71
    move-exception v0

    :try_start_72
    monitor-exit v1
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v0

    .line 1080
    :catch_74
    move-exception v0

    .line 1081
    const-string v1, "aah.Music"

    const-string v3, "open failed"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_70
.end method

.method dump(Ljava/io/PrintWriter;)V
    .registers 4
    .parameter

    .prologue
    .line 1452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AtHome API Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/android/music/athome/api/AtHomeVersionCheck;->getCurrentApiVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSessionInfo:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TgsGroupId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mTgsGroupId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tgs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mTgs:Landroid/support/place/music/TungstenGroupingService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayQueue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1458
    return-void
.end method

.method getIsShuffle()Z
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 792
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    .line 793
    .local v1, service:Lcom/google/android/music/IMusicPlaybackService;
    if-nez v1, :cond_d

    .line 794
    const-string v4, "aah.Music"

    const-string v5, "No playback service"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :goto_c
    :pswitch_c
    return v3

    .line 798
    :cond_d
    :try_start_d
    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->getShuffleMode()I

    move-result v2

    .line 799
    .local v2, shuffleMode:I
    packed-switch v2, :pswitch_data_38

    .line 805
    const-string v4, "aah.Music"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected shuffle mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_2c} :catch_2d

    goto :goto_c

    .line 808
    .end local v2           #shuffleMode:I
    :catch_2d
    move-exception v0

    .line 809
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "aah.Music"

    const-string v5, "Failed to get shuffle mode from palyback service"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 803
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v2       #shuffleMode:I
    :pswitch_36
    const/4 v3, 0x1

    goto :goto_c

    .line 799
    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_c
        :pswitch_36
    .end packed-switch
.end method

.method public getPlayState(JJLandroid/support/place/rpc/RpcContext;)Lcom/google/android/music/athome/api/AtHomePlayState;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1198
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    const-class v1, Lcom/google/android/music/athome/api/MusicConnector;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/athome/AtHomeMusicServer;->ANYONE_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {v0, p5, v1, v2}, Landroid/support/place/connector/Broker;->enforceCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1201
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/athome/api/AtHomePlayState;

    .line 1202
    invoke-virtual {v0}, Lcom/google/android/music/athome/api/AtHomePlayState;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1205
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    .line 1206
    if-eqz v1, :cond_28

    .line 1208
    :try_start_21
    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->position()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/athome/api/AtHomePlayState;->setPlaybackPosition(J)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_28} :catch_31

    .line 1216
    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/athome/api/AtHomePlayState;

    return-object v0

    .line 1209
    :catch_31
    move-exception v0

    .line 1210
    const-string v1, "aah.Music"

    const-string v2, "position() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28
.end method

.method public getQueue(JJLandroid/support/place/rpc/RpcContext;)Lcom/google/android/music/athome/api/AtHomePlayQueueContent;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1033
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    const-class v1, Lcom/google/android/music/athome/api/MusicConnector;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/athome/AtHomeMusicServer;->ANYONE_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {v0, p5, v1, v2}, Landroid/support/place/connector/Broker;->enforceCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1036
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/athome/AtHomeMusicServer;->checkSession(J)Z

    move-result v0

    if-nez v0, :cond_27

    .line 1037
    const-string v0, "aah.Music"

    const-string v1, "Request for play queue for a different session"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    new-instance v0, Lcom/google/android/music/athome/AtHomePlayQueue;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/music/athome/AtHomePlayQueue;-><init>(IJ)V

    .line 1040
    invoke-virtual {v0}, Lcom/google/android/music/athome/AtHomePlayQueue;->getContent()Lcom/google/android/music/athome/api/AtHomePlayQueueContent;

    move-result-object v0

    .line 1043
    :goto_26
    return-object v0

    :cond_27
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v0}, Lcom/google/android/music/athome/AtHomePlayQueue;->getContent()Lcom/google/android/music/athome/api/AtHomePlayQueueContent;

    move-result-object v0

    goto :goto_26
.end method

.method public getRepeatMode(JJLandroid/support/place/rpc/RpcContext;)I
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1390
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    const-class v1, Lcom/google/android/music/athome/api/MusicConnector;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/athome/AtHomeMusicServer;->ANYONE_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {v0, p5, v1, v2}, Landroid/support/place/connector/Broker;->enforceCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1393
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getAtHomeRepeatMode()I

    move-result v0

    return v0
.end method

.method public getSessionInfo(JLandroid/support/place/rpc/RpcContext;)Lcom/google/android/music/athome/api/AtHomeSessionInfo;
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 777
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    const-class v1, Lcom/google/android/music/athome/api/MusicConnector;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/athome/AtHomeMusicServer;->ANYONE_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {v0, p3, v1, v2}, Landroid/support/place/connector/Broker;->enforceCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;[Ljava/lang/String;)V

    .line 779
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getIsShuffle()Z

    move-result v1

    .line 780
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getAtHomeRepeatMode()I

    move-result v2

    .line 781
    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    monitor-enter v3

    .line 782
    :try_start_1a
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSessionInfo:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    if-eqz v0, :cond_39

    .line 783
    iget-object v4, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSessionInfo:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/athome/api/AtHomePlayState;

    invoke-virtual {v0}, Lcom/google/android/music/athome/api/AtHomePlayState;->isPlaying()Z

    move-result v0

    invoke-virtual {v4, v0}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->setIsPlaying(Z)V

    .line 784
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSessionInfo:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    invoke-virtual {v0, v1}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->setShuffle(Z)V

    .line 785
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSessionInfo:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    invoke-virtual {v0, v2}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->setRepeatMode(I)V

    .line 787
    :cond_39
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSessionInfo:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    monitor-exit v3

    return-object v0

    .line 788
    :catchall_3d
    move-exception v0

    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_1a .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method public getSessionVariable(JLjava/lang/String;Landroid/support/place/rpc/RpcContext;)Landroid/support/place/rpc/RpcData;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1411
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v1

    const-class v2, Lcom/google/android/music/athome/api/MusicConnector;

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/music/athome/AtHomeMusicServer;->ANYONE_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {v1, p4, v2, v3}, Landroid/support/place/connector/Broker;->enforceCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1414
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    monitor-enter v1

    .line 1415
    :try_start_13
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSessionInfo:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    if-nez v2, :cond_19

    .line 1416
    monitor-exit v1

    .line 1421
    :goto_18
    return-object v0

    .line 1418
    :cond_19
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSessionInfo:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    invoke-virtual {v2}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getSessionId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-eqz v2, :cond_28

    .line 1419
    monitor-exit v1

    goto :goto_18

    .line 1422
    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_13 .. :try_end_27} :catchall_25

    throw v0

    .line 1421
    :cond_28
    :try_start_28
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSessionInfo:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    invoke-virtual {v0, p3}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getSessionVariable(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_25

    goto :goto_18
.end method

.method getTgsTransmitter()Landroid/support/place/connector/Connector;
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mTgsTransmitter:Lcom/google/android/music/athome/AtHomeMusicServer$AtHomeTgsTransmitter;

    return-object v0
.end method

.method public insertAndPositionSongs(JJIJLjava/util/List;Landroid/support/place/rpc/RpcData;Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)Lcom/google/android/music/athome/api/AtHomeModificationResult;
    .registers 24
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJIJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;",
            "Landroid/support/place/rpc/RpcData;",
            "Ljava/lang/String;",
            "Landroid/support/place/rpc/RpcContext;",
            ")",
            "Lcom/google/android/music/athome/api/AtHomeModificationResult;"
        }
    .end annotation

    .prologue
    .line 1139
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v2

    const-class v3, Lcom/google/android/music/athome/api/MusicConnector;

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/music/athome/AtHomeMusicServer;->ANYONE_PERMISSIONS:[Ljava/lang/String;

    move-object/from16 v0, p11

    invoke-virtual {v2, v0, v3, v4}, Landroid/support/place/connector/Broker;->enforceCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1142
    iget-object v10, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    monitor-enter v10

    .line 1144
    :try_start_14
    move-object/from16 v0, p8

    move-object/from16 v1, p10

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/athome/AtHomeMusicServer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    .line 1145
    invoke-static/range {p9 .. p9}, Lcom/google/android/music/athome/api/AtHomeApiUtils;->toLongs(Landroid/support/place/rpc/RpcData;)[J

    move-result-object v9

    .line 1146
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    move-wide v3, p1

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/music/athome/AtHomePlayQueue;->insertAndPositionSongs(JIJLjava/util/Collection;[J)Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v11

    .line 1148
    invoke-virtual {v11}, Lcom/google/android/music/athome/api/AtHomeModificationResult;->modificationApplied()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 1149
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->updateTimestamp()V

    .line 1150
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v2}, Lcom/google/android/music/athome/AtHomePlayQueue;->getSessionId()J

    move-result-wide v3

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v2}, Lcom/google/android/music/athome/AtHomePlayQueue;->getVersion()I

    move-result v5

    move-object v2, p0

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/music/athome/AtHomeMusicServer;->pushOnSongsInsertedAndPositioned(JIJLjava/util/List;Landroid/support/place/rpc/RpcData;)V

    .line 1153
    :cond_4b
    monitor-exit v10
    :try_end_4c
    .catchall {:try_start_14 .. :try_end_4c} :catchall_56

    .line 1154
    invoke-virtual {v11}, Lcom/google/android/music/athome/api/AtHomeModificationResult;->modificationApplied()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 1155
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->updateMediaList()V

    .line 1158
    :cond_55
    return-object v11

    .line 1153
    :catchall_56
    move-exception v2

    :try_start_57
    monitor-exit v10
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v2
.end method

.method public insertSongs(JJIJLjava/util/List;Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)Lcom/google/android/music/athome/api/AtHomeModificationResult;
    .registers 22
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJIJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/support/place/rpc/RpcContext;",
            ")",
            "Lcom/google/android/music/athome/api/AtHomeModificationResult;"
        }
    .end annotation

    .prologue
    .line 1114
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v2

    const-class v3, Lcom/google/android/music/athome/api/MusicConnector;

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/music/athome/AtHomeMusicServer;->ANYONE_PERMISSIONS:[Ljava/lang/String;

    move-object/from16 v0, p10

    invoke-virtual {v2, v0, v3, v4}, Landroid/support/place/connector/Broker;->enforceCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1117
    iget-object v9, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    monitor-enter v9

    .line 1119
    :try_start_14
    move-object/from16 v0, p8

    move-object/from16 v1, p9

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/athome/AtHomeMusicServer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    .line 1120
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    move-wide v3, p1

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/music/athome/AtHomePlayQueue;->insertSongs(JIJLjava/util/Collection;)Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v10

    .line 1121
    invoke-virtual {v10}, Lcom/google/android/music/athome/api/AtHomeModificationResult;->modificationApplied()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1122
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->updateTimestamp()V

    .line 1123
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v2}, Lcom/google/android/music/athome/AtHomePlayQueue;->getSessionId()J

    move-result-wide v3

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v2}, Lcom/google/android/music/athome/AtHomePlayQueue;->getVersion()I

    move-result v5

    move-object v2, p0

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/music/athome/AtHomeMusicServer;->pushOnSongsInserted(JIJLjava/util/List;)V

    .line 1126
    :cond_45
    monitor-exit v9
    :try_end_46
    .catchall {:try_start_14 .. :try_end_46} :catchall_50

    .line 1127
    invoke-virtual {v10}, Lcom/google/android/music/athome/api/AtHomeModificationResult;->modificationApplied()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 1128
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->updateMediaList()V

    .line 1131
    :cond_4f
    return-object v10

    .line 1126
    :catchall_50
    move-exception v2

    :try_start_51
    monitor-exit v9
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v2
.end method

.method public isShuffling(JJLandroid/support/place/rpc/RpcContext;)Z
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1381
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    const-class v1, Lcom/google/android/music/athome/api/MusicConnector;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/athome/AtHomeMusicServer;->ANYONE_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {v0, p5, v1, v2}, Landroid/support/place/connector/Broker;->enforceCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1384
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getIsShuffle()Z

    move-result v0

    return v0
.end method

.method public moveSong(JJIJJLandroid/support/place/rpc/RpcContext;)Lcom/google/android/music/athome/api/AtHomeModificationResult;
    .registers 22
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1289
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v1

    const-class v2, Lcom/google/android/music/athome/api/MusicConnector;

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/music/athome/AtHomeMusicServer;->ANYONE_PERMISSIONS:[Ljava/lang/String;

    move-object/from16 v0, p10

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/place/connector/Broker;->enforceCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1292
    iget-object v9, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    monitor-enter v9

    .line 1293
    :try_start_14
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    move-wide v2, p1

    move/from16 v4, p5

    move-wide/from16 v5, p6

    move-wide/from16 v7, p8

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/music/athome/AtHomePlayQueue;->moveSong(JIJJ)Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v10

    .line 1295
    invoke-virtual {v10}, Lcom/google/android/music/athome/api/AtHomeModificationResult;->modificationApplied()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1296
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->updateTimestamp()V

    .line 1297
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v1}, Lcom/google/android/music/athome/AtHomePlayQueue;->getSessionId()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v1}, Lcom/google/android/music/athome/AtHomePlayQueue;->getVersion()I

    move-result v4

    move-object v1, p0

    move-wide/from16 v5, p6

    move-wide/from16 v7, p8

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/music/athome/AtHomeMusicServer;->pushOnSongMoved(JIJJ)V

    .line 1300
    :cond_3e
    monitor-exit v9
    :try_end_3f
    .catchall {:try_start_14 .. :try_end_3f} :catchall_49

    .line 1302
    invoke-virtual {v10}, Lcom/google/android/music/athome/api/AtHomeModificationResult;->modificationApplied()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 1303
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->updateMediaList()V

    .line 1306
    :cond_48
    return-object v10

    .line 1300
    :catchall_49
    move-exception v1

    :try_start_4a
    monitor-exit v9
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v1
.end method

.method public newSession(JIILandroid/support/place/rpc/RpcContext;)Lcom/google/android/music/athome/api/AtHomeSessionInfo;
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 732
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    const-class v1, Lcom/google/android/music/athome/api/MusicConnector;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/athome/AtHomeMusicServer;->ANYONE_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {v0, p5, v1, v2}, Landroid/support/place/connector/Broker;->enforceCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;[Ljava/lang/String;)V

    .line 734
    const-string v0, ""

    .line 735
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeUtils;->getAtHomeDeviceAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    .line 736
    if-eqz v1, :cond_1d

    .line 737
    iget-object v0, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 743
    :cond_1d
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->pause()V

    .line 744
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    monitor-enter v1

    .line 745
    :try_start_23
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSessionInfo:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    if-eqz v2, :cond_4e

    .line 746
    const-string v2, "aah.Music"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ending session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSessionInfo:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    invoke-virtual {v4}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getSessionId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSessionInfo:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    invoke-virtual {v2}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getSessionId()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/music/athome/AtHomeMusicServer;->pushOnSessionEnded(J)V

    .line 749
    :cond_4e
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSongQueueIdToTokenMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 751
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 752
    iget-object v4, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v4, v2, v3, p4}, Lcom/google/android/music/athome/AtHomePlayQueue;->resetQueue(JI)V

    .line 754
    new-instance v4, Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    invoke-direct {v4}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;-><init>()V

    iput-object v4, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSessionInfo:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    .line 755
    iget-object v4, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSessionInfo:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->setCreateTime(J)V

    .line 756
    iget-object v4, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSessionInfo:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    invoke-virtual {v4, p1, p2}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->setSubmitterId(J)V

    .line 757
    iget-object v4, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSessionInfo:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    invoke-virtual {v4, p3}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->setMode(I)V

    .line 758
    iget-object v4, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSessionInfo:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    invoke-virtual {v4, p4}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->setMaxQueueSize(I)V

    .line 759
    iget-object v4, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSessionInfo:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->setSessionVariables(Landroid/support/place/rpc/RpcData;)V

    .line 761
    iget-object v4, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSessionInfo:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->setSessionId(J)V

    .line 762
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSessionInfo:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    invoke-virtual {v2, v0}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->setAtHomeDeviceAccount(Ljava/lang/String;)V

    .line 763
    monitor-exit v1
    :try_end_95
    .catchall {:try_start_23 .. :try_end_95} :catchall_d8

    .line 766
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSessionInfo:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    invoke-virtual {v0}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getRepeatMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/music/athome/AtHomeMusicServer;->setRepeatMode(I)V

    .line 767
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSessionInfo:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    invoke-virtual {v0}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->isShuffle()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/music/athome/AtHomeMusicServer;->setShuffleMode(Z)V

    .line 769
    const-string v0, "aah.Music"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSessionInfo:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    invoke-virtual {v2}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getSessionId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSessionInfo:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    invoke-virtual {v2}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getSessionId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSessionInfo:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    return-object v0

    .line 763
    :catchall_d8
    move-exception v0

    :try_start_d9
    monitor-exit v1
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_d8

    throw v0
.end method

.method public next(JJLandroid/support/place/rpc/RpcContext;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    const-class v1, Lcom/google/android/music/athome/api/MusicConnector;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/athome/AtHomeMusicServer;->ANYONE_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {v0, p5, v1, v2}, Landroid/support/place/connector/Broker;->enforceCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;[Ljava/lang/String;)V

    .line 594
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/athome/AtHomeMusicServer;->checkSession(J)Z

    move-result v0

    if-nez v0, :cond_16

    .line 605
    :cond_15
    :goto_15
    return-void

    .line 596
    :cond_16
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v0, :cond_15

    .line 601
    :try_start_1a
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->next()V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1f} :catch_20

    goto :goto_15

    .line 602
    :catch_20
    move-exception v0

    .line 603
    const-string v1, "aah.Music"

    const-string v2, "next failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method onMasterChanged()V
    .registers 3

    .prologue
    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mTgs:Landroid/support/place/music/TungstenGroupingService;

    .line 218
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/place/connector/Broker;->getConnectorRegistry()Landroid/support/place/connector/ConnectorRegistry;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mConnectorListener:Landroid/support/place/connector/ConnectorRegistry$Listener;

    invoke-virtual {v0, v1}, Landroid/support/place/connector/ConnectorRegistry;->startListeningForConnectors(Landroid/support/place/connector/ConnectorRegistry$Listener;)V

    .line 219
    return-void
.end method

.method public onRemoved(Lcom/google/android/music/athome/api/AtHomeSongInfo;)V
    .registers 5
    .parameter "removedSong"

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSongQueueIdToTokenMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getQueueId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1376
    return-void
.end method

.method public onStart()V
    .registers 5

    .prologue
    .line 170
    sget-boolean v1, Lcom/google/android/music/athome/AtHomeMusicServer;->LOGV:Z

    if-eqz v1, :cond_1c

    const-string v1, "aah.Music"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MusicConnector starting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_1c
    iget-boolean v1, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mRegisteredListener:Z

    if-eqz v1, :cond_38

    .line 173
    const-string v1, "aah.Music"

    const-string v2, "Broadcast listener already registered"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :goto_27
    invoke-super {p0}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->onStart()V

    .line 191
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/place/connector/Broker;->getConnectorRegistry()Landroid/support/place/connector/ConnectorRegistry;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mConnectorListener:Landroid/support/place/connector/ConnectorRegistry$Listener;

    invoke-virtual {v1, v2}, Landroid/support/place/connector/ConnectorRegistry;->startListeningForConnectors(Landroid/support/place/connector/ConnectorRegistry$Listener;)V

    .line 192
    return-void

    .line 176
    :cond_38
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 177
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string v1, "com.android.music.asyncopencomplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    const-string v1, "com.android.music.asyncopenstart"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    const-string v1, "com.android.music.playbackcomplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    const-string v1, "com.android.music.playbackfailed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    const-string v1, "com.google.android.music.shufflemodechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    const-string v1, "com.google.android.music.repeatmodechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlaybackServiceListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 186
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mRegisteredListener:Z

    goto :goto_27
.end method

.method public onStop()V
    .registers 4

    .prologue
    .line 197
    sget-boolean v0, Lcom/google/android/music/athome/AtHomeMusicServer;->LOGV:Z

    if-eqz v0, :cond_1c

    const-string v0, "aah.Music"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MusicConnector stopping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_1c
    iget-boolean v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mRegisteredListener:Z

    if-eqz v0, :cond_4a

    .line 202
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlaybackServiceListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mRegisteredListener:Z

    .line 208
    :goto_2c
    invoke-super {p0}, Lcom/google/android/music/athome/api/MusicConnector$EndpointBase;->onStop()V

    .line 210
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/place/connector/Broker;->getConnectorRegistry()Landroid/support/place/connector/ConnectorRegistry;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 211
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/place/connector/Broker;->getConnectorRegistry()Landroid/support/place/connector/ConnectorRegistry;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mConnectorListener:Landroid/support/place/connector/ConnectorRegistry$Listener;

    invoke-virtual {v0, v1}, Landroid/support/place/connector/ConnectorRegistry;->stopListeningForConnectors(Landroid/support/place/connector/ConnectorRegistry$Listener;)V

    .line 213
    :cond_46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mTgs:Landroid/support/place/music/TungstenGroupingService;

    .line 214
    return-void

    .line 205
    :cond_4a
    const-string v0, "aah.Music"

    const-string v1, "Intent listener was not registered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c
.end method

.method public pause(JJLandroid/support/place/rpc/RpcContext;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    const-class v1, Lcom/google/android/music/athome/api/MusicConnector;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/athome/AtHomeMusicServer;->ANYONE_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {v0, p5, v1, v2}, Landroid/support/place/connector/Broker;->enforceCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;[Ljava/lang/String;)V

    .line 564
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/athome/AtHomeMusicServer;->checkSession(J)Z

    move-result v0

    if-nez v0, :cond_16

    .line 567
    :goto_15
    return-void

    .line 566
    :cond_16
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->pause()V

    goto :goto_15
.end method

.method public play(JJLandroid/support/place/rpc/RpcContext;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    const-class v1, Lcom/google/android/music/athome/api/MusicConnector;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/athome/AtHomeMusicServer;->ANYONE_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {v0, p5, v1, v2}, Landroid/support/place/connector/Broker;->enforceCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;[Ljava/lang/String;)V

    .line 509
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/athome/AtHomeMusicServer;->checkSession(J)Z

    move-result v0

    if-nez v0, :cond_16

    .line 512
    :goto_15
    return-void

    .line 511
    :cond_16
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->play()V

    goto :goto_15
.end method

.method public prependSongs(JJILjava/util/List;Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)Lcom/google/android/music/athome/api/AtHomeModificationResult;
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/support/place/rpc/RpcContext;",
            ")",
            "Lcom/google/android/music/athome/api/AtHomeModificationResult;"
        }
    .end annotation

    .prologue
    .line 1092
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    const-class v1, Lcom/google/android/music/athome/api/MusicConnector;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/athome/AtHomeMusicServer;->ANYONE_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {v0, p8, v1, v2}, Landroid/support/place/connector/Broker;->enforceCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1095
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    monitor-enter v1

    .line 1097
    :try_start_12
    invoke-direct {p0, p6, p7}, Lcom/google/android/music/athome/AtHomeMusicServer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    .line 1098
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v0, p1, p2, p5, p6}, Lcom/google/android/music/athome/AtHomePlayQueue;->prependSongs(JILjava/util/Collection;)Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v0

    .line 1099
    invoke-virtual {v0}, Lcom/google/android/music/athome/api/AtHomeModificationResult;->modificationApplied()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1100
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->updateTimestamp()V

    .line 1101
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v2}, Lcom/google/android/music/athome/AtHomePlayQueue;->getSessionId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v4}, Lcom/google/android/music/athome/AtHomePlayQueue;->getVersion()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4, p6}, Lcom/google/android/music/athome/AtHomeMusicServer;->pushOnSongsPrepended(JILjava/util/List;)V

    .line 1103
    :cond_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_12 .. :try_end_34} :catchall_3e

    .line 1104
    invoke-virtual {v0}, Lcom/google/android/music/athome/api/AtHomeModificationResult;->modificationApplied()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 1105
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->updateMediaList()V

    .line 1108
    :cond_3d
    return-object v0

    .line 1103
    :catchall_3e
    move-exception v0

    :try_start_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v0
.end method

.method public prev(JJLandroid/support/place/rpc/RpcContext;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    const-class v1, Lcom/google/android/music/athome/api/MusicConnector;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/athome/AtHomeMusicServer;->ANYONE_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {v0, p5, v1, v2}, Landroid/support/place/connector/Broker;->enforceCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;[Ljava/lang/String;)V

    .line 575
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/athome/AtHomeMusicServer;->checkSession(J)Z

    move-result v0

    if-nez v0, :cond_16

    .line 586
    :cond_15
    :goto_15
    return-void

    .line 577
    :cond_16
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v0, :cond_15

    .line 582
    :try_start_1a
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->prev()V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1f} :catch_20

    goto :goto_15

    .line 583
    :catch_20
    move-exception v0

    .line 584
    const-string v1, "aah.Music"

    const-string v2, "prev failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method public registerSubmitter(JLcom/google/android/music/athome/api/SubmitterInfo;Landroid/support/place/rpc/RpcContext;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1339
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    const-class v1, Lcom/google/android/music/athome/api/MusicConnector;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/athome/AtHomeMusicServer;->ANYONE_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {v0, p4, v1, v2}, Landroid/support/place/connector/Broker;->enforceCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1342
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/athome/AtHomeMusicServer;->checkSession(J)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1346
    :goto_15
    return-void

    .line 1344
    :cond_16
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v0, p3}, Lcom/google/android/music/athome/AtHomePlayQueue;->addSubmitter(Lcom/google/android/music/athome/api/SubmitterInfo;)V

    .line 1345
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/music/athome/AtHomeMusicServer;->pushOnRegisteredSubmitter(JLcom/google/android/music/athome/api/SubmitterInfo;)V

    goto :goto_15
.end method

.method public removeAllSongs(JJLandroid/support/place/rpc/RpcContext;)Lcom/google/android/music/athome/api/AtHomeModificationResult;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1002
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    const-class v1, Lcom/google/android/music/athome/api/MusicConnector;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/athome/AtHomeMusicServer;->ANYONE_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {v0, p5, v1, v2}, Landroid/support/place/connector/Broker;->enforceCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1005
    invoke-virtual/range {p0 .. p5}, Lcom/google/android/music/athome/AtHomeMusicServer;->stop(JJLandroid/support/place/rpc/RpcContext;)V

    .line 1007
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    monitor-enter v1

    .line 1008
    const/4 v0, 0x0

    :try_start_16
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/music/athome/AtHomeMusicServer;->clearPlayQueueLocked(JZ)Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v0

    .line 1009
    invoke-virtual {v0}, Lcom/google/android/music/athome/api/AtHomeModificationResult;->modificationApplied()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1010
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->updateTimestamp()V

    .line 1011
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v2}, Lcom/google/android/music/athome/AtHomePlayQueue;->getSessionId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v4}, Lcom/google/android/music/athome/AtHomePlayQueue;->getVersion()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/android/music/athome/AtHomeMusicServer;->pushOnAllSongsRemoved(JI)V

    .line 1013
    :cond_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_16 .. :try_end_33} :catchall_3d

    .line 1014
    invoke-virtual {v0}, Lcom/google/android/music/athome/api/AtHomeModificationResult;->modificationApplied()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1015
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->updateMediaList()V

    .line 1017
    :cond_3c
    return-object v0

    .line 1013
    :catchall_3d
    move-exception v0

    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method public removeSong(JJIJLandroid/support/place/rpc/RpcContext;)Lcom/google/android/music/athome/api/AtHomeModificationResult;
    .registers 18
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1266
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v1

    const-class v2, Lcom/google/android/music/athome/api/MusicConnector;

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/music/athome/AtHomeMusicServer;->ANYONE_PERMISSIONS:[Ljava/lang/String;

    move-object/from16 v0, p8

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/place/connector/Broker;->enforceCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1269
    iget-object v7, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    monitor-enter v7

    .line 1270
    :try_start_14
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    move-wide v2, p1

    move v4, p5

    move-wide v5, p6

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/music/athome/AtHomePlayQueue;->removeSong(JIJ)Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v8

    .line 1271
    invoke-virtual {v8}, Lcom/google/android/music/athome/api/AtHomeModificationResult;->modificationApplied()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 1272
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSongQueueIdToTokenMap:Ljava/util/HashMap;

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->updateTimestamp()V

    .line 1274
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v1}, Lcom/google/android/music/athome/AtHomePlayQueue;->getSessionId()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v1}, Lcom/google/android/music/athome/AtHomePlayQueue;->getVersion()I

    move-result v4

    move-object v1, p0

    move-wide v5, p6

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/music/athome/AtHomeMusicServer;->pushOnSongRemoved(JIJ)V

    .line 1276
    :cond_40
    monitor-exit v7
    :try_end_41
    .catchall {:try_start_14 .. :try_end_41} :catchall_4b

    .line 1278
    invoke-virtual {v8}, Lcom/google/android/music/athome/api/AtHomeModificationResult;->modificationApplied()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 1279
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->updateMediaList()V

    .line 1282
    :cond_4a
    return-object v8

    .line 1276
    :catchall_4b
    move-exception v1

    :try_start_4c
    monitor-exit v7
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method public removeSongsInRange(JJIJJLandroid/support/place/rpc/RpcContext;)Lcom/google/android/music/athome/api/AtHomeModificationResult;
    .registers 22
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1353
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v1

    const-class v2, Lcom/google/android/music/athome/api/MusicConnector;

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/music/athome/AtHomeMusicServer;->ANYONE_PERMISSIONS:[Ljava/lang/String;

    move-object/from16 v0, p10

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/place/connector/Broker;->enforceCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1357
    iget-object v10, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    monitor-enter v10

    .line 1358
    :try_start_14
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    move-wide v2, p1

    move/from16 v4, p5

    move-wide/from16 v5, p6

    move-wide/from16 v7, p8

    move-object v9, p0

    invoke-virtual/range {v1 .. v9}, Lcom/google/android/music/athome/AtHomePlayQueue;->removeSongsInRange(JIJJLcom/google/android/music/athome/AtHomePlayQueue$OnRemovedHandler;)Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v9

    .line 1360
    invoke-virtual {v9}, Lcom/google/android/music/athome/api/AtHomeModificationResult;->modificationApplied()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1361
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->updateTimestamp()V

    .line 1362
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v1}, Lcom/google/android/music/athome/AtHomePlayQueue;->getSessionId()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v1}, Lcom/google/android/music/athome/AtHomePlayQueue;->getVersion()I

    move-result v4

    move-object v1, p0

    move-wide/from16 v5, p6

    move-wide/from16 v7, p8

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/music/athome/AtHomeMusicServer;->pushOnSongRangeRemoved(JIJJ)V

    .line 1365
    :cond_3f
    monitor-exit v10
    :try_end_40
    .catchall {:try_start_14 .. :try_end_40} :catchall_4a

    .line 1366
    invoke-virtual {v9}, Lcom/google/android/music/athome/api/AtHomeModificationResult;->modificationApplied()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 1367
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->updateMediaList()V

    .line 1369
    :cond_49
    return-object v9

    .line 1365
    :catchall_4a
    move-exception v1

    :try_start_4b
    monitor-exit v10
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method public seek(JJJLandroid/support/place/rpc/RpcContext;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 713
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    const-class v1, Lcom/google/android/music/athome/api/MusicConnector;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/athome/AtHomeMusicServer;->ANYONE_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {v0, p7, v1, v2}, Landroid/support/place/connector/Broker;->enforceCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;[Ljava/lang/String;)V

    .line 716
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/athome/AtHomeMusicServer;->checkSession(J)Z

    move-result v0

    if-nez v0, :cond_16

    .line 727
    :cond_15
    :goto_15
    return-void

    .line 718
    :cond_16
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v0, :cond_15

    .line 723
    :try_start_1a
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0, p5, p6}, Lcom/google/android/music/IMusicPlaybackService;->seek(J)J
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1f} :catch_20

    goto :goto_15

    .line 724
    :catch_20
    move-exception v0

    .line 725
    const-string v1, "aah.Music"

    const-string v2, "seek failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method public setQueuePosition(JJJLandroid/support/place/rpc/RpcContext;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 689
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    const-class v1, Lcom/google/android/music/athome/api/MusicConnector;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/athome/AtHomeMusicServer;->ANYONE_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {v0, p7, v1, v2}, Landroid/support/place/connector/Broker;->enforceCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;[Ljava/lang/String;)V

    .line 692
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/athome/AtHomeMusicServer;->checkSession(J)Z

    move-result v0

    if-nez v0, :cond_17

    .line 708
    :cond_16
    :goto_16
    return-void

    .line 694
    :cond_17
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v0, :cond_16

    .line 699
    :try_start_1b
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    const/4 v1, -0x1

    invoke-virtual {v0, p5, p6, v1}, Lcom/google/android/music/athome/AtHomePlayQueue;->getPosition(JI)I

    move-result v0

    .line 700
    if-eq v0, v3, :cond_33

    .line 701
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1, v0}, Lcom/google/android/music/IMusicPlaybackService;->setQueuePosition(I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_29} :catch_2a

    goto :goto_16

    .line 705
    :catch_2a
    move-exception v0

    .line 706
    const-string v1, "aah.Music"

    const-string v2, "setQueuePosition failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 702
    :cond_33
    :try_start_33
    sget-boolean v0, Lcom/google/android/music/athome/AtHomeMusicServer;->LOGV:Z

    if-eqz v0, :cond_16

    .line 703
    const-string v0, "aah.Music"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Song "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found in play queue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_55} :catch_2a

    goto :goto_16
.end method

.method public setRepeatMode(JJILandroid/support/place/rpc/RpcContext;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 661
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    const-class v1, Lcom/google/android/music/athome/api/MusicConnector;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/athome/AtHomeMusicServer;->ANYONE_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {v0, p6, v1, v2}, Landroid/support/place/connector/Broker;->enforceCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;[Ljava/lang/String;)V

    .line 664
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/athome/AtHomeMusicServer;->checkSession(J)Z

    move-result v0

    if-nez v0, :cond_16

    .line 667
    :goto_15
    return-void

    .line 666
    :cond_16
    invoke-direct {p0, p5}, Lcom/google/android/music/athome/AtHomeMusicServer;->setRepeatMode(I)V

    goto :goto_15
.end method

.method public setSessionVariable(JLjava/lang/String;Landroid/support/place/rpc/RpcData;Landroid/support/place/rpc/RpcContext;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1427
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    const-class v1, Lcom/google/android/music/athome/api/MusicConnector;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/athome/AtHomeMusicServer;->ANYONE_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {v0, p5, v1, v2}, Landroid/support/place/connector/Broker;->enforceCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1430
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    monitor-enter v1

    .line 1431
    :try_start_12
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSessionInfo:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    if-nez v0, :cond_1f

    .line 1432
    const-string v0, "aah.Music"

    const-string v2, "No session"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    monitor-exit v1

    .line 1446
    :goto_1e
    return-void

    .line 1435
    :cond_1f
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSessionInfo:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    invoke-virtual {v0}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getSessionId()J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-eqz v0, :cond_35

    .line 1436
    const-string v0, "aah.Music"

    const-string v2, "Wrong session"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    monitor-exit v1

    goto :goto_1e

    .line 1445
    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_12 .. :try_end_34} :catchall_32

    throw v0

    .line 1439
    :cond_35
    :try_start_35
    sget-boolean v0, Lcom/google/android/music/athome/AtHomeMusicServer;->LOGV:Z

    if-eqz v0, :cond_5f

    .line 1440
    const-string v2, "aah.Music"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting session variable: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p4, :cond_69

    const-string v0, "null"

    :goto_54
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    :cond_5f
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mSessionInfo:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    invoke-virtual {v0, p3, p4}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->setSessionVariable(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V

    .line 1444
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/music/athome/AtHomeMusicServer;->pushOnSessionVariableChanged(JLjava/lang/String;Landroid/support/place/rpc/RpcData;)V

    .line 1445
    monitor-exit v1

    goto :goto_1e

    .line 1440
    :cond_69
    invoke-virtual {p4}, Landroid/support/place/rpc/RpcData;->toDebugString()Ljava/lang/String;
    :try_end_6c
    .catchall {:try_start_35 .. :try_end_6c} :catchall_32

    move-result-object v0

    goto :goto_54
.end method

.method public setShuffleOff(JJLandroid/support/place/rpc/RpcContext;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    const-class v1, Lcom/google/android/music/athome/api/MusicConnector;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/athome/AtHomeMusicServer;->ANYONE_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {v0, p5, v1, v2}, Landroid/support/place/connector/Broker;->enforceCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;[Ljava/lang/String;)V

    .line 624
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/athome/AtHomeMusicServer;->checkSession(J)Z

    move-result v0

    if-nez v0, :cond_16

    .line 627
    :goto_15
    return-void

    .line 626
    :cond_16
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/athome/AtHomeMusicServer;->setShuffleMode(Z)V

    goto :goto_15
.end method

.method public setShuffleOn(JJLandroid/support/place/rpc/RpcContext;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    const-class v1, Lcom/google/android/music/athome/api/MusicConnector;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/athome/AtHomeMusicServer;->ANYONE_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {v0, p5, v1, v2}, Landroid/support/place/connector/Broker;->enforceCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;[Ljava/lang/String;)V

    .line 613
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/athome/AtHomeMusicServer;->checkSession(J)Z

    move-result v0

    if-nez v0, :cond_16

    .line 616
    :goto_15
    return-void

    .line 615
    :cond_16
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/music/athome/AtHomeMusicServer;->setShuffleMode(Z)V

    goto :goto_15
.end method

.method public stop(JJLandroid/support/place/rpc/RpcContext;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    const-class v1, Lcom/google/android/music/athome/api/MusicConnector;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/athome/AtHomeMusicServer;->ANYONE_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {v0, p5, v1, v2}, Landroid/support/place/connector/Broker;->enforceCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;[Ljava/lang/String;)V

    .line 533
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/athome/AtHomeMusicServer;->checkSession(J)Z

    move-result v0

    if-nez v0, :cond_16

    .line 544
    :cond_15
    :goto_15
    return-void

    .line 535
    :cond_16
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v0, :cond_15

    .line 540
    :try_start_1a
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->stop()V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1f} :catch_20

    goto :goto_15

    .line 541
    :catch_20
    move-exception v0

    .line 542
    const-string v1, "aah.Music"

    const-string v2, "stop failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method public updateSongs(JJILjava/util/List;Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)Lcom/google/android/music/athome/api/AtHomeModificationResult;
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/support/place/rpc/RpcContext;",
            ")",
            "Lcom/google/android/music/athome/api/AtHomeModificationResult;"
        }
    .end annotation

    .prologue
    .line 1166
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    const-class v1, Lcom/google/android/music/athome/api/MusicConnector;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/athome/AtHomeMusicServer;->ANYONE_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {v0, p8, v1, v2}, Landroid/support/place/connector/Broker;->enforceCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1170
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    monitor-enter v1

    .line 1171
    if-eqz p7, :cond_17

    .line 1173
    :try_start_14
    invoke-direct {p0, p6, p7}, Lcom/google/android/music/athome/AtHomeMusicServer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    .line 1175
    :cond_17
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v0, p1, p2, p5, p6}, Lcom/google/android/music/athome/AtHomePlayQueue;->updateSongs(JILjava/util/Collection;)Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v0

    .line 1176
    invoke-virtual {v0}, Lcom/google/android/music/athome/api/AtHomeModificationResult;->modificationApplied()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 1177
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->updateTimestamp()V

    .line 1178
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v2}, Lcom/google/android/music/athome/AtHomePlayQueue;->getSessionId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v4}, Lcom/google/android/music/athome/AtHomePlayQueue;->getVersion()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4, p6}, Lcom/google/android/music/athome/AtHomeMusicServer;->pushOnSongsUpdated(JILjava/util/List;)V

    .line 1180
    :cond_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_14 .. :try_end_36} :catchall_40

    .line 1181
    invoke-virtual {v0}, Lcom/google/android/music/athome/api/AtHomeModificationResult;->modificationApplied()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1182
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->updateMediaList()V

    .line 1185
    :cond_3f
    return-object v0

    .line 1180
    :catchall_40
    move-exception v0

    :try_start_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v0
.end method

.method public versionCheck(JIIILandroid/support/place/rpc/RpcContext;)Lcom/google/android/music/athome/api/AtHomeVersionCheck;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x1d

    .line 1314
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    const-class v1, Lcom/google/android/music/athome/api/MusicConnector;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/athome/AtHomeMusicServer;->ANYONE_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {v0, p6, v1, v2}, Landroid/support/place/connector/Broker;->enforceCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1316
    const/4 v0, 0x0

    .line 1317
    new-instance v1, Lcom/google/android/music/athome/api/AtHomeVersionCheck;

    invoke-direct {v1}, Lcom/google/android/music/athome/api/AtHomeVersionCheck;-><init>()V

    .line 1318
    invoke-virtual {v1, v0}, Lcom/google/android/music/athome/api/AtHomeVersionCheck;->setCheckStatus(I)V

    .line 1319
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->getBuildNumber(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/music/athome/api/AtHomeVersionCheck;->setApkBuildNumber(I)V

    .line 1322
    invoke-static {}, Lcom/google/android/music/athome/api/AtHomeVersionCheck;->getCurrentApiVersion()I

    move-result v0

    .line 1324
    invoke-virtual {v1, v3}, Lcom/google/android/music/athome/api/AtHomeVersionCheck;->setMinSupportedApiVersion(I)V

    .line 1325
    invoke-virtual {v1, v0}, Lcom/google/android/music/athome/api/AtHomeVersionCheck;->setMaxSupportedApiVersion(I)V

    .line 1327
    if-ge p4, v3, :cond_36

    .line 1328
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/google/android/music/athome/api/AtHomeVersionCheck;->setCheckStatus(I)V

    .line 1333
    :cond_35
    :goto_35
    return-object v1

    .line 1329
    :cond_36
    if-le p3, v0, :cond_35

    .line 1330
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/google/android/music/athome/api/AtHomeVersionCheck;->setCheckStatus(I)V

    goto :goto_35
.end method
