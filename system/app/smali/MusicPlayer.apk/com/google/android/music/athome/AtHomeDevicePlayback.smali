.class public Lcom/google/android/music/athome/AtHomeDevicePlayback;
.super Lcom/google/android/music/DevicePlayback;
.source "AtHomeDevicePlayback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/athome/AtHomeDevicePlayback$20;,
        Lcom/google/android/music/athome/AtHomeDevicePlayback$GetQueueErrorHandler;,
        Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;
    }
.end annotation


# static fields
.field private static final LOGV:Z


# instance fields
.field private mAtHomeError:Z

.field private mAtHomeErrorType:I

.field private mAtHomeGroupId:Ljava/lang/String;

.field private mAtHomeMediaList:Lcom/google/android/music/medialist/SongList;

.field private mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mBroker:Landroid/support/place/connector/Broker;

.field private mBrokerListener:Landroid/support/place/api/broker/BrokerManager$ConnectionListener;

.field private final mBrokerManager:Landroid/support/place/api/broker/BrokerManager;

.field private mClearQueueHandler:Lcom/google/android/music/athome/api/MusicConnector$OnRemoveAllSongs;

.field private mConnector:Lcom/google/android/music/athome/api/MusicConnector;

.field private mContext:Landroid/content/Context;

.field private mCurrentSong:Lcom/google/android/music/athome/api/AtHomeSongInfo;

.field private mCurrentSongId:Lcom/google/android/music/dl/ContentIdentifier;

.field private mCurrentSongQueuePosition:I

.field private mDeferredNotifyFailureRunnable:Ljava/lang/Runnable;

.field private mEndpointInfo:Landroid/support/place/rpc/EndpointInfo;

.field private mErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;

.field private mFatalErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;

.field private mFullQueueSyncInProgress:Z

.field private mGetPlayStateHandler:Lcom/google/android/music/athome/api/MusicConnector$OnGetPlayState;

.field private mGetQueueHandler:Lcom/google/android/music/athome/api/MusicConnector$OnGetQueue;

.field private mGetSessionInfoHandler:Lcom/google/android/music/athome/api/MusicConnector$OnGetSessionInfo;

.field private mLastLocalPlaybackSongList:Lcom/google/android/music/medialist/SongList;

.field private mLastLocalPlaybackSongListPosition:I

.field private mLastLocalPlaybackTimeStamp:J

.field private mListener:Lcom/google/android/music/athome/api/MusicConnector$Listener;

.field private mMoveSongHandler:Lcom/google/android/music/athome/api/MusicConnector$OnMoveSong;

.field private final mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mNewSessionInfoHandler:Lcom/google/android/music/athome/api/MusicConnector$OnNewSession;

.field private mPartyMode:Z

.field private volatile mPendingNotifyFailure:Z

.field private mPendingNotifyFailureHandler:Landroid/os/Handler;

.field private mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

.field private mPlayQueueVersionWhileSyncing:J

.field private final mPlayState:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/music/athome/api/AtHomePlayState;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylistLoading:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProfile:Lcom/google/android/music/utils/ProfileRequest$ProfileInfo;

.field private mProfileGetter:Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;

.field private mQueueAccess:Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;

.field mQueueLoader:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;

.field private mRecoveryErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;

.field private mRemoveSongHandler:Lcom/google/android/music/athome/api/MusicConnector$OnRemoveSong;

.field private mRepeatMode:I

.field private mRetryError:Ljava/lang/Runnable;

.field private mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mSeek:J

.field private mSeekErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;

.field private mSeekPending:Z

.field private mSession:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

.field private mShuffleMode:I

.field private mStopWatch:Lcom/google/android/music/StopWatch;

.field private mSubmitterNeedsRegistering:Z

.field private mTokenRetriever:Lcom/google/android/music/athome/TokenRetriever;

.field private mVersionCheck:Lcom/google/android/music/athome/api/AtHomeVersionCheck;

