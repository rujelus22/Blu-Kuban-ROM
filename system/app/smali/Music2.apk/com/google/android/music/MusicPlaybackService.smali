.class public Lcom/google/android/music/MusicPlaybackService;
.super Landroid/app/Service;
.source "MusicPlaybackService.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;,
        Lcom/google/android/music/MusicPlaybackService$Shuffler;,
        Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;,
        Lcom/google/android/music/MusicPlaybackService$ServiceHooks;
    }
.end annotation


# static fields
.field private static final LOGV:Z


# instance fields
.field private mAppWidgetProvider:Lcom/google/android/music/MediaAppWidgetProvider;

.field private mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioId:Lcom/google/android/music/dl/ContentIdentifier;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioManagerCompat:Lcom/google/android/music/AudioManagerCompat;

.field private mCursor:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field mCursorCols:[Ljava/lang/String;

.field private mDelayedStopHandler:Landroid/os/Handler;

.field private mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;

.field private mDownloadManagerConnection:Landroid/content/ServiceConnection;

.field private mFuture:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHistory:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsLandscape:Z

.field mIsNotificationShowing:Z

.field private mIsSupposedToBePlaying:Z

.field private mMediaButtonReceiver:Landroid/content/ComponentName;

.field private mMediaList:Lcom/google/android/music/medialist/SongList;

.field private mMediaMountedCount:I

.field private mMediaplayerHandler:Landroid/os/Handler;

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mMusicStub:Landroid/os/Binder;

.field mNotification:Landroid/app/Notification;

.field private mNotificationCanceller:Landroid/os/Handler;

.field mNotificationHasButtons:Z

.field private mOpenFailedCounter:I

.field private mOrientationMonitor:Landroid/content/BroadcastReceiver;

.field private mPausedByTransientLossOfFocus:Z

.field private final mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

.field private mPlayPos:I

.field private mPlayer:Lcom/google/android/music/AsyncMediaPlayer;

.field private mPreviewDuration:J

.field private mPreviewPlayType:I

.field private mPreviewUrl:Ljava/lang/String;

.field private mQueueIsSaveable:Z

.field private final mRand:Lcom/google/android/music/MusicPlaybackService$Shuffler;

.field private mReloadedQueueSeekPos:J

.field private mRemoteControlClient:Lcom/google/android/music/RemoteControlClientCompat;

.field private mRepeatMode:I

.field private mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenReceiverRegistered:Z

.field mServiceHooks:Lcom/google/android/music/MusicPlaybackService$ServiceHooks;

.field private mServiceInUse:Z

.field private mServiceStartId:I

.field private mSharedPreviewPlayListener:Landroid/content/BroadcastReceiver;

.field private mShuffleMode:I

.field private mStoreConnection:Landroid/content/ServiceConnection;

.field private mStoreService:Lcom/google/android/music/store/IStoreService;

.field mUIVisible:Z

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 159
    const-string v0, "MediaPlaybackService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/MusicPlaybackService;->LOGV:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 9

    .prologue
    const/16 v7, 0xc8

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 876
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 109
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "artist"

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "AlbumArtistId"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "AlbumArtist"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "artistSort"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "is_podcast"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "bookmark"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "hasRemote"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "hasLocal"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Rating"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "SourceId"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "StoreId"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCursorCols:[Ljava/lang/String;

    .line 148
    iput v3, p0, Lcom/google/android/music/MusicPlaybackService;->mShuffleMode:I

    .line 149
    iput v3, p0, Lcom/google/android/music/MusicPlaybackService;->mRepeatMode:I

    .line 150
    iput v3, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaMountedCount:I

    .line 151
    iput-object v4, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaList:Lcom/google/android/music/medialist/SongList;

    .line 152
    new-instance v0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    invoke-direct {v0, p0, p0}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;-><init>(Lcom/google/android/music/MusicPlaybackService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    .line 153
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v7}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mHistory:Ljava/util/Vector;

    .line 154
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v7}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mFuture:Ljava/util/Vector;

    .line 155
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    .line 156
    iput v6, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I

    .line 157
    iput-object v4, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioId:Lcom/google/android/music/dl/ContentIdentifier;

    .line 160
    new-instance v0, Lcom/google/android/music/MusicPlaybackService$Shuffler;

    invoke-direct {v0, v4}, Lcom/google/android/music/MusicPlaybackService$Shuffler;-><init>(Lcom/google/android/music/MusicPlaybackService$1;)V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mRand:Lcom/google/android/music/MusicPlaybackService$Shuffler;

    .line 161
    iput v3, p0, Lcom/google/android/music/MusicPlaybackService;->mOpenFailedCounter:I

    .line 162
    iput-object v4, p0, Lcom/google/android/music/MusicPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 165
    iput v6, p0, Lcom/google/android/music/MusicPlaybackService;->mServiceStartId:I

    .line 166
    iput-boolean v3, p0, Lcom/google/android/music/MusicPlaybackService;->mServiceInUse:Z

    .line 167
    iput-boolean v3, p0, Lcom/google/android/music/MusicPlaybackService;->mIsSupposedToBePlaying:Z

    .line 170
    iput-boolean v5, p0, Lcom/google/android/music/MusicPlaybackService;->mQueueIsSaveable:Z

    .line 172
    iput-boolean v3, p0, Lcom/google/android/music/MusicPlaybackService;->mPausedByTransientLossOfFocus:Z

    .line 174
    invoke-static {}, Lcom/google/android/music/MediaAppWidgetProvider;->getInstance()Lcom/google/android/music/MediaAppWidgetProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAppWidgetProvider:Lcom/google/android/music/MediaAppWidgetProvider;

    .line 183
    iput-boolean v3, p0, Lcom/google/android/music/MusicPlaybackService;->mNotificationHasButtons:Z

    .line 184
    iput-boolean v3, p0, Lcom/google/android/music/MusicPlaybackService;->mIsNotificationShowing:Z

    .line 185
    iput-boolean v3, p0, Lcom/google/android/music/MusicPlaybackService;->mUIVisible:Z

    .line 188
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/MusicPlaybackService;->mReloadedQueueSeekPos:J

    .line 196
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPreviewDuration:J

    .line 197
    iput v5, p0, Lcom/google/android/music/MusicPlaybackService;->mPreviewPlayType:I

    .line 200
    new-instance v0, Lcom/google/android/music/MusicPlaybackService$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/MusicPlaybackService$1;-><init>(Lcom/google/android/music/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mSharedPreviewPlayListener:Landroid/content/BroadcastReceiver;

    .line 242
    new-instance v0, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;

    invoke-direct {v0, p0}, Lcom/google/android/music/MusicPlaybackService$MusicPlaybackServiceImpl;-><init>(Lcom/google/android/music/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mMusicStub:Landroid/os/Binder;

    .line 244
    new-instance v0, Lcom/google/android/music/MusicPlaybackService$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/MusicPlaybackService$2;-><init>(Lcom/google/android/music/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mServiceHooks:Lcom/google/android/music/MusicPlaybackService$ServiceHooks;

    .line 677
    new-instance v0, Lcom/google/android/music/MusicPlaybackService$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/MusicPlaybackService$3;-><init>(Lcom/google/android/music/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    .line 768
    new-instance v0, Lcom/google/android/music/MusicPlaybackService$4;

    invoke-direct {v0, p0}, Lcom/google/android/music/MusicPlaybackService$4;-><init>(Lcom/google/android/music/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 803
    iput-boolean v3, p0, Lcom/google/android/music/MusicPlaybackService;->mScreenReceiverRegistered:Z

    .line 804
    new-instance v0, Lcom/google/android/music/MusicPlaybackService$5;

    invoke-direct {v0, p0}, Lcom/google/android/music/MusicPlaybackService$5;-><init>(Lcom/google/android/music/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 825
    new-instance v0, Lcom/google/android/music/MusicPlaybackService$6;

    invoke-direct {v0, p0}, Lcom/google/android/music/MusicPlaybackService$6;-><init>(Lcom/google/android/music/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mOrientationMonitor:Landroid/content/BroadcastReceiver;

    .line 848
    new-instance v0, Lcom/google/android/music/MusicPlaybackService$7;

    invoke-direct {v0, p0}, Lcom/google/android/music/MusicPlaybackService$7;-><init>(Lcom/google/android/music/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mNotificationCanceller:Landroid/os/Handler;

    .line 870
    new-instance v0, Lcom/google/android/music/MusicPlaybackService$8;

    invoke-direct {v0, p0}, Lcom/google/android/music/MusicPlaybackService$8;-><init>(Lcom/google/android/music/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1275
    new-instance v0, Lcom/google/android/music/MusicPlaybackService$13;

    invoke-direct {v0, p0}, Lcom/google/android/music/MusicPlaybackService$13;-><init>(Lcom/google/android/music/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    .line 2624
    new-instance v0, Lcom/google/android/music/MusicPlaybackService$23;

    invoke-direct {v0, p0}, Lcom/google/android/music/MusicPlaybackService$23;-><init>(Lcom/google/android/music/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mDownloadManagerConnection:Landroid/content/ServiceConnection;

    .line 2644
    new-instance v0, Lcom/google/android/music/MusicPlaybackService$24;

    invoke-direct {v0, p0}, Lcom/google/android/music/MusicPlaybackService$24;-><init>(Lcom/google/android/music/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mStoreConnection:Landroid/content/ServiceConnection;

    .line 877
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/music/MusicPlaybackService;Ljava/lang/String;IJ)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/music/MusicPlaybackService;->setPreviewValues(Ljava/lang/String;IJ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/music/MusicPlaybackService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I

    return v0
.end method

.method static synthetic access$1002(Lcom/google/android/music/MusicPlaybackService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I

    return p1
.end method

.method static synthetic access$1008(Lcom/google/android/music/MusicPlaybackService;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I

    return v0
.end method

.method static synthetic access$1010(Lcom/google/android/music/MusicPlaybackService;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I

    return v0
.end method

.method static synthetic access$1200(Lcom/google/android/music/MusicPlaybackService;ZZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/MusicPlaybackService;->openCurrent(ZZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/music/MusicPlaybackService;Lcom/google/android/music/dl/ContentIdentifier;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/google/android/music/MusicPlaybackService;->refreshCursor(Lcom/google/android/music/dl/ContentIdentifier;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/AsyncMediaPlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/AsyncMediaPlayer;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/music/MusicPlaybackService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/google/android/music/MusicPlaybackService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/google/android/music/MusicPlaybackService;->mIsSupposedToBePlaying:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/google/android/music/MusicPlaybackService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/google/android/music/MusicPlaybackService;->mRepeatMode:I

    return v0
.end method

.method static synthetic access$1700(Lcom/google/android/music/MusicPlaybackService;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/google/android/music/MusicPlaybackService;->openCurrentAndPlay(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/music/MusicPlaybackService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPausedByTransientLossOfFocus:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/google/android/music/MusicPlaybackService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/google/android/music/MusicPlaybackService;->mPausedByTransientLossOfFocus:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/MediaAppWidgetProvider;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAppWidgetProvider:Lcom/google/android/music/MediaAppWidgetProvider;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/MusicPlaybackService;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/google/android/music/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/jumper/MusicPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/google/android/music/MusicPlaybackService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mIsLandscape:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/google/android/music/MusicPlaybackService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/google/android/music/MusicPlaybackService;->mIsLandscape:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/google/android/music/MusicPlaybackService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->updateNotification()V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/android/music/MusicPlaybackService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->reloadQueue()V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/google/android/music/MusicPlaybackService;)Landroid/content/SharedPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/google/android/music/MusicPlaybackService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mServiceInUse:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/google/android/music/MusicPlaybackService;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/google/android/music/MusicPlaybackService;->saveQueue(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/dl/IDownloadManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/google/android/music/MusicPlaybackService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/google/android/music/MusicPlaybackService;->mServiceStartId:I

    return v0
.end method

.method static synthetic access$302(Lcom/google/android/music/MusicPlaybackService;Lcom/google/android/music/dl/IDownloadManager;)Lcom/google/android/music/dl/IDownloadManager;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/google/android/music/MusicPlaybackService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/google/android/music/MusicPlaybackService;->mQueueIsSaveable:Z

    return p1
.end method

.method static synthetic access$3208(Lcom/google/android/music/MusicPlaybackService;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaMountedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaMountedCount:I

    return v0
.end method

.method static synthetic access$3300(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/medialist/SongList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaList:Lcom/google/android/music/medialist/SongList;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/google/android/music/MusicPlaybackService;Lcom/google/android/music/medialist/SongList;)Lcom/google/android/music/medialist/SongList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaList:Lcom/google/android/music/medialist/SongList;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/google/android/music/MusicPlaybackService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/google/android/music/MusicPlaybackService;->mOpenFailedCounter:I

    return v0
.end method

.method static synthetic access$3402(Lcom/google/android/music/MusicPlaybackService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/google/android/music/MusicPlaybackService;->mOpenFailedCounter:I

    return p1
.end method

.method static synthetic access$3408(Lcom/google/android/music/MusicPlaybackService;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/google/android/music/MusicPlaybackService;->mOpenFailedCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/music/MusicPlaybackService;->mOpenFailedCounter:I

    return v0
.end method

.method static synthetic access$3500(Lcom/google/android/music/MusicPlaybackService;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/google/android/music/MusicPlaybackService;->mReloadedQueueSeekPos:J

    return-wide v0
.end method

.method static synthetic access$3502(Lcom/google/android/music/MusicPlaybackService;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/google/android/music/MusicPlaybackService;->mReloadedQueueSeekPos:J

    return-wide p1
.end method

.method static synthetic access$3600(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mFuture:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mHistory:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/google/android/music/MusicPlaybackService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->saveBookmarkIfNeeded()V

    return-void
.end method

.method static synthetic access$3900(Lcom/google/android/music/MusicPlaybackService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/google/android/music/MusicPlaybackService;->mShuffleMode:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/google/android/music/MusicPlaybackService;Ljava/util/Vector;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/google/android/music/MusicPlaybackService;->fillShuffleList(Ljava/util/Vector;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/google/android/music/MusicPlaybackService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->dumpPastPresentAndFuture()V

    return-void
.end method

.method static synthetic access$4200(Lcom/google/android/music/MusicPlaybackService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->tryNext()V

    return-void
.end method

.method static synthetic access$4300(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mNotificationCanceller:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/google/android/music/MusicPlaybackService;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/google/android/music/MusicPlaybackService;->stop(Z)V

    return-void
.end method

.method static synthetic access$4500(Lcom/google/android/music/MusicPlaybackService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->gotoIdleState()V

    return-void
.end method

.method static synthetic access$4600(Lcom/google/android/music/MusicPlaybackService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->hasLocal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/google/android/music/MusicPlaybackService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->hasRemote()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/store/IStoreService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mStoreService:Lcom/google/android/music/store/IStoreService;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/music/MusicPlaybackService;Lcom/google/android/music/store/IStoreService;)Lcom/google/android/music/store/IStoreService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService;->mStoreService:Lcom/google/android/music/store/IStoreService;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/dl/ContentIdentifier;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioId:Lcom/google/android/music/dl/ContentIdentifier;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/android/music/MusicPlaybackService;Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/ContentIdentifier;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioId:Lcom/google/android/music/dl/ContentIdentifier;

    return-object p1
.end method

.method static synthetic access$900()Z
    .registers 1

    .prologue
    .line 90
    sget-boolean v0, Lcom/google/android/music/MusicPlaybackService;->LOGV:Z

    return v0
.end method

.method private alertFailureIfNecessary(I)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v3, -0x1

    .line 1441
    iget-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mUIVisible:Z

    if-eqz v0, :cond_7

    .line 1470
    :cond_6
    :goto_6
    return-void

    .line 1445
    :cond_7
    invoke-static {p1}, Lcom/google/android/music/MusicPlaybackService;->getErrorTitleAndMessage(I)Landroid/util/Pair;

    move-result-object v1

    .line 1446
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1447
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1449
    if-eq v2, v3, :cond_6

    if-eq v0, v3, :cond_6

    .line 1453
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1454
    const v3, 0x7f0d00e3

    invoke-virtual {p0, v3}, Lcom/google/android/music/MusicPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1456
    const/4 v3, 0x0

    const/high16 v4, 0x1000

    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1459
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/google/android/music/MusicPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x1080078

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 1467
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1469
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_6
.end method

.method private clearCursor()V
    .registers 5

    .prologue
    .line 1028
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v2

    .line 1029
    :try_start_3
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 1030
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1d

    .line 1031
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1033
    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v3, Lcom/google/android/music/MusicPlaybackService$10;

    invoke-direct {v3, p0, v0}, Lcom/google/android/music/MusicPlaybackService$10;-><init>(Lcom/google/android/music/MusicPlaybackService;Landroid/database/Cursor;)V

    invoke-static {v1, v3}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 1039
    :cond_1d
    monitor-exit v2

    .line 1040
    return-void

    .line 1039
    .end local v0           #c:Landroid/database/Cursor;
    :catchall_1f
    move-exception v1

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method private dumpPastPresentAndFuture()V
    .registers 1

    .prologue
    .line 1688
    return-void
.end method

.method private fillShuffleList(Ljava/util/Vector;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v4, 0xc8

    const/4 v0, 0x0

    .line 1621
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    rsub-int v2, v1, 0xc8

    .line 1622
    if-gez v2, :cond_16

    .line 1623
    const-string v0, "MediaPlaybackService"

    const-string v1, "too much future!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    invoke-virtual {p1, v4}, Ljava/util/Vector;->setSize(I)V

    .line 1661
    :cond_15
    :goto_15
    return-void

    .line 1627
    :cond_16
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    invoke-virtual {v1}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->length()I

    move-result v3

    .line 1628
    if-nez v3, :cond_22

    .line 1630
    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    goto :goto_15

    .line 1633
    :cond_22
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_42

    .line 1635
    if-gt v3, v4, :cond_42

    .line 1637
    :goto_2a
    if-ge v0, v3, :cond_15

    .line 1638
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mRand:Lcom/google/android/music/MusicPlaybackService$Shuffler;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/music/MusicPlaybackService$Shuffler;->nextInt(I)I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 1637
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_42
    move v1, v0

    .line 1648
    :goto_43
    if-ge v1, v2, :cond_15

    .line 1651
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 1653
    :goto_4b
    iget-object v4, p0, Lcom/google/android/music/MusicPlaybackService;->mRand:Lcom/google/android/music/MusicPlaybackService$Shuffler;

    invoke-virtual {v4, v3}, Lcom/google/android/music/MusicPlaybackService$Shuffler;->nextInt(I)I

    move-result v4

    .line 1654
    invoke-direct {p0, v4, v0}, Lcom/google/android/music/MusicPlaybackService;->wasRecentlyUsed(II)Z

    move-result v5

    if-nez v5, :cond_62

    .line 1655
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1648
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_43

    .line 1658
    :cond_62
    div-int/lit8 v0, v0, 0x2

    goto :goto_4b
.end method

.method private getBookmark()J
    .registers 5

    .prologue
    .line 2531
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v3

    .line 2533
    :try_start_3
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_11

    .line 2534
    const-wide/16 v1, 0x0

    monitor-exit v3

    .line 2536
    :goto_10
    return-wide v1

    :cond_11
    const/16 v1, 0x9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    monitor-exit v3

    goto :goto_10

    .line 2537
    .end local v0           #cursor:Landroid/database/Cursor;
    :catchall_19
    move-exception v1

    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public static getErrorTitleAndMessage(I)Landroid/util/Pair;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 1418
    .line 1420
    packed-switch p0, :pswitch_data_28

    move v1, v0

    .line 1437
    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 1422
    :pswitch_12
    const v1, 0x7f0d00e4

    .line 1423
    const v0, 0x7f0d00df

    .line 1424
    goto :goto_5

    .line 1426
    :pswitch_19
    const v1, 0x7f0d00e6

    .line 1427
    const v0, 0x7f0d00e1

    .line 1428
    goto :goto_5

    .line 1430
    :pswitch_20
    const v1, 0x7f0d00e5

    .line 1431
    const v0, 0x7f0d00e0

    .line 1432
    goto :goto_5

    .line 1420
    nop

    :pswitch_data_28
    .packed-switch 0x5
        :pswitch_19
        :pswitch_12
        :pswitch_20
    .end packed-switch
.end method

.method private getPreferences()Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 882
    const-string v0, "Music"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/MusicPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getPreviewPlayDurationForUrl(Ljava/lang/String;)J
    .registers 4
    .parameter "url"

    .prologue
    .line 2594
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPreviewUrl:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPreviewUrl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2595
    iget-wide v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPreviewDuration:J
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_14

    .line 2597
    :goto_f
    monitor-exit p0

    return-wide v0

    :cond_11
    const-wide/16 v0, -0x1

    goto :goto_f

    .line 2594
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getPreviewPlayTypeForUrl(Ljava/lang/String;)I
    .registers 6
    .parameter

    .prologue
    .line 2584
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPreviewUrl:Ljava/lang/String;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPreviewUrl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2585
    sget-boolean v0, Lcom/google/android/music/MusicPlaybackService;->LOGV:Z

    if-eqz v0, :cond_2b

    .line 2586
    const-string v0, "MediaPlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use preview duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/MusicPlaybackService;->mPreviewDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2588
    :cond_2b
    iget v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPreviewPlayType:I
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_31

    .line 2590
    :goto_2d
    monitor-exit p0

    return v0

    :cond_2f
    const/4 v0, -0x1

    goto :goto_2d

    .line 2584
    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private gotoIdleState()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2276
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2277
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 2278
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1770

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2279
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mNotificationCanceller:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2280
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService;->mNotificationCanceller:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2281
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2282
    const-string v4, "cancel_notification"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2283
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2284
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService;->mNotificationCanceller:Landroid/os/Handler;

    const-wide/32 v4, 0x112a880

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2285
    iget-boolean v2, p0, Lcom/google/android/music/MusicPlaybackService;->mUIVisible:Z

    if-nez v2, :cond_4f

    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isHoneycombOrGreater()Z

    move-result v2

    if-eqz v2, :cond_4f

    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    if-eqz v2, :cond_4f

    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    invoke-virtual {v2}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->length()I

    move-result v2

    if-nez v2, :cond_57

    .line 2287
    :cond_4f
    :goto_4f
    invoke-virtual {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->stopForeground(Z)V

    .line 2288
    if-eqz v0, :cond_56

    .line 2289
    iput-boolean v1, p0, Lcom/google/android/music/MusicPlaybackService;->mIsNotificationShowing:Z

    .line 2291
    :cond_56
    return-void

    :cond_57
    move v0, v1

    .line 2285
    goto :goto_4f
.end method

.method private hasLocal()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 2521
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v2

    .line 2523
    :try_start_4
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_10

    .line 2524
    monitor-exit v2

    .line 2526
    :goto_f
    return v1

    :cond_10
    const/16 v3, 0xc

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_19

    const/4 v1, 0x1

    :cond_19
    monitor-exit v2

    goto :goto_f

    .line 2527
    .end local v0           #cursor:Landroid/database/Cursor;
    :catchall_1b
    move-exception v1

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method private hasRemote()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 2511
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v2

    .line 2513
    :try_start_4
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_10

    .line 2514
    monitor-exit v2

    .line 2516
    :goto_f
    return v1

    :cond_10
    const/16 v3, 0xb

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_19

    const/4 v1, 0x1

    :cond_19
    monitor-exit v2

    goto :goto_f

    .line 2517
    .end local v0           #cursor:Landroid/database/Cursor;
    :catchall_1b
    move-exception v1

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method private isPodcast()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 2501
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v2

    .line 2503
    :try_start_4
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_10

    .line 2504
    monitor-exit v2

    .line 2506
    :goto_f
    return v1

    :cond_10
    const/16 v3, 0x8

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_19

    const/4 v1, 0x1

    :cond_19
    monitor-exit v2

    goto :goto_f

    .line 2507
    .end local v0           #cursor:Landroid/database/Cursor;
    :catchall_1b
    move-exception v1

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method private loadCurrent()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1733
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    invoke-virtual {v2}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->isValid()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1743
    :cond_9
    :goto_9
    return v1

    .line 1736
    :cond_a
    invoke-direct {p0, v1}, Lcom/google/android/music/MusicPlaybackService;->stop(Z)V

    .line 1738
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    iget v3, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I

    invoke-virtual {v2, v3}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->get(I)Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v0

    .line 1739
    .local v0, id:Lcom/google/android/music/dl/ContentIdentifier;
    if-eqz v0, :cond_9

    .line 1743
    invoke-direct {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->refreshCursor(Lcom/google/android/music/dl/ContentIdentifier;)Z

    move-result v1

    goto :goto_9
.end method

.method private notifyChange(Ljava/lang/String;)V
    .registers 10
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1361
    .line 1362
    const-string v0, "com.android.music.queuechanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1364
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1365
    if-nez v3, :cond_56

    .line 1366
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getAudioId()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v0

    .line 1367
    if-nez v0, :cond_1d

    .line 1368
    const-string v0, "MediaPlaybackService"

    const-string v1, "notifyChange: Failed to retrieve audio id"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    :goto_1c
    return-void

    .line 1372
    :cond_1d
    const-string v5, "id"

    invoke-virtual {v0}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1373
    const-string v5, "domain"

    invoke-virtual {v0}, Lcom/google/android/music/dl/ContentIdentifier;->getDomain()Lcom/google/android/music/dl/ContentIdentifier$Domain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/dl/ContentIdentifier$Domain;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1374
    const-string v0, "artist"

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1375
    const-string v0, "album"

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1376
    const-string v0, "track"

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1379
    :cond_56
    const-string v0, "com.android.music.asyncopenstart"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 1381
    invoke-direct {p0, v2}, Lcom/google/android/music/MusicPlaybackService;->updateRemoteControlPlaystate(Z)V

    move v1, v2

    .line 1402
    :cond_62
    :goto_62
    sget-boolean v0, Lcom/google/android/music/MusicPlaybackService;->LOGV:Z

    if-eqz v0, :cond_90

    .line 1403
    const-string v0, "MediaPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending out broadcast: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " Extras: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    :cond_90
    invoke-virtual {p0, v4}, Lcom/google/android/music/MusicPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1408
    if-eqz v1, :cond_98

    .line 1409
    invoke-direct {p0, v3}, Lcom/google/android/music/MusicPlaybackService;->saveQueue(Z)V

    .line 1413
    :cond_98
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAppWidgetProvider:Lcom/google/android/music/MediaAppWidgetProvider;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/music/MediaAppWidgetProvider;->notifyChange(Lcom/google/android/music/MusicPlaybackService;Ljava/lang/String;)V

    .line 1414
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->updateNotification()V

    goto/16 :goto_1c

    .line 1382
    :cond_a2
    const-string v0, "com.android.music.asyncopencomplete"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 1384
    invoke-direct {p0, v2}, Lcom/google/android/music/MusicPlaybackService;->updateRemoteControlPlaystate(Z)V

    move v1, v2

    goto :goto_62

    .line 1385
    :cond_af
    const-string v0, "com.android.music.playstatechanged"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 1386
    const-string v0, "playstate"

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v5

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1387
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->updateBroadcastReceiversForLockScreenActivity()V

    .line 1388
    invoke-direct {p0, v2}, Lcom/google/android/music/MusicPlaybackService;->updateRemoteControlPlaystate(Z)V

    goto :goto_62

    .line 1389
    :cond_c7
    const-string v0, "com.android.music.playbackfailed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 1391
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/AsyncMediaPlayer;

    if-eqz v0, :cond_f5

    .line 1392
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/AsyncMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/AsyncMediaPlayer;->getErrorType()I

    move-result v0

    .line 1394
    :goto_d9
    const-string v5, "errorType"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1395
    iput-boolean v2, p0, Lcom/google/android/music/MusicPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1396
    invoke-direct {p0, v1}, Lcom/google/android/music/MusicPlaybackService;->updateRemoteControlPlaystate(Z)V

    .line 1397
    invoke-direct {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->alertFailureIfNecessary(I)V

    goto/16 :goto_62

    .line 1398
    :cond_e8
    const-string v0, "com.android.music.metachanged"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1399
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->updateRemoteControlMetadata()V

    goto/16 :goto_62

    :cond_f5
    move v0, v1

    goto :goto_d9
.end method

.method private open(Lcom/google/android/music/dl/ContentIdentifier;ZZ)V
    .registers 8
    .parameter "songId"
    .parameter "fromUserAction"
    .parameter "playOnSuccess"

    .prologue
    .line 1803
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/AsyncMediaPlayer;

    .line 1804
    .local v1, oldPlayer:Lcom/google/android/music/AsyncMediaPlayer;
    invoke-virtual {v1}, Lcom/google/android/music/AsyncMediaPlayer;->getAudioSessionId()I

    move-result v0

    .line 1805
    .local v0, fxsession:I
    new-instance v2, Lcom/google/android/music/AsyncMediaPlayer;

    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService;->mServiceHooks:Lcom/google/android/music/MusicPlaybackService$ServiceHooks;

    invoke-direct {v2, p0, v3}, Lcom/google/android/music/AsyncMediaPlayer;-><init>(Landroid/content/Context;Lcom/google/android/music/MusicPlaybackService$ServiceHooks;)V

    iput-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/AsyncMediaPlayer;

    .line 1806
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/AsyncMediaPlayer;

    invoke-virtual {v2, v0}, Lcom/google/android/music/AsyncMediaPlayer;->setAudioSessionId(I)V

    .line 1807
    invoke-virtual {v1}, Lcom/google/android/music/AsyncMediaPlayer;->release()V

    .line 1808
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/AsyncMediaPlayer;

    new-instance v3, Lcom/google/android/music/MusicPlaybackService$17;

    invoke-direct {v3, p0, p1, p3}, Lcom/google/android/music/MusicPlaybackService$17;-><init>(Lcom/google/android/music/MusicPlaybackService;Lcom/google/android/music/dl/ContentIdentifier;Z)V

    invoke-virtual {v2, p1, p2, v3}, Lcom/google/android/music/AsyncMediaPlayer;->setDataSource(Lcom/google/android/music/dl/ContentIdentifier;ZLcom/google/android/music/AsyncMediaPlayer$AsyncCommandCallback;)V

    .line 1831
    return-void
.end method

.method private openCurrent(ZZ)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1779
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->loadCurrent()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1780
    const-string v0, "com.android.music.asyncopencomplete"

    invoke-direct {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1794
    :cond_b
    :goto_b
    return-void

    .line 1784
    :cond_c
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1785
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioId:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/music/MusicPlaybackService;->open(Lcom/google/android/music/dl/ContentIdentifier;ZZ)V

    .line 1788
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->isPodcast()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1789
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->getBookmark()J

    move-result-wide v0

    .line 1792
    const-wide/16 v2, 0x1388

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/MusicPlaybackService;->seek(J)J

    goto :goto_b
.end method

.method private openCurrentAndPlay(Z)V
    .registers 4
    .parameter "fromUserAction"

    .prologue
    .line 1593
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1594
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/MusicPlaybackService$16;

    invoke-direct {v1, p0, p1}, Lcom/google/android/music/MusicPlaybackService$16;-><init>(Lcom/google/android/music/MusicPlaybackService;Z)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 1618
    return-void
.end method

.method private refreshCursor(Lcom/google/android/music/dl/ContentIdentifier;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1748
    if-nez p1, :cond_25

    .line 1749
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 1750
    const-string v0, "MediaPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid audio identifier:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1775
    :goto_24
    return v0

    .line 1754
    :cond_25
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaList:Lcom/google/android/music/medialist/SongList;

    if-nez v0, :cond_2b

    move v0, v1

    .line 1755
    goto :goto_24

    .line 1758
    :cond_2b
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaList:Lcom/google/android/music/medialist/SongList;

    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mCursorCols:[Ljava/lang/String;

    invoke-virtual {v0, p0, p1, v2}, Lcom/google/android/music/medialist/SongList;->getSongCursor(Landroid/content/Context;Lcom/google/android/music/dl/ContentIdentifier;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Queried ID "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 1762
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v3

    .line 1763
    :try_start_4c
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1764
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1766
    if-eqz v2, :cond_74

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 1767
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1768
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioId:Lcom/google/android/music/dl/ContentIdentifier;

    .line 1769
    const/4 v0, 0x1

    .line 1773
    :goto_6d
    monitor-exit v3
    :try_end_6e
    .catchall {:try_start_4c .. :try_end_6e} :catchall_79

    .line 1774
    const-string v1, "com.android.music.metachanged"

    invoke-direct {p0, v1}, Lcom/google/android/music/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto :goto_24

    .line 1771
    :cond_74
    :try_start_74
    invoke-static {v2}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    move v0, v1

    goto :goto_6d

    .line 1773
    :catchall_79
    move-exception v0

    monitor-exit v3
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_79

    throw v0
.end method

.method private reloadQueue()V
    .registers 14

    .prologue
    const-wide/16 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1095
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/google/android/music/MusicPlaybackService;->mReloadedQueueSeekPos:J

    .line 1096
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1097
    .local v3, preferences:Landroid/content/SharedPreferences;
    const-string v6, "medialist"

    invoke-interface {v3, v6, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1098
    .local v0, embryo:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reloading queue from: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 1099
    if-eqz v0, :cond_6d

    .line 1100
    invoke-static {v0}, Lcom/google/android/music/medialist/MediaList;->thaw(Ljava/lang/String;)Lcom/google/android/music/medialist/MediaList;

    move-result-object v1

    .line 1101
    .local v1, list:Lcom/google/android/music/medialist/MediaList;
    if-eqz v1, :cond_35

    instance-of v6, v1, Lcom/google/android/music/medialist/SongList;

    if-nez v6, :cond_77

    .line 1102
    :cond_35
    const-string v7, "MediaPlaybackService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Saved media list must be a SongList, but got "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v1, :cond_6e

    const-string v6, "<null>"

    :goto_46
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " instead"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error thawing: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 1153
    .end local v1           #list:Lcom/google/android/music/medialist/MediaList;
    :cond_6d
    :goto_6d
    return-void

    .line 1102
    .restart local v1       #list:Lcom/google/android/music/medialist/MediaList;
    :cond_6e
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    goto :goto_46

    .line 1107
    :cond_77
    check-cast v1, Lcom/google/android/music/medialist/SongList;

    .end local v1           #list:Lcom/google/android/music/medialist/MediaList;
    iput-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaList:Lcom/google/android/music/medialist/SongList;

    .line 1108
    iget-object v6, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    iget-object v7, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v6, v7}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->setMediaList(Lcom/google/android/music/medialist/SongList;)V

    .line 1110
    const-string v6, "curpos"

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1111
    .local v2, pos:I
    if-ltz v2, :cond_92

    iget-object v6, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    invoke-virtual {v6}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->length()I

    move-result v6

    if-lt v2, v6, :cond_c0

    .line 1113
    :cond_92
    iput-object v9, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaList:Lcom/google/android/music/medialist/SongList;

    .line 1114
    iget-object v6, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    invoke-virtual {v6, v9}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->setMediaList(Lcom/google/android/music/medialist/SongList;)V

    .line 1115
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "position out of range: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    invoke-virtual {v7}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    goto :goto_6d

    .line 1118
    :cond_c0
    iput v2, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I

    .line 1119
    const-string v6, "seekpos"

    invoke-interface {v3, v6, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/music/MusicPlaybackService;->mReloadedQueueSeekPos:J

    .line 1121
    const-string v6, "repeatMode"

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 1122
    .local v4, repmode:I
    const/4 v6, 0x2

    if-eq v4, v6, :cond_d6

    if-eq v4, v10, :cond_d6

    .line 1123
    const/4 v4, 0x0

    .line 1125
    :cond_d6
    iput v4, p0, Lcom/google/android/music/MusicPlaybackService;->mRepeatMode:I

    .line 1127
    const-string v6, "shufflemode"

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1128
    .local v5, shufmode:I
    if-eq v5, v10, :cond_e1

    .line 1129
    const/4 v5, 0x0

    .line 1131
    :cond_e1
    iput v5, p0, Lcom/google/android/music/MusicPlaybackService;->mShuffleMode:I

    .line 1143
    const/16 v6, 0x14

    iput v6, p0, Lcom/google/android/music/MusicPlaybackService;->mOpenFailedCounter:I

    .line 1144
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->loadCurrent()Z

    move-result v6

    if-nez v6, :cond_ef

    .line 1145
    iput-wide v11, p0, Lcom/google/android/music/MusicPlaybackService;->mReloadedQueueSeekPos:J

    .line 1148
    :cond_ef
    const-string v6, "com.android.music.queuechanged"

    invoke-direct {p0, v6}, Lcom/google/android/music/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1149
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queue reloaded with length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    invoke-virtual {v7}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", shuffle mode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/google/android/music/MusicPlaybackService;->mShuffleMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", playpos "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioId:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    goto/16 :goto_6d
.end method

.method private saveBookmarkIfNeeded()V
    .registers 13

    .prologue
    const-wide/16 v10, 0x2710

    .line 2295
    :try_start_2
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->isPodcast()Z

    move-result v8

    if-eqz v8, :cond_28

    .line 2296
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->position()J

    move-result-wide v4

    .line 2297
    .local v4, pos:J
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->getBookmark()J

    move-result-wide v0

    .line 2298
    .local v0, bookmark:J
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->duration()J

    move-result-wide v2

    .line 2299
    .local v2, duration:J
    cmp-long v8, v4, v0

    if-gez v8, :cond_1e

    add-long v8, v4, v10

    cmp-long v8, v8, v0

    if-gtz v8, :cond_28

    :cond_1e
    cmp-long v8, v4, v0

    if-lez v8, :cond_29

    sub-long v8, v4, v10

    cmp-long v8, v8, v0

    if-gez v8, :cond_29

    .line 2319
    .end local v0           #bookmark:J
    .end local v2           #duration:J
    .end local v4           #pos:J
    :cond_28
    :goto_28
    return-void

    .line 2305
    .restart local v0       #bookmark:J
    .restart local v2       #duration:J
    .restart local v4       #pos:J
    :cond_29
    const-wide/16 v8, 0x3a98

    cmp-long v8, v4, v8

    if-ltz v8, :cond_35

    add-long v8, v4, v10

    cmp-long v8, v8, v2

    if-lez v8, :cond_37

    .line 2307
    :cond_35
    const-wide/16 v4, 0x0

    .line 2311
    :cond_37
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 2312
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "bookmark"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2313
    sget-object v9, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v8, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/database/Cursor;

    const/4 v10, 0x0

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 2315
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v6, v7, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_61
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_61} :catch_62

    goto :goto_28

    .line 2317
    .end local v0           #bookmark:J
    .end local v2           #duration:J
    .end local v4           #pos:J
    .end local v6           #uri:Landroid/net/Uri;
    .end local v7           #values:Landroid/content/ContentValues;
    :catch_62
    move-exception v8

    goto :goto_28
.end method

.method private saveQueue(Z)V
    .registers 19
    .parameter "full"

    .prologue
    .line 1043
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/music/MusicPlaybackService;->mQueueIsSaveable:Z

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/MusicPlaybackService;->mMediaList:Lcom/google/android/music/medialist/SongList;

    if-nez v1, :cond_d

    .line 1092
    :cond_c
    :goto_c
    return-void

    .line 1049
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/MusicPlaybackService;->mMediaList:Lcom/google/android/music/medialist/SongList;

    .line 1050
    .local v4, mediaList:Lcom/google/android/music/medialist/SongList;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MusicPlaybackService;->getAlbumId()J

    move-result-wide v6

    .line 1051
    .local v6, curAlbumId:J
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v8

    .line 1052
    .local v8, curArtist:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v9

    .line 1053
    .local v9, curAlbum:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v10

    .line 1054
    .local v10, curTitle:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I

    .line 1055
    .local v5, playPos:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/music/MusicPlaybackService;->mRepeatMode:I

    .line 1056
    .local v13, repeatMode:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/music/MusicPlaybackService;->mShuffleMode:I

    .line 1060
    .local v14, shuffleMode:I
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/google/android/music/MusicPlaybackService;->mReloadedQueueSeekPos:J

    const-wide/16 v15, 0x0

    cmp-long v1, v1, v15

    if-ltz v1, :cond_51

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/google/android/music/MusicPlaybackService;->mReloadedQueueSeekPos:J

    .line 1063
    .local v11, playerPosition:J
    :goto_3b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/MusicPlaybackService;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1064
    sget-object v15, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/MusicPlaybackService$11;

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct/range {v1 .. v14}, Lcom/google/android/music/MusicPlaybackService$11;-><init>(Lcom/google/android/music/MusicPlaybackService;ZLcom/google/android/music/medialist/SongList;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)V

    invoke-static {v15, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    goto :goto_c

    .line 1060
    .end local v11           #playerPosition:J
    :cond_51
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/AsyncMediaPlayer;

    if-eqz v1, :cond_6a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/AsyncMediaPlayer;

    invoke-virtual {v1}, Lcom/google/android/music/AsyncMediaPlayer;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_6a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/AsyncMediaPlayer;

    invoke-virtual {v1}, Lcom/google/android/music/AsyncMediaPlayer;->position()J

    move-result-wide v11

    goto :goto_3b

    :cond_6a
    const-wide/16 v11, 0x0

    goto :goto_3b
.end method

.method private declared-synchronized setPreviewValues(Ljava/lang/String;IJ)V
    .registers 6
    .parameter "url"
    .parameter "type"
    .parameter "duration"

    .prologue
    .line 2578
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService;->mPreviewUrl:Ljava/lang/String;

    .line 2579
    iput-wide p3, p0, Lcom/google/android/music/MusicPlaybackService;->mPreviewDuration:J

    .line 2580
    iput p2, p0, Lcom/google/android/music/MusicPlaybackService;->mPreviewPlayType:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 2581
    monitor-exit p0

    return-void

    .line 2578
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private stop(Z)V
    .registers 6
    .parameter "remove_status_icon"

    .prologue
    const/4 v3, 0x0

    .line 2061
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/AsyncMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/AsyncMediaPlayer;->stop()V

    .line 2062
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 2063
    :try_start_9
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 2064
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2065
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2067
    :cond_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_2d

    .line 2068
    if-eqz p1, :cond_30

    .line 2069
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->gotoIdleState()V

    .line 2073
    :goto_28
    if-eqz p1, :cond_2c

    .line 2074
    iput-boolean v3, p0, Lcom/google/android/music/MusicPlaybackService;->mIsSupposedToBePlaying:Z

    .line 2076
    :cond_2c
    return-void

    .line 2067
    :catchall_2d
    move-exception v0

    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v0

    .line 2071
    :cond_30
    invoke-virtual {p0, v3}, Lcom/google/android/music/MusicPlaybackService;->stopForeground(Z)V

    goto :goto_28
.end method

.method private stripNullContentIdentifiers([Lcom/google/android/music/dl/ContentIdentifier;)[Lcom/google/android/music/dl/ContentIdentifier;
    .registers 8
    .parameter "ret"

    .prologue
    .line 1478
    const/4 v0, 0x0

    .line 1479
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    array-length v5, p1

    if-ge v1, v5, :cond_e

    .line 1480
    aget-object v5, p1, v1

    if-eqz v5, :cond_b

    .line 1481
    add-int/lit8 v0, v0, 0x1

    .line 1479
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1484
    :cond_e
    array-length v5, p1

    if-ne v0, v5, :cond_12

    .line 1498
    .end local p1
    :goto_11
    return-object p1

    .line 1487
    .restart local p1
    :cond_12
    if-gtz v0, :cond_16

    .line 1488
    const/4 p1, 0x0

    goto :goto_11

    .line 1491
    :cond_16
    const/4 v2, 0x0

    .line 1492
    .local v2, newIndex:I
    new-array v4, v0, [Lcom/google/android/music/dl/ContentIdentifier;

    .line 1493
    .local v4, newRet:[Lcom/google/android/music/dl/ContentIdentifier;
    const/4 v1, 0x0

    :goto_1a
    array-length v5, p1

    if-ge v1, v5, :cond_2b

    .line 1494
    aget-object v5, p1, v1

    if-eqz v5, :cond_28

    .line 1495
    add-int/lit8 v3, v2, 0x1

    .end local v2           #newIndex:I
    .local v3, newIndex:I
    aget-object v5, p1, v1

    aput-object v5, v4, v2

    move v2, v3

    .line 1493
    .end local v3           #newIndex:I
    .restart local v2       #newIndex:I
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_2b
    move-object p1, v4

    .line 1498
    goto :goto_11
.end method

.method private tryNext()V
    .registers 5

    .prologue
    .line 1837
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1838
    return-void
.end method

.method private updateBroadcastReceiversForLockScreenActivity()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1011
    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v5}, Lcom/google/android/music/jumper/MusicPreferences;->isLockScreenActivityEnabled()Z

    move-result v0

    .line 1013
    .local v0, allowLockScreen:Z
    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_2e

    move v2, v3

    .line 1014
    .local v2, shouldShowLockScreen:Z
    :goto_11
    if-eqz v2, :cond_30

    iget-boolean v5, p0, Lcom/google/android/music/MusicPlaybackService;->mScreenReceiverRegistered:Z

    if-nez v5, :cond_30

    .line 1015
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1016
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1017
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1018
    iget-object v4, p0, Lcom/google/android/music/MusicPlaybackService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/google/android/music/MusicPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1019
    iput-boolean v3, p0, Lcom/google/android/music/MusicPlaybackService;->mScreenReceiverRegistered:Z

    .line 1025
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_2d
    :goto_2d
    return-void

    .end local v2           #shouldShowLockScreen:Z
    :cond_2e
    move v2, v4

    .line 1013
    goto :goto_11

    .line 1021
    .restart local v2       #shouldShowLockScreen:Z
    :cond_30
    if-nez v2, :cond_2d

    iget-boolean v3, p0, Lcom/google/android/music/MusicPlaybackService;->mScreenReceiverRegistered:Z

    if-eqz v3, :cond_2d

    .line 1022
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lcom/google/android/music/MusicPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1023
    iput-boolean v4, p0, Lcom/google/android/music/MusicPlaybackService;->mScreenReceiverRegistered:Z

    goto :goto_2d
.end method

.method private declared-synchronized updateNotification()V
    .registers 10

    .prologue
    .line 1945
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isHoneycombOrGreater()Z

    move-result v0

    if-eqz v0, :cond_186

    .line 1947
    iget-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mUIVisible:Z

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1948
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mIsNotificationShowing:Z

    .line 1959
    :cond_14
    :goto_14
    iget-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mIsNotificationShowing:Z

    if-eqz v0, :cond_184

    .line 1966
    new-instance v8, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f040045

    invoke-direct {v8, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1970
    const v0, 0x7f1000c9

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.music.PLAYBACK_VIEWER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x800

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1977
    const v0, 0x7f10002b

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.music.musicservicecommand.previous"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1981
    const v0, 0x7f10003f

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.music.musicservicecommand.togglepause"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1985
    const v0, 0x7f10002d

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.music.musicservicecommand.next"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1989
    const v0, 0x7f1000c8

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.music.musicservicecommand.veto"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1994
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    .line 1995
    const v1, 0x7f10001f

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1996
    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1cc

    .line 1997
    const v0, 0x7f0d0064

    invoke-virtual {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1999
    :goto_c9
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 2000
    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_da

    .line 2001
    const v0, 0x7f0d0065

    invoke-virtual {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2004
    :cond_da
    const v2, 0x7f1000c7

    const v3, 0x7f0d0154

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/google/android/music/MusicPlaybackService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2008
    iget-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mNotificationHasButtons:Z

    if-eqz v0, :cond_116

    .line 2009
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_199

    .line 2010
    const v0, 0x7f10003f

    const v1, 0x7f02007b

    invoke-virtual {v8, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2017
    :goto_103
    iget-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mIsLandscape:Z

    if-nez v0, :cond_10f

    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v0

    if-eqz v0, :cond_1a4

    .line 2018
    :cond_10f
    const v0, 0x7f10002b

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2023
    :cond_116
    :goto_116
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isHoneycombOrGreater()Z

    move-result v0

    if-eqz v0, :cond_13d

    .line 2024
    const/4 v1, 0x0

    .line 2027
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaList:Lcom/google/android/music/medialist/SongList;

    instance-of v0, v0, Lcom/google/android/music/medialist/ExternalDomainSongList;

    if-eqz v0, :cond_1ae

    .line 2028
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaList:Lcom/google/android/music/medialist/SongList;

    check-cast v0, Lcom/google/android/music/medialist/ExternalDomainSongList;

    .line 2029
    invoke-virtual {v0}, Lcom/google/android/music/medialist/ExternalDomainSongList;->getAlbumArtUrl()Ljava/lang/String;

    move-result-object v0

    .line 2030
    if-eqz v0, :cond_1c9

    .line 2031
    const/16 v1, 0x3c

    const/16 v2, 0x3c

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/music/utils/AlbumArtUtils;->getExternalAlbumArtBitmap(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2037
    :goto_135
    if-eqz v0, :cond_1c0

    .line 2038
    const v1, 0x7f1000c6

    invoke-virtual {v8, v1, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 2044
    :cond_13d
    :goto_13d
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mNotification:Landroid/app/Notification;

    if-nez v0, :cond_17a

    .line 2045
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mNotification:Landroid/app/Notification;

    .line 2046
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 2047
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mNotification:Landroid/app/Notification;

    const v1, 0x7f020230

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 2048
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mNotification:Landroid/app/Notification;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.music.PLAYBACK_VIEWER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x800

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2055
    :cond_17a
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mNotification:Landroid/app/Notification;

    iput-object v8, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2056
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mNotification:Landroid/app/Notification;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/MusicPlaybackService;->startForeground(ILandroid/app/Notification;)V
    :try_end_184
    .catchall {:try_start_1 .. :try_end_184} :catchall_191

    .line 2058
    :cond_184
    monitor-exit p0

    return-void

    .line 1952
    :cond_186
    :try_start_186
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_194

    .line 1953
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mIsNotificationShowing:Z
    :try_end_18f
    .catchall {:try_start_186 .. :try_end_18f} :catchall_191

    goto/16 :goto_14

    .line 1945
    :catchall_191
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1955
    :cond_194
    :try_start_194
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->gotoIdleState()V

    goto/16 :goto_14

    .line 2013
    :cond_199
    const v0, 0x7f10003f

    const v1, 0x7f02007c

    invoke-virtual {v8, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_103

    .line 2020
    :cond_1a4
    const v0, 0x7f10002b

    const/16 v1, 0x8

    invoke-virtual {v8, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_116

    .line 2034
    :cond_1ae
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getAlbumId()J

    move-result-wide v1

    .line 2035
    const/16 v3, 0x3c

    const/16 v4, 0x3c

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/google/android/music/utils/AlbumArtUtils;->getArtwork(Landroid/content/Context;JIIZLjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_135

    .line 2040
    :cond_1c0
    const-string v0, "MediaPlaybackService"

    const-string v1, "Failed to set album art for the notification"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c7
    .catchall {:try_start_194 .. :try_end_1c7} :catchall_191

    goto/16 :goto_13d

    :cond_1c9
    move-object v0, v1

    goto/16 :goto_135

    :cond_1cc
    move-object v1, v0

    goto/16 :goto_c9
.end method

.method private updateRemoteControlMetadata()V
    .registers 10

    .prologue
    const/4 v5, 0x1

    .line 2669
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isICSOrGreater()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 2670
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mRemoteControlClient:Lcom/google/android/music/RemoteControlClientCompat;

    invoke-virtual {v0, v5}, Lcom/google/android/music/RemoteControlClientCompat;->editMetadata(Z)Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;

    move-result-object v8

    .line 2672
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v6

    .line 2673
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v7

    .line 2674
    invoke-virtual {v8, v5, v6}, Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;->putString(ILjava/lang/String;)Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;

    .line 2675
    const/16 v0, 0xd

    invoke-virtual {v8, v0, v7}, Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;->putString(ILjava/lang/String;)Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;

    .line 2676
    const/4 v0, 0x2

    invoke-virtual {v8, v0, v7}, Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;->putString(ILjava/lang/String;)Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;

    .line 2677
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;->putString(ILjava/lang/String;)Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;

    .line 2678
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->duration()J

    move-result-wide v1

    invoke-virtual {v8, v0, v1, v2}, Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;->putLong(IJ)Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;

    .line 2686
    const/4 v1, 0x0

    .line 2687
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2688
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2689
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 2690
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    .line 2692
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaList:Lcom/google/android/music/medialist/SongList;

    instance-of v0, v0, Lcom/google/android/music/medialist/ExternalDomainSongList;

    if-eqz v0, :cond_66

    .line 2693
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaList:Lcom/google/android/music/medialist/SongList;

    check-cast v0, Lcom/google/android/music/medialist/ExternalDomainSongList;

    .line 2694
    invoke-virtual {v0}, Lcom/google/android/music/medialist/ExternalDomainSongList;->getAlbumArtUrl()Ljava/lang/String;

    move-result-object v0

    .line 2695
    if-eqz v0, :cond_78

    .line 2696
    invoke-static {p0, v0, v3, v4}, Lcom/google/android/music/utils/AlbumArtUtils;->getExternalAlbumArtBitmap(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2703
    :goto_5b
    if-eqz v0, :cond_70

    .line 2704
    const/16 v1, 0x64

    invoke-virtual {v8, v1, v0}, Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;->putBitmap(ILandroid/graphics/Bitmap;)Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;

    .line 2709
    :goto_62
    invoke-virtual {v8}, Lcom/google/android/music/RemoteControlClientCompat$MetadataEditorCompat;->apply()V

    .line 2711
    :cond_65
    return-void

    .line 2699
    :cond_66
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getAlbumId()J

    move-result-wide v1

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/google/android/music/utils/AlbumArtUtils;->getLockScreenArtwork(Landroid/content/Context;JIIZLjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_5b

    .line 2706
    :cond_70
    const-string v0, "MediaPlaybackService"

    const-string v1, "Failed to set album art for the lock screen"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    :cond_78
    move-object v0, v1

    goto :goto_5b
.end method

.method private updateRemoteControlPlaystate(Z)V
    .registers 4
    .parameter "inError"

    .prologue
    .line 2715
    if-eqz p1, :cond_a

    .line 2716
    sget v0, Lcom/google/android/music/RemoteControlClientCompat;->PLAYSTATE_ERROR:I

    .line 2724
    .local v0, playstate:I
    :goto_4
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mRemoteControlClient:Lcom/google/android/music/RemoteControlClientCompat;

    invoke-virtual {v1, v0}, Lcom/google/android/music/RemoteControlClientCompat;->setPlaybackState(I)V

    .line 2725
    return-void

    .line 2717
    .end local v0           #playstate:I
    :cond_a
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/AsyncMediaPlayer;

    invoke-virtual {v1}, Lcom/google/android/music/AsyncMediaPlayer;->isPreparing()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/AsyncMediaPlayer;

    invoke-virtual {v1}, Lcom/google/android/music/AsyncMediaPlayer;->isStreaming()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 2718
    sget v0, Lcom/google/android/music/RemoteControlClientCompat;->PLAYSTATE_BUFFERING:I

    .restart local v0       #playstate:I
    goto :goto_4

    .line 2719
    .end local v0           #playstate:I
    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 2720
    sget v0, Lcom/google/android/music/RemoteControlClientCompat;->PLAYSTATE_PLAYING:I

    .restart local v0       #playstate:I
    goto :goto_4

    .line 2722
    .end local v0           #playstate:I
    :cond_26
    sget v0, Lcom/google/android/music/RemoteControlClientCompat;->PLAYSTATE_PAUSED:I

    .restart local v0       #playstate:I
    goto :goto_4
.end method

.method private updateRemoteControlTransportControlFlags()V
    .registers 4

    .prologue
    .line 2730
    sget v1, Lcom/google/android/music/RemoteControlClientCompat;->FLAG_KEY_MEDIA_PREVIOUS:I

    sget v2, Lcom/google/android/music/RemoteControlClientCompat;->FLAG_KEY_MEDIA_NEXT:I

    or-int/2addr v1, v2

    sget v2, Lcom/google/android/music/RemoteControlClientCompat;->FLAG_KEY_MEDIA_PLAY:I

    or-int/2addr v1, v2

    sget v2, Lcom/google/android/music/RemoteControlClientCompat;->FLAG_KEY_MEDIA_PAUSE:I

    or-int/2addr v1, v2

    sget v2, Lcom/google/android/music/RemoteControlClientCompat;->FLAG_KEY_MEDIA_STOP:I

    or-int v0, v1, v2

    .line 2736
    .local v0, flags:I
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mRemoteControlClient:Lcom/google/android/music/RemoteControlClientCompat;

    invoke-virtual {v1, v0}, Lcom/google/android/music/RemoteControlClientCompat;->setTransportControlFlags(I)V

    .line 2737
    return-void
.end method

.method private wasRecentlyUsed(II)Z
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1696
    if-nez p2, :cond_6

    move v0, v1

    .line 1724
    :goto_5
    return v0

    .line 1700
    :cond_6
    iget v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I

    if-ne p1, v0, :cond_c

    move v0, v2

    .line 1701
    goto :goto_5

    .line 1704
    :cond_c
    iget-object v4, p0, Lcom/google/android/music/MusicPlaybackService;->mFuture:Ljava/util/Vector;

    monitor-enter v4

    .line 1705
    :try_start_f
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 1706
    if-ge v0, p2, :cond_1f

    .line 1707
    const-string v3, "MediaPlaybackService"

    const-string v5, "lookback too big"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v0

    .line 1710
    :cond_1f
    add-int/lit8 v5, v0, -0x1

    move v3, v1

    .line 1711
    :goto_22
    if-ge v3, p2, :cond_3b

    .line 1712
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mHistory:Ljava/util/Vector;

    sub-int v6, v5, v3

    invoke-virtual {v0, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1713
    if-ne v0, p1, :cond_37

    .line 1714
    monitor-exit v4

    move v0, v2

    goto :goto_5

    .line 1711
    :cond_37
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_22

    .line 1717
    :cond_3b
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mFuture:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v5

    move v3, v1

    .line 1718
    :goto_42
    if-ge v3, v5, :cond_59

    .line 1719
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mFuture:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1720
    if-ne v0, p1, :cond_55

    .line 1721
    monitor-exit v4

    move v0, v2

    goto :goto_5

    .line 1718
    :cond_55
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_42

    .line 1724
    :cond_59
    monitor-exit v4

    move v0, v1

    goto :goto_5

    .line 1725
    :catchall_5c
    move-exception v0

    monitor-exit v4
    :try_end_5e
    .catchall {:try_start_f .. :try_end_5e} :catchall_5c

    throw v0
.end method


# virtual methods
.method public closeExternalStorageFiles(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 1299
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->stop(Z)V

    .line 1300
    const-string v0, "com.android.music.queuechanged"

    invoke-direct {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1301
    const-string v0, "com.android.music.metachanged"

    invoke-direct {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1302
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    invoke-virtual {v1}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " items in queue, currently at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaList:Lcom/google/android/music/medialist/SongList;

    if-nez v0, :cond_b2

    const-string v0, "null"

    :goto_39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2911
    const-string v0, "Currently loaded:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2912
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2913
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2914
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/music/MusicPlaybackService;->mIsSupposedToBePlaying:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "actual: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/AsyncMediaPlayer;

    if-eqz v0, :cond_b9

    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/AsyncMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/AsyncMediaPlayer;->getPlayerStatusString()Ljava/lang/String;

    move-result-object v0

    :goto_8b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shuffle mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/music/MusicPlaybackService;->mShuffleMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2918
    invoke-static {p2}, Lcom/google/android/music/MusicUtils;->debugDump(Ljava/io/PrintWriter;)V

    .line 2919
    return-void

    .line 2910
    :cond_b2
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v0}, Lcom/google/android/music/medialist/SongList;->freeze()Ljava/lang/String;

    move-result-object v0

    goto :goto_39

    .line 2916
    :cond_b9
    const-string v0, "no async player"

    goto :goto_8b
.end method

.method public duration()J
    .registers 6

    .prologue
    .line 2545
    iget-object v4, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v4

    .line 2547
    :try_start_3
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_11

    .line 2548
    const-wide/16 v2, -0x1

    monitor-exit v4

    .line 2556
    :goto_10
    return-wide v2

    .line 2551
    :cond_11
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaList:Lcom/google/android/music/medialist/SongList;

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v2}, Lcom/google/android/music/medialist/SongList;->isSharedDomain()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 2552
    const-string v2, "SourceId"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2554
    .local v1, remoteUrl:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/google/android/music/MusicPlaybackService;->getPreviewPlayDurationForUrl(Ljava/lang/String;)J

    move-result-wide v2

    monitor-exit v4

    goto :goto_10

    .line 2557
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #remoteUrl:Ljava/lang/String;
    :catchall_2d
    move-exception v2

    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v2

    .line 2556
    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_30
    const/16 v2, 0xa

    :try_start_32
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    monitor-exit v4
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_2d

    goto :goto_10
.end method

.method public getAlbumId()J
    .registers 5

    .prologue
    .line 2464
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v3

    .line 2466
    :try_start_3
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_11

    .line 2467
    const-wide/16 v1, -0x1

    monitor-exit v3

    .line 2469
    :goto_10
    return-wide v1

    :cond_11
    const-string v1, "album_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    monitor-exit v3

    goto :goto_10

    .line 2470
    .end local v0           #cursor:Landroid/database/Cursor;
    :catchall_1d
    move-exception v1

    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public getAlbumName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2454
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v2

    .line 2456
    :try_start_3
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_10

    .line 2457
    const/4 v1, 0x0

    monitor-exit v2

    .line 2459
    :goto_f
    return-object v1

    :cond_10
    const-string v1, "album"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    monitor-exit v2

    goto :goto_f

    .line 2460
    .end local v0           #cursor:Landroid/database/Cursor;
    :catchall_1c
    move-exception v1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public getArtistId()J
    .registers 5

    .prologue
    .line 2424
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v3

    .line 2426
    :try_start_3
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_11

    .line 2427
    const-wide/16 v1, -0x1

    monitor-exit v3

    .line 2429
    :goto_10
    return-wide v1

    :cond_11
    const-string v1, "AlbumArtistId"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    monitor-exit v3

    goto :goto_10

    .line 2430
    .end local v0           #cursor:Landroid/database/Cursor;
    :catchall_1d
    move-exception v1

    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public getArtistName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2414
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v2

    .line 2416
    :try_start_3
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_10

    .line 2417
    const/4 v1, 0x0

    monitor-exit v2

    .line 2419
    :goto_f
    return-object v1

    :cond_10
    const-string v1, "artist"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    monitor-exit v2

    goto :goto_f

    .line 2420
    .end local v0           #cursor:Landroid/database/Cursor;
    :catchall_1c
    move-exception v1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public getAudioId()Lcom/google/android/music/dl/ContentIdentifier;
    .registers 2

    .prologue
    .line 2380
    iget v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I

    if-ltz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->isValid()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2381
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioId:Lcom/google/android/music/dl/ContentIdentifier;

    .line 2383
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getAudioSessionId()I
    .registers 2

    .prologue
    .line 2656
    monitor-enter p0

    .line 2657
    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/AsyncMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/AsyncMediaPlayer;->getAudioSessionId()I

    move-result v0

    monitor-exit p0

    return v0

    .line 2658
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public getDebugInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2662
    monitor-enter p0

    .line 2663
    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/AsyncMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/AsyncMediaPlayer;->getDebugInfo()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 2664
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public getNextSongs(I)[Lcom/google/android/music/dl/ContentIdentifier;
    .registers 9
    .parameter "songCount"

    .prologue
    .line 1502
    iget-object v4, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    invoke-virtual {v4}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->getDomain()Lcom/google/android/music/dl/ContentIdentifier$Domain;

    move-result-object v4

    sget-object v5, Lcom/google/android/music/dl/ContentIdentifier$Domain;->SHARED:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    if-ne v4, v5, :cond_c

    .line 1503
    const/4 v4, 0x0

    .line 1532
    :goto_b
    return-object v4

    .line 1505
    :cond_c
    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService;->mFuture:Ljava/util/Vector;

    monitor-enter v5

    .line 1506
    :try_start_f
    iget-object v4, p0, Lcom/google/android/music/MusicPlaybackService;->mFuture:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v2

    .line 1507
    .local v2, length:I
    if-lez v2, :cond_41

    .line 1508
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-array v3, v4, [Lcom/google/android/music/dl/ContentIdentifier;

    .line 1509
    .local v3, ret:[Lcom/google/android/music/dl/ContentIdentifier;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1e
    array-length v4, v3

    if-ge v1, v4, :cond_38

    .line 1510
    iget-object v6, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    iget-object v4, p0, Lcom/google/android/music/MusicPlaybackService;->mFuture:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->get(I)Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v4

    aput-object v4, v3, v1

    .line 1509
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 1513
    :cond_38
    invoke-direct {p0, v3}, Lcom/google/android/music/MusicPlaybackService;->stripNullContentIdentifiers([Lcom/google/android/music/dl/ContentIdentifier;)[Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v4

    monitor-exit v5

    goto :goto_b

    .line 1533
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #ret:[Lcom/google/android/music/dl/ContentIdentifier;
    :catchall_3e
    move-exception v4

    monitor-exit v5
    :try_end_40
    .catchall {:try_start_f .. :try_end_40} :catchall_3e

    throw v4

    .line 1515
    .restart local v2       #length:I
    :cond_41
    :try_start_41
    iget-object v4, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    invoke-virtual {v4}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->length()I

    move-result v4

    if-ge v4, p1, :cond_6f

    iget-object v4, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    invoke-virtual {v4}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->length()I

    move-result v2

    .line 1517
    :goto_4f
    new-array v3, v2, [Lcom/google/android/music/dl/ContentIdentifier;

    .line 1518
    .restart local v3       #ret:[Lcom/google/android/music/dl/ContentIdentifier;
    iget v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I

    .line 1519
    .local v0, currentPos:I
    if-gez v0, :cond_56

    .line 1522
    const/4 v0, 0x0

    .line 1524
    :cond_56
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_57
    if-ge v1, v2, :cond_71

    .line 1525
    iget-object v4, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    invoke-virtual {v4}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->length()I

    move-result v4

    if-lt v0, v4, :cond_62

    .line 1526
    const/4 v0, 0x0

    .line 1528
    :cond_62
    iget-object v4, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    invoke-virtual {v4, v0}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->get(I)Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v4

    aput-object v4, v3, v1

    .line 1529
    add-int/lit8 v0, v0, 0x1

    .line 1524
    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    .end local v0           #currentPos:I
    .end local v1           #i:I
    .end local v3           #ret:[Lcom/google/android/music/dl/ContentIdentifier;
    :cond_6f
    move v2, p1

    .line 1515
    goto :goto_4f

    .line 1532
    .restart local v0       #currentPos:I
    .restart local v1       #i:I
    .restart local v3       #ret:[Lcom/google/android/music/dl/ContentIdentifier;
    :cond_71
    invoke-direct {p0, v3}, Lcom/google/android/music/MusicPlaybackService;->stripNullContentIdentifiers([Lcom/google/android/music/dl/ContentIdentifier;)[Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v4

    monitor-exit v5
    :try_end_76
    .catchall {:try_start_41 .. :try_end_76} :catchall_3e

    goto :goto_b
.end method

.method public getPreviewPlayType()I
    .registers 5

    .prologue
    .line 2565
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v3

    .line 2567
    :try_start_3
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_10

    .line 2568
    const/4 v2, -0x1

    monitor-exit v3

    .line 2573
    :goto_f
    return v2

    .line 2571
    :cond_10
    const-string v2, "SourceId"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2573
    .local v1, remoteUrl:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/google/android/music/MusicPlaybackService;->getPreviewPlayTypeForUrl(Ljava/lang/String;)I

    move-result v2

    monitor-exit v3

    goto :goto_f

    .line 2574
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #remoteUrl:Ljava/lang/String;
    :catchall_20
    move-exception v2

    monitor-exit v3
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v2
.end method

.method public getQueuePosition()I
    .registers 2

    .prologue
    .line 2391
    iget v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I

    return v0
.end method

.method public getRating()I
    .registers 4

    .prologue
    .line 2484
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v2

    .line 2486
    :try_start_3
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_10

    .line 2487
    const/4 v1, 0x0

    monitor-exit v2

    .line 2489
    :goto_f
    return v1

    :cond_10
    const-string v1, "Rating"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    monitor-exit v2

    goto :goto_f

    .line 2490
    .end local v0           #cursor:Landroid/database/Cursor;
    :catchall_1c
    move-exception v1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public getRepeatMode()I
    .registers 2

    .prologue
    .line 2373
    iget v0, p0, Lcom/google/android/music/MusicPlaybackService;->mRepeatMode:I

    return v0
.end method

.method public getShuffleMode()I
    .registers 2

    .prologue
    .line 2363
    iget v0, p0, Lcom/google/android/music/MusicPlaybackService;->mShuffleMode:I

    return v0
.end method

.method public getSongStoreId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2444
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v2

    .line 2446
    :try_start_3
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_10

    .line 2447
    const/4 v1, 0x0

    monitor-exit v2

    .line 2449
    :goto_f
    return-object v1

    :cond_10
    const-string v1, "StoreId"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    monitor-exit v2

    goto :goto_f

    .line 2450
    .end local v0           #cursor:Landroid/database/Cursor;
    :catchall_1c
    move-exception v1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public getSortableAlbumArtistName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2434
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v2

    .line 2436
    :try_start_3
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_10

    .line 2437
    const/4 v1, 0x0

    monitor-exit v2

    .line 2439
    :goto_f
    return-object v1

    :cond_10
    const-string v1, "artistSort"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    monitor-exit v2

    goto :goto_f

    .line 2440
    .end local v0           #cursor:Landroid/database/Cursor;
    :catchall_1c
    move-exception v1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public getTrackName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2474
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v2

    .line 2476
    :try_start_3
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_10

    .line 2477
    const/4 v1, 0x0

    monitor-exit v2

    .line 2479
    :goto_f
    return-object v1

    :cond_10
    const-string v1, "title"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    monitor-exit v2

    goto :goto_f

    .line 2480
    .end local v0           #cursor:Landroid/database/Cursor;
    :catchall_1c
    move-exception v1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public hasCursor()Z
    .registers 3

    .prologue
    .line 2408
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 2409
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_c
    monitor-exit v1

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    .line 2410
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 2109
    iget-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method public next(Z)V
    .registers 4
    .parameter "force"

    .prologue
    .line 2196
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2197
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/MusicPlaybackService$21;

    invoke-direct {v1, p0, p1}, Lcom/google/android/music/MusicPlaybackService$21;-><init>(Lcom/google/android/music/MusicPlaybackService;Z)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 2273
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .parameter "intent"

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mServiceInUse:Z

    .line 1159
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mMusicStub:Landroid/os/Binder;

    return-object v0
.end method

.method public onCreate()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 887
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 889
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/google/android/music/MediaButtonIntentReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaButtonReceiver:Landroid/content/ComponentName;

    .line 892
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    .line 893
    invoke-static {p0}, Lcom/google/android/music/AudioManagerCompat;->getAudioManagerCompat(Landroid/content/Context;)Lcom/google/android/music/AudioManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioManagerCompat:Lcom/google/android/music/AudioManagerCompat;

    .line 894
    invoke-static {p0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 895
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_149

    move v0, v1

    :goto_3a
    iput-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mIsLandscape:Z

    .line 898
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 899
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaButtonReceiver:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 900
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 902
    new-instance v3, Lcom/google/android/music/RemoteControlClientCompat;

    sget-object v4, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    invoke-virtual {v4}, Lcom/google/android/music/Worker;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/google/android/music/RemoteControlClientCompat;-><init>(Landroid/app/PendingIntent;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/google/android/music/MusicPlaybackService;->mRemoteControlClient:Lcom/google/android/music/RemoteControlClientCompat;

    .line 904
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->updateRemoteControlTransportControlFlags()V

    .line 906
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->registerExternalStorageListener()V

    .line 909
    new-instance v0, Lcom/google/android/music/AsyncMediaPlayer;

    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService;->mServiceHooks:Lcom/google/android/music/MusicPlaybackService$ServiceHooks;

    invoke-direct {v0, p0, v3}, Lcom/google/android/music/AsyncMediaPlayer;-><init>(Landroid/content/Context;Lcom/google/android/music/MusicPlaybackService$ServiceHooks;)V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/AsyncMediaPlayer;

    .line 911
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 912
    const-string v3, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 913
    const-string v3, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 914
    const-string v3, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 915
    const-string v3, "com.android.music.musicservicecommand.next"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 916
    const-string v3, "com.android.music.musicservicecommand.previous"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 917
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/google/android/music/MusicPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 919
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 920
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 921
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 922
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService;->mOrientationMonitor:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/google/android/music/MusicPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 924
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 925
    const-string v3, "com.android.music.sharedpreviewmetadataupdate"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 926
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService;->mSharedPreviewPlayListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/google/android/music/MusicPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 928
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 929
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".mWakeLock"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/MusicPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 930
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 931
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".mAsyncWakeLock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 935
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 936
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1770

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 938
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mDownloadManagerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/music/MusicPlaybackService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 940
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.music.STORE_SERVICE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mStoreConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/music/MusicPlaybackService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 943
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 944
    const v2, 0x7f040045

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 945
    const v2, 0x7f10002d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_139

    .line 946
    iput-boolean v1, p0, Lcom/google/android/music/MusicPlaybackService;->mNotificationHasButtons:Z

    .line 949
    :cond_139
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 950
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/MusicPlaybackService$9;

    invoke-direct {v1, p0}, Lcom/google/android/music/MusicPlaybackService$9;-><init>(Lcom/google/android/music/MusicPlaybackService;)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 961
    return-void

    :cond_149
    move v0, v2

    .line 895
    goto/16 :goto_3a
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 966
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 967
    const-string v1, "MediaPlaybackService"

    const-string v2, "Service being destroyed while still playing."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :cond_e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 971
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getAudioSessionId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 972
    const-string v1, "android.media.extra.PACKAGE_NAME"

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 973
    invoke-virtual {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 974
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/AsyncMediaPlayer;

    invoke-virtual {v1}, Lcom/google/android/music/AsyncMediaPlayer;->release()V

    .line 976
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 977
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioManagerCompat:Lcom/google/android/music/AudioManagerCompat;

    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mRemoteControlClient:Lcom/google/android/music/RemoteControlClientCompat;

    invoke-virtual {v1, v2}, Lcom/google/android/music/AudioManagerCompat;->unregisterRemoteControlClient(Lcom/google/android/music/RemoteControlClientCompat;)V

    .line 980
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 981
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 983
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->clearCursor()V

    .line 984
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    invoke-virtual {v1, v3}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->setMediaList(Lcom/google/android/music/medialist/SongList;)V

    .line 986
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/google/android/music/MusicPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 987
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mOrientationMonitor:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/google/android/music/MusicPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 988
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mSharedPreviewPlayListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/google/android/music/MusicPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 990
    iget-boolean v1, p0, Lcom/google/android/music/MusicPlaybackService;->mScreenReceiverRegistered:Z

    if-eqz v1, :cond_6a

    .line 991
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/google/android/music/MusicPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 992
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/music/MusicPlaybackService;->mScreenReceiverRegistered:Z

    .line 994
    :cond_6a
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_75

    .line 995
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/google/android/music/MusicPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 996
    iput-object v3, p0, Lcom/google/android/music/MusicPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 998
    :cond_75
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 999
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mDownloadManagerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/google/android/music/MusicPlaybackService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1000
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mStoreConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/google/android/music/MusicPlaybackService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1001
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 1002
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1003
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mServiceInUse:Z

    .line 1166
    return-void
.end method

.method public declared-synchronized onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 4
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 1007
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->updateBroadcastReceiversForLockScreenActivity()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 1008
    monitor-exit p0

    return-void

    .line 1007
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7
    .parameter "startIntent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 1170
    iput p3, p0, Lcom/google/android/music/MusicPlaybackService;->mServiceStartId:I

    .line 1171
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1173
    move-object v0, p1

    .line 1178
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1179
    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v2, Lcom/google/android/music/MusicPlaybackService$12;

    invoke-direct {v2, p0, v0}, Lcom/google/android/music/MusicPlaybackService$12;-><init>(Lcom/google/android/music/MusicPlaybackService;Landroid/content/Intent;)V

    invoke-static {v1, v2}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsyncWithCallback(Lcom/google/android/music/Worker;Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 1242
    if-eqz p1, :cond_28

    sget-object v1, Lcom/google/android/music/MediaButtonIntentReceiver;->RELEASE_RECEIVER_LOCK:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1244
    sget-object v1, Lcom/google/android/music/MediaButtonIntentReceiver;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1246
    :cond_28
    const/4 v1, 0x1

    return v1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 7
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 1251
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/music/MusicPlaybackService;->mServiceInUse:Z

    .line 1253
    invoke-direct {p0, v4}, Lcom/google/android/music/MusicPlaybackService;->saveQueue(Z)V

    .line 1255
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_11

    iget-boolean v1, p0, Lcom/google/android/music/MusicPlaybackService;->mPausedByTransientLossOfFocus:Z

    if-eqz v1, :cond_12

    .line 1272
    :cond_11
    :goto_11
    return v4

    .line 1264
    :cond_12
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    invoke-virtual {v1}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->isValid()Z

    move-result v1

    if-nez v1, :cond_22

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1265
    :cond_22
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1266
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1770

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_11

    .line 1271
    .end local v0           #msg:Landroid/os/Message;
    :cond_30
    iget v1, p0, Lcom/google/android/music/MusicPlaybackService;->mServiceStartId:I

    invoke-virtual {p0, v1}, Lcom/google/android/music/MusicPlaybackService;->stopSelf(I)V

    goto :goto_11
.end method

.method public openAndPlay(Lcom/google/android/music/medialist/SongList;I)V
    .registers 5
    .parameter "medialist"
    .parameter "position"

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaButtonReceiver:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 1545
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioManagerCompat:Lcom/google/android/music/AudioManagerCompat;

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mRemoteControlClient:Lcom/google/android/music/RemoteControlClientCompat;

    invoke-virtual {v0, v1}, Lcom/google/android/music/AudioManagerCompat;->registerRemoteControlClient(Lcom/google/android/music/RemoteControlClientCompat;)V

    .line 1549
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {p1, v0}, Lcom/google/android/music/medialist/SongList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I

    if-ne p2, v0, :cond_21

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1590
    :goto_20
    return-void

    .line 1553
    :cond_21
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->clearCursor()V

    .line 1555
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1556
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/MusicPlaybackService$15;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/music/MusicPlaybackService$15;-><init>(Lcom/google/android/music/MusicPlaybackService;Lcom/google/android/music/medialist/SongList;I)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    goto :goto_20
.end method

.method public pause()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 2082
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getAudioId()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v0

    .line 2083
    if-eqz v0, :cond_4b

    .line 2084
    const v1, 0x12112

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/music/dl/ContentIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/AsyncMediaPlayer;

    invoke-virtual {v4}, Lcom/google/android/music/AsyncMediaPlayer;->getRemoteSongId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2086
    const-string v1, "MediaPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event logging MUSIC_PAUSE_PLAYBACK_REQUESTED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/music/dl/ContentIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/AsyncMediaPlayer;

    invoke-virtual {v2}, Lcom/google/android/music/AsyncMediaPlayer;->getRemoteSongId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    :cond_4b
    monitor-enter p0

    .line 2091
    :try_start_4c
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2092
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2093
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 2094
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/AsyncMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/AsyncMediaPlayer;->pause()V

    .line 2095
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->gotoIdleState()V

    .line 2096
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mIsSupposedToBePlaying:Z

    .line 2097
    const-string v0, "com.android.music.playstatechanged"

    invoke-direct {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2098
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->saveBookmarkIfNeeded()V

    .line 2100
    :cond_71
    monitor-exit p0

    .line 2101
    return-void

    .line 2100
    :catchall_73
    move-exception v0

    monitor-exit p0
    :try_end_75
    .catchall {:try_start_4c .. :try_end_75} :catchall_73

    throw v0
.end method

.method public play()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1844
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1846
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaButtonReceiver:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 1847
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioManagerCompat:Lcom/google/android/music/AudioManagerCompat;

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mRemoteControlClient:Lcom/google/android/music/RemoteControlClientCompat;

    invoke-virtual {v0, v1}, Lcom/google/android/music/AudioManagerCompat;->registerRemoteControlClient(Lcom/google/android/music/RemoteControlClientCompat;)V

    .line 1849
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1850
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/MusicPlaybackService$18;

    invoke-direct {v1, p0}, Lcom/google/android/music/MusicPlaybackService$18;-><init>(Lcom/google/android/music/MusicPlaybackService;)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 1886
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1887
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1888
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->updateNotification()V

    .line 1890
    iget-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mIsSupposedToBePlaying:Z

    if-nez v0, :cond_40

    .line 1891
    iput-boolean v3, p0, Lcom/google/android/music/MusicPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1892
    const-string v0, "com.android.music.playstatechanged"

    invoke-direct {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1894
    :cond_40
    return-void
.end method

.method public position()J
    .registers 3

    .prologue
    .line 2604
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/AsyncMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/AsyncMediaPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2605
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/AsyncMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/AsyncMediaPlayer;->position()J

    move-result-wide v0

    .line 2607
    :goto_e
    return-wide v0

    :cond_f
    iget-wide v0, p0, Lcom/google/android/music/MusicPlaybackService;->mReloadedQueueSeekPos:J

    goto :goto_e
.end method

.method public prev()V
    .registers 3

    .prologue
    .line 2143
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2144
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/MusicPlaybackService$20;

    invoke-direct {v1, p0}, Lcom/google/android/music/MusicPlaybackService$20;-><init>(Lcom/google/android/music/MusicPlaybackService;)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 2190
    return-void
.end method

.method public registerExternalStorageListener()V
    .registers 3

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_24

    .line 1313
    new-instance v0, Lcom/google/android/music/MusicPlaybackService$14;

    invoke-direct {v0, p0}, Lcom/google/android/music/MusicPlaybackService$14;-><init>(Lcom/google/android/music/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 1332
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1333
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1334
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1335
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1336
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/music/MusicPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1338
    :cond_24
    return-void
.end method

.method public seek(J)J
    .registers 5
    .parameter "pos"

    .prologue
    .line 2616
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/AsyncMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/AsyncMediaPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2617
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_10

    const-wide/16 p1, 0x0

    .line 2618
    :cond_10
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/AsyncMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/AsyncMediaPlayer;->duration()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_20

    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/AsyncMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/AsyncMediaPlayer;->duration()J

    move-result-wide p1

    .line 2619
    :cond_20
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/AsyncMediaPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/AsyncMediaPlayer;->seek(J)J

    move-result-wide v0

    .line 2621
    :goto_26
    return-wide v0

    :cond_27
    const-wide/16 v0, -0x1

    goto :goto_26
.end method

.method public setQueuePosition(I)V
    .registers 3
    .parameter "pos"

    .prologue
    .line 2399
    monitor-enter p0

    .line 2400
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->stop(Z)V

    .line 2401
    iput p1, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I

    .line 2402
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->openCurrentAndPlay(Z)V

    .line 2403
    monitor-exit p0

    .line 2404
    return-void

    .line 2403
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public setRating(I)V
    .registers 6
    .parameter "rating"

    .prologue
    .line 2494
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getAudioId()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v0

    .line 2495
    .local v0, songId:Lcom/google/android/music/dl/ContentIdentifier;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/music/dl/ContentIdentifier;->isDefaultDomain()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2496
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v2

    invoke-static {v1, v2, v3, p1}, Lcom/google/android/music/store/MusicContent$XAudio;->setRating(Landroid/content/ContentResolver;JI)V

    .line 2498
    :cond_17
    return-void
.end method

.method public setRepeatMode(I)V
    .registers 3
    .parameter "repeatmode"

    .prologue
    .line 2367
    monitor-enter p0

    .line 2368
    :try_start_1
    iput p1, p0, Lcom/google/android/music/MusicPlaybackService;->mRepeatMode:I

    .line 2369
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->saveQueue(Z)V

    .line 2370
    monitor-exit p0

    .line 2371
    return-void

    .line 2370
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public setShuffleMode(I)V
    .registers 4
    .parameter "shufflemode"

    .prologue
    .line 2338
    monitor-enter p0

    .line 2339
    :try_start_1
    iget v0, p0, Lcom/google/android/music/MusicPlaybackService;->mShuffleMode:I

    if-ne v0, p1, :cond_f

    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->length()I

    move-result v0

    if-lez v0, :cond_f

    .line 2340
    monitor-exit p0

    .line 2361
    :goto_e
    return-void

    .line 2342
    :cond_f
    iput p1, p0, Lcom/google/android/music/MusicPlaybackService;->mShuffleMode:I

    .line 2344
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/MusicPlaybackService$22;

    invoke-direct {v1, p0}, Lcom/google/android/music/MusicPlaybackService$22;-><init>(Lcom/google/android/music/MusicPlaybackService;)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 2360
    monitor-exit p0

    goto :goto_e

    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method setUIVisible(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 1897
    iput-boolean p1, p0, Lcom/google/android/music/MusicPlaybackService;->mUIVisible:Z

    .line 1898
    if-eqz p1, :cond_12

    .line 1899
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mMediaButtonReceiver:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 1900
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mAudioManagerCompat:Lcom/google/android/music/AudioManagerCompat;

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mRemoteControlClient:Lcom/google/android/music/RemoteControlClientCompat;

    invoke-virtual {v0, v1}, Lcom/google/android/music/AudioManagerCompat;->registerRemoteControlClient(Lcom/google/android/music/RemoteControlClientCompat;)V

    .line 1902
    :cond_12
    if-eqz p1, :cond_22

    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isHoneycombOrGreater()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1903
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->stopForeground(Z)V

    .line 1904
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService;->mIsNotificationShowing:Z

    .line 1912
    :cond_21
    :goto_21
    return-void

    .line 1905
    :cond_22
    if-nez p1, :cond_21

    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1906
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/MusicPlaybackService$19;

    invoke-direct {v1, p0}, Lcom/google/android/music/MusicPlaybackService$19;-><init>(Lcom/google/android/music/MusicPlaybackService;)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    goto :goto_21
.end method

.method public stop()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 1915
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService;->getAudioId()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v0

    .line 1916
    if-eqz v0, :cond_4b

    .line 1917
    const v1, 0x12111

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/google/android/music/dl/ContentIdentifier;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/AsyncMediaPlayer;

    invoke-virtual {v3}, Lcom/google/android/music/AsyncMediaPlayer;->getRemoteSongId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1919
    const-string v1, "MediaPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event logging MUSIC_STOP_PLAYBACK_REQUESTED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/music/dl/ContentIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/AsyncMediaPlayer;

    invoke-virtual {v2}, Lcom/google/android/music/AsyncMediaPlayer;->getRemoteSongId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    :cond_4b
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mNotificationCanceller:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1924
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mNotificationCanceller:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1925
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1926
    const-string v2, "cancel_notification"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1927
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1928
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService;->mNotificationCanceller:Landroid/os/Handler;

    const-wide/32 v2, 0x112a880

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1929
    invoke-direct {p0, v5}, Lcom/google/android/music/MusicPlaybackService;->stop(Z)V

    .line 1930
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/AsyncMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/AsyncMediaPlayer;->release()V

    .line 1931
    const-string v0, "com.android.music.playstatechanged"

    invoke-direct {p0, v0}, Lcom/google/android/music/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1934
    :try_start_7c
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;

    if-eqz v0, :cond_85

    .line 1935
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;

    invoke-interface {v0}, Lcom/google/android/music/dl/IDownloadManager;->stop()V
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_85} :catch_89

    .line 1940
    :cond_85
    :goto_85
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService;->loadCurrent()Z

    .line 1941
    return-void

    .line 1937
    :catch_89
    move-exception v0

    .line 1938
    const-string v1, "MediaPlaybackService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_85
.end method