.field private mVersionCheckHandler:Lcom/google/android/music/athome/api/MusicConnector$OnVersionCheck;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1428
    const-string v0, "aah.Music"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->LOGV:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/music/MusicPlaybackService;Lcom/google/android/music/jumper/MusicPreferences;)V
    .registers 9
    .parameter "service"
    .parameter "prefs"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2065
    invoke-direct {p0, p1}, Lcom/google/android/music/DevicePlayback;-><init>(Lcom/google/android/music/MusicPlaybackService;)V

    .line 1361
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1373
    iput-boolean v4, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPartyMode:Z

    .line 1374
    iput-boolean v4, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSubmitterNeedsRegistering:Z

    .line 1379
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/google/android/music/athome/api/AtHomePlayState;

    invoke-direct {v2}, Lcom/google/android/music/athome/api/AtHomePlayState;-><init>()V

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1386
    iput-boolean v4, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlaylistLoading:Z

    .line 1387
    iput-boolean v4, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeError:Z

    .line 1388
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeErrorType:I

    .line 1389
    iput-boolean v4, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mFullQueueSyncInProgress:Z

    .line 1390
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueueVersionWhileSyncing:J

    .line 1402
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPendingNotifyFailureHandler:Landroid/os/Handler;

    .line 1415
    new-instance v1, Lcom/google/android/music/athome/AtHomePlayQueue;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v4, v2, v3}, Lcom/google/android/music/athome/AtHomePlayQueue;-><init>(IJ)V

    iput-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    .line 1419
    iput-object v5, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mProfileGetter:Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;

    .line 1425
    iput-object v5, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeGroupId:Ljava/lang/String;

    .line 1430
    new-instance v1, Lcom/google/android/music/athome/AtHomeDevicePlayback$1;

    invoke-direct {v1, p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$1;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V

    iput-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mVersionCheckHandler:Lcom/google/android/music/athome/api/MusicConnector$OnVersionCheck;

    .line 1472
    new-instance v1, Lcom/google/android/music/athome/AtHomeDevicePlayback$2;

    invoke-direct {v1, p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$2;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V

    iput-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mGetSessionInfoHandler:Lcom/google/android/music/athome/api/MusicConnector$OnGetSessionInfo;

    .line 1518
    new-instance v1, Lcom/google/android/music/athome/AtHomeDevicePlayback$3;

    invoke-direct {v1, p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$3;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V

    iput-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mNewSessionInfoHandler:Lcom/google/android/music/athome/api/MusicConnector$OnNewSession;

    .line 1549
    new-instance v1, Lcom/google/android/music/athome/AtHomeDevicePlayback$4;

    invoke-direct {v1, p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$4;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V

    iput-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mGetQueueHandler:Lcom/google/android/music/athome/api/MusicConnector$OnGetQueue;

    .line 1584
    new-instance v1, Lcom/google/android/music/athome/AtHomeDevicePlayback$5;

    invoke-direct {v1, p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$5;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V

    iput-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mGetPlayStateHandler:Lcom/google/android/music/athome/api/MusicConnector$OnGetPlayState;

    .line 1592
    new-instance v1, Lcom/google/android/music/athome/AtHomeDevicePlayback$6;

    invoke-direct {v1, p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$6;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V

    iput-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mClearQueueHandler:Lcom/google/android/music/athome/api/MusicConnector$OnRemoveAllSongs;

    .line 1601
    new-instance v1, Lcom/google/android/music/athome/AtHomeDevicePlayback$7;

    invoke-direct {v1, p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$7;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V

    iput-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mRemoveSongHandler:Lcom/google/android/music/athome/api/MusicConnector$OnRemoveSong;

    .line 1609
    new-instance v1, Lcom/google/android/music/athome/AtHomeDevicePlayback$8;

    invoke-direct {v1, p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$8;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V

    iput-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mMoveSongHandler:Lcom/google/android/music/athome/api/MusicConnector$OnMoveSong;

    .line 1658
    new-instance v1, Lcom/google/android/music/athome/AtHomeDevicePlayback$9;

    invoke-direct {v1, p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$9;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V

    iput-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;

    .line 1665
    new-instance v1, Lcom/google/android/music/athome/AtHomeDevicePlayback$10;

    invoke-direct {v1, p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$10;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V

    iput-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mFatalErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;

    .line 1679
    new-instance v1, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;

    invoke-direct {v1, p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$11;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V

    iput-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mListener:Lcom/google/android/music/athome/api/MusicConnector$Listener;

    .line 2030
    new-instance v1, Lcom/google/android/music/athome/AtHomeDevicePlayback$12;

    invoke-direct {v1, p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$12;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V

    iput-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mQueueAccess:Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;

    .line 2266
    new-instance v1, Lcom/google/android/music/athome/AtHomeDevicePlayback$13;

    invoke-direct {v1, p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$13;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V

    iput-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 2594
    new-instance v1, Lcom/google/android/music/athome/AtHomeDevicePlayback$14;

    invoke-direct {v1, p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$14;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V

    iput-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSeekErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;

    .line 2728
    new-instance v1, Lcom/google/android/music/athome/AtHomeDevicePlayback$15;

    invoke-direct {v1, p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$15;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V

    iput-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mBrokerListener:Landroid/support/place/api/broker/BrokerManager$ConnectionListener;

    .line 2789
    new-instance v1, Lcom/google/android/music/athome/AtHomeDevicePlayback$16;

    invoke-direct {v1, p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$16;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V

    iput-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 2801
    new-instance v1, Lcom/google/android/music/athome/AtHomeDevicePlayback$17;

    invoke-direct {v1, p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$17;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V

    iput-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mDeferredNotifyFailureRunnable:Ljava/lang/Runnable;

    .line 3086
    new-instance v1, Lcom/google/android/music/athome/AtHomeDevicePlayback$18;

    invoke-direct {v1, p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$18;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V

    iput-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mRetryError:Ljava/lang/Runnable;

    .line 3101
    new-instance v1, Lcom/google/android/music/athome/AtHomeDevicePlayback$19;

    invoke-direct {v1, p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$19;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V

    iput-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mRecoveryErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;

    .line 2066
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mContext:Landroid/content/Context;

    .line 2067
    iput-object p2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 2068
    new-instance v1, Lcom/google/android/music/StopWatch;

    invoke-direct {v1}, Lcom/google/android/music/StopWatch;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mStopWatch:Lcom/google/android/music/StopWatch;

    .line 2069
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/place/api/broker/BrokerManager;->getInstance(Landroid/content/Context;)Landroid/support/place/api/broker/BrokerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mBrokerManager:Landroid/support/place/api/broker/BrokerManager;

    .line 2070
    new-instance v1, Lcom/google/android/music/athome/TokenRetriever;

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p2}, Lcom/google/android/music/athome/TokenRetriever;-><init>(Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;)V

    iput-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mTokenRetriever:Lcom/google/android/music/athome/TokenRetriever;

    .line 2071
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPowerManager:Landroid/os/PowerManager;

    .line 2073
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2074
    .local v0, screenFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2075
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2076
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2077
    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeError:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/google/android/music/athome/AtHomeDevicePlayback;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeError:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/google/android/music/athome/AtHomeDevicePlayback;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeErrorType:I

    return p1
.end method

.method static synthetic access$1300(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->onNonFatalErrorLocked()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->resyncPlayQueue()V

    return-void
.end method

.method static synthetic access$1800()Z
    .registers 1

    .prologue
    .line 89
    sget-boolean v0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->LOGV:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/AtHomeSessionInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSession:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/google/android/music/athome/AtHomeDevicePlayback;Lcom/google/android/music/athome/api/AtHomeSessionInfo;)Lcom/google/android/music/athome/api/AtHomeSessionInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSession:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/AtHomeVersionCheck;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mVersionCheck:Lcom/google/android/music/athome/api/AtHomeVersionCheck;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/google/android/music/athome/AtHomeDevicePlayback;Lcom/google/android/music/athome/api/AtHomeVersionCheck;)Lcom/google/android/music/athome/api/AtHomeVersionCheck;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mVersionCheck:Lcom/google/android/music/athome/api/AtHomeVersionCheck;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/google/android/music/athome/AtHomeDevicePlayback;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mShuffleMode:I

    return v0
.end method

.method static synthetic access$2300(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSubmitterNeedsRegistering:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mProfileGetter:Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/utils/ProfileRequest$ProfileInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mProfile:Lcom/google/android/music/utils/ProfileRequest$ProfileInfo;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/google/android/music/athome/AtHomeDevicePlayback;Lcom/google/android/music/utils/ProfileRequest$ProfileInfo;)Lcom/google/android/music/utils/ProfileRequest$ProfileInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mProfile:Lcom/google/android/music/utils/ProfileRequest$ProfileInfo;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/google/android/music/athome/AtHomeDevicePlayback;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlaylistLoading:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/MusicConnector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->updateAtHomeMediaList()V

    return-void
.end method

.method static synthetic access$3100(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Z
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->waitForValidQueue()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/AtHomeSongInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mCurrentSong:Lcom/google/android/music/athome/api/AtHomeSongInfo;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/TokenRetriever;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mTokenRetriever:Lcom/google/android/music/athome/TokenRetriever;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayState:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/MusicConnector$Listener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mListener:Lcom/google/android/music/athome/api/MusicConnector$Listener;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/MusicConnector$OnGetSessionInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mGetSessionInfoHandler:Lcom/google/android/music/athome/api/MusicConnector$OnGetSessionInfo;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Landroid/support/place/rpc/RpcErrorHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mFatalErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/google/android/music/athome/AtHomeDevicePlayback;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->onFatalErrorLocked(I)V

    return-void
.end method

.method static synthetic access$4500(Lcom/google/android/music/athome/AtHomeDevicePlayback;Lcom/google/android/music/athome/api/AtHomeSessionInfo;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->shouldReuseSessionLocked(Lcom/google/android/music/athome/api/AtHomeSessionInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4700(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPartyMode:Z

    return v0
.end method

.method static synthetic access$4800(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/MusicConnector$OnNewSession;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mNewSessionInfoHandler:Lcom/google/android/music/athome/api/MusicConnector$OnNewSession;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/medialist/SongList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mLastLocalPlaybackSongList:Lcom/google/android/music/medialist/SongList;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/google/android/music/athome/AtHomeDevicePlayback;Lcom/google/android/music/athome/api/AtHomeSessionInfo;Z)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->processSessionInfoLocked(Lcom/google/android/music/athome/api/AtHomeSessionInfo;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5100(Lcom/google/android/music/athome/AtHomeDevicePlayback;I)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->updateShuffleModeLocked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Lcom/google/android/music/athome/AtHomeDevicePlayback;I)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->updateRepeatModeLocked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lcom/google/android/music/athome/AtHomeDevicePlayback;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->notifyChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/google/android/music/athome/AtHomeDevicePlayback;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->notifyChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/google/android/music/athome/AtHomeDevicePlayback;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mLastLocalPlaybackSongListPosition:I

    return v0
.end method

.method static synthetic access$5600(Lcom/google/android/music/athome/AtHomeDevicePlayback;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->notifyChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/google/android/music/athome/AtHomeDevicePlayback;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->notifyChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->checkSessionLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5900(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/MusicConnector$OnGetPlayState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mGetPlayStateHandler:Lcom/google/android/music/athome/api/MusicConnector$OnGetPlayState;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mFullQueueSyncInProgress:Z

    return v0
.end method

.method static synthetic access$6002(Lcom/google/android/music/athome/AtHomeDevicePlayback;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mFullQueueSyncInProgress:Z

    return p1
.end method

.method static synthetic access$6100(Lcom/google/android/music/athome/AtHomeDevicePlayback;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueueVersionWhileSyncing:J

    return-wide v0
.end method

.method static synthetic access$6102(Lcom/google/android/music/athome/AtHomeDevicePlayback;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-wide p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueueVersionWhileSyncing:J

    return-wide p1
.end method

.method static synthetic access$6200(Lcom/google/android/music/athome/AtHomeDevicePlayback;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->updateAtHomeStateLocked(I)V

    return-void
.end method

.method static synthetic access$6300(Lcom/google/android/music/athome/AtHomeDevicePlayback;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->notifyChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/google/android/music/athome/AtHomeDevicePlayback;Lcom/google/android/music/athome/api/AtHomePlayState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->processPlayStateUpdate(Lcom/google/android/music/athome/api/AtHomePlayState;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/google/android/music/athome/AtHomeDevicePlayback;Lcom/google/android/music/athome/api/AtHomeModificationResult;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->processModificationResult(Lcom/google/android/music/athome/api/AtHomeModificationResult;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/google/android/music/athome/AtHomeDevicePlayback;Landroid/support/place/rpc/RpcError;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->handleErrorLocked(Landroid/support/place/rpc/RpcError;)V

    return-void
.end method

.method static synthetic access$6700(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/MusicConnector$OnGetQueue;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mGetQueueHandler:Lcom/google/android/music/athome/api/MusicConnector$OnGetQueue;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/google/android/music/athome/AtHomeDevicePlayback;Landroid/support/place/rpc/RpcError;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->handleError(Landroid/support/place/rpc/RpcError;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/google/android/music/athome/AtHomeDevicePlayback;JI)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->clearPlayQueue(JI)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/jumper/MusicPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/google/android/music/athome/AtHomeDevicePlayback;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->notifyChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7100(Lcom/google/android/music/athome/AtHomeDevicePlayback;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->notifyChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/google/android/music/athome/AtHomeDevicePlayback;J)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->removeSong(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7300(Lcom/google/android/music/athome/AtHomeDevicePlayback;JJ)Z
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->moveSong(JJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7702(Lcom/google/android/music/athome/AtHomeDevicePlayback;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSeekPending:Z

    return p1
.end method

.method static synthetic access$7800(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Landroid/support/place/connector/Broker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mBroker:Landroid/support/place/connector/Broker;

    return-object v0
.end method

.method static synthetic access$7802(Lcom/google/android/music/athome/AtHomeDevicePlayback;Landroid/support/place/connector/Broker;)Landroid/support/place/connector/Broker;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mBroker:Landroid/support/place/connector/Broker;

    return-object p1
.end method

.method static synthetic access$7900(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->isActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8000(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->setupMusicClient()V

    return-void
.end method

.method static synthetic access$8100(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->isActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8200(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Landroid/os/PowerManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPendingNotifyFailure:Z

    return v0
.end method

.method static synthetic access$8302(Lcom/google/android/music/athome/AtHomeDevicePlayback;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPendingNotifyFailure:Z

    return p1
.end method

.method static synthetic access$8400(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->disconnectFromMusicConnectorLocked()V

    return-void
.end method

.method static synthetic access$8500(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mRetryError:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mDeferredNotifyFailureRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPendingNotifyFailureHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Landroid/support/place/rpc/RpcErrorHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mRecoveryErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Landroid/support/place/rpc/RpcErrorHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;

    return-object v0
.end method

.method private cancelQueueLoadingLocked()V
    .registers 2

    .prologue
    .line 3035
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mQueueLoader:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;

    if-eqz v0, :cond_9

    .line 3036
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mQueueLoader:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->reset()V
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->access$1000(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;)V

    .line 3038
    :cond_9
    return-void
.end method

.method private checkSessionLocked()Z
    .registers 3

    .prologue
    .line 3270
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSession:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    if-nez v0, :cond_d

    .line 3271
    const-string v0, "aah.Music"

    const-string v1, "No session"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3272
    const/4 v0, 0x0

    .line 3274
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_c
.end method

.method private clearAtHomeErrorLocked()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2114
    iput-boolean v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeError:Z

    .line 2115
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeErrorType:I

    .line 2116
    iput-boolean v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPendingNotifyFailure:Z

    .line 2117
    return-void
.end method

.method private clearLastLocalPlaybackInfo()V
    .registers 3

    .prologue
    .line 2723
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mLastLocalPlaybackTimeStamp:J

    .line 2724
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mLastLocalPlaybackSongList:Lcom/google/android/music/medialist/SongList;

    .line 2725
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mLastLocalPlaybackSongListPosition:I

    .line 2726
    return-void
.end method

.method private clearPlayQueue(JI)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 2989
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    monitor-enter v1

    .line 2990
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v0}, Lcom/google/android/music/athome/AtHomePlayQueue;->getSessionId()J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-eqz v0, :cond_1a

    .line 2991
    sget-boolean v0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->LOGV:Z

    if-eqz v0, :cond_18

    const-string v0, "aah.Music"

    const-string v2, "Ingoring play queue clearing. Id mismatch"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    :cond_18
    monitor-exit v1

    .line 3000
    :cond_19
    :goto_19
    return-void

    .line 2994
    :cond_1a
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v0}, Lcom/google/android/music/athome/AtHomePlayQueue;->isEmpty()Z

    move-result v0

    .line 2995
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v2, p3}, Lcom/google/android/music/athome/AtHomePlayQueue;->setEmptyContent(I)V

    .line 2996
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_2c

    .line 2997
    if-nez v0, :cond_19

    .line 2998
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->updateAtHomeMediaList()V

    goto :goto_19

    .line 2996
    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method private disconnectFromMusicConnectorLocked()V
    .registers 3

    .prologue
    .line 2635
    sget-boolean v0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->LOGV:Z

    if-eqz v0, :cond_b

    .line 2636
    const-string v0, "aah.Music"

    const-string v1, "Start disconnecting from athome device"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2639
    :cond_b
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->cancelQueueLoadingLocked()V

    .line 2641
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    if-eqz v0, :cond_1a

    .line 2642
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    invoke-virtual {v0}, Lcom/google/android/music/athome/api/MusicConnector;->stopListening()V

    .line 2643
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    .line 2645
    :cond_1a
    return-void
.end method

.method private disconnectLocked()V
    .registers 3

    .prologue
    .line 2649
    sget-boolean v0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->LOGV:Z

    if-eqz v0, :cond_b

    .line 2650
    const-string v0, "aah.Music"

    const-string v1, "Start disconnecting from broker"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2653
    :cond_b
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->disconnectFromMusicConnectorLocked()V

    .line 2655
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mBrokerManager:Landroid/support/place/api/broker/BrokerManager;

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mBrokerListener:Landroid/support/place/api/broker/BrokerManager$ConnectionListener;

    invoke-virtual {v0, v1}, Landroid/support/place/api/broker/BrokerManager;->stopListening(Landroid/support/place/api/broker/BrokerManager$ConnectionListener;)V

    .line 2656
    return-void
.end method

.method private handleError(Landroid/support/place/rpc/RpcError;)V
    .registers 5
    .parameter "error"

    .prologue
    .line 1630
    const-string v0, "aah.Music"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RPC error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v1

    .line 1632
    :try_start_1b
    invoke-direct {p0, p1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->handleErrorLocked(Landroid/support/place/rpc/RpcError;)V

    .line 1633
    monitor-exit v1

    .line 1634
    return-void

    .line 1633
    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_20

    throw v0
.end method

.method private handleErrorLocked(Landroid/support/place/rpc/RpcError;)V
    .registers 5
    .parameter "error"

    .prologue
    .line 1618
    const-string v0, "aah.Music"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RPC error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    if-nez v0, :cond_1d

    .line 1627
    :goto_1c
    return-void

    .line 1623
    :cond_1d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeError:Z

    .line 1624
    const/16 v0, 0x138c

    iput v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeErrorType:I

    .line 1625
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->onNonFatalErrorLocked()V

    .line 1626
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->notifyFailure()V

    goto :goto_1c
.end method

.method private moveSong(JJ)Z
    .registers 25
    .parameter "songIdToMove"
    .parameter "desiredPosisionQueueId"

    .prologue
    .line 2238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 2239
    :try_start_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    if-nez v1, :cond_17

    .line 2240
    const-string v1, "aah.Music"

    const-string v5, "moveSong ignored (not connected to a place)"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    const/4 v1, 0x0

    monitor-exit v18

    .line 2262
    :goto_16
    return v1

    .line 2243
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->checkSessionLocked()Z

    move-result v1

    if-nez v1, :cond_23

    const/4 v1, 0x0

    monitor-exit v18

    goto :goto_16

    .line 2257
    :catchall_20
    move-exception v1

    monitor-exit v18
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    throw v1

    .line 2245
    :cond_23
    :try_start_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    move-object/from16 v19, v0

    monitor-enter v19
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_20

    .line 2246
    :try_start_2a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v1}, Lcom/google/android/music/athome/AtHomePlayQueue;->getVersion()I

    move-result v1

    add-int/lit8 v4, v1, 0x1

    .line 2247
    .local v4, version:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v1}, Lcom/google/android/music/athome/AtHomePlayQueue;->getSessionId()J

    move-result-wide v2

    .line 2249
    .local v2, sessionId:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/music/athome/AtHomePlayQueue;->moveSong(JIJJ)Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v17

    .line 2251
    .local v17, result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/music/athome/api/AtHomeModificationResult;->modificationApplied()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 2252
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->getAtHomeSubmitterId()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mMoveSongHandler:Lcom/google/android/music/athome/api/MusicConnector$OnMoveSong;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;

    move-object/from16 v16, v0

    move-wide v6, v2

    move v10, v4

    move-wide/from16 v11, p1

    move-wide/from16 v13, p3

    invoke-virtual/range {v5 .. v16}, Lcom/google/android/music/athome/api/MusicConnector;->moveSong(JJIJJLcom/google/android/music/athome/api/MusicConnector$OnMoveSong;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 2256
    :cond_6d
    monitor-exit v19
    :try_end_6e
    .catchall {:try_start_2a .. :try_end_6e} :catchall_7d

    .line 2257
    :try_start_6e
    monitor-exit v18
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_20

    .line 2259
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/music/athome/api/AtHomeModificationResult;->modificationApplied()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 2260
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->updateAtHomeMediaList()V

    .line 2262
    :cond_78
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/music/athome/api/AtHomeModificationResult;->modificationApplied()Z

    move-result v1

    goto :goto_16

    .line 2256
    .end local v2           #sessionId:J
    .end local v4           #version:I
    .end local v17           #result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :catchall_7d
    move-exception v1

    :try_start_7e
    monitor-exit v19
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    :try_start_7f
    throw v1
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_20
.end method

.method private notifyGenericAtHomeError()V
    .registers 3

    .prologue
    .line 2287
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v1

    .line 2288
    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeError:Z

    if-nez v0, :cond_e

    .line 2289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeError:Z

    .line 2290
    const/16 v0, 0x138c

    iput v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeErrorType:I

    .line 2292
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    .line 2293
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->notifyFailure()V

    .line 2294
    return-void

    .line 2292
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method private onFatalErrorLocked(I)V
    .registers 3
    .parameter "errorType"

    .prologue
    .line 3063
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeError:Z

    .line 3064
    iput p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeErrorType:I

    .line 3065
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    if-eqz v0, :cond_11

    .line 3066
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    invoke-virtual {v0}, Lcom/google/android/music/athome/api/MusicConnector;->stopListening()V

    .line 3067
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    .line 3072
    :cond_11
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->updateAtHomeStateLocked(I)V

    .line 3073
    return-void
.end method

.method private onNonFatalErrorLocked()V
    .registers 3

    .prologue
    .line 3076
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    if-nez v0, :cond_c

    .line 3077
    const-string v0, "aah.Music"

    const-string v1, "Connector is null, will not attempt to recover from error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3084
    :cond_b
    :goto_b
    return-void

    .line 3081
    :cond_c
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mBroker:Landroid/support/place/connector/Broker;

    if-eqz v0, :cond_b

    .line 3082
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mBroker:Landroid/support/place/connector/Broker;

    invoke-virtual {v0}, Landroid/support/place/connector/Broker;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mRetryError:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_b
.end method

.method private processModificationResult(Lcom/google/android/music/athome/api/AtHomeModificationResult;)V
    .registers 5
    .parameter "result"

    .prologue
    .line 2104
    invoke-virtual {p1}, Lcom/google/android/music/athome/api/AtHomeModificationResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_25

    .line 2106
    sget-boolean v0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->LOGV:Z

    if-eqz v0, :cond_22

    .line 2107
    const-string v0, "aah.Music"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistency after modifying play queue. State:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    :cond_22
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->resyncPlayQueue()V

    .line 2111
    :cond_25
    return-void
.end method

.method private processPlayStateUpdate(Lcom/google/android/music/athome/api/AtHomePlayState;)V
    .registers 10
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2810
    .line 2813
    iget-object v5, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayState:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v5

    .line 2814
    :try_start_5
    invoke-virtual {p1}, Lcom/google/android/music/athome/api/AtHomePlayState;->getCurrentSongQueueId()J

    move-result-wide v3

    .line 2815
    const-wide/16 v6, -0x1

    cmp-long v0, v3, v6

    if-nez v0, :cond_c0

    .line 2816
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mCurrentSongId:Lcom/google/android/music/dl/ContentIdentifier;

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mCurrentSong:Lcom/google/android/music/athome/api/AtHomeSongInfo;

    if-eqz v0, :cond_133

    .line 2818
    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mCurrentSongId:Lcom/google/android/music/dl/ContentIdentifier;

    .line 2819
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mCurrentSong:Lcom/google/android/music/athome/api/AtHomeSongInfo;

    move v4, v1

    .line 2841
    :goto_1e
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_114

    move v3, v1

    .line 2847
    :goto_27
    invoke-virtual {p1}, Lcom/google/android/music/athome/api/AtHomePlayState;->isInErrorState()Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/athome/api/AtHomePlayState;

    invoke-virtual {v0}, Lcom/google/android/music/athome/api/AtHomePlayState;->isInErrorState()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-virtual {p1}, Lcom/google/android/music/athome/api/AtHomePlayState;->getErrorType()I

    move-result v6

    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/athome/api/AtHomePlayState;

    invoke-virtual {v0}, Lcom/google/android/music/athome/api/AtHomePlayState;->getErrorType()I

    move-result v0

    if-eq v6, v0, :cond_4e

    :cond_4d
    move v2, v1

    .line 2851
    :cond_4e
    iget-boolean v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeError:Z

    if-eqz v0, :cond_130

    .line 2853
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->clearAtHomeErrorLocked()V

    .line 2856
    :goto_55
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2857
    monitor-exit v5
    :try_end_5b
    .catchall {:try_start_5 .. :try_end_5b} :catchall_128

    .line 2858
    invoke-direct {p0, p1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->updateStopwatch(Lcom/google/android/music/athome/api/AtHomePlayState;)V

    .line 2859
    sget-boolean v0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->LOGV:Z

    if-eqz v0, :cond_7a

    .line 2860
    const-string v0, "aah.Music"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Playstate update:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2862
    :cond_7a
    if-eqz v2, :cond_a8

    .line 2863
    const-string v0, "aah.Music"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New playback error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/music/athome/api/AtHomePlayState;->getErrorType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2864
    invoke-virtual {p1}, Lcom/google/android/music/athome/api/AtHomePlayState;->getErrorType()I

    move-result v0

    const v2, 0xbc3ba

    if-ne v0, v2, :cond_12b

    .line 2866
    const-string v0, "aah.Music"

    const-string v2, "Expired token"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2871
    :cond_a8
    :goto_a8
    if-eqz v4, :cond_af

    .line 2872
    const-string v0, "com.android.music.metachanged"

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->notifyChange(Ljava/lang/String;)V

    .line 2874
    :cond_af
    if-eqz v1, :cond_b6

    .line 2875
    const-string v0, "com.android.music.playstatechanged"

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->notifyChange(Ljava/lang/String;)V

    .line 2877
    :cond_b6
    invoke-virtual {p1}, Lcom/google/android/music/athome/api/AtHomePlayState;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 2878
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->registerAudioFocus()V

    .line 2880
    :cond_bf
    return-void

    .line 2822
    :cond_c0
    :try_start_c0
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mCurrentSongId:Lcom/google/android/music/dl/ContentIdentifier;

    if-eqz v0, :cond_d2

    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mCurrentSong:Lcom/google/android/music/athome/api/AtHomeSongInfo;

    if-eqz v0, :cond_d2

    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mCurrentSongId:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {v0}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v6

    cmp-long v0, v6, v3

    if-eqz v0, :cond_133

    .line 2825
    :cond_d2
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/music/athome/AtHomePlayQueue;->findSong(J)Lcom/google/android/music/athome/api/AtHomeSongInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mCurrentSong:Lcom/google/android/music/athome/api/AtHomeSongInfo;

    .line 2826
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mCurrentSong:Lcom/google/android/music/athome/api/AtHomeSongInfo;

    if-nez v0, :cond_e5

    .line 2827
    const-string v0, "aah.Music"

    const-string v6, "Could not find current song in the play queue"

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    :cond_e5
    iget-boolean v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPartyMode:Z

    if-eqz v0, :cond_f5

    .line 2830
    new-instance v0, Lcom/google/android/music/dl/ContentIdentifier;

    sget-object v6, Lcom/google/android/music/dl/ContentIdentifier$Domain;->AT_HOME_PARTY:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    invoke-direct {v0, v3, v4, v6}, Lcom/google/android/music/dl/ContentIdentifier;-><init>(JLcom/google/android/music/dl/ContentIdentifier$Domain;)V

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mCurrentSongId:Lcom/google/android/music/dl/ContentIdentifier;

    move v4, v1

    goto/16 :goto_1e

    .line 2831
    :cond_f5
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mCurrentSong:Lcom/google/android/music/athome/api/AtHomeSongInfo;

    if-eqz v0, :cond_10b

    .line 2833
    new-instance v0, Lcom/google/android/music/dl/ContentIdentifier;

    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mCurrentSong:Lcom/google/android/music/athome/api/AtHomeSongInfo;

    invoke-virtual {v3}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getLocalAudioId()J

    move-result-wide v3

    sget-object v6, Lcom/google/android/music/dl/ContentIdentifier$Domain;->DEFAULT:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    invoke-direct {v0, v3, v4, v6}, Lcom/google/android/music/dl/ContentIdentifier;-><init>(JLcom/google/android/music/dl/ContentIdentifier$Domain;)V

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mCurrentSongId:Lcom/google/android/music/dl/ContentIdentifier;

    move v4, v1

    goto/16 :goto_1e

    .line 2836
    :cond_10b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mCurrentSongId:Lcom/google/android/music/dl/ContentIdentifier;

    .line 2837
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mCurrentSongQueuePosition:I

    move v4, v1

    goto/16 :goto_1e

    .line 2844
    :cond_114
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/athome/api/AtHomePlayState;

    invoke-virtual {v0, p1}, Lcom/google/android/music/athome/api/AtHomePlayState;->samePlayState(Lcom/google/android/music/athome/api/AtHomePlayState;)Z

    move-result v0

    if-nez v0, :cond_126

    move v0, v1

    :goto_123
    move v3, v0

    goto/16 :goto_27

    :cond_126
    move v0, v2

    goto :goto_123

    .line 2857
    :catchall_128
    move-exception v0

    monitor-exit v5
    :try_end_12a
    .catchall {:try_start_c0 .. :try_end_12a} :catchall_128

    throw v0

    .line 2868
    :cond_12b
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->notifyFailure()V

    goto/16 :goto_a8

    :cond_130
    move v1, v3

    goto/16 :goto_55

    :cond_133
    move v4, v2

    goto/16 :goto_1e
.end method

.method private processSessionInfoLocked(Lcom/google/android/music/athome/api/AtHomeSessionInfo;Z)Z
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 3004
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSession:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    .line 3006
    invoke-virtual {p1}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getAtHomeDeviceAccount()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3007
    const-string v0, "aah.Music"

    const-string v1, "No robot account"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3008
    const/16 v0, 0x138d

    invoke-direct {p0, v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->onFatalErrorLocked(I)V

    .line 3010
    const/4 v0, 0x0

    .line 3030
    :goto_1a
    return v0

    .line 3012
    :cond_1b
    sget-boolean v0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->LOGV:Z

    if-eqz v0, :cond_3b

    .line 3013
    const-string v0, "aah.Music"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Robot account:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getAtHomeDeviceAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3016
    :cond_3b
    if-eqz p2, :cond_50

    .line 3017
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {p1}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getSessionId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getMaxQueueSize()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/athome/AtHomePlayQueue;->resetQueue(JI)V

    .line 3018
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->updateAtHomeStateLocked(I)V

    :goto_4e
    move v0, v7

    .line 3030
    goto :goto_1a

    .line 3023
    :cond_50
    iput-boolean v7, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mFullQueueSyncInProgress:Z

    .line 3024
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->updateAtHomeStateLocked(I)V

    .line 3025
    new-instance v6, Lcom/google/android/music/athome/AtHomeDevicePlayback$GetQueueErrorHandler;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$GetQueueErrorHandler;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback;Lcom/google/android/music/athome/AtHomeDevicePlayback$1;)V

    .line 3026
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    invoke-virtual {p1}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getSessionId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->getAtHomeSubmitterId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mGetQueueHandler:Lcom/google/android/music/athome/api/MusicConnector$OnGetQueue;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/music/athome/api/MusicConnector;->getQueue(JJLcom/google/android/music/athome/api/MusicConnector$OnGetQueue;Landroid/support/place/rpc/RpcErrorHandler;)V

    goto :goto_4e
.end method

.method private registerAudioFocus()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 2276
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    if-ne v0, v1, :cond_20

    .line 2280
    .local v0, recievedAudioFocus:Z
    :goto_16
    if-nez v0, :cond_1f

    .line 2281
    const-string v1, "aah.Music"

    const-string v2, "registerAudioFocus() could not obtain audio focus."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    :cond_1f
    return-void

    .line 2276
    .end local v0           #recievedAudioFocus:Z
    :cond_20
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private removeSong(J)Z
    .registers 21
    .parameter "id"

    .prologue
    .line 2208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 2209
    :try_start_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    if-nez v1, :cond_17

    .line 2210
    const-string v1, "aah.Music"

    const-string v5, "removeSong ignored (not connected to a place)"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    const/4 v1, 0x0

    monitor-exit v16

    .line 2231
    :goto_16
    return v1

    .line 2213
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->checkSessionLocked()Z

    move-result v1

    if-nez v1, :cond_23

    const/4 v1, 0x0

    monitor-exit v16

    goto :goto_16

    .line 2226
    :catchall_20
    move-exception v1

    monitor-exit v16
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    throw v1

    .line 2215
    :cond_23
    :try_start_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    move-object/from16 v17, v0

    monitor-enter v17
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_20

    .line 2216
    :try_start_2a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v1}, Lcom/google/android/music/athome/AtHomePlayQueue;->getVersion()I

    move-result v1

    add-int/lit8 v4, v1, 0x1

    .line 2217
    .local v4, version:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v1}, Lcom/google/android/music/athome/AtHomePlayQueue;->getSessionId()J

    move-result-wide v2

    .line 2219
    .local v2, sessionId:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    move-wide/from16 v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/music/athome/AtHomePlayQueue;->removeSong(JIJ)Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v15

    .line 2220
    .local v15, result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    invoke-virtual {v15}, Lcom/google/android/music/athome/api/AtHomeModificationResult;->modificationApplied()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 2221
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->getAtHomeSubmitterId()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mRemoveSongHandler:Lcom/google/android/music/athome/api/MusicConnector$OnRemoveSong;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;

    move-wide v6, v2

    move v10, v4

    move-wide/from16 v11, p1

    invoke-virtual/range {v5 .. v14}, Lcom/google/android/music/athome/api/MusicConnector;->removeSong(JJIJLcom/google/android/music/athome/api/MusicConnector$OnRemoveSong;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 2225
    :cond_67
    monitor-exit v17
    :try_end_68
    .catchall {:try_start_2a .. :try_end_68} :catchall_77

    .line 2226
    :try_start_68
    monitor-exit v16
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_20

    .line 2228
    invoke-virtual {v15}, Lcom/google/android/music/athome/api/AtHomeModificationResult;->modificationApplied()Z

    move-result v1

    if-eqz v1, :cond_72

    .line 2229
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->updateAtHomeMediaList()V

    .line 2231
    :cond_72
    invoke-virtual {v15}, Lcom/google/android/music/athome/api/AtHomeModificationResult;->modificationApplied()Z

    move-result v1

    goto :goto_16

    .line 2225
    .end local v2           #sessionId:J
    .end local v4           #version:I
    .end local v15           #result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :catchall_77
    move-exception v1

    :try_start_78
    monitor-exit v17
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    :try_start_79
    throw v1
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_20
.end method

.method private resyncPlayQueue()V
    .registers 9

    .prologue
    .line 2080
    iget-object v7, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v7

    .line 2081
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    if-nez v0, :cond_9

    .line 2082
    monitor-exit v7

    .line 2090
    :goto_8
    return-void

    .line 2084
    :cond_9
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->checkSessionLocked()Z

    move-result v0

    if-nez v0, :cond_14

    monitor-exit v7

    goto :goto_8

    .line 2089
    :catchall_11
    move-exception v0

    monitor-exit v7
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0

    .line 2085
    :cond_14
    const/4 v0, 0x1

    :try_start_15
    iput-boolean v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mFullQueueSyncInProgress:Z

    .line 2086
    new-instance v6, Lcom/google/android/music/athome/AtHomeDevicePlayback$GetQueueErrorHandler;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$GetQueueErrorHandler;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback;Lcom/google/android/music/athome/AtHomeDevicePlayback$1;)V

    .line 2087
    .local v6, getQueueErrorHandler:Lcom/google/android/music/athome/AtHomeDevicePlayback$GetQueueErrorHandler;
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSession:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    invoke-virtual {v1}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getSessionId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->getAtHomeSubmitterId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mGetQueueHandler:Lcom/google/android/music/athome/api/MusicConnector$OnGetQueue;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/music/athome/api/MusicConnector;->getQueue(JJLcom/google/android/music/athome/api/MusicConnector$OnGetQueue;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 2089
    monitor-exit v7
    :try_end_31
    .catchall {:try_start_15 .. :try_end_31} :catchall_11

    goto :goto_8
.end method

.method private setupMusicClient()V
    .registers 13

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    .line 2884
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->getBuildNumber(Landroid/content/Context;)I

    move-result v5

    .line 2886
    iget-object v8, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v8

    .line 2888
    :try_start_e
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    if-eqz v0, :cond_1d

    .line 2889
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to reconnect while not disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2926
    :catchall_1a
    move-exception v0

    monitor-exit v8
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_1a

    throw v0

    .line 2892
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mBroker:Landroid/support/place/connector/Broker;

    if-nez v0, :cond_29

    .line 2893
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to connect without broker"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2896
    :cond_29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mCurrentSongId:Lcom/google/android/music/dl/ContentIdentifier;

    .line 2897
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mCurrentSong:Lcom/google/android/music/athome/api/AtHomeSongInfo;

    .line 2899
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSession:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    .line 2900
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->clearAtHomeErrorLocked()V

    .line 2901
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayState:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/music/athome/api/AtHomePlayState;

    invoke-direct {v1}, Lcom/google/android/music/athome/api/AtHomePlayState;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2903
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueueVersionWhileSyncing:J

    .line 2904
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mFullQueueSyncInProgress:Z

    .line 2906
    new-instance v0, Lcom/google/android/music/athome/api/MusicConnector;

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mBroker:Landroid/support/place/connector/Broker;

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mEndpointInfo:Landroid/support/place/rpc/EndpointInfo;

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/athome/api/MusicConnector;-><init>(Landroid/support/place/connector/Broker;Landroid/support/place/rpc/EndpointInfo;)V

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    .line 2908
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->getAtHomeSubmitterId()J

    move-result-wide v1

    const/16 v3, 0x1c

    invoke-static {}, Lcom/google/android/music/athome/api/AtHomeVersionCheck;->getCurrentApiVersion()I

    move-result v4

    iget-object v6, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mVersionCheckHandler:Lcom/google/android/music/athome/api/MusicConnector$OnVersionCheck;

    iget-object v7, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mFatalErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/music/athome/api/MusicConnector;->versionCheck(JIIILcom/google/android/music/athome/api/MusicConnector$OnVersionCheck;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 2914
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mProfileGetter:Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;

    if-eqz v0, :cond_72

    .line 2916
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mProfileGetter:Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;

    invoke-virtual {v0}, Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;->cancel()V

    .line 2917
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mProfileGetter:Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;

    .line 2919
    :cond_72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSubmitterNeedsRegistering:Z

    .line 2920
    iget-boolean v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPartyMode:Z

    if-eqz v0, :cond_89

    .line 2921
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSubmitterNeedsRegistering:Z

    .line 2922
    new-instance v0, Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;

    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;-><init>(Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;)V

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mProfileGetter:Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;

    .line 2925
    :cond_89
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->updateAtHomeStateLocked(I)V

    .line 2926
    monitor-exit v8
    :try_end_8e
    .catchall {:try_start_1d .. :try_end_8e} :catchall_1a

    .line 2928
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v0, v10, v11, v9}, Lcom/google/android/music/athome/AtHomePlayQueue;->resetQueue(JI)V

    .line 2929
    iget-boolean v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSubmitterNeedsRegistering:Z

    if-eqz v0, :cond_9c

    .line 2930
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mProfileGetter:Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;

    invoke-virtual {v0}, Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;->start()V

    .line 2932
    :cond_9c
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->updateAtHomeMediaList()V

    .line 2933
    return-void
.end method

.method private shouldReuseSessionLocked(Lcom/google/android/music/athome/api/AtHomeSessionInfo;)Z
    .registers 11
    .parameter

    .prologue
    const-wide/16 v7, 0x3c

    const/4 v0, 0x0

    .line 2937
    if-nez p1, :cond_11

    .line 2938
    sget-boolean v1, Lcom/google/android/music/athome/AtHomeDevicePlayback;->LOGV:Z

    if-eqz v1, :cond_10

    .line 2939
    const-string v1, "aah.Music"

    const-string v2, "No session exists"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2984
    :cond_10
    :goto_10
    return v0

    .line 2944
    :cond_11
    invoke-virtual {p1}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getMode()I

    move-result v1

    packed-switch v1, :pswitch_data_e4

    .line 2964
    const-string v1, "aah.Music"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 2946
    :pswitch_35
    iget-boolean v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPartyMode:Z

    if-nez v1, :cond_6f

    .line 2947
    sget-boolean v1, Lcom/google/android/music/athome/AtHomeDevicePlayback;->LOGV:Z

    if-eqz v1, :cond_10

    const-string v1, "aah.Music"

    const-string v2, "Won\'t reuse party session"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 2952
    :pswitch_45
    iget-boolean v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPartyMode:Z

    if-eqz v1, :cond_55

    .line 2953
    sget-boolean v1, Lcom/google/android/music/athome/AtHomeDevicePlayback;->LOGV:Z

    if-eqz v1, :cond_10

    const-string v1, "aah.Music"

    const-string v2, "Won\'t reuse single session"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 2956
    :cond_55
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->getAtHomeSubmitterId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getSubmitterId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6f

    .line 2957
    sget-boolean v1, Lcom/google/android/music/athome/AtHomeDevicePlayback;->LOGV:Z

    if-eqz v1, :cond_10

    const-string v1, "aah.Music"

    const-string v2, "Won\'t reuse session from different device/account"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 2968
    :cond_6f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getUpdateTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 2969
    const-wide/32 v3, 0x5265c00

    cmp-long v3, v3, v1

    if-gez v3, :cond_a4

    .line 2970
    const-string v3, "aah.Music"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Session is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    div-long/2addr v1, v5

    div-long/2addr v1, v7

    div-long/2addr v1, v7

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hours long. Ignoring"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 2974
    :cond_a4
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mLastLocalPlaybackSongList:Lcom/google/android/music/medialist/SongList;

    if-eqz v1, :cond_c1

    invoke-virtual {p1}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_c1

    iget-wide v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mLastLocalPlaybackTimeStamp:J

    invoke-virtual {p1}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getLastPlayTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_c1

    .line 2976
    const-string v1, "aah.Music"

    const-string v2, "Will transfer local playback"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 2980
    :cond_c1
    sget-boolean v0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->LOGV:Z

    if-eqz v0, :cond_e1

    .line 2981
    const-string v0, "aah.Music"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reusing session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getSessionId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2984
    :cond_e1
    const/4 v0, 0x1

    goto/16 :goto_10

    .line 2944
    :pswitch_data_e4
    .packed-switch 0x1
        :pswitch_45
        :pswitch_35
    .end packed-switch
.end method

.method private startConnectingLocked()V
    .registers 4

    .prologue
    .line 2622
    sget-boolean v0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->LOGV:Z

    if-eqz v0, :cond_b

    .line 2623
    const-string v0, "aah.Music"

    const-string v1, "Start connecting to athome device"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2626
    :cond_b
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    if-eqz v0, :cond_1b

    .line 2627
    const-string v0, "aah.Music"

    const-string v1, "Unexpected connector"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2630
    :cond_1b
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mBrokerManager:Landroid/support/place/api/broker/BrokerManager;

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mBrokerListener:Landroid/support/place/api/broker/BrokerManager$ConnectionListener;

    invoke-virtual {v0, v1}, Landroid/support/place/api/broker/BrokerManager;->startListening(Landroid/support/place/api/broker/BrokerManager$ConnectionListener;)V

    .line 2631
    return-void
.end method

.method private startQueueLoading(Lcom/google/android/music/medialist/SongList;IZ)V
    .registers 8
    .parameter "medialist"
    .parameter "position"
    .parameter "queue"

    .prologue
    .line 2120
    invoke-virtual {p1}, Lcom/google/android/music/medialist/SongList;->isDefaultDomain()Z

    move-result v1

    if-nez v1, :cond_23

    .line 2121
    const-string v1, "aah.Music"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported domain:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/music/medialist/SongList;->getDomain()Lcom/google/android/music/dl/ContentIdentifier$Domain;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    :goto_22
    return-void

    .line 2125
    :cond_23
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 2126
    .local v0, musicAccount:Landroid/accounts/Account;
    if-eqz v0, :cond_33

    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 2127
    :cond_33
    const-string v1, "aah.Music"

    const-string v2, "No streaming account"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 2131
    :cond_3b
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v2

    .line 2133
    :try_start_3e
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mQueueLoader:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;

    if-nez v1, :cond_4a

    .line 2134
    new-instance v1, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback;Lcom/google/android/music/athome/AtHomeDevicePlayback$1;)V

    iput-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mQueueLoader:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;

    .line 2136
    :cond_4a
    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mQueueLoader:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;

    if-nez p3, :cond_57

    const/4 v1, 0x1

    :goto_4f
    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->addSongs(Lcom/google/android/music/medialist/SongList;IZ)V
    invoke-static {v3, p1, p2, v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->access$7600(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;Lcom/google/android/music/medialist/SongList;IZ)V

    .line 2137
    monitor-exit v2

    goto :goto_22

    :catchall_54
    move-exception v1

    monitor-exit v2
    :try_end_56
    .catchall {:try_start_3e .. :try_end_56} :catchall_54

    throw v1

    .line 2136
    :cond_57
    const/4 v1, 0x0

    goto :goto_4f
.end method

.method private updateAtHomeMediaList()V
    .registers 6

    .prologue
    .line 2093
    iget-boolean v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPartyMode:Z

    if-eqz v0, :cond_26

    .line 2094
    new-instance v0, Lcom/google/android/music/athome/AtHomeSongList;

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v1}, Lcom/google/android/music/athome/AtHomePlayQueue;->getVersion()I

    move-result v1

    int-to-long v1, v1

    iget-boolean v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPartyMode:Z

    iget-object v4, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v4}, Lcom/google/android/music/athome/AtHomePlayQueue;->getMaxSize()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/music/athome/AtHomeSongList;-><init>(JZI)V

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeMediaList:Lcom/google/android/music/medialist/SongList;

    .line 2096
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeContentProvider;->notifyOfChange(Landroid/content/Context;)V

    .line 2097
    const-string v0, "com.android.music.queuechanged"

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->notifyChange(Ljava/lang/String;)V

    .line 2100
    :cond_26
    const-string v0, "com.android.music.metachanged"

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->notifyChange(Ljava/lang/String;)V

    .line 2101
    return-void
.end method

.method private updateAtHomeStateLocked(I)V
    .registers 5
    .parameter

    .prologue
    .line 3053
    sget-boolean v0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->LOGV:Z

    if-eqz v0, :cond_2c

    .line 3054
    const-string v0, "aah.Music"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating athome device state from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3058
    :cond_2c
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3059
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 3060
    return-void
.end method

.method private updateRepeatModeLocked(I)Z
    .registers 3
    .parameter "playbackServiceRepeatMode"

    .prologue
    .line 2458
    iget v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mRepeatMode:I

    if-eq v0, p1, :cond_8

    .line 2459
    iput p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mRepeatMode:I

    .line 2460
    const/4 v0, 0x1

    .line 2462
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private updateShuffleModeLocked(I)Z
    .registers 3
    .parameter "newShuffleMode"

    .prologue
    .line 2467
    iget v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mShuffleMode:I

    if-eq v0, p1, :cond_8

    .line 2468
    iput p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mShuffleMode:I

    .line 2469
    const/4 v0, 0x1

    .line 2471
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private updateStopwatch(Lcom/google/android/music/athome/api/AtHomePlayState;)V
    .registers 3
    .parameter "playState"

    .prologue
    .line 3044
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mStopWatch:Lcom/google/android/music/StopWatch;

    invoke-virtual {v0}, Lcom/google/android/music/StopWatch;->pause()V

    .line 3045
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mStopWatch:Lcom/google/android/music/StopWatch;

    invoke-virtual {v0}, Lcom/google/android/music/StopWatch;->reset()V

    .line 3046
    invoke-virtual {p1}, Lcom/google/android/music/athome/api/AtHomePlayState;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3047
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mStopWatch:Lcom/google/android/music/StopWatch;

    invoke-virtual {v0}, Lcom/google/android/music/StopWatch;->start()V

    .line 3049
    :cond_15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSeekPending:Z

    .line 3050
    return-void
.end method

.method private waitForValidQueue()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 3111
    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v3

    .line 3112
    :try_start_3
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 3113
    .local v1, oldState:I
    move v0, v1

    .line 3115
    .local v0, newState:I
    :cond_a
    packed-switch v1, :pswitch_data_28

    .line 3128
    :goto_d
    if-ne v1, v0, :cond_a

    .line 3129
    monitor-exit v3

    .line 3130
    const/4 v2, 0x0

    :goto_11
    return v2

    .line 3117
    :pswitch_12
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_11

    .line 3129
    .end local v0           #newState:I
    .end local v1           #oldState:I
    :catchall_15
    move-exception v2

    monitor-exit v3
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v2

    .line 3123
    .restart local v0       #newState:I
    .restart local v1       #oldState:I
    :pswitch_18
    :try_start_18
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 3124
    move v1, v0

    .line 3125
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_15

    move-result v0

    goto :goto_d

    .line 3115
    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_12
    .end packed-switch
.end method


# virtual methods
.method public clearQueue()V
    .registers 11

    .prologue
    .line 2184
    iget-object v8, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v8

    .line 2185
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    if-nez v0, :cond_10

    .line 2186
    const-string v0, "aah.Music"

    const-string v1, "clearQueue ignored (not connected to a place)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    monitor-exit v8

    .line 2202
    :goto_f
    return-void

    .line 2189
    :cond_10
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->checkSessionLocked()Z

    move-result v0

    if-nez v0, :cond_1b

    monitor-exit v8

    goto :goto_f

    .line 2200
    :catchall_18
    move-exception v0

    monitor-exit v8
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0

    .line 2191
    :cond_1b
    :try_start_1b
    iget-object v9, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    monitor-enter v9
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_18

    .line 2192
    const/4 v0, 0x0

    :try_start_1f
    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mCurrentSong:Lcom/google/android/music/athome/api/AtHomeSongInfo;

    .line 2193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mCurrentSongId:Lcom/google/android/music/dl/ContentIdentifier;

    .line 2194
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v0}, Lcom/google/android/music/athome/AtHomePlayQueue;->getVersion()I

    move-result v0

    add-int/lit8 v7, v0, 0x1

    .line 2195
    .local v7, version:I
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v0, v7}, Lcom/google/android/music/athome/AtHomePlayQueue;->setEmptyContent(I)V

    .line 2196
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSession:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    invoke-virtual {v1}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getSessionId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->getAtHomeSubmitterId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mClearQueueHandler:Lcom/google/android/music/athome/api/MusicConnector$OnRemoveAllSongs;

    iget-object v6, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/music/athome/api/MusicConnector;->removeAllSongs(JJLcom/google/android/music/athome/api/MusicConnector$OnRemoveAllSongs;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 2199
    monitor-exit v9
    :try_end_47
    .catchall {:try_start_1f .. :try_end_47} :catchall_4c

    .line 2200
    :try_start_47
    monitor-exit v8
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_18

    .line 2201
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->updateAtHomeMediaList()V

    goto :goto_f

    .line 2199
    .end local v7           #version:I
    :catchall_4c
    move-exception v0

    :try_start_4d
    monitor-exit v9
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    :try_start_4e
    throw v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_18
.end method

.method public disableGroupPlay()V
    .registers 1

    .prologue
    .line 3308
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5
    .parameter

    .prologue
    .line 3284
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v1

    .line 3285
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mVersionCheck:Lcom/google/android/music/athome/api/AtHomeVersionCheck;

    if-eqz v0, :cond_23

    .line 3286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AtHomeVersionCheck: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mVersionCheck:Lcom/google/android/music/athome/api/AtHomeVersionCheck;

    invoke-virtual {v2}, Lcom/google/android/music/athome/api/AtHomeVersionCheck;->getDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3288
    :cond_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_17d

    .line 3289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AtHomeDevicePlaybackState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSession:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EndPoint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mEndpointInfo:Landroid/support/place/rpc/EndpointInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GroupId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeGroupId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Submitter Id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->getAtHomeSubmitterId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BrokerManager: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mBrokerManager:Landroid/support/place/api/broker/BrokerManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Broker: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mBroker:Landroid/support/place/connector/Broker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connector: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AtHomeError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeError:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AtHomeErrorType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeErrorType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FullQueueSyncInProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mFullQueueSyncInProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayQueueVersionWhileSyncing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueueVersionWhileSyncing:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Queue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3303
    return-void

    .line 3288
    :catchall_17d
    move-exception v0

    :try_start_17e
    monitor-exit v1
    :try_end_17f
    .catchall {:try_start_17e .. :try_end_17f} :catchall_17d

    throw v0
.end method

.method public duration()J
    .registers 3

    .prologue
    .line 2555
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mCurrentSong:Lcom/google/android/music/athome/api/AtHomeSongInfo;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mCurrentSong:Lcom/google/android/music/athome/api/AtHomeSongInfo;

    invoke-virtual {v0}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getDuration()J

    move-result-wide v0

    goto :goto_6
.end method

.method public getAlbumArtUrl(J)Ljava/lang/String;
    .registers 4
    .parameter "albumId"

    .prologue
    .line 2178
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/athome/AtHomePlayQueue;->getAlbumArtUrl(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumId()J
    .registers 3

    .prologue
    .line 2545
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mCurrentSong:Lcom/google/android/music/athome/api/AtHomeSongInfo;

    if-nez v0, :cond_7

    const-wide/16 v0, -0x1

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mCurrentSong:Lcom/google/android/music/athome/api/AtHomeSongInfo;

    invoke-virtual {v0}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getAlbumId()J

    move-result-wide v0

    goto :goto_6
.end method

.method public getAlbumName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2540
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mCurrentSong:Lcom/google/android/music/athome/api/AtHomeSongInfo;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mCurrentSong:Lcom/google/android/music/athome/api/AtHomeSongInfo;

    invoke-virtual {v0}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getAlbum()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getArtistId()J
    .registers 3

    .prologue
    .line 2525
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getArtistName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2520
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mCurrentSong:Lcom/google/android/music/athome/api/AtHomeSongInfo;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mCurrentSong:Lcom/google/android/music/athome/api/AtHomeSongInfo;

    invoke-virtual {v0}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getArtist()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getAudioId()Lcom/google/android/music/dl/ContentIdentifier;
    .registers 2

    .prologue
    .line 2477
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mCurrentSongId:Lcom/google/android/music/dl/ContentIdentifier;

    return-object v0
.end method

.method public getAudioSessionId()I
    .registers 2

    .prologue
    .line 2604
    const/4 v0, 0x0

    return v0
.end method

.method public getDebugInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3249
    const-string v0, ""

    return-object v0
.end method

.method public getErrorType()I
    .registers 2

    .prologue
    .line 3156
    iget-boolean v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeError:Z

    if-eqz v0, :cond_7

    .line 3157
    iget v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeErrorType:I

    .line 3159
    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/athome/api/AtHomePlayState;

    invoke-virtual {v0}, Lcom/google/android/music/athome/api/AtHomePlayState;->getErrorType()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeUtils;->apiToInternalErrorType(I)I

    move-result v0

    goto :goto_6
.end method

.method public getGroupId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3279
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUserInteractionTime()J
    .registers 3

    .prologue
    .line 3266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaList()Lcom/google/android/music/medialist/SongList;
    .registers 2

    .prologue
    .line 3180
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeMediaList:Lcom/google/android/music/medialist/SongList;

    return-object v0
.end method

.method public getPreviewPlayType()I
    .registers 2

    .prologue
    .line 2562
    const/4 v0, -0x1

    return v0
.end method

.method public getQueuePosition()I
    .registers 6

    .prologue
    const/4 v0, -0x1

    .line 2483
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    monitor-enter v1

    .line 2484
    :try_start_4
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mCurrentSongId:Lcom/google/android/music/dl/ContentIdentifier;

    if-nez v2, :cond_a

    .line 2485
    monitor-exit v1

    .line 2496
    :goto_9
    return v0

    .line 2488
    :cond_a
    iget-boolean v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPartyMode:Z

    if-eqz v2, :cond_25

    .line 2491
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mCurrentSongId:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {v2}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v2

    iget v4, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mCurrentSongQueuePosition:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/music/athome/AtHomePlayQueue;->getPosition(JI)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mCurrentSongQueuePosition:I

    .line 2493
    iget v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mCurrentSongQueuePosition:I

    monitor-exit v1

    goto :goto_9

    .line 2499
    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_22

    throw v0

    .line 2495
    :cond_25
    :try_start_25
    const-string v2, "aah.Music"

    const-string v3, "Unsupported"

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2496
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_22

    goto :goto_9
.end method

.method public getQueueSize()I
    .registers 2

    .prologue
    .line 3197
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v0}, Lcom/google/android/music/athome/AtHomePlayQueue;->getSize()I

    move-result v0

    return v0
.end method

.method public getRating()I
    .registers 2

    .prologue
    .line 3213
    const/4 v0, 0x0

    return v0
.end method

.method public getRepeatMode()I
    .registers 2

    .prologue
    .line 2454
    iget v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mRepeatMode:I

    return v0
.end method

.method public getShuffleMode()I
    .registers 2

    .prologue
    .line 2427
    iget v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mShuffleMode:I

    return v0
.end method

.method public getSongStoreId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2535
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSortableAlbumArtistName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2530
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mCurrentSong:Lcom/google/android/music/athome/api/AtHomeSongInfo;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mCurrentSong:Lcom/google/android/music/athome/api/AtHomeSongInfo;

    invoke-virtual {v0}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getAlbumArtist()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getState()Lcom/google/android/music/DevicePlayback$State;
    .registers 2

    .prologue
    .line 3186
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3187
    sget-object v0, Lcom/google/android/music/DevicePlayback$State;->PLAYING:Lcom/google/android/music/DevicePlayback$State;

    .line 3191
    :goto_8
    return-object v0

    .line 3188
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->getQueueSize()I

    move-result v0

    if-lez v0, :cond_12

    .line 3189
    sget-object v0, Lcom/google/android/music/DevicePlayback$State;->PAUSED:Lcom/google/android/music/DevicePlayback$State;

    goto :goto_8

    .line 3191
    :cond_12
    sget-object v0, Lcom/google/android/music/DevicePlayback$State;->NO_PLAYLIST:Lcom/google/android/music/DevicePlayback$State;

    goto :goto_8
.end method

.method public getTrackName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2550
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mCurrentSong:Lcom/google/android/music/athome/api/AtHomeSongInfo;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mCurrentSong:Lcom/google/android/music/athome/api/AtHomeSongInfo;

    invoke-virtual {v0}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public hasLocal()Z
    .registers 2

    .prologue
    .line 3225
    const/4 v0, 0x0

    return v0
.end method

.method public hasRemote()Z
    .registers 2

    .prologue
    .line 3231
    const/4 v0, 0x1

    return v0
.end method

.method public hasValidPlaylist()Z
    .registers 2

    .prologue
    .line 3170
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isCurrentSongLoaded()Z
    .registers 2

    .prologue
    .line 3202
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mCurrentSong:Lcom/google/android/music/athome/api/AtHomeSongInfo;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isInErrorState()Z
    .registers 2

    .prologue
    .line 3151
    iget-boolean v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeError:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/athome/api/AtHomePlayState;

    invoke-virtual {v0}, Lcom/google/android/music/athome/api/AtHomePlayState;->isInErrorState()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public isInFatalErrorState()Z
    .registers 3

    .prologue
    .line 3165
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 2357
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/athome/api/AtHomePlayState;

    invoke-virtual {v0}, Lcom/google/android/music/athome/api/AtHomePlayState;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isPreparing()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 3136
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 3137
    .local v0, atHomeState:I
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    if-eqz v1, :cond_1e

    if-eq v0, v2, :cond_1e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1e

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/athome/api/AtHomePlayState;

    invoke-virtual {v1}, Lcom/google/android/music/athome/api/AtHomePlayState;->isPreparing()Z

    move-result v1

    if-eqz v1, :cond_20

    :cond_1e
    move v1, v2

    :goto_1f
    return v1

    :cond_20
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method public isStreaming()Z
    .registers 2

    .prologue
    .line 3146
    const/4 v0, 0x1

    return v0
.end method

.method public next()V
    .registers 9

    .prologue
    .line 2383
    const/4 v6, 0x0

    .line 2385
    .local v6, success:Z
    iget-object v7, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v7

    .line 2386
    :try_start_4
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    if-nez v0, :cond_16

    .line 2387
    const-string v0, "aah.Music"

    const-string v1, "next ignored (not connected to a place)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2393
    :cond_f
    :goto_f
    monitor-exit v7
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_31

    .line 2395
    if-eqz v6, :cond_34

    .line 2396
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->registerAudioFocus()V

    .line 2400
    :goto_15
    return-void

    .line 2388
    :cond_16
    :try_start_16
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->checkSessionLocked()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2389
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSession:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    invoke-virtual {v1}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getSessionId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->getAtHomeSubmitterId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/athome/api/MusicConnector;->next(JJLandroid/support/place/rpc/RpcErrorHandler;)V

    .line 2391
    const/4 v6, 0x1

    goto :goto_f

    .line 2393
    :catchall_31
    move-exception v0

    monitor-exit v7
    :try_end_33
    .catchall {:try_start_16 .. :try_end_33} :catchall_31

    throw v0

    .line 2398
    :cond_34
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->notifyGenericAtHomeError()V

    goto :goto_15
.end method

.method protected notifyFailure()V
    .registers 2

    .prologue
    .line 2785
    invoke-super {p0}, Lcom/google/android/music/DevicePlayback;->notifyFailure()V

    .line 2786
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPendingNotifyFailure:Z

    .line 2787
    return-void
.end method

.method protected onActivate()V
    .registers 3

    .prologue
    .line 2609
    sget-boolean v0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->LOGV:Z

    if-eqz v0, :cond_b

    .line 2610
    const-string v0, "aah.Music"

    const-string v1, "AtHome device playback activated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2612
    :cond_b
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mQueueAccess:Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;

    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeContentProvider;->setPlayQueue(Lcom/google/android/music/athome/AtHomeContentProvider$PlayQueueAccess;)V

    .line 2614
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v1

    .line 2615
    const/4 v0, 0x1

    :try_start_14
    invoke-direct {p0, v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->updateAtHomeStateLocked(I)V

    .line 2616
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->startConnectingLocked()V

    .line 2617
    monitor-exit v1

    .line 2618
    return-void

    .line 2617
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public onDeactivate()V
    .registers 3

    .prologue
    .line 2661
    sget-boolean v0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->LOGV:Z

    if-eqz v0, :cond_b

    .line 2662
    const-string v0, "aah.Music"

    const-string v1, "AtHome device playback deactivated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2665
    :cond_b
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v1

    .line 2666
    :try_start_e
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->disconnectLocked()V

    .line 2667
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->updateAtHomeStateLocked(I)V

    .line 2668
    monitor-exit v1

    .line 2669
    return-void

    .line 2668
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_17

    throw v0
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 2673
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->isActive()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2674
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->onDeactivate()V

    .line 2677
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2679
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 2682
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v1

    .line 2683
    :try_start_26
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mQueueLoader:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;

    if-eqz v0, :cond_32

    .line 2684
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mQueueLoader:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;

    invoke-virtual {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->quit()V

    .line 2685
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mQueueLoader:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;

    .line 2687
    :cond_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_26 .. :try_end_33} :catchall_37

    .line 2689
    invoke-super {p0}, Lcom/google/android/music/DevicePlayback;->onDestroy()V

    .line 2690
    return-void

    .line 2687
    :catchall_37
    move-exception v0

    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v0
.end method

.method public open(Lcom/google/android/music/medialist/SongList;IZ)V
    .registers 14
    .parameter "medialist"
    .parameter "position"
    .parameter "play"

    .prologue
    .line 2143
    if-nez p3, :cond_a

    .line 2144
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "open without play is not implemented for @home playback"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2148
    :cond_a
    invoke-virtual {p1}, Lcom/google/android/music/medialist/SongList;->getDomain()Lcom/google/android/music/dl/ContentIdentifier$Domain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/dl/ContentIdentifier$Domain;->isAtHomeDomain()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 2149
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v0, p2}, Lcom/google/android/music/athome/AtHomePlayQueue;->getSong(I)Lcom/google/android/music/athome/api/AtHomeSongInfo;

    move-result-object v8

    .line 2150
    .local v8, song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    if-eqz v8, :cond_54

    .line 2151
    iget-object v9, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v9

    .line 2152
    :try_start_1f
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    if-eqz v0, :cond_47

    .line 2153
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->checkSessionLocked()Z

    move-result v0

    if-nez v0, :cond_2b

    monitor-exit v9

    .line 2169
    .end local v8           #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    :goto_2a
    return-void

    .line 2154
    .restart local v8       #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    :cond_2b
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSession:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    invoke-virtual {v1}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getSessionId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->getAtHomeSubmitterId()J

    move-result-wide v3

    invoke-virtual {v8}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getQueueId()J

    move-result-wide v5

    iget-object v7, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/music/athome/api/MusicConnector;->setQueuePosition(JJJLandroid/support/place/rpc/RpcErrorHandler;)V

    .line 2157
    monitor-exit v9

    goto :goto_2a

    .line 2161
    :catchall_44
    move-exception v0

    monitor-exit v9
    :try_end_46
    .catchall {:try_start_1f .. :try_end_46} :catchall_44

    throw v0

    .line 2159
    :cond_47
    :try_start_47
    const-string v0, "aah.Music"

    const-string v1, "Ignoring play request - no connection"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    monitor-exit v9
    :try_end_4f
    .catchall {:try_start_47 .. :try_end_4f} :catchall_44

    .line 2168
    .end local v8           #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    :cond_4f
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->startQueueLoading(Lcom/google/android/music/medialist/SongList;IZ)V

    goto :goto_2a

    .line 2163
    .restart local v8       #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    :cond_54
    const-string v0, "aah.Music"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method

.method public openAndQueue(Lcom/google/android/music/medialist/SongList;I)V
    .registers 4
    .parameter "medialist"
    .parameter "position"

    .prologue
    .line 2173
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->startQueueLoading(Lcom/google/android/music/medialist/SongList;IZ)V

    .line 2174
    return-void
.end method

.method public pause()V
    .registers 9

    .prologue
    .line 2338
    const/4 v6, 0x0

    .line 2340
    .local v6, success:Z
    iget-object v7, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v7

    .line 2341
    :try_start_4
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    if-nez v0, :cond_16

    .line 2342
    const-string v0, "aah.Music"

    const-string v1, "pause ignored (not connected to a place)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    :cond_f
    :goto_f
    monitor-exit v7
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_31

    .line 2350
    if-nez v6, :cond_15

    .line 2351
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->notifyGenericAtHomeError()V

    .line 2353
    :cond_15
    return-void

    .line 2343
    :cond_16
    :try_start_16
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->checkSessionLocked()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2344
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSession:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    invoke-virtual {v1}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getSessionId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->getAtHomeSubmitterId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/athome/api/MusicConnector;->pause(JJLandroid/support/place/rpc/RpcErrorHandler;)V

    .line 2346
    const/4 v6, 0x1

    goto :goto_f

    .line 2348
    :catchall_31
    move-exception v0

    monitor-exit v7
    :try_end_33
    .catchall {:try_start_16 .. :try_end_33} :catchall_31

    throw v0
.end method

.method public play()V
    .registers 9

    .prologue
    .line 2298
    const/4 v6, 0x0

    .line 2300
    .local v6, success:Z
    iget-object v7, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v7

    .line 2301
    :try_start_4
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    if-nez v0, :cond_16

    .line 2302
    const-string v0, "aah.Music"

    const-string v1, "play ignored (not connected to a place)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2308
    :cond_f
    :goto_f
    monitor-exit v7
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_31

    .line 2310
    if-eqz v6, :cond_34

    .line 2311
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->registerAudioFocus()V

    .line 2315
    :goto_15
    return-void

    .line 2303
    :cond_16
    :try_start_16
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->checkSessionLocked()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2304
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSession:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    invoke-virtual {v1}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getSessionId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->getAtHomeSubmitterId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/athome/api/MusicConnector;->play(JJLandroid/support/place/rpc/RpcErrorHandler;)V

    .line 2306
    const/4 v6, 0x1

    goto :goto_f

    .line 2308
    :catchall_31
    move-exception v0

    monitor-exit v7
    :try_end_33
    .catchall {:try_start_16 .. :try_end_33} :catchall_31

    throw v0

    .line 2313
    :cond_34
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->notifyGenericAtHomeError()V

    goto :goto_15
.end method

.method public playlistLoading()Z
    .registers 2

    .prologue
    .line 3175
    iget-boolean v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlaylistLoading:Z

    return v0
.end method

.method public position()J
    .registers 5

    .prologue
    .line 2568
    iget-boolean v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSeekPending:Z

    if-eqz v0, :cond_7

    .line 2569
    iget-wide v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSeek:J

    .line 2572
    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/athome/api/AtHomePlayState;

    invoke-virtual {v0}, Lcom/google/android/music/athome/api/AtHomePlayState;->getPlaybackPosition()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mStopWatch:Lcom/google/android/music/StopWatch;

    invoke-virtual {v2}, Lcom/google/android/music/StopWatch;->getTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_6
.end method

.method public prev()V
    .registers 9

    .prologue
    .line 2362
    const/4 v6, 0x0

    .line 2364
    .local v6, success:Z
    iget-object v7, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v7

    .line 2365
    :try_start_4
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    if-nez v0, :cond_16

    .line 2366
    const-string v0, "aah.Music"

    const-string v1, "prev ignored (not connected to a place)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    :cond_f
    :goto_f
    monitor-exit v7
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_31

    .line 2374
    if-eqz v6, :cond_34

    .line 2375
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->registerAudioFocus()V

    .line 2379
    :goto_15
    return-void

    .line 2367
    :cond_16
    :try_start_16
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->checkSessionLocked()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2368
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSession:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    invoke-virtual {v1}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getSessionId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->getAtHomeSubmitterId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/athome/api/MusicConnector;->prev(JJLandroid/support/place/rpc/RpcErrorHandler;)V

    .line 2370
    const/4 v6, 0x1

    goto :goto_f

    .line 2372
    :catchall_31
    move-exception v0

    monitor-exit v7
    :try_end_33
    .catchall {:try_start_16 .. :try_end_33} :catchall_31

    throw v0

    .line 2377
    :cond_34
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->notifyGenericAtHomeError()V

    goto :goto_15
.end method

.method public seek(J)J
    .registers 12
    .parameter "pos"

    .prologue
    const-wide/16 v0, -0x1

    .line 2578
    iget-object v8, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v8

    .line 2579
    :try_start_5
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    if-nez v2, :cond_12

    .line 2580
    const-string v2, "aah.Music"

    const-string v3, "seek ignored (not connected to a place)"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2581
    monitor-exit v8

    .line 2591
    :goto_11
    return-wide v0

    .line 2583
    :cond_12
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->checkSessionLocked()Z

    move-result v2

    if-nez v2, :cond_1d

    monitor-exit v8

    goto :goto_11

    .line 2588
    :catchall_1a
    move-exception v0

    monitor-exit v8
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1a

    throw v0

    .line 2584
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSession:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    invoke-virtual {v1}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getSessionId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->getAtHomeSubmitterId()J

    move-result-wide v3

    iget-object v7, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSeekErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;

    move-wide v5, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/music/athome/api/MusicConnector;->seek(JJJLandroid/support/place/rpc/RpcErrorHandler;)V

    .line 2586
    iput-wide p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSeek:J

    .line 2587
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSeekPending:Z

    .line 2588
    monitor-exit v8
    :try_end_37
    .catchall {:try_start_1d .. :try_end_37} :catchall_1a

    .line 2590
    const-string v0, "com.android.music.metachanged"

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->notifyChange(Ljava/lang/String;)V

    .line 2591
    iget-wide v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSeek:J

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mStopWatch:Lcom/google/android/music/StopWatch;

    invoke-virtual {v2}, Lcom/google/android/music/StopWatch;->getTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_11
.end method

.method public setConfig([BZLjava/lang/String;)V
    .registers 8
    .parameter "config"
    .parameter "partyMode"
    .parameter "groupId"

    .prologue
    const/4 v0, 0x1

    .line 2693
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->clearLastLocalPlaybackInfo()V

    .line 2694
    invoke-static {p1}, Lcom/google/android/music/athome/AtHomeUtils;->readEndpoint([B)Landroid/support/place/rpc/EndpointInfo;

    move-result-object v1

    .line 2695
    .local v1, newEndPoint:Landroid/support/place/rpc/EndpointInfo;
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mEndpointInfo:Landroid/support/place/rpc/EndpointInfo;

    invoke-virtual {v1, v2}, Landroid/support/place/rpc/EndpointInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-boolean v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPartyMode:Z

    if-nez v2, :cond_16

    if-eqz p2, :cond_33

    .line 2696
    .local v0, newConfig:Z
    :cond_16
    :goto_16
    iput-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mEndpointInfo:Landroid/support/place/rpc/EndpointInfo;

    .line 2697
    iput-boolean p2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPartyMode:Z

    .line 2698
    iput-object p3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeGroupId:Ljava/lang/String;

    .line 2700
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->isActive()Z

    move-result v2

    if-eqz v2, :cond_32

    if-eqz v0, :cond_32

    .line 2704
    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v3

    .line 2705
    :try_start_27
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->disconnectLocked()V

    .line 2706
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->updateAtHomeStateLocked(I)V

    .line 2707
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->startConnectingLocked()V

    .line 2708
    monitor-exit v3

    .line 2710
    :cond_32
    return-void

    .line 2695
    .end local v0           #newConfig:Z
    :cond_33
    const/4 v0, 0x0

    goto :goto_16

    .line 2708
    .restart local v0       #newConfig:Z
    :catchall_35
    move-exception v2

    monitor-exit v3
    :try_end_37
    .catchall {:try_start_27 .. :try_end_37} :catchall_35

    throw v2
.end method

.method public setLastLocalPlaybackInfo(JLcom/google/android/music/medialist/SongList;IJ)V
    .registers 7
    .parameter "lastLocalPlaybackTimeStamp"
    .parameter "lastLocalPlaybackSongList"
    .parameter "lastLocalPlaybackSongListPosition"
    .parameter "lastLocalPlaybackSongPlayPosition"

    .prologue
    .line 2717
    iput-wide p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mLastLocalPlaybackTimeStamp:J

    .line 2718
    iput-object p3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mLastLocalPlaybackSongList:Lcom/google/android/music/medialist/SongList;

    .line 2719
    iput p4, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mLastLocalPlaybackSongListPosition:I

    .line 2720
    return-void
.end method

.method public setQueuePosition(I)V
    .registers 12
    .parameter "pos"

    .prologue
    .line 2504
    iget-object v9, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v9

    .line 2505
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    if-nez v0, :cond_10

    .line 2506
    const-string v0, "aah.Music"

    const-string v1, "setQueuePosition ignored (not connected to a place)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    monitor-exit v9

    .line 2516
    :goto_f
    return-void

    .line 2509
    :cond_10
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->checkSessionLocked()Z

    move-result v0

    if-nez v0, :cond_1b

    monitor-exit v9

    goto :goto_f

    .line 2515
    :catchall_18
    move-exception v0

    monitor-exit v9
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0

    .line 2510
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/music/athome/AtHomePlayQueue;->getSong(I)Lcom/google/android/music/athome/api/AtHomeSongInfo;

    move-result-object v8

    .line 2511
    .local v8, song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    if-eqz v8, :cond_3a

    .line 2512
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSession:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    invoke-virtual {v1}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getSessionId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->getAtHomeSubmitterId()J

    move-result-wide v3

    invoke-virtual {v8}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getQueueId()J

    move-result-wide v5

    iget-object v7, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/music/athome/api/MusicConnector;->setQueuePosition(JJJLandroid/support/place/rpc/RpcErrorHandler;)V

    .line 2515
    :cond_3a
    monitor-exit v9
    :try_end_3b
    .catchall {:try_start_1b .. :try_end_3b} :catchall_18

    goto :goto_f
.end method

.method public setRating(I)V
    .registers 4
    .parameter

    .prologue
    .line 3218
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Setting rating when playing on tungsten is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRepeatMode(I)V
    .registers 11
    .parameter "repeatMode"

    .prologue
    .line 2434
    const/4 v7, 0x0

    .line 2435
    .local v7, repeatModeChanged:Z
    iget-object v8, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v8

    .line 2436
    :try_start_4
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    if-nez v0, :cond_11

    .line 2437
    const-string v0, "aah.Music"

    const-string v1, "setRepeatMode ignored (not connected to a place)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    monitor-exit v8

    .line 2450
    :cond_10
    :goto_10
    return-void

    .line 2440
    :cond_11
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->checkSessionLocked()Z

    move-result v0

    if-nez v0, :cond_1c

    monitor-exit v8

    goto :goto_10

    .line 2446
    :catchall_19
    move-exception v0

    monitor-exit v8
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_19

    throw v0

    .line 2442
    :cond_1c
    :try_start_1c
    invoke-static {p1}, Lcom/google/android/music/athome/AtHomeUtils;->playbackServiceToAtHomeRepeatMode(I)I

    move-result v5

    .line 2443
    .local v5, atHomeRepeatMode:I
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSession:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    invoke-virtual {v1}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getSessionId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->getAtHomeSubmitterId()J

    move-result-wide v3

    iget-object v6, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/music/athome/api/MusicConnector;->setRepeatMode(JJILandroid/support/place/rpc/RpcErrorHandler;)V

    .line 2445
    invoke-direct {p0, p1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->updateRepeatModeLocked(I)Z

    move-result v7

    .line 2446
    monitor-exit v8
    :try_end_38
    .catchall {:try_start_1c .. :try_end_38} :catchall_19

    .line 2447
    if-eqz v7, :cond_10

    .line 2448
    const-string v0, "com.google.android.music.repeatmodechanged"

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->notifyChange(Ljava/lang/String;)V

    goto :goto_10
.end method

.method public setShuffleMode(I)V
    .registers 10
    .parameter "shuffleMode"

    .prologue
    .line 2404
    const/4 v6, 0x0

    .line 2405
    .local v6, shuffleModeChanged:Z
    iget-object v7, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v7

    .line 2406
    :try_start_4
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    if-nez v0, :cond_11

    .line 2407
    const-string v0, "aah.Music"

    const-string v1, "setShuffleMode ignored (not connected to a place)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2408
    monitor-exit v7

    .line 2423
    :cond_10
    :goto_10
    return-void

    .line 2410
    :cond_11
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->checkSessionLocked()Z

    move-result v0

    if-nez v0, :cond_1c

    monitor-exit v7

    goto :goto_10

    .line 2419
    :catchall_19
    move-exception v0

    monitor-exit v7
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_19

    throw v0

    .line 2411
    :cond_1c
    :try_start_1c
    invoke-static {p1}, Lcom/google/android/music/athome/AtHomeUtils;->isShuffle(I)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 2412
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSession:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    invoke-virtual {v1}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getSessionId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->getAtHomeSubmitterId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/athome/api/MusicConnector;->setShuffleOn(JJLandroid/support/place/rpc/RpcErrorHandler;)V

    .line 2418
    :goto_35
    invoke-direct {p0, p1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->updateShuffleModeLocked(I)Z

    move-result v6

    .line 2419
    monitor-exit v7
    :try_end_3a
    .catchall {:try_start_1c .. :try_end_3a} :catchall_19

    .line 2420
    if-eqz v6, :cond_10

    .line 2421
    const-string v0, "com.google.android.music.shufflemodechanged"

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->notifyChange(Ljava/lang/String;)V

    goto :goto_10

    .line 2415
    :cond_42
    :try_start_42
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSession:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    invoke-virtual {v1}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getSessionId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->getAtHomeSubmitterId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/athome/api/MusicConnector;->setShuffleOff(JJLandroid/support/place/rpc/RpcErrorHandler;)V
    :try_end_55
    .catchall {:try_start_42 .. :try_end_55} :catchall_19

    goto :goto_35
.end method

.method public stop()V
    .registers 9

    .prologue
    .line 2319
    const/4 v6, 0x0

    .line 2321
    .local v6, success:Z
    iget-object v7, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v7

    .line 2322
    :try_start_4
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    if-nez v0, :cond_16

    .line 2323
    const-string v0, "aah.Music"

    const-string v1, "stop ignored (not connected to a place)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    :cond_f
    :goto_f
    monitor-exit v7
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_31

    .line 2331
    if-nez v6, :cond_15

    .line 2332
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->notifyGenericAtHomeError()V

    .line 2334
    :cond_15
    return-void

    .line 2324
    :cond_16
    :try_start_16
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->checkSessionLocked()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2325
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSession:Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    invoke-virtual {v1}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getSessionId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->getAtHomeSubmitterId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback;->mErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/athome/api/MusicConnector;->stop(JJLandroid/support/place/rpc/RpcErrorHandler;)V

    .line 2327
    const/4 v6, 0x1

    goto :goto_f

    .line 2329
    :catchall_31
    move-exception v0

    monitor-exit v7
    :try_end_33
    .catchall {:try_start_16 .. :try_end_33} :catchall_31

    throw v0
.end method

.method public supportsRating()Z
    .registers 2

    .prologue
    .line 3207
    const/4 v0, 0x0

    return v0
.end method
