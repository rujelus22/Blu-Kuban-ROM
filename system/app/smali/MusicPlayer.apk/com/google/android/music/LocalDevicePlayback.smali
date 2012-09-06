.class public final Lcom/google/android/music/LocalDevicePlayback;
.super Lcom/google/android/music/DevicePlayback;
.source "LocalDevicePlayback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;,
        Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;
    }
.end annotation


# instance fields
.field private final LOGV:Z

.field private mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioId:Lcom/google/android/music/dl/ContentIdentifier;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCurrentSongMetaDataCursor:Ljava/util/concurrent/atomic/AtomicReference;
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

.field private mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;

.field private mDownloadManagerSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

.field private mFuture:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSupposedToBePlaying:Z

.field private mLastPlayQueueGroupId:J

.field private mLastPlayQueueGroupPosition:I

.field private volatile mLastUserInteractionTime:J

.field private mListItemId:J

.field private mMediaList:Lcom/google/android/music/medialist/SongList;

.field private mMediaMountedCount:I

.field private mMediaplayerHandler:Landroid/os/Handler;

.field private mNextPlayPos:I

.field private mNextPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

.field private mOpenFailedCounter:I

.field private mPausedByTransientLossOfFocus:Z

.field private final mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

.field private mPlayPos:I

.field private mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

.field private mPreviewDuration:J

.field private mPreviewPlayType:I

.field private mPreviewUrl:Ljava/lang/String;

.field private mQueueIsSaveable:Z

.field private final mRand:Lcom/google/android/music/StrictShuffler;

.field private mReloadedQueueSeekPos:J

.field private mRepeatMode:I

.field mServiceHooks:Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;

.field private mSharedPreviewPlayListener:Landroid/content/BroadcastReceiver;

.field private mShuffleMode:I

.field private mStoreSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

.field private mStoreService:Lcom/google/android/music/store/IStoreService;

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/google/android/music/MusicPlaybackService;)V
    .registers 10
    .parameter "service"

    .prologue
    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 991
    invoke-direct {p0, p1}, Lcom/google/android/music/DevicePlayback;-><init>(Lcom/google/android/music/MusicPlaybackService;)V

    .line 79
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "artist"

    aput-object v1, v0, v4

    const-string v1, "album"

    aput-object v1, v0, v7

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

    const/16 v1, 0x10

    const-string v2, "domainParam"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mCursorCols:[Ljava/lang/String;

    .line 148
    iput v3, p0, Lcom/google/android/music/LocalDevicePlayback;->mShuffleMode:I

    .line 149
    iput v3, p0, Lcom/google/android/music/LocalDevicePlayback;->mRepeatMode:I

    .line 150
    iput v3, p0, Lcom/google/android/music/LocalDevicePlayback;->mMediaMountedCount:I

    .line 151
    iput-object v5, p0, Lcom/google/android/music/LocalDevicePlayback;->mMediaList:Lcom/google/android/music/medialist/SongList;

    .line 153
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mFuture:Ljava/util/LinkedList;

    .line 154
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mHistory:Ljava/util/LinkedList;

    .line 155
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mCurrentSongMetaDataCursor:Ljava/util/concurrent/atomic/AtomicReference;

    .line 156
    iput v6, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I

    .line 157
    iput v6, p0, Lcom/google/android/music/LocalDevicePlayback;->mNextPlayPos:I

    .line 159
    iput-object v5, p0, Lcom/google/android/music/LocalDevicePlayback;->mAudioId:Lcom/google/android/music/dl/ContentIdentifier;

    .line 160
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mListItemId:J

    .line 162
    const-string v0, "MediaPlaybackService"

    invoke-static {v0, v7}, Lcom/google/android/music/log/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/LocalDevicePlayback;->LOGV:Z

    .line 163
    new-instance v0, Lcom/google/android/music/StrictShuffler;

    invoke-direct {v0}, Lcom/google/android/music/StrictShuffler;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mRand:Lcom/google/android/music/StrictShuffler;

    .line 164
    iput v3, p0, Lcom/google/android/music/LocalDevicePlayback;->mOpenFailedCounter:I

    .line 166
    iput-boolean v3, p0, Lcom/google/android/music/LocalDevicePlayback;->mPausedByTransientLossOfFocus:Z

    .line 168
    iput-object v5, p0, Lcom/google/android/music/LocalDevicePlayback;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 170
    iput-boolean v3, p0, Lcom/google/android/music/LocalDevicePlayback;->mIsSupposedToBePlaying:Z

    .line 171
    iput-boolean v4, p0, Lcom/google/android/music/LocalDevicePlayback;->mQueueIsSaveable:Z

    .line 172
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mReloadedQueueSeekPos:J

    .line 180
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPreviewDuration:J

    .line 181
    iput v4, p0, Lcom/google/android/music/LocalDevicePlayback;->mPreviewPlayType:I

    .line 184
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mLastUserInteractionTime:J

    .line 189
    new-instance v0, Lcom/google/android/music/LocalDevicePlayback$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/LocalDevicePlayback$1;-><init>(Lcom/google/android/music/LocalDevicePlayback;)V

    iput-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mSharedPreviewPlayListener:Landroid/content/BroadcastReceiver;

    .line 240
    new-instance v0, Lcom/google/android/music/LocalDevicePlayback$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/LocalDevicePlayback$2;-><init>(Lcom/google/android/music/LocalDevicePlayback;)V

    iput-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mServiceHooks:Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;

    .line 461
    new-instance v0, Lcom/google/android/music/LocalDevicePlayback$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/LocalDevicePlayback$3;-><init>(Lcom/google/android/music/LocalDevicePlayback;)V

    iput-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mMediaplayerHandler:Landroid/os/Handler;

    .line 954
    new-instance v0, Lcom/google/android/music/LocalDevicePlayback$4;

    invoke-direct {v0, p0}, Lcom/google/android/music/LocalDevicePlayback$4;-><init>(Lcom/google/android/music/LocalDevicePlayback;)V

    iput-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 960
    new-instance v0, Lcom/google/android/music/LocalDevicePlayback$5;

    invoke-direct {v0, p0}, Lcom/google/android/music/LocalDevicePlayback$5;-><init>(Lcom/google/android/music/LocalDevicePlayback;)V

    iput-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mDownloadManagerSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    .line 980
    new-instance v0, Lcom/google/android/music/LocalDevicePlayback$6;

    invoke-direct {v0, p0}, Lcom/google/android/music/LocalDevicePlayback$6;-><init>(Lcom/google/android/music/LocalDevicePlayback;)V

    iput-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mStoreSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    .line 992
    new-instance v0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mService:Lcom/google/android/music/MusicPlaybackService;

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;-><init>(Lcom/google/android/music/LocalDevicePlayback;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    .line 993
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/LocalDevicePlayback;Ljava/lang/String;IJ)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/music/LocalDevicePlayback;->setPreviewValues(Ljava/lang/String;IJ)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/music/LocalDevicePlayback;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/music/LocalDevicePlayback;->onSongChanged()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/music/LocalDevicePlayback;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/store/IStoreService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mStoreService:Lcom/google/android/music/store/IStoreService;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/android/music/LocalDevicePlayback;Lcom/google/android/music/store/IStoreService;)Lcom/google/android/music/store/IStoreService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/music/LocalDevicePlayback;->mStoreService:Lcom/google/android/music/store/IStoreService;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/medialist/SongList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mMediaList:Lcom/google/android/music/medialist/SongList;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/android/music/LocalDevicePlayback;Lcom/google/android/music/medialist/SongList;)Lcom/google/android/music/medialist/SongList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/music/LocalDevicePlayback;->mMediaList:Lcom/google/android/music/medialist/SongList;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/google/android/music/LocalDevicePlayback;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/google/android/music/LocalDevicePlayback;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/google/android/music/LocalDevicePlayback;->mIsSupposedToBePlaying:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/google/android/music/LocalDevicePlayback;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/music/LocalDevicePlayback;->next(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/music/LocalDevicePlayback;ZZZ)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/LocalDevicePlayback;->openCurrentAndNext(ZZZ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/music/LocalDevicePlayback;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I

    return v0
.end method

.method static synthetic access$1602(Lcom/google/android/music/LocalDevicePlayback;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I

    return p1
.end method

.method static synthetic access$1610(Lcom/google/android/music/LocalDevicePlayback;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I

    return v0
.end method

.method static synthetic access$1700(Lcom/google/android/music/LocalDevicePlayback;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mNextPlayPos:I

    return v0
.end method

.method static synthetic access$1702(Lcom/google/android/music/LocalDevicePlayback;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/google/android/music/LocalDevicePlayback;->mNextPlayPos:I

    return p1
.end method

.method static synthetic access$1800(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/music/LocalDevicePlayback;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mLastPlayQueueGroupId:J

    return-wide v0
.end method

.method static synthetic access$1902(Lcom/google/android/music/LocalDevicePlayback;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/google/android/music/LocalDevicePlayback;->mLastPlayQueueGroupId:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/google/android/music/LocalDevicePlayback;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/music/LocalDevicePlayback;->onPlaybackFailure()V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/music/LocalDevicePlayback;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mLastPlayQueueGroupPosition:I

    return v0
.end method

.method static synthetic access$2002(Lcom/google/android/music/LocalDevicePlayback;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/google/android/music/LocalDevicePlayback;->mLastPlayQueueGroupPosition:I

    return p1
.end method

.method static synthetic access$2100(Lcom/google/android/music/LocalDevicePlayback;Lcom/google/android/music/dl/ContentIdentifier;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/music/LocalDevicePlayback;->refreshCursor(Lcom/google/android/music/dl/ContentIdentifier;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/google/android/music/LocalDevicePlayback;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mListItemId:J

    return-wide v0
.end method

.method static synthetic access$2202(Lcom/google/android/music/LocalDevicePlayback;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/google/android/music/LocalDevicePlayback;->mListItemId:J

    return-wide p1
.end method

.method static synthetic access$2300(Lcom/google/android/music/LocalDevicePlayback;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/music/LocalDevicePlayback;->setNextTrack()V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/android/music/LocalDevicePlayback;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mRepeatMode:I

    return v0
.end method

.method static synthetic access$2500(Lcom/google/android/music/LocalDevicePlayback;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/music/LocalDevicePlayback;->openCurrentAndPlay(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/android/music/LocalDevicePlayback;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/music/LocalDevicePlayback;->pause(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/android/music/LocalDevicePlayback;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPausedByTransientLossOfFocus:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/google/android/music/LocalDevicePlayback;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/google/android/music/LocalDevicePlayback;->mPausedByTransientLossOfFocus:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/dl/ContentIdentifier;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mAudioId:Lcom/google/android/music/dl/ContentIdentifier;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/google/android/music/LocalDevicePlayback;Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/ContentIdentifier;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/music/LocalDevicePlayback;->mAudioId:Lcom/google/android/music/dl/ContentIdentifier;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/google/android/music/LocalDevicePlayback;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/google/android/music/LocalDevicePlayback;->LOGV:Z

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/music/LocalDevicePlayback;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/music/LocalDevicePlayback;->onQueueChanged()V

    return-void
.end method

.method static synthetic access$3100(Lcom/google/android/music/LocalDevicePlayback;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/music/LocalDevicePlayback;->reloadQueue()V

    return-void
.end method

.method static synthetic access$3200(Lcom/google/android/music/LocalDevicePlayback;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/google/android/music/LocalDevicePlayback;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/music/LocalDevicePlayback;->saveQueue(Z)V

    return-void
.end method

.method static synthetic access$3402(Lcom/google/android/music/LocalDevicePlayback;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/google/android/music/LocalDevicePlayback;->mQueueIsSaveable:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/google/android/music/LocalDevicePlayback;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/music/LocalDevicePlayback;->closeExternalStorageFiles(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3608(Lcom/google/android/music/LocalDevicePlayback;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mMediaMountedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mMediaMountedCount:I

    return v0
.end method

.method static synthetic access$3700(Lcom/google/android/music/LocalDevicePlayback;)Landroid/content/SharedPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/music/LocalDevicePlayback;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/google/android/music/medialist/SongList;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    invoke-static {p0}, Lcom/google/android/music/LocalDevicePlayback;->isPlayQueue(Lcom/google/android/music/medialist/SongList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/google/android/music/LocalDevicePlayback;Lcom/google/android/music/medialist/SongList;I)Lcom/google/android/music/store/PlayQueueInsertResult;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/LocalDevicePlayback;->queueAndPlay(Lcom/google/android/music/medialist/SongList;I)Lcom/google/android/music/store/PlayQueueInsertResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/music/LocalDevicePlayback;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/music/LocalDevicePlayback;->onOpenStarted()V

    return-void
.end method

.method static synthetic access$4000(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/medialist/SongList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/music/LocalDevicePlayback;->createPlayQueueSongList()Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4100(Lcom/google/android/music/LocalDevicePlayback;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mOpenFailedCounter:I

    return v0
.end method

.method static synthetic access$4102(Lcom/google/android/music/LocalDevicePlayback;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/google/android/music/LocalDevicePlayback;->mOpenFailedCounter:I

    return p1
.end method

.method static synthetic access$4108(Lcom/google/android/music/LocalDevicePlayback;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mOpenFailedCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mOpenFailedCounter:I

    return v0
.end method

.method static synthetic access$4200(Lcom/google/android/music/LocalDevicePlayback;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mReloadedQueueSeekPos:J

    return-wide v0
.end method

.method static synthetic access$4202(Lcom/google/android/music/LocalDevicePlayback;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/google/android/music/LocalDevicePlayback;->mReloadedQueueSeekPos:J

    return-wide p1
.end method

.method static synthetic access$4300(Lcom/google/android/music/LocalDevicePlayback;)Ljava/util/LinkedList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mFuture:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/google/android/music/LocalDevicePlayback;)Ljava/util/LinkedList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mHistory:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/google/android/music/LocalDevicePlayback;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/music/LocalDevicePlayback;->shouldPlayInRandomOrder()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/StrictShuffler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mRand:Lcom/google/android/music/StrictShuffler;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/google/android/music/LocalDevicePlayback;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/music/LocalDevicePlayback;->fillShuffleList()V

    return-void
.end method

.method static synthetic access$4800(Lcom/google/android/music/LocalDevicePlayback;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/music/LocalDevicePlayback;->dumpPastPresentAndFuture()V

    return-void
.end method

.method static synthetic access$4900(Lcom/google/android/music/LocalDevicePlayback;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/music/LocalDevicePlayback;->saveBookmarkIfNeeded()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/dl/IDownloadManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/google/android/music/LocalDevicePlayback;ZZZ)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/LocalDevicePlayback;->openCurrentAndPrepareToPlaySync(ZZZ)V

    return-void
.end method

.method static synthetic access$502(Lcom/google/android/music/LocalDevicePlayback;Lcom/google/android/music/dl/IDownloadManager;)Lcom/google/android/music/dl/IDownloadManager;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/music/LocalDevicePlayback;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/google/android/music/LocalDevicePlayback;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/music/LocalDevicePlayback;->isUsingPlayQueue()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Lcom/google/android/music/LocalDevicePlayback;Lcom/google/android/music/medialist/SongList;J)Lcom/google/android/music/store/PlayQueueAddResult;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/LocalDevicePlayback;->queue(Lcom/google/android/music/medialist/SongList;J)Lcom/google/android/music/store/PlayQueueAddResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5300(Lcom/google/android/music/LocalDevicePlayback;ZZ)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/LocalDevicePlayback;->getNextPlayPosition(ZZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Lcom/google/android/music/LocalDevicePlayback;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/music/LocalDevicePlayback;->tryNext()V

    return-void
.end method

.method static synthetic access$5500(Lcom/google/android/music/LocalDevicePlayback;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/music/LocalDevicePlayback;->pauseSync(Z)V

    return-void
.end method

.method static synthetic access$5600(Lcom/google/android/music/LocalDevicePlayback;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/music/LocalDevicePlayback;->stop(Z)V

    return-void
.end method

.method static synthetic access$5700(Lcom/google/android/music/LocalDevicePlayback;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mShuffleMode:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/music/LocalDevicePlayback;)[Lcom/google/android/music/dl/ContentIdentifier;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/music/LocalDevicePlayback;->getNextSongs()[Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/music/LocalDevicePlayback;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mMediaplayerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/player/AsyncMediaPlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mNextPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/android/music/LocalDevicePlayback;Lcom/google/android/music/player/AsyncMediaPlayer;)Lcom/google/android/music/player/AsyncMediaPlayer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/music/LocalDevicePlayback;->mNextPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/player/AsyncMediaPlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/android/music/LocalDevicePlayback;Lcom/google/android/music/player/AsyncMediaPlayer;)Lcom/google/android/music/player/AsyncMediaPlayer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

    return-object p1
.end method

.method private acquireAsyncLockAndClearMediaList()Lcom/google/android/music/medialist/SongList;
    .registers 4

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mMediaList:Lcom/google/android/music/medialist/SongList;

    .line 1574
    .local v0, currentList:Lcom/google/android/music/medialist/SongList;
    invoke-direct {p0}, Lcom/google/android/music/LocalDevicePlayback;->clearCursor()V

    .line 1576
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1577
    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v2, Lcom/google/android/music/LocalDevicePlayback$14;

    invoke-direct {v2, p0}, Lcom/google/android/music/LocalDevicePlayback$14;-><init>(Lcom/google/android/music/LocalDevicePlayback;)V

    invoke-static {v1, v2}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 1586
    return-object v0
.end method

.method private clearCursor()V
    .registers 5

    .prologue
    .line 1153
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback;->mCurrentSongMetaDataCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v2

    .line 1154
    :try_start_3
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mCurrentSongMetaDataCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 1155
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1d

    .line 1156
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mCurrentSongMetaDataCursor:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1158
    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v3, Lcom/google/android/music/LocalDevicePlayback$9;

    invoke-direct {v3, p0, v0}, Lcom/google/android/music/LocalDevicePlayback$9;-><init>(Lcom/google/android/music/LocalDevicePlayback;Landroid/database/Cursor;)V

    invoke-static {v1, v3}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 1164
    :cond_1d
    monitor-exit v2

    .line 1165
    return-void

    .line 1164
    .end local v0           #c:Landroid/database/Cursor;
    :catchall_1f
    move-exception v1

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method private closeExternalStorageFiles(Ljava/lang/String;)V
    .registers 3
    .parameter "storagePath"

    .prologue
    .line 1108
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/music/LocalDevicePlayback;->stop(Z)V

    .line 1109
    invoke-direct {p0}, Lcom/google/android/music/LocalDevicePlayback;->onQueueChanged()V

    .line 1110
    invoke-direct {p0}, Lcom/google/android/music/LocalDevicePlayback;->onSongChanged()V

    .line 1111
    return-void
.end method

.method private createPlayQueueSongList()Lcom/google/android/music/medialist/SongList;
    .registers 5

    .prologue
    .line 1557
    invoke-virtual {p0}, Lcom/google/android/music/LocalDevicePlayback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v0

    .line 1558
    .local v0, store:Lcom/google/android/music/store/Store;
    new-instance v1, Lcom/google/android/music/medialist/PlayQueueSongList;

    invoke-virtual {v0}, Lcom/google/android/music/store/Store;->getPlayQueuePlaylistId()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/google/android/music/medialist/PlayQueueSongList;-><init>(J)V

    return-object v1
.end method

.method private dumpPastPresentAndFuture()V
    .registers 1

    .prologue
    .line 1813
    return-void
.end method

.method private fillShuffleList()V
    .registers 12

    .prologue
    const/16 v3, 0xc8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1752
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mStoreService:Lcom/google/android/music/store/IStoreService;

    if-nez v0, :cond_9

    .line 1803
    :cond_8
    :goto_8
    return-void

    .line 1757
    :cond_9
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    invoke-virtual {v0}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->length()I

    move-result v6

    .line 1758
    if-le v6, v3, :cond_61

    move v0, v1

    .line 1760
    :goto_12
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1761
    iget-object v4, p0, Lcom/google/android/music/LocalDevicePlayback;->mFuture:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-eqz v4, :cond_25

    .line 1762
    iget-object v4, p0, Lcom/google/android/music/LocalDevicePlayback;->mFuture:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1765
    :cond_25
    iget v4, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_bc

    .line 1766
    add-int/lit8 v3, v3, -0x1

    move v5, v3

    .line 1769
    :goto_2d
    if-lez v5, :cond_8

    .line 1773
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v7

    move v4, v2

    .line 1775
    :goto_34
    if-ge v4, v5, :cond_93

    .line 1777
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback;->mRand:Lcom/google/android/music/StrictShuffler;

    invoke-virtual {v3, v6}, Lcom/google/android/music/StrictShuffler;->nextInt(I)I

    move-result v8

    .line 1779
    :try_start_3c
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    invoke-virtual {v3, v8}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->get(I)Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v3

    .line 1780
    if-eqz v3, :cond_7a

    .line 1781
    iget-object v9, p0, Lcom/google/android/music/LocalDevicePlayback;->mStoreService:Lcom/google/android/music/store/IStoreService;

    invoke-interface {v9, v3}, Lcom/google/android/music/store/IStoreService;->getRating(Lcom/google/android/music/dl/ContentIdentifier;)I

    move-result v3

    .line 1782
    if-eq v3, v1, :cond_51

    if-eq v3, v1, :cond_51

    const/4 v9, 0x2

    if-ne v3, v9, :cond_63

    :cond_51
    move v3, v1

    .line 1785
    :goto_52
    if-eqz v3, :cond_65

    .line 1786
    if-nez v0, :cond_5d

    .line 1787
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1775
    :cond_5d
    :goto_5d
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_34

    :cond_61
    move v0, v2

    .line 1758
    goto :goto_12

    :cond_63
    move v3, v2

    .line 1782
    goto :goto_52

    .line 1790
    :cond_65
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback;->mFuture:Ljava/util/LinkedList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_6e} :catch_6f

    goto :goto_5d

    .line 1795
    :catch_6f
    move-exception v3

    .line 1796
    const-string v8, "MediaPlaybackService"

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5d

    .line 1793
    :cond_7a
    :try_start_7a
    const-string v3, "MediaPlaybackService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not get id for position: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_92
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_92} :catch_6f

    goto :goto_5d

    .line 1799
    :cond_93
    iget-boolean v0, p0, Lcom/google/android/music/LocalDevicePlayback;->LOGV:Z

    if-eqz v0, :cond_b5

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_b5

    .line 1800
    const-string v0, "MediaPlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rated down songs added to end of shuffle list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1802
    :cond_b5
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mFuture:Ljava/util/LinkedList;

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_8

    :cond_bc
    move v5, v3

    goto/16 :goto_2d
.end method

.method private getNextPlayPosition(ZZ)I
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 2361
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v3, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    invoke-virtual {v3}, Lcom/google/android/music/Worker;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_18

    .line 2362
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getNextPlayPosition must run on the AsyncWorkers.sBackendServiceWorker handler"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2365
    :cond_18
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    invoke-virtual {v2}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->length()I

    move-result v2

    if-gtz v2, :cond_28

    .line 2366
    const-string v0, "MediaPlaybackService"

    const-string v2, "No play queue"

    invoke-static {v0, v2}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2437
    :goto_27
    return v1

    .line 2370
    :cond_28
    invoke-direct {p0}, Lcom/google/android/music/LocalDevicePlayback;->shouldPlayInRandomOrder()Z

    move-result v2

    if-eqz v2, :cond_df

    .line 2371
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback;->mFuture:Ljava/util/LinkedList;

    monitor-enter v2

    .line 2372
    :try_start_31
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    invoke-virtual {v0}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->length()I

    move-result v0

    const/16 v3, 0xc8

    if-le v0, v3, :cond_3e

    .line 2373
    invoke-direct {p0}, Lcom/google/android/music/LocalDevicePlayback;->fillShuffleList()V

    .line 2376
    :cond_3e
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mFuture:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_5a

    .line 2378
    iget v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mRepeatMode:I

    if-nez v0, :cond_51

    if-nez p1, :cond_51

    .line 2380
    monitor-exit v2

    goto :goto_27

    .line 2408
    :catchall_4e
    move-exception v0

    monitor-exit v2
    :try_end_50
    .catchall {:try_start_31 .. :try_end_50} :catchall_4e

    throw v0

    .line 2381
    :cond_51
    :try_start_51
    iget v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mRepeatMode:I

    if-eq v0, v5, :cond_57

    if-eqz p1, :cond_70

    .line 2383
    :cond_57
    invoke-direct {p0}, Lcom/google/android/music/LocalDevicePlayback;->fillShuffleList()V

    .line 2398
    :cond_5a
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mFuture:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_bf

    .line 2399
    const-string v0, "MediaPlaybackService"

    const-string v3, "Failed to fill future in getNextPlayPosition()"

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v3, v4}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2401
    monitor-exit v2

    goto :goto_27

    .line 2384
    :cond_70
    iget v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mRepeatMode:I

    if-ne v0, v4, :cond_9d

    .line 2385
    iget v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I

    if-ltz v0, :cond_7c

    .line 2386
    iget v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I

    monitor-exit v2

    goto :goto_27

    .line 2388
    :cond_7c
    const-string v0, "MediaPlaybackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "called getNext in repeat current mode, but mPlayPos wasn\'t valid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v3, v4}, Lcom/google/android/music/log/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2390
    monitor-exit v2

    goto :goto_27

    .line 2393
    :cond_9d
    const-string v0, "MediaPlaybackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Shouldn\'t be here, repeat mode is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/music/LocalDevicePlayback;->mRepeatMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v3, v4}, Lcom/google/android/music/log/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2395
    monitor-exit v2

    goto/16 :goto_27

    .line 2403
    :cond_bf
    if-eqz p2, :cond_d0

    .line 2404
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mFuture:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v2

    goto/16 :goto_27

    .line 2406
    :cond_d0
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mFuture:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v2
    :try_end_dd
    .catchall {:try_start_51 .. :try_end_dd} :catchall_4e

    goto/16 :goto_27

    .line 2411
    :cond_df
    iget v2, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I

    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    invoke-virtual {v3}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_15b

    .line 2413
    iget v2, p0, Lcom/google/android/music/LocalDevicePlayback;->mRepeatMode:I

    if-ne v2, v4, :cond_118

    .line 2414
    iget v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I

    if-ltz v0, :cond_f7

    .line 2415
    iget v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I

    goto/16 :goto_27

    .line 2417
    :cond_f7
    const-string v0, "MediaPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "called getNext in repeat current mode, but mPlayPos wasn\'t valid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v2, v3}, Lcom/google/android/music/log/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 2422
    :cond_118
    iget v2, p0, Lcom/google/android/music/LocalDevicePlayback;->mRepeatMode:I

    if-nez v2, :cond_123

    .line 2423
    if-eqz p1, :cond_121

    :goto_11e
    move v1, v0

    goto/16 :goto_27

    :cond_121
    move v0, v1

    goto :goto_11e

    .line 2424
    :cond_123
    iget v2, p0, Lcom/google/android/music/LocalDevicePlayback;->mRepeatMode:I

    if-ne v2, v5, :cond_13a

    .line 2425
    iget-wide v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mLastPlayQueueGroupId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_133

    iget v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mLastPlayQueueGroupPosition:I

    if-gez v1, :cond_136

    :cond_133
    move v1, v0

    .line 2427
    goto/16 :goto_27

    .line 2430
    :cond_136
    iget v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mLastPlayQueueGroupPosition:I

    goto/16 :goto_27

    .line 2433
    :cond_13a
    const-string v0, "MediaPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown repeat mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/music/LocalDevicePlayback;->mRepeatMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v2, v3}, Lcom/google/android/music/log/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 2437
    :cond_15b
    iget v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I

    add-int/lit8 v1, v0, 0x1

    goto/16 :goto_27
.end method

.method private getNextSongs()[Lcom/google/android/music/dl/ContentIdentifier;
    .registers 9

    .prologue
    .line 1365
    invoke-virtual {p0}, Lcom/google/android/music/LocalDevicePlayback;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "music_playlist_prefetch_count"

    const/4 v7, 0x5

    invoke-static {v5, v6, v7}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1371
    .local v4, songCount:I
    iget-object v5, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    invoke-virtual {v5}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->getDomain()Lcom/google/android/music/dl/ContentIdentifier$Domain;

    move-result-object v5

    sget-object v6, Lcom/google/android/music/dl/ContentIdentifier$Domain;->SHARED:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    if-ne v5, v6, :cond_1f

    .line 1372
    const/4 v5, 0x0

    .line 1401
    :goto_1e
    return-object v5

    .line 1374
    :cond_1f
    iget-object v6, p0, Lcom/google/android/music/LocalDevicePlayback;->mFuture:Ljava/util/LinkedList;

    monitor-enter v6

    .line 1375
    :try_start_22
    iget-object v5, p0, Lcom/google/android/music/LocalDevicePlayback;->mFuture:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v2

    .line 1376
    .local v2, length:I
    if-lez v2, :cond_54

    .line 1377
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-array v3, v5, [Lcom/google/android/music/dl/ContentIdentifier;

    .line 1378
    .local v3, ret:[Lcom/google/android/music/dl/ContentIdentifier;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_31
    array-length v5, v3

    if-ge v1, v5, :cond_4b

    .line 1379
    iget-object v7, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    iget-object v5, p0, Lcom/google/android/music/LocalDevicePlayback;->mFuture:Ljava/util/LinkedList;

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->get(I)Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v5

    aput-object v5, v3, v1

    .line 1378
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 1382
    :cond_4b
    invoke-direct {p0, v3}, Lcom/google/android/music/LocalDevicePlayback;->stripNullContentIdentifiers([Lcom/google/android/music/dl/ContentIdentifier;)[Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v5

    monitor-exit v6

    goto :goto_1e

    .line 1402
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #ret:[Lcom/google/android/music/dl/ContentIdentifier;
    :catchall_51
    move-exception v5

    monitor-exit v6
    :try_end_53
    .catchall {:try_start_22 .. :try_end_53} :catchall_51

    throw v5

    .line 1384
    .restart local v2       #length:I
    :cond_54
    :try_start_54
    iget-object v5, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    invoke-virtual {v5}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->length()I

    move-result v5

    if-ge v5, v4, :cond_82

    iget-object v5, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    invoke-virtual {v5}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->length()I

    move-result v2

    .line 1386
    :goto_62
    new-array v3, v2, [Lcom/google/android/music/dl/ContentIdentifier;

    .line 1387
    .restart local v3       #ret:[Lcom/google/android/music/dl/ContentIdentifier;
    iget v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I

    .line 1388
    .local v0, currentPos:I
    if-gez v0, :cond_69

    .line 1391
    const/4 v0, 0x0

    .line 1393
    :cond_69
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_6a
    if-ge v1, v2, :cond_84

    .line 1394
    iget-object v5, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    invoke-virtual {v5}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->length()I

    move-result v5

    if-lt v0, v5, :cond_75

    .line 1395
    const/4 v0, 0x0

    .line 1397
    :cond_75
    iget-object v5, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    invoke-virtual {v5, v0}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->get(I)Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v5

    aput-object v5, v3, v1

    .line 1398
    add-int/lit8 v0, v0, 0x1

    .line 1393
    add-int/lit8 v1, v1, 0x1

    goto :goto_6a

    .end local v0           #currentPos:I
    .end local v1           #i:I
    .end local v3           #ret:[Lcom/google/android/music/dl/ContentIdentifier;
    :cond_82
    move v2, v4

    .line 1384
    goto :goto_62

    .line 1401
    .restart local v0       #currentPos:I
    .restart local v1       #i:I
    .restart local v3       #ret:[Lcom/google/android/music/dl/ContentIdentifier;
    :cond_84
    invoke-direct {p0, v3}, Lcom/google/android/music/LocalDevicePlayback;->stripNullContentIdentifiers([Lcom/google/android/music/dl/ContentIdentifier;)[Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v5

    monitor-exit v6
    :try_end_89
    .catchall {:try_start_54 .. :try_end_89} :catchall_51

    goto :goto_1e
.end method

.method private getPreferences()Landroid/content/SharedPreferences;
    .registers 4

    .prologue
    .line 998
    invoke-virtual {p0}, Lcom/google/android/music/LocalDevicePlayback;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Music"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getPreviewPlayDurationForUrl(Ljava/lang/String;)J
    .registers 4
    .parameter "url"

    .prologue
    .line 2797
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPreviewUrl:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPreviewUrl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2798
    iget-wide v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPreviewDuration:J
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_14

    .line 2800
    :goto_f
    monitor-exit p0

    return-wide v0

    :cond_11
    const-wide/16 v0, -0x1

    goto :goto_f

    .line 2797
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getPreviewPlayTypeForUrl(Ljava/lang/String;)I
    .registers 6
    .parameter

    .prologue
    .line 2787
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPreviewUrl:Ljava/lang/String;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPreviewUrl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2788
    iget-boolean v0, p0, Lcom/google/android/music/LocalDevicePlayback;->LOGV:Z

    if-eqz v0, :cond_2b

    .line 2789
    const-string v0, "MediaPlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use preview duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/LocalDevicePlayback;->mPreviewDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2791
    :cond_2b
    iget v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPreviewPlayType:I
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_31

    .line 2793
    :goto_2d
    monitor-exit p0

    return v0

    :cond_2f
    const/4 v0, -0x1

    goto :goto_2d

    .line 2787
    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static isPlayQueue(Lcom/google/android/music/medialist/SongList;)Z
    .registers 2
    .parameter "list"

    .prologue
    .line 1631
    if-eqz p0, :cond_8

    instance-of v0, p0, Lcom/google/android/music/medialist/PlayQueueSongList;

    if-eqz v0, :cond_8

    .line 1632
    const/4 v0, 0x1

    .line 1634
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private isUsingPlayQueue()Z
    .registers 2

    .prologue
    .line 1639
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->isPlayQueue(Lcom/google/android/music/medialist/SongList;)Z

    move-result v0

    return v0
.end method

.method private loadCurrent(Z)Z
    .registers 9
    .parameter "willPlay"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    .line 1822
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    invoke-virtual {v1}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->isValid()Z

    move-result v1

    if-nez v1, :cond_d

    move v1, v2

    .line 1843
    :goto_c
    return v1

    .line 1825
    :cond_d
    invoke-direct {p0, p1}, Lcom/google/android/music/LocalDevicePlayback;->stop(Z)V

    .line 1827
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    iget v3, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I

    invoke-virtual {v1, v3}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->getAudioIdAndListItemId(I)Landroid/util/Pair;

    move-result-object v0

    .line 1829
    .local v0, audioIdAndListItemId:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/android/music/dl/ContentIdentifier;Ljava/lang/Long;>;"
    if-nez v0, :cond_1c

    move v1, v2

    .line 1830
    goto :goto_c

    .line 1833
    :cond_1c
    iget-wide v3, p0, Lcom/google/android/music/LocalDevicePlayback;->mLastPlayQueueGroupId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2d

    iget v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I

    iget v3, p0, Lcom/google/android/music/LocalDevicePlayback;->mLastPlayQueueGroupPosition:I

    if-ge v1, v3, :cond_2d

    .line 1835
    iput-wide v5, p0, Lcom/google/android/music/LocalDevicePlayback;->mLastPlayQueueGroupId:J

    .line 1836
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mLastPlayQueueGroupPosition:I

    .line 1839
    :cond_2d
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/music/dl/ContentIdentifier;

    invoke-direct {p0, v1}, Lcom/google/android/music/LocalDevicePlayback;->refreshCursor(Lcom/google/android/music/dl/ContentIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 1840
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mListItemId:J

    .line 1841
    const/4 v1, 0x1

    goto :goto_c

    :cond_43
    move v1, v2

    .line 1843
    goto :goto_c
.end method

.method private next(Z)V
    .registers 4
    .parameter "force"

    .prologue
    .line 2309
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2310
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/LocalDevicePlayback$22;

    invoke-direct {v1, p0, p1}, Lcom/google/android/music/LocalDevicePlayback$22;-><init>(Lcom/google/android/music/LocalDevicePlayback;Z)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 2349
    return-void
.end method

.method private onOpenStarted()V
    .registers 2

    .prologue
    .line 2899
    const-string v0, "com.android.music.asyncopenstart"

    invoke-virtual {p0, v0}, Lcom/google/android/music/LocalDevicePlayback;->notifyChange(Ljava/lang/String;)V

    .line 2900
    return-void
.end method

.method private onPlaybackFailure()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 2881
    iput-boolean v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mIsSupposedToBePlaying:Z

    .line 2882
    invoke-virtual {p0}, Lcom/google/android/music/LocalDevicePlayback;->notifyFailure()V

    .line 2883
    invoke-direct {p0, v0}, Lcom/google/android/music/LocalDevicePlayback;->saveQueue(Z)V

    .line 2884
    return-void
.end method

.method private onQueueChanged()V
    .registers 2

    .prologue
    .line 2887
    const-string v0, "com.android.music.queuechanged"

    invoke-virtual {p0, v0}, Lcom/google/android/music/LocalDevicePlayback;->notifyChange(Ljava/lang/String;)V

    .line 2888
    invoke-virtual {p0}, Lcom/google/android/music/LocalDevicePlayback;->playlistLoading()Z

    move-result v0

    if-nez v0, :cond_f

    .line 2889
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/music/LocalDevicePlayback;->saveQueue(Z)V

    .line 2891
    :cond_f
    return-void
.end method

.method private onSongChanged()V
    .registers 2

    .prologue
    .line 2894
    const-string v0, "com.android.music.metachanged"

    invoke-virtual {p0, v0}, Lcom/google/android/music/LocalDevicePlayback;->notifyChange(Ljava/lang/String;)V

    .line 2895
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/LocalDevicePlayback;->saveQueue(Z)V

    .line 2896
    return-void
.end method

.method private open(Lcom/google/android/music/dl/ContentIdentifier;ZZ)V
    .registers 9
    .parameter "songId"
    .parameter "fromUserAction"
    .parameter "playOnSuccess"

    .prologue
    .line 1982
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

    .line 1983
    .local v1, oldPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;
    invoke-virtual {v1}, Lcom/google/android/music/player/AsyncMediaPlayer;->getAudioSessionId()I

    move-result v0

    .line 1984
    .local v0, fxsession:I
    new-instance v2, Lcom/google/android/music/player/AsyncMediaPlayer;

    invoke-virtual {p0}, Lcom/google/android/music/LocalDevicePlayback;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/LocalDevicePlayback;->mServiceHooks:Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;

    invoke-direct {v2, v3, v4}, Lcom/google/android/music/player/AsyncMediaPlayer;-><init>(Landroid/content/Context;Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;)V

    iput-object v2, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

    .line 1985
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

    invoke-virtual {v2, v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->setAudioSessionId(I)V

    .line 1986
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

    invoke-virtual {v1}, Lcom/google/android/music/player/AsyncMediaPlayer;->getAtHomeMediaPlayerConfig()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/music/player/AsyncMediaPlayer;->setAtHomeMediaPlayerConfig(Ljava/lang/String;)V

    .line 1987
    invoke-virtual {v1}, Lcom/google/android/music/player/AsyncMediaPlayer;->release()V

    .line 1988
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

    new-instance v3, Lcom/google/android/music/LocalDevicePlayback$17;

    invoke-direct {v3, p0, p1, p3}, Lcom/google/android/music/LocalDevicePlayback$17;-><init>(Lcom/google/android/music/LocalDevicePlayback;Lcom/google/android/music/dl/ContentIdentifier;Z)V

    invoke-virtual {v2, p1, p2, v3}, Lcom/google/android/music/player/AsyncMediaPlayer;->setDataSource(Lcom/google/android/music/dl/ContentIdentifier;ZLcom/google/android/music/player/AsyncMediaPlayer$AsyncCommandCallback;)V

    .line 2012
    return-void
.end method

.method private openCurrentAndNext(ZZZ)V
    .registers 8
    .parameter "fromUserAction"
    .parameter "playOnSuccess"
    .parameter "willPlay"

    .prologue
    .line 1888
    invoke-direct {p0, p3}, Lcom/google/android/music/LocalDevicePlayback;->loadCurrent(Z)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1889
    invoke-virtual {p0}, Lcom/google/android/music/LocalDevicePlayback;->onOpenComplete()V

    .line 1903
    :goto_9
    return-void

    .line 1893
    :cond_a
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1894
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback;->mAudioId:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-direct {p0, v2, p1, p2}, Lcom/google/android/music/LocalDevicePlayback;->open(Lcom/google/android/music/dl/ContentIdentifier;ZZ)V

    .line 1896
    invoke-virtual {p0}, Lcom/google/android/music/LocalDevicePlayback;->isPodcast()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1897
    invoke-virtual {p0}, Lcom/google/android/music/LocalDevicePlayback;->getBookmark()J

    move-result-wide v0

    .line 1900
    .local v0, bookmark:J
    const-wide/16 v2, 0x1388

    sub-long v2, v0, v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/music/LocalDevicePlayback;->seek(J)J

    .line 1902
    .end local v0           #bookmark:J
    :cond_26
    invoke-direct {p0}, Lcom/google/android/music/LocalDevicePlayback;->setNextTrack()V

    goto :goto_9
.end method

.method private openCurrentAndPlay(Z)V
    .registers 4
    .parameter "fromUserAction"

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1592
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/LocalDevicePlayback$15;

    invoke-direct {v1, p0, p1}, Lcom/google/android/music/LocalDevicePlayback$15;-><init>(Lcom/google/android/music/LocalDevicePlayback;Z)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 1597
    return-void
.end method

.method private openCurrentAndPrepareToPlaySync(ZZZ)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1602
    :try_start_1
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    invoke-virtual {v1}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->length()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_5f

    move-result v1

    if-nez v1, :cond_11

    .line 1624
    if-eqz p2, :cond_10

    .line 1625
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1628
    :cond_10
    :goto_10
    return-void

    .line 1606
    :cond_11
    :try_start_11
    iget v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1a

    iget v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I

    if-gez v1, :cond_1b

    :cond_1a
    const/4 v0, 0x1

    .line 1608
    :cond_1b
    invoke-direct {p0}, Lcom/google/android/music/LocalDevicePlayback;->shouldPlayInRandomOrder()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 1609
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mFuture:Ljava/util/LinkedList;

    monitor-enter v1
    :try_end_24
    .catchall {:try_start_11 .. :try_end_24} :catchall_5f

    .line 1610
    :try_start_24
    invoke-direct {p0}, Lcom/google/android/music/LocalDevicePlayback;->fillShuffleList()V

    .line 1611
    if-eqz v0, :cond_50

    .line 1612
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mFuture:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_41

    .line 1613
    const-string v0, "MediaPlaybackService"

    const-string v2, "Failed to fill future in openCurrentAndPlaySync()"

    invoke-static {v0, v2}, Lcom/google/android/music/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_24 .. :try_end_39} :catchall_5c

    .line 1624
    if-eqz p2, :cond_10

    .line 1625
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_10

    .line 1616
    :cond_41
    :try_start_41
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mFuture:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I

    .line 1618
    :cond_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_41 .. :try_end_51} :catchall_5c

    .line 1622
    :cond_51
    :goto_51
    :try_start_51
    invoke-direct {p0, p1, p3, p3}, Lcom/google/android/music/LocalDevicePlayback;->openCurrentAndNext(ZZZ)V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_5f

    .line 1624
    if-eqz p2, :cond_10

    .line 1625
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_10

    .line 1618
    :catchall_5c
    move-exception v0

    :try_start_5d
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    :try_start_5e
    throw v0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5f

    .line 1624
    :catchall_5f
    move-exception v0

    if-eqz p2, :cond_67

    .line 1625
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_67
    throw v0

    .line 1619
    :cond_68
    if-eqz v0, :cond_51

    .line 1620
    const/4 v0, 0x0

    :try_start_6b
    iput v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I
    :try_end_6d
    .catchall {:try_start_6b .. :try_end_6d} :catchall_5f

    goto :goto_51
.end method

.method private pause(Z)V
    .registers 4
    .parameter "transientPause"

    .prologue
    .line 2155
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2156
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/LocalDevicePlayback$20;

    invoke-direct {v1, p0, p1}, Lcom/google/android/music/LocalDevicePlayback$20;-><init>(Lcom/google/android/music/LocalDevicePlayback;Z)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 2165
    return-void
.end method

.method private pauseSync(Z)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2168
    invoke-virtual {p0}, Lcom/google/android/music/LocalDevicePlayback;->getAudioId()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v0

    .line 2169
    if-eqz v0, :cond_4b

    .line 2170
    const v1, 0x12112

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/music/dl/ContentIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

    invoke-virtual {v4}, Lcom/google/android/music/player/AsyncMediaPlayer;->getRemoteSongId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2172
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

    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

    invoke-virtual {v2}, Lcom/google/android/music/player/AsyncMediaPlayer;->getRemoteSongId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/music/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2176
    :cond_4b
    monitor-enter p0

    .line 2177
    :try_start_4c
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2178
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2179
    invoke-virtual {p0}, Lcom/google/android/music/LocalDevicePlayback;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 2180
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->pause()V

    .line 2181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mIsSupposedToBePlaying:Z

    .line 2182
    invoke-virtual {p0}, Lcom/google/android/music/LocalDevicePlayback;->onPlayStateChanged()V

    .line 2183
    invoke-direct {p0}, Lcom/google/android/music/LocalDevicePlayback;->saveBookmarkIfNeeded()V

    .line 2184
    iput-boolean p1, p0, Lcom/google/android/music/LocalDevicePlayback;->mPausedByTransientLossOfFocus:Z

    .line 2191
    :cond_6e
    :goto_6e
    monitor-exit p0

    .line 2192
    return-void

    .line 2186
    :cond_70
    iget-boolean v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPausedByTransientLossOfFocus:Z

    if-eqz v0, :cond_6e

    if-nez p1, :cond_6e

    .line 2188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPausedByTransientLossOfFocus:Z

    goto :goto_6e

    .line 2191
    :catchall_7a
    move-exception v0

    monitor-exit p0
    :try_end_7c
    .catchall {:try_start_4c .. :try_end_7c} :catchall_7a

    throw v0
.end method

.method private queue(Lcom/google/android/music/medialist/SongList;J)Lcom/google/android/music/store/PlayQueueAddResult;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1714
    invoke-virtual {p1}, Lcom/google/android/music/medialist/SongList;->isDefaultDomain()Z

    move-result v3

    if-nez v3, :cond_a

    .line 1745
    :cond_9
    :goto_9
    return-object v0

    .line 1718
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/music/LocalDevicePlayback;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "SourceId"

    aput-object v5, v4, v2

    const-string v5, "SourceAccount"

    aput-object v5, v4, v1

    invoke-virtual {p1, v3, v4, v0}, Lcom/google/android/music/medialist/SongList;->getSyncMediaCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v3

    .line 1726
    if-eqz v3, :cond_9

    .line 1731
    :try_start_1f
    invoke-virtual {p0}, Lcom/google/android/music/LocalDevicePlayback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v4

    .line 1732
    iget v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mShuffleMode:I

    if-ne v0, v1, :cond_47

    move v0, v1

    .line 1733
    :goto_2c
    invoke-virtual {v4, v3, p2, p3, v0}, Lcom/google/android/music/store/Store;->addToPlayQueue(Landroid/database/Cursor;JZ)Lcom/google/android/music/store/PlayQueueAddResult;

    move-result-object v0

    .line 1736
    if-eqz v0, :cond_43

    .line 1737
    invoke-virtual {p0}, Lcom/google/android/music/LocalDevicePlayback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/music/store/PlayQueueAddResult;->getAddedSize()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/music/store/PlayQueueAddResult;->getRequestedSize()I

    move-result v4

    const/16 v5, 0x3e8

    invoke-static {v1, v2, v4, v5}, Lcom/google/android/music/MusicUtils;->showSongsToAddToQueue(Landroid/content/Context;III)V
    :try_end_43
    .catchall {:try_start_1f .. :try_end_43} :catchall_49

    .line 1745
    :cond_43
    invoke-static {v3}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_9

    :cond_47
    move v0, v2

    .line 1732
    goto :goto_2c

    .line 1745
    :catchall_49
    move-exception v0

    invoke-static {v3}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method private queueAndPlay(Lcom/google/android/music/medialist/SongList;I)Lcom/google/android/music/store/PlayQueueInsertResult;
    .registers 16
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 1666
    invoke-virtual {p1}, Lcom/google/android/music/medialist/SongList;->isDefaultDomain()Z

    move-result v1

    if-nez v1, :cond_a

    .line 1708
    :cond_9
    :goto_9
    return-object v0

    .line 1670
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/music/LocalDevicePlayback;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "SourceId"

    aput-object v4, v3, v5

    const-string v4, "SourceAccount"

    aput-object v4, v3, v2

    invoke-virtual {p1, v1, v3, v0}, Lcom/google/android/music/medialist/SongList;->getSyncMediaCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v1

    .line 1678
    if-eqz v1, :cond_9

    .line 1683
    :try_start_1f
    invoke-virtual {p0}, Lcom/google/android/music/LocalDevicePlayback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v0

    .line 1684
    iget v3, p0, Lcom/google/android/music/LocalDevicePlayback;->mShuffleMode:I

    if-ne v3, v2, :cond_59

    move v3, v2

    .line 1685
    :goto_2c
    const/4 v4, -0x1

    if-eq p2, v4, :cond_5b

    move v7, v2

    .line 1686
    :goto_30
    if-nez v7, :cond_71

    move v4, v5

    .line 1690
    :goto_33
    instance-of v6, p1, Lcom/google/android/music/medialist/PlaylistSongList;

    if-eqz v6, :cond_6f

    check-cast p1, Lcom/google/android/music/medialist/PlaylistSongList;

    invoke-virtual {p1}, Lcom/google/android/music/medialist/PlaylistSongList;->getPlaylistType()I

    move-result v6

    if-nez v6, :cond_6f

    .line 1695
    :goto_3f
    const-wide/16 v5, -0x1

    .line 1696
    iget v8, p0, Lcom/google/android/music/LocalDevicePlayback;->mLastPlayQueueGroupPosition:I

    if-ltz v8, :cond_4f

    iget-wide v8, p0, Lcom/google/android/music/LocalDevicePlayback;->mLastPlayQueueGroupId:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_4f

    .line 1697
    iget-wide v5, p0, Lcom/google/android/music/LocalDevicePlayback;->mLastPlayQueueGroupId:J

    .line 1699
    :cond_4f
    if-eqz v7, :cond_5d

    .line 1700
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/music/store/Store;->addSongsToPlay(Landroid/database/Cursor;ZZIJ)Lcom/google/android/music/store/PlayQueueInsertResult;
    :try_end_54
    .catchall {:try_start_1f .. :try_end_54} :catchall_6a

    move-result-object v0

    .line 1708
    invoke-static {v1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_9

    :cond_59
    move v3, v5

    .line 1684
    goto :goto_2c

    :cond_5b
    move v7, v5

    .line 1685
    goto :goto_30

    :cond_5d
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move v10, v3

    move-wide v11, v5

    .line 1703
    :try_start_62
    invoke-virtual/range {v7 .. v12}, Lcom/google/android/music/store/Store;->addSongsToPlay(Landroid/database/Cursor;ZZJ)Lcom/google/android/music/store/PlayQueueInsertResult;
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_6a

    move-result-object v0

    .line 1708
    invoke-static {v1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_9

    :catchall_6a
    move-exception v0

    invoke-static {v1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0

    :cond_6f
    move v2, v5

    goto :goto_3f

    :cond_71
    move v4, p2

    goto :goto_33
.end method

.method private refreshCursor(Lcom/google/android/music/dl/ContentIdentifier;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1849
    if-nez p1, :cond_25

    .line 1850
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 1851
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

    invoke-static {v0, v2}, Lcom/google/android/music/log/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1876
    :goto_24
    return v0

    .line 1855
    :cond_25
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mMediaList:Lcom/google/android/music/medialist/SongList;

    if-nez v0, :cond_2b

    move v0, v1

    .line 1856
    goto :goto_24

    .line 1859
    :cond_2b
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {p0}, Lcom/google/android/music/LocalDevicePlayback;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback;->mCursorCols:[Ljava/lang/String;

    invoke-virtual {v0, v2, p1, v3}, Lcom/google/android/music/medialist/SongList;->getSongCursor(Landroid/content/Context;Lcom/google/android/music/dl/ContentIdentifier;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1860
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

    .line 1863
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback;->mCurrentSongMetaDataCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v3

    .line 1864
    :try_start_50
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mCurrentSongMetaDataCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 1865
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mCurrentSongMetaDataCursor:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1867
    if-eqz v2, :cond_76

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 1868
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mCurrentSongMetaDataCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1869
    iput-object p1, p0, Lcom/google/android/music/LocalDevicePlayback;->mAudioId:Lcom/google/android/music/dl/ContentIdentifier;

    .line 1870
    const/4 v0, 0x1

    .line 1874
    :goto_71
    monitor-exit v3
    :try_end_72
    .catchall {:try_start_50 .. :try_end_72} :catchall_7b

    .line 1875
    invoke-direct {p0}, Lcom/google/android/music/LocalDevicePlayback;->onSongChanged()V

    goto :goto_24

    .line 1872
    :cond_76
    :try_start_76
    invoke-static {v2}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    move v0, v1

    goto :goto_71

    .line 1874
    :catchall_7b
    move-exception v0

    monitor-exit v3
    :try_end_7d
    .catchall {:try_start_76 .. :try_end_7d} :catchall_7b

    throw v0
.end method

.method private final registerExternalStorageListener()V
    .registers 4

    .prologue
    .line 1121
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_28

    .line 1122
    new-instance v1, Lcom/google/android/music/LocalDevicePlayback$8;

    invoke-direct {v1, p0}, Lcom/google/android/music/LocalDevicePlayback$8;-><init>(Lcom/google/android/music/LocalDevicePlayback;)V

    iput-object v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 1143
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1144
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1145
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1146
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1147
    invoke-virtual {p0}, Lcom/google/android/music/LocalDevicePlayback;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1149
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_28
    return-void
.end method

.method private reloadQueue()V
    .registers 15

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    .line 1228
    const-wide/16 v7, -0x1

    iput-wide v7, p0, Lcom/google/android/music/LocalDevicePlayback;->mReloadedQueueSeekPos:J

    .line 1229
    invoke-direct {p0}, Lcom/google/android/music/LocalDevicePlayback;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1230
    .local v3, preferences:Landroid/content/SharedPreferences;
    const-string v7, "medialist"

    invoke-interface {v3, v7, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1231
    .local v0, embryo:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reloading queue from: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 1232
    if-eqz v0, :cond_6d

    .line 1233
    invoke-static {v0}, Lcom/google/android/music/medialist/MediaList;->thaw(Ljava/lang/String;)Lcom/google/android/music/medialist/MediaList;

    move-result-object v1

    .line 1234
    .local v1, list:Lcom/google/android/music/medialist/MediaList;
    if-eqz v1, :cond_35

    instance-of v7, v1, Lcom/google/android/music/medialist/SongList;

    if-nez v7, :cond_77

    .line 1235
    :cond_35
    const-string v8, "MediaPlaybackService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Saved media list must be a SongList, but got "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v1, :cond_6e

    const-string v7, "<null>"

    :goto_46
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " instead"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error thawing: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 1326
    .end local v1           #list:Lcom/google/android/music/medialist/MediaList;
    :cond_6d
    :goto_6d
    return-void

    .line 1235
    .restart local v1       #list:Lcom/google/android/music/medialist/MediaList;
    :cond_6e
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    goto :goto_46

    .line 1241
    :cond_77
    check-cast v1, Lcom/google/android/music/medialist/SongList;

    .end local v1           #list:Lcom/google/android/music/medialist/MediaList;
    iput-object v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mMediaList:Lcom/google/android/music/medialist/SongList;

    .line 1242
    iget-object v7, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    iget-object v8, p0, Lcom/google/android/music/LocalDevicePlayback;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v7, v8}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->setMediaList(Lcom/google/android/music/medialist/SongList;)V

    .line 1244
    const-string v7, "curpos"

    invoke-interface {v3, v7, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1245
    .local v2, pos:I
    if-ltz v2, :cond_92

    iget-object v7, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    invoke-virtual {v7}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->length()I

    move-result v7

    if-lt v2, v7, :cond_c0

    .line 1247
    :cond_92
    iput-object v9, p0, Lcom/google/android/music/LocalDevicePlayback;->mMediaList:Lcom/google/android/music/medialist/SongList;

    .line 1248
    iget-object v7, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    invoke-virtual {v7, v9}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->setMediaList(Lcom/google/android/music/medialist/SongList;)V

    .line 1249
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "position out of range: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    invoke-virtual {v8}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    goto :goto_6d

    .line 1254
    :cond_c0
    iget-object v7, p0, Lcom/google/android/music/LocalDevicePlayback;->mMediaList:Lcom/google/android/music/medialist/SongList;

    if-eqz v7, :cond_102

    iget-object v7, p0, Lcom/google/android/music/LocalDevicePlayback;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-static {v7}, Lcom/google/android/music/LocalDevicePlayback;->isPlayQueue(Lcom/google/android/music/medialist/SongList;)Z

    move-result v7

    if-nez v7, :cond_102

    iget-object v7, p0, Lcom/google/android/music/LocalDevicePlayback;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v7}, Lcom/google/android/music/medialist/SongList;->isDefaultDomain()Z

    move-result v7

    if-eqz v7, :cond_102

    .line 1256
    const-string v7, "MediaPlaybackService"

    const-string v8, "Upgrading to queue"

    invoke-static {v7, v8}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    iget-object v7, p0, Lcom/google/android/music/LocalDevicePlayback;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-direct {p0, v7, v2}, Lcom/google/android/music/LocalDevicePlayback;->queueAndPlay(Lcom/google/android/music/medialist/SongList;I)Lcom/google/android/music/store/PlayQueueInsertResult;

    move-result-object v5

    .line 1258
    .local v5, result:Lcom/google/android/music/store/PlayQueueInsertResult;
    if-eqz v5, :cond_1b5

    invoke-virtual {v5}, Lcom/google/android/music/store/PlayQueueInsertResult;->getGroupId()J

    move-result-wide v7

    cmp-long v7, v7, v10

    if-eqz v7, :cond_1b5

    invoke-virtual {v5}, Lcom/google/android/music/store/PlayQueueInsertResult;->getNewPlayPosition()I

    move-result v7

    if-ltz v7, :cond_1b5

    .line 1260
    invoke-direct {p0}, Lcom/google/android/music/LocalDevicePlayback;->createPlayQueueSongList()Lcom/google/android/music/medialist/SongList;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/music/LocalDevicePlayback;->mMediaList:Lcom/google/android/music/medialist/SongList;

    .line 1261
    iget-object v7, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    iget-object v8, p0, Lcom/google/android/music/LocalDevicePlayback;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v7, v8}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->setMediaList(Lcom/google/android/music/medialist/SongList;)V

    .line 1262
    invoke-virtual {v5}, Lcom/google/android/music/store/PlayQueueInsertResult;->getNewPlayPosition()I

    move-result v2

    .line 1270
    .end local v5           #result:Lcom/google/android/music/store/PlayQueueInsertResult;
    :cond_102
    :goto_102
    iput v2, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I

    .line 1271
    const-string v7, "seekpos"

    invoke-interface {v3, v7, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/music/LocalDevicePlayback;->mReloadedQueueSeekPos:J

    .line 1273
    const-string v7, "lastUserInteract"

    invoke-interface {v3, v7, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/music/LocalDevicePlayback;->mLastUserInteractionTime:J

    .line 1275
    const-string v7, "repeatMode"

    invoke-interface {v3, v7, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 1276
    .local v4, repmode:I
    const/4 v7, 0x2

    if-eq v4, v7, :cond_120

    if-eq v4, v13, :cond_120

    .line 1277
    const/4 v4, 0x0

    .line 1279
    :cond_120
    iput v4, p0, Lcom/google/android/music/LocalDevicePlayback;->mRepeatMode:I

    .line 1281
    const-string v7, "shufflemode"

    invoke-interface {v3, v7, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 1282
    .local v6, shufmode:I
    if-eq v6, v13, :cond_12b

    .line 1283
    const/4 v6, 0x0

    .line 1285
    :cond_12b
    iput v6, p0, Lcom/google/android/music/LocalDevicePlayback;->mShuffleMode:I

    .line 1287
    const-string v7, "playQGroupId"

    invoke-interface {v3, v7, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/android/music/LocalDevicePlayback;->mLastPlayQueueGroupId:J

    .line 1288
    const-string v7, "playQGroupPos"

    const/4 v8, -0x1

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/google/android/music/LocalDevicePlayback;->mLastPlayQueueGroupPosition:I

    .line 1301
    const/16 v7, 0x14

    iput v7, p0, Lcom/google/android/music/LocalDevicePlayback;->mOpenFailedCounter:I

    .line 1307
    invoke-direct {p0, v12}, Lcom/google/android/music/LocalDevicePlayback;->loadCurrent(Z)Z

    move-result v7

    if-nez v7, :cond_14a

    .line 1308
    iput-wide v10, p0, Lcom/google/android/music/LocalDevicePlayback;->mReloadedQueueSeekPos:J

    .line 1310
    :cond_14a
    invoke-direct {p0}, Lcom/google/android/music/LocalDevicePlayback;->shouldPlayInRandomOrder()Z

    move-result v7

    if-eqz v7, :cond_170

    .line 1311
    iget-object v7, p0, Lcom/google/android/music/LocalDevicePlayback;->mRand:Lcom/google/android/music/StrictShuffler;

    iget-object v8, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    invoke-virtual {v8}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/android/music/StrictShuffler;->setHistorySize(I)V

    .line 1312
    iget v7, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I

    if-ltz v7, :cond_166

    .line 1313
    iget-object v7, p0, Lcom/google/android/music/LocalDevicePlayback;->mRand:Lcom/google/android/music/StrictShuffler;

    iget v8, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I

    invoke-virtual {v7, v8}, Lcom/google/android/music/StrictShuffler;->injectHistoricalValue(I)V

    .line 1315
    :cond_166
    iget-object v8, p0, Lcom/google/android/music/LocalDevicePlayback;->mFuture:Ljava/util/LinkedList;

    monitor-enter v8

    .line 1316
    :try_start_169
    invoke-direct {p0}, Lcom/google/android/music/LocalDevicePlayback;->fillShuffleList()V

    .line 1317
    monitor-exit v8
    :try_end_16d
    .catchall {:try_start_169 .. :try_end_16d} :catchall_1be

    .line 1318
    invoke-direct {p0}, Lcom/google/android/music/LocalDevicePlayback;->dumpPastPresentAndFuture()V

    .line 1321
    :cond_170
    invoke-direct {p0}, Lcom/google/android/music/LocalDevicePlayback;->onQueueChanged()V

    .line 1322
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "queue reloaded with length "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    invoke-virtual {v8}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", shuffle mode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/google/android/music/LocalDevicePlayback;->mShuffleMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", playpos "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/music/LocalDevicePlayback;->mAudioId:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    goto/16 :goto_6d

    .line 1265
    .end local v4           #repmode:I
    .end local v6           #shufmode:I
    .restart local v5       #result:Lcom/google/android/music/store/PlayQueueInsertResult;
    :cond_1b5
    iput-object v9, p0, Lcom/google/android/music/LocalDevicePlayback;->mMediaList:Lcom/google/android/music/medialist/SongList;

    .line 1266
    iget-object v7, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    invoke-virtual {v7, v9}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->setMediaList(Lcom/google/android/music/medialist/SongList;)V

    goto/16 :goto_102

    .line 1317
    .end local v5           #result:Lcom/google/android/music/store/PlayQueueInsertResult;
    .restart local v4       #repmode:I
    .restart local v6       #shufmode:I
    :catchall_1be
    move-exception v7

    :try_start_1bf
    monitor-exit v8
    :try_end_1c0
    .catchall {:try_start_1bf .. :try_end_1c0} :catchall_1be

    throw v7
.end method

.method private saveBookmarkIfNeeded()V
    .registers 13

    .prologue
    const-wide/16 v10, 0x2710

    .line 2444
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/music/LocalDevicePlayback;->isPodcast()Z

    move-result v8

    if-eqz v8, :cond_28

    .line 2445
    invoke-virtual {p0}, Lcom/google/android/music/LocalDevicePlayback;->position()J

    move-result-wide v4

    .line 2446
    .local v4, pos:J
    invoke-virtual {p0}, Lcom/google/android/music/LocalDevicePlayback;->getBookmark()J

    move-result-wide v0

    .line 2447
    .local v0, bookmark:J
    invoke-virtual {p0}, Lcom/google/android/music/LocalDevicePlayback;->duration()J

    move-result-wide v2

    .line 2448
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

    .line 2470
    .end local v0           #bookmark:J
    .end local v2           #duration:J
    .end local v4           #pos:J
    :cond_28
    :goto_28
    return-void

    .line 2454
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

    .line 2456
    :cond_35
    const-wide/16 v4, 0x0

    .line 2460
    :cond_37
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 2461
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "bookmark"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2462
    sget-object v9, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v8, p0, Lcom/google/android/music/LocalDevicePlayback;->mCurrentSongMetaDataCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/database/Cursor;

    const/4 v10, 0x0

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 2465
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/google/android/music/LocalDevicePlayback;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v6, v7, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_65
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_65} :catch_66

    goto :goto_28

    .line 2468
    .end local v0           #bookmark:J
    .end local v2           #duration:J
    .end local v4           #pos:J
    .end local v6           #uri:Landroid/net/Uri;
    .end local v7           #values:Landroid/content/ContentValues;
    :catch_66
    move-exception v8

    goto :goto_28
.end method

.method private saveQueue(Z)V
    .registers 25
    .parameter "full"

    .prologue
    .line 1168
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/music/LocalDevicePlayback;->mQueueIsSaveable:Z

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/LocalDevicePlayback;->mMediaList:Lcom/google/android/music/medialist/SongList;

    if-nez v2, :cond_d

    .line 1225
    :cond_c
    :goto_c
    return-void

    .line 1174
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/LocalDevicePlayback;->mMediaList:Lcom/google/android/music/medialist/SongList;

    .line 1175
    .local v5, mediaList:Lcom/google/android/music/medialist/SongList;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/LocalDevicePlayback;->getAlbumId()J

    move-result-wide v7

    .line 1176
    .local v7, curAlbumId:J
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/LocalDevicePlayback;->getArtistName()Ljava/lang/String;

    move-result-object v9

    .line 1177
    .local v9, curArtist:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/LocalDevicePlayback;->getAlbumName()Ljava/lang/String;

    move-result-object v10

    .line 1178
    .local v10, curAlbum:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/LocalDevicePlayback;->getTrackName()Ljava/lang/String;

    move-result-object v11

    .line 1179
    .local v11, curTitle:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I

    .line 1180
    .local v6, playPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/LocalDevicePlayback;->mRepeatMode:I

    move/from16 v16, v0

    .line 1181
    .local v16, repeatMode:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/LocalDevicePlayback;->mShuffleMode:I

    move/from16 v17, v0

    .line 1182
    .local v17, shuffleMode:I
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/music/LocalDevicePlayback;->mLastUserInteractionTime:J

    .line 1183
    .local v14, lastUserInteractionTime:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/LocalDevicePlayback;->mLastPlayQueueGroupId:J

    move-wide/from16 v18, v0

    .line 1184
    .local v18, groupId:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/LocalDevicePlayback;->mLastPlayQueueGroupPosition:I

    move/from16 v20, v0

    .line 1188
    .local v20, groupPosition:I
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/music/LocalDevicePlayback;->mReloadedQueueSeekPos:J

    const-wide/16 v21, 0x0

    cmp-long v2, v2, v21

    if-ltz v2, :cond_67

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/music/LocalDevicePlayback;->mReloadedQueueSeekPos:J

    .line 1191
    .local v12, playerPosition:J
    :goto_4f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/LocalDevicePlayback;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1192
    sget-object v21, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v2, Lcom/google/android/music/LocalDevicePlayback$10;

    move-object/from16 v3, p0

    move/from16 v4, p1

    invoke-direct/range {v2 .. v20}, Lcom/google/android/music/LocalDevicePlayback$10;-><init>(Lcom/google/android/music/LocalDevicePlayback;ZLcom/google/android/music/medialist/SongList;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIIJI)V

    move-object/from16 v0, v21

    invoke-static {v0, v2}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    goto :goto_c

    .line 1188
    .end local v12           #playerPosition:J
    :cond_67
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

    if-eqz v2, :cond_80

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

    invoke-virtual {v2}, Lcom/google/android/music/player/AsyncMediaPlayer;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_80

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

    invoke-virtual {v2}, Lcom/google/android/music/player/AsyncMediaPlayer;->position()J

    move-result-wide v12

    goto :goto_4f

    :cond_80
    const-wide/16 v12, 0x0

    goto :goto_4f
.end method

.method private setNextTrack()V
    .registers 4

    .prologue
    .line 1906
    invoke-virtual {p0}, Lcom/google/android/music/LocalDevicePlayback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "music_gapless_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 1911
    if-nez v0, :cond_16

    .line 1973
    :goto_15
    return-void

    .line 1915
    :cond_16
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/LocalDevicePlayback$16;

    invoke-direct {v1, p0}, Lcom/google/android/music/LocalDevicePlayback$16;-><init>(Lcom/google/android/music/LocalDevicePlayback;)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    goto :goto_15
.end method

.method private declared-synchronized setPreviewValues(Ljava/lang/String;IJ)V
    .registers 6
    .parameter "url"
    .parameter "type"
    .parameter "duration"

    .prologue
    .line 2781
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/music/LocalDevicePlayback;->mPreviewUrl:Ljava/lang/String;

    .line 2782
    iput-wide p3, p0, Lcom/google/android/music/LocalDevicePlayback;->mPreviewDuration:J

    .line 2783
    iput p2, p0, Lcom/google/android/music/LocalDevicePlayback;->mPreviewPlayType:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 2784
    monitor-exit p0

    return-void

    .line 2781
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private shouldPlayInRandomOrder()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1649
    iget v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mShuffleMode:I

    if-ne v1, v0, :cond_12

    invoke-direct {p0}, Lcom/google/android/music/LocalDevicePlayback;->isUsingPlayQueue()Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mMediaList:Lcom/google/android/music/medialist/SongList;

    instance-of v1, v1, Lcom/google/android/music/athome/AtHomeSongList;

    if-nez v1, :cond_12

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private stop(Z)V
    .registers 5
    .parameter "willPlay"

    .prologue
    .line 2130
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->stop()V

    .line 2131
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mCurrentSongMetaDataCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 2132
    :try_start_8
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mCurrentSongMetaDataCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 2133
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mCurrentSongMetaDataCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2134
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mCurrentSongMetaDataCursor:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2136
    :cond_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2f

    .line 2138
    if-nez p1, :cond_2e

    iget-boolean v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mIsSupposedToBePlaying:Z

    if-eqz v0, :cond_2e

    .line 2139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mIsSupposedToBePlaying:Z

    .line 2140
    invoke-virtual {p0}, Lcom/google/android/music/LocalDevicePlayback;->onPlayStateChanged()V

    .line 2142
    :cond_2e
    return-void

    .line 2136
    :catchall_2f
    move-exception v0

    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method private stripNullContentIdentifiers([Lcom/google/android/music/dl/ContentIdentifier;)[Lcom/google/android/music/dl/ContentIdentifier;
    .registers 8
    .parameter "ret"

    .prologue
    .line 1336
    const/4 v0, 0x0

    .line 1337
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    array-length v5, p1

    if-ge v1, v5, :cond_e

    .line 1338
    aget-object v5, p1, v1

    if-eqz v5, :cond_b

    .line 1339
    add-int/lit8 v0, v0, 0x1

    .line 1337
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1342
    :cond_e
    array-length v5, p1

    if-ne v0, v5, :cond_12

    .line 1356
    .end local p1
    :goto_11
    return-object p1

    .line 1345
    .restart local p1
    :cond_12
    if-gtz v0, :cond_16

    .line 1346
    const/4 p1, 0x0

    goto :goto_11

    .line 1349
    :cond_16
    const/4 v2, 0x0

    .line 1350
    .local v2, newIndex:I
    new-array v4, v0, [Lcom/google/android/music/dl/ContentIdentifier;

    .line 1351
    .local v4, newRet:[Lcom/google/android/music/dl/ContentIdentifier;
    const/4 v1, 0x0

    :goto_1a
    array-length v5, p1

    if-ge v1, v5, :cond_2b

    .line 1352
    aget-object v5, p1, v1

    if-eqz v5, :cond_28

    .line 1353
    add-int/lit8 v3, v2, 0x1

    .end local v2           #newIndex:I
    .local v3, newIndex:I
    aget-object v5, p1, v1

    aput-object v5, v4, v2

    move v2, v3

    .line 1351
    .end local v3           #newIndex:I
    .restart local v2       #newIndex:I
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_2b
    move-object p1, v4

    .line 1356
    goto :goto_11
.end method

.method private tryNext()V
    .registers 5

    .prologue
    .line 2018
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2019
    return-void
.end method


# virtual methods
.method public addDownloadProgressListener(Lcom/google/android/music/dl/ContentIdentifier;Lcom/google/android/music/dl/IDownloadProgressListener;)Z
    .registers 7
    .parameter "songId"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 2850
    :try_start_1
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;

    if-nez v2, :cond_6

    .line 2857
    :goto_5
    return v1

    .line 2853
    :cond_6
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;

    invoke-interface {v2, p1, p2}, Lcom/google/android/music/dl/IDownloadManager;->addDownloadProgressListener(Lcom/google/android/music/dl/ContentIdentifier;Lcom/google/android/music/dl/IDownloadProgressListener;)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 2854
    :catch_d
    move-exception v0

    .line 2855
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "MediaPlaybackService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method public clearQueue()V
    .registers 3

    .prologue
    .line 1541
    invoke-virtual {p0}, Lcom/google/android/music/LocalDevicePlayback;->stop()V

    .line 1543
    invoke-direct {p0}, Lcom/google/android/music/LocalDevicePlayback;->acquireAsyncLockAndClearMediaList()Lcom/google/android/music/medialist/SongList;

    .line 1544
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/LocalDevicePlayback$13;

    invoke-direct {v1, p0}, Lcom/google/android/music/LocalDevicePlayback$13;-><init>(Lcom/google/android/music/LocalDevicePlayback;)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 1554
    return-void
.end method

.method configureAtHomeTransmitter(Ljava/lang/String;)V
    .registers 3
    .parameter "mediaPlayerConfig"

    .prologue
    .line 2971
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/google/android/music/player/AsyncMediaPlayer;->setAtHomeMediaPlayerConfig(Ljava/lang/String;)V

    .line 2972
    return-void
.end method

.method public disableGroupPlay()V
    .registers 3

    .prologue
    .line 2988
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/LocalDevicePlayback$24;

    invoke-direct {v1, p0}, Lcom/google/android/music/LocalDevicePlayback$24;-><init>(Lcom/google/android/music/LocalDevicePlayback;)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 2997
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .parameter

    .prologue
    .line 2875
    const-string v0, "LocalPlayBack"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Async Player: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->getPlayerStatusString()Ljava/lang/String;

    move-result-object v0

    :goto_1a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2878
    return-void

    .line 2876
    :cond_26
    const-string v0, "no async player"

    goto :goto_1a
.end method

.method public duration()J
    .registers 6

    .prologue
    .line 2748
    iget-object v4, p0, Lcom/google/android/music/LocalDevicePlayback;->mCurrentSongMetaDataCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v4

    .line 2750
    :try_start_3
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback;->mCurrentSongMetaDataCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_11

    .line 2751
    const-wide/16 v2, -0x1

    monitor-exit v4

    .line 2758
    :goto_10
    return-wide v2

    .line 2753
    :cond_11
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback;->mMediaList:Lcom/google/android/music/medialist/SongList;

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v2}, Lcom/google/android/music/medialist/SongList;->isSharedDomain()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 2754
    const-string v2, "SourceId"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2756
    .local v1, remoteUrl:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/google/android/music/LocalDevicePlayback;->getPreviewPlayDurationForUrl(Ljava/lang/String;)J

    move-result-wide v2

    monitor-exit v4

    goto :goto_10

    .line 2759
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #remoteUrl:Ljava/lang/String;
    :catchall_2d
    move-exception v2

    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v2

    .line 2758
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

.method public getAlbumArtUrl(J)Ljava/lang/String;
    .registers 4
    .parameter "albumId"

    .prologue
    .line 2976
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlbumId()J
    .registers 5

    .prologue
    .line 2640
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback;->mCurrentSongMetaDataCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v3

    .line 2642
    :try_start_3
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mCurrentSongMetaDataCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_11

    .line 2643
    const-wide/16 v1, -0x1

    monitor-exit v3

    .line 2645
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

    .line 2647
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
    .line 2628
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback;->mCurrentSongMetaDataCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v2

    .line 2630
    :try_start_3
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mCurrentSongMetaDataCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_10

    .line 2631
    const/4 v1, 0x0

    monitor-exit v2

    .line 2633
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

    .line 2635
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
    .line 2591
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback;->mCurrentSongMetaDataCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v3

    .line 2593
    :try_start_3
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mCurrentSongMetaDataCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_11

    .line 2594
    const-wide/16 v1, -0x1

    monitor-exit v3

    .line 2596
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

    .line 2599
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
    .line 2579
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback;->mCurrentSongMetaDataCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v2

    .line 2581
    :try_start_3
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mCurrentSongMetaDataCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_10

    .line 2582
    const/4 v1, 0x0

    monitor-exit v2

    .line 2584
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

    .line 2586
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
    .line 2533
    iget v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I

    if-ltz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    invoke-virtual {v0}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->isValid()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2534
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mAudioId:Lcom/google/android/music/dl/ContentIdentifier;

    .line 2536
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getAudioSessionId()I
    .registers 2

    .prologue
    .line 2834
    monitor-enter p0

    .line 2835
    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->getAudioSessionId()I

    move-result v0

    monitor-exit p0

    return v0

    .line 2836
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public getBookmark()J
    .registers 5

    .prologue
    .line 2733
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback;->mCurrentSongMetaDataCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v3

    .line 2735
    :try_start_3
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mCurrentSongMetaDataCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_11

    .line 2736
    const-wide/16 v1, 0x0

    monitor-exit v3

    .line 2738
    :goto_10
    return-wide v1

    :cond_11
    const/16 v1, 0x9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    monitor-exit v3

    goto :goto_10

    .line 2739
    .end local v0           #cursor:Landroid/database/Cursor;
    :catchall_19
    move-exception v1

    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public getDebugInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2841
    monitor-enter p0

    .line 2842
    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->getDebugInfo()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 2843
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public getErrorType()I
    .registers 2

    .prologue
    .line 2942
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->getErrorType()I

    move-result v0

    goto :goto_5
.end method

.method public getLastUserInteractionTime()J
    .registers 3

    .prologue
    .line 2981
    iget-wide v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mLastUserInteractionTime:J

    return-wide v0
.end method

.method public getMediaList()Lcom/google/android/music/medialist/SongList;
    .registers 2

    .prologue
    .line 2966
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mMediaList:Lcom/google/android/music/medialist/SongList;

    return-object v0
.end method

.method public getPreviewPlayType()I
    .registers 5

    .prologue
    .line 2767
    const/4 v1, 0x0

    .line 2768
    .local v1, remoteUrl:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback;->mCurrentSongMetaDataCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v3

    .line 2770
    :try_start_4
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback;->mCurrentSongMetaDataCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_11

    .line 2771
    const/4 v2, -0x1

    monitor-exit v3

    .line 2777
    :goto_10
    return v2

    .line 2774
    :cond_11
    const-string v2, "SourceId"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2776
    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_21

    .line 2777
    invoke-direct {p0, v1}, Lcom/google/android/music/LocalDevicePlayback;->getPreviewPlayTypeForUrl(Ljava/lang/String;)I

    move-result v2

    goto :goto_10

    .line 2776
    .end local v0           #cursor:Landroid/database/Cursor;
    :catchall_21
    move-exception v2

    :try_start_22
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v2
.end method

.method public getQueuePosition()I
    .registers 2

    .prologue
    .line 2546
    iget v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I

    return v0
.end method

.method public getQueueSize()I
    .registers 2

    .prologue
    .line 2567
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    invoke-virtual {v0}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->length()I

    move-result v0

    goto :goto_5
.end method

.method public getRating()I
    .registers 4

    .prologue
    .line 2669
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback;->mCurrentSongMetaDataCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v2

    .line 2671
    :try_start_3
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mCurrentSongMetaDataCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_10

    .line 2672
    const/4 v1, 0x0

    monitor-exit v2

    .line 2674
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

    .line 2676
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
    .line 2525
    iget v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mRepeatMode:I

    return v0
.end method

.method public getShuffleMode()I
    .registers 2

    .prologue
    .line 2509
    iget v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mShuffleMode:I

    return v0
.end method

.method public getSongStoreId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2616
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback;->mCurrentSongMetaDataCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v2

    .line 2618
    :try_start_3
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mCurrentSongMetaDataCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_10

    .line 2619
    const/4 v1, 0x0

    monitor-exit v2

    .line 2621
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

    .line 2623
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
    .line 2604
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback;->mCurrentSongMetaDataCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v2

    .line 2606
    :try_start_3
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mCurrentSongMetaDataCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_10

    .line 2607
    const/4 v1, 0x0

    monitor-exit v2

    .line 2609
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

    .line 2611
    .end local v0           #cursor:Landroid/database/Cursor;
    :catchall_1c
    move-exception v1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public getState()Lcom/google/android/music/DevicePlayback$State;
    .registers 3

    .prologue
    .line 1088
    iget-boolean v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mIsSupposedToBePlaying:Z

    if-eqz v0, :cond_7

    .line 1089
    sget-object v0, Lcom/google/android/music/DevicePlayback$State;->PLAYING:Lcom/google/android/music/DevicePlayback$State;

    .line 1097
    :goto_6
    return-object v0

    .line 1090
    :cond_7
    iget-boolean v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPausedByTransientLossOfFocus:Z

    if-eqz v0, :cond_e

    .line 1091
    sget-object v0, Lcom/google/android/music/DevicePlayback$State;->TRANSIENT_PAUSE:Lcom/google/android/music/DevicePlayback$State;

    goto :goto_6

    .line 1092
    :cond_e
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1093
    sget-object v0, Lcom/google/android/music/DevicePlayback$State;->SWITCHING_TRACKS:Lcom/google/android/music/DevicePlayback$State;

    goto :goto_6

    .line 1094
    :cond_1a
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    invoke-virtual {v0}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->isValid()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    invoke-virtual {v0}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->length()I

    move-result v0

    if-lez v0, :cond_31

    .line 1095
    sget-object v0, Lcom/google/android/music/DevicePlayback$State;->PAUSED:Lcom/google/android/music/DevicePlayback$State;

    goto :goto_6

    .line 1097
    :cond_31
    sget-object v0, Lcom/google/android/music/DevicePlayback$State;->NO_PLAYLIST:Lcom/google/android/music/DevicePlayback$State;

    goto :goto_6
.end method

.method public getTrackName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2652
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback;->mCurrentSongMetaDataCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v2

    .line 2654
    :try_start_3
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mCurrentSongMetaDataCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_10

    .line 2655
    const/4 v1, 0x0

    monitor-exit v2

    .line 2657
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

    .line 2659
    .end local v0           #cursor:Landroid/database/Cursor;
    :catchall_1c
    move-exception v1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public hasLocal()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 2722
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback;->mCurrentSongMetaDataCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v2

    .line 2724
    :try_start_4
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback;->mCurrentSongMetaDataCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_10

    .line 2725
    monitor-exit v2

    .line 2727
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

    .line 2728
    .end local v0           #cursor:Landroid/database/Cursor;
    :catchall_1b
    move-exception v1

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public hasRemote()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 2711
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback;->mCurrentSongMetaDataCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v2

    .line 2713
    :try_start_4
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback;->mCurrentSongMetaDataCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_10

    .line 2714
    monitor-exit v2

    .line 2716
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

    .line 2717
    .end local v0           #cursor:Landroid/database/Cursor;
    :catchall_1b
    move-exception v1

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public hasValidPlaylist()Z
    .registers 2

    .prologue
    .line 2953
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    invoke-virtual {v0}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->isValid()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isCurrentSongLoaded()Z
    .registers 3

    .prologue
    .line 2572
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mCurrentSongMetaDataCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 2573
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mCurrentSongMetaDataCursor:Ljava/util/concurrent/atomic/AtomicReference;

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

    .line 2574
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public isInErrorState()Z
    .registers 2

    .prologue
    .line 2937
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->isInErrorState()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isInFatalErrorState()Z
    .registers 2

    .prologue
    .line 2947
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 2201
    iget-boolean v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method public isPodcast()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 2700
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback;->mCurrentSongMetaDataCursor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v2

    .line 2702
    :try_start_4
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback;->mCurrentSongMetaDataCursor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_10

    .line 2703
    monitor-exit v2

    .line 2705
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

    .line 2706
    .end local v0           #cursor:Landroid/database/Cursor;
    :catchall_1b
    move-exception v1

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public isPreparing()Z
    .registers 2

    .prologue
    .line 2927
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->isPreparing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isStreaming()Z
    .registers 2

    .prologue
    .line 2932
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public next()V
    .registers 3

    .prologue
    .line 2300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mLastUserInteractionTime:J

    .line 2301
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/music/LocalDevicePlayback;->next(Z)V

    .line 2302
    return-void
.end method

.method public onActivate()V
    .registers 1

    .prologue
    .line 2918
    return-void
.end method

.method public onCreate()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 1004
    invoke-super {p0}, Lcom/google/android/music/DevicePlayback;->onCreate()V

    .line 1006
    invoke-virtual {p0}, Lcom/google/android/music/LocalDevicePlayback;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mAudioManager:Landroid/media/AudioManager;

    .line 1008
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mDownloadManagerSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    invoke-virtual {p0}, Lcom/google/android/music/LocalDevicePlayback;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/music/LocalDevicePlayback;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2, v5}, Lcom/google/android/music/utils/SafeServiceConnection;->bindService(Landroid/content/Context;Landroid/content/Intent;I)Z

    .line 1010
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mStoreSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    invoke-virtual {p0}, Lcom/google/android/music/LocalDevicePlayback;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.music.STORE_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v5}, Lcom/google/android/music/utils/SafeServiceConnection;->bindService(Landroid/content/Context;Landroid/content/Intent;I)Z

    .line 1013
    invoke-direct {p0}, Lcom/google/android/music/LocalDevicePlayback;->registerExternalStorageListener()V

    .line 1016
    new-instance v0, Lcom/google/android/music/player/AsyncMediaPlayer;

    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mService:Lcom/google/android/music/MusicPlaybackService;

    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback;->mServiceHooks:Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/player/AsyncMediaPlayer;-><init>(Landroid/content/Context;Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;)V

    iput-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

    .line 1018
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1019
    const-string v1, "com.android.music.sharedpreviewmetadataupdate"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1020
    invoke-virtual {p0}, Lcom/google/android/music/LocalDevicePlayback;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback;->mSharedPreviewPlayListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1022
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mService:Lcom/google/android/music/MusicPlaybackService;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Lcom/google/android/music/MusicPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1023
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".mWakeLock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1025
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1026
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".mAsyncWakeLock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1029
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1036
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    invoke-virtual {v0, v5}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->setPlaylistLoading(Z)V

    .line 1037
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/LocalDevicePlayback$7;

    invoke-direct {v1, p0}, Lcom/google/android/music/LocalDevicePlayback$7;-><init>(Lcom/google/android/music/LocalDevicePlayback;)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 1049
    return-void
.end method

.method public onDeactivate()V
    .registers 1

    .prologue
    .line 2923
    return-void
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1054
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1057
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1058
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {p0}, Lcom/google/android/music/LocalDevicePlayback;->getAudioSessionId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1059
    const-string v1, "android.media.extra.PACKAGE_NAME"

    invoke-virtual {p0}, Lcom/google/android/music/LocalDevicePlayback;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1060
    invoke-virtual {p0}, Lcom/google/android/music/LocalDevicePlayback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1061
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

    invoke-virtual {v1}, Lcom/google/android/music/player/AsyncMediaPlayer;->release()V

    .line 1063
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1065
    invoke-direct {p0}, Lcom/google/android/music/LocalDevicePlayback;->clearCursor()V

    .line 1066
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    invoke-virtual {v1, v3}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->setMediaList(Lcom/google/android/music/medialist/SongList;)V

    .line 1068
    invoke-virtual {p0}, Lcom/google/android/music/LocalDevicePlayback;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback;->mSharedPreviewPlayListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1070
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_56

    .line 1071
    invoke-virtual {p0}, Lcom/google/android/music/LocalDevicePlayback;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1072
    iput-object v3, p0, Lcom/google/android/music/LocalDevicePlayback;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 1074
    :cond_56
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1075
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mDownloadManagerSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    invoke-virtual {p0}, Lcom/google/android/music/LocalDevicePlayback;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/utils/SafeServiceConnection;->unbindService(Landroid/content/Context;)V

    .line 1076
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mStoreSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    invoke-virtual {p0}, Lcom/google/android/music/LocalDevicePlayback;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/utils/SafeServiceConnection;->unbindService(Landroid/content/Context;)V

    .line 1078
    invoke-super {p0}, Lcom/google/android/music/DevicePlayback;->onDestroy()V

    .line 1079
    return-void
.end method

.method protected onOpenComplete()V
    .registers 2

    .prologue
    .line 2903
    const-string v0, "com.android.music.asyncopencomplete"

    invoke-virtual {p0, v0}, Lcom/google/android/music/LocalDevicePlayback;->notifyChange(Ljava/lang/String;)V

    .line 2904
    return-void
.end method

.method protected onPlayStateChanged()V
    .registers 2

    .prologue
    .line 2907
    const-string v0, "com.android.music.playstatechanged"

    invoke-virtual {p0, v0}, Lcom/google/android/music/LocalDevicePlayback;->notifyChange(Ljava/lang/String;)V

    .line 2908
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/LocalDevicePlayback;->saveQueue(Z)V

    .line 2909
    return-void
.end method

.method protected onPlaybackComplete()V
    .registers 2

    .prologue
    .line 2912
    const-string v0, "com.android.music.playbackcomplete"

    invoke-virtual {p0, v0}, Lcom/google/android/music/LocalDevicePlayback;->notifyChange(Ljava/lang/String;)V

    .line 2913
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/LocalDevicePlayback;->saveQueue(Z)V

    .line 2914
    return-void
.end method

.method public open(Lcom/google/android/music/medialist/SongList;IZ)V
    .registers 14
    .parameter "medialist"
    .parameter "position"
    .parameter "play"

    .prologue
    .line 1408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mLastUserInteractionTime:J

    .line 1412
    iget-object v5, p0, Lcom/google/android/music/LocalDevicePlayback;->mMediaList:Lcom/google/android/music/medialist/SongList;

    .line 1413
    .local v5, currentList:Lcom/google/android/music/medialist/SongList;
    invoke-virtual {p1, v5}, Lcom/google/android/music/medialist/SongList;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1414
    .local v8, sameList:Z
    if-eqz v8, :cond_19

    iget v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I

    if-ne p2, v0, :cond_19

    invoke-virtual {p0}, Lcom/google/android/music/LocalDevicePlayback;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1490
    :goto_18
    return-void

    .line 1418
    :cond_19
    invoke-static {v5}, Lcom/google/android/music/LocalDevicePlayback;->isPlayQueue(Lcom/google/android/music/medialist/SongList;)Z

    move-result v4

    .line 1419
    .local v4, currentlyPlayingFromPlayQ:Z
    if-nez v8, :cond_28

    if-eqz v4, :cond_28

    invoke-virtual {p1}, Lcom/google/android/music/medialist/SongList;->isDefaultDomain()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1422
    const/4 v8, 0x1

    .line 1426
    :cond_28
    if-nez v8, :cond_3f

    const/4 v7, 0x1

    .line 1427
    .local v7, listChanged:Z
    :goto_2b
    if-eqz v7, :cond_41

    .line 1428
    invoke-direct {p0}, Lcom/google/android/music/LocalDevicePlayback;->acquireAsyncLockAndClearMediaList()Lcom/google/android/music/medialist/SongList;

    .line 1432
    :goto_30
    sget-object v9, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v0, Lcom/google/android/music/LocalDevicePlayback$11;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/music/LocalDevicePlayback$11;-><init>(Lcom/google/android/music/LocalDevicePlayback;Lcom/google/android/music/medialist/SongList;IZLcom/google/android/music/medialist/SongList;ZZ)V

    invoke-static {v9, v0}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    goto :goto_18

    .line 1426
    .end local v7           #listChanged:Z
    :cond_3f
    const/4 v7, 0x0

    goto :goto_2b

    .line 1430
    .restart local v7       #listChanged:Z
    :cond_41
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_30
.end method

.method public openAndQueue(Lcom/google/android/music/medialist/SongList;I)V
    .registers 5
    .parameter "medialist"
    .parameter "position"

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1495
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/LocalDevicePlayback$12;

    invoke-direct {v1, p0, p1}, Lcom/google/android/music/LocalDevicePlayback$12;-><init>(Lcom/google/android/music/LocalDevicePlayback;Lcom/google/android/music/medialist/SongList;)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 1533
    return-void
.end method

.method public pause()V
    .registers 3

    .prologue
    .line 2148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mLastUserInteractionTime:J

    .line 2149
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/LocalDevicePlayback;->pause(Z)V

    .line 2150
    return-void
.end method

.method public play()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 2025
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mLastUserInteractionTime:J

    .line 2026
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

    invoke-virtual {v1}, Lcom/google/android/music/player/AsyncMediaPlayer;->isRenderingAudioLocally()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 2027
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    if-ne v0, v1, :cond_24

    .line 2030
    :goto_1a
    if-nez v0, :cond_26

    .line 2031
    const-string v0, "MediaPlaybackService"

    const-string v1, "play() could not obtain audio focus."

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2080
    :goto_23
    return-void

    .line 2027
    :cond_24
    const/4 v0, 0x0

    goto :goto_1a

    .line 2036
    :cond_26
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2037
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/LocalDevicePlayback$18;

    invoke-direct {v1, p0}, Lcom/google/android/music/LocalDevicePlayback$18;-><init>(Lcom/google/android/music/LocalDevicePlayback;)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    goto :goto_23
.end method

.method public playlistLoading()Z
    .registers 2

    .prologue
    .line 2958
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    if-nez v0, :cond_6

    .line 2959
    const/4 v0, 0x0

    .line 2961
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    invoke-virtual {v0}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->playlistLoading()Z

    move-result v0

    goto :goto_5
.end method

.method public position()J
    .registers 3

    .prologue
    .line 2810
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2811
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->position()J

    move-result-wide v0

    .line 2813
    :goto_e
    return-wide v0

    :cond_f
    iget-wide v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mReloadedQueueSeekPos:J

    goto :goto_e
.end method

.method public prev()V
    .registers 3

    .prologue
    .line 2228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mLastUserInteractionTime:J

    .line 2234
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2235
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/LocalDevicePlayback$21;

    invoke-direct {v1, p0}, Lcom/google/android/music/LocalDevicePlayback$21;-><init>(Lcom/google/android/music/LocalDevicePlayback;)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 2297
    return-void
.end method

.method public removeDownloadProgressListener(Lcom/google/android/music/dl/IDownloadProgressListener;)V
    .registers 5
    .parameter "listener"

    .prologue
    .line 2863
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;

    if-nez v1, :cond_5

    .line 2870
    :goto_4
    return-void

    .line 2866
    :cond_5
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;

    invoke-interface {v1, p1}, Lcom/google/android/music/dl/IDownloadManager;->removeDownloadProgressListener(Lcom/google/android/music/dl/IDownloadProgressListener;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_4

    .line 2867
    :catch_b
    move-exception v0

    .line 2868
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MediaPlaybackService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method protected saveState()V
    .registers 2

    .prologue
    .line 1083
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/music/LocalDevicePlayback;->saveQueue(Z)V

    .line 1084
    return-void
.end method

.method public seek(J)J
    .registers 5
    .parameter "pos"

    .prologue
    .line 2823
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mLastUserInteractionTime:J

    .line 2824
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 2825
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_16

    const-wide/16 p1, 0x0

    .line 2826
    :cond_16
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->duration()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_26

    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->duration()J

    move-result-wide p1

    .line 2827
    :cond_26
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/player/AsyncMediaPlayer;->seek(J)J

    move-result-wide v0

    .line 2829
    :goto_2c
    return-wide v0

    :cond_2d
    const-wide/16 v0, -0x1

    goto :goto_2c
.end method

.method public setQueuePosition(I)V
    .registers 4
    .parameter "pos"

    .prologue
    .line 2557
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mLastUserInteractionTime:J

    .line 2558
    monitor-enter p0

    .line 2559
    const/4 v0, 0x1

    :try_start_8
    invoke-direct {p0, v0}, Lcom/google/android/music/LocalDevicePlayback;->stop(Z)V

    .line 2560
    iput p1, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I

    .line 2561
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/music/LocalDevicePlayback;->openCurrentAndPlay(Z)V

    .line 2562
    monitor-exit p0

    .line 2563
    return-void

    .line 2562
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public setRating(I)V
    .registers 6
    .parameter "rating"

    .prologue
    .line 2681
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mLastUserInteractionTime:J

    .line 2682
    invoke-virtual {p0}, Lcom/google/android/music/LocalDevicePlayback;->getAudioId()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v0

    .line 2683
    .local v0, songId:Lcom/google/android/music/dl/ContentIdentifier;
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/google/android/music/dl/ContentIdentifier;->isDefaultDomain()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 2684
    invoke-virtual {p0}, Lcom/google/android/music/LocalDevicePlayback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v2

    invoke-static {v1, v2, v3, p1}, Lcom/google/android/music/store/MusicContent$XAudio;->setRating(Landroid/content/ContentResolver;JI)V

    .line 2692
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback;->mAudioId:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {v0, v1}, Lcom/google/android/music/dl/ContentIdentifier;->equals(Lcom/google/android/music/dl/ContentIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 2693
    invoke-direct {p0, v0}, Lcom/google/android/music/LocalDevicePlayback;->refreshCursor(Lcom/google/android/music/dl/ContentIdentifier;)Z

    .line 2696
    :cond_2c
    return-void
.end method

.method public setRepeatMode(I)V
    .registers 4
    .parameter

    .prologue
    .line 2513
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mLastUserInteractionTime:J

    .line 2514
    monitor-enter p0

    .line 2515
    :try_start_7
    iget v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mRepeatMode:I

    if-ne p1, v0, :cond_d

    .line 2516
    monitor-exit p0

    .line 2522
    :goto_c
    return-void

    .line 2518
    :cond_d
    iput p1, p0, Lcom/google/android/music/LocalDevicePlayback;->mRepeatMode:I

    .line 2519
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/LocalDevicePlayback;->saveQueue(Z)V

    .line 2520
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_1a

    .line 2521
    const-string v0, "com.google.android.music.repeatmodechanged"

    invoke-virtual {p0, v0}, Lcom/google/android/music/LocalDevicePlayback;->notifyChange(Ljava/lang/String;)V

    goto :goto_c

    .line 2520
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public setShuffleMode(I)V
    .registers 4
    .parameter

    .prologue
    .line 2473
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mLastUserInteractionTime:J

    .line 2474
    monitor-enter p0

    .line 2475
    :try_start_7
    iget v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mShuffleMode:I

    if-ne v0, p1, :cond_15

    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    invoke-virtual {v0}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->length()I

    move-result v0

    if-lez v0, :cond_15

    .line 2476
    monitor-exit p0

    .line 2506
    :goto_14
    return-void

    .line 2478
    :cond_15
    iput p1, p0, Lcom/google/android/music/LocalDevicePlayback;->mShuffleMode:I

    .line 2480
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/LocalDevicePlayback$23;

    invoke-direct {v1, p0}, Lcom/google/android/music/LocalDevicePlayback$23;-><init>(Lcom/google/android/music/LocalDevicePlayback;)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 2504
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_28

    .line 2505
    const-string v0, "com.google.android.music.shufflemodechanged"

    invoke-virtual {p0, v0}, Lcom/google/android/music/LocalDevicePlayback;->notifyChange(Ljava/lang/String;)V

    goto :goto_14

    .line 2504
    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 2084
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mLastUserInteractionTime:J

    .line 2085
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2086
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/LocalDevicePlayback$19;

    invoke-direct {v1, p0}, Lcom/google/android/music/LocalDevicePlayback$19;-><init>(Lcom/google/android/music/LocalDevicePlayback;)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 2095
    return-void
.end method

.method public stopSync()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2098
    invoke-virtual {p0}, Lcom/google/android/music/LocalDevicePlayback;->getAudioId()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v0

    .line 2099
    if-eqz v0, :cond_4b

    .line 2100
    const v1, 0x12111

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/music/dl/ContentIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

    invoke-virtual {v3}, Lcom/google/android/music/player/AsyncMediaPlayer;->getRemoteSongId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2102
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

    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

    invoke-virtual {v2}, Lcom/google/android/music/player/AsyncMediaPlayer;->getRemoteSongId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/music/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2110
    :cond_4b
    invoke-direct {p0, v5}, Lcom/google/android/music/LocalDevicePlayback;->stop(Z)V

    .line 2111
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mPlayer:Lcom/google/android/music/player/AsyncMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->release()V

    .line 2112
    invoke-virtual {p0}, Lcom/google/android/music/LocalDevicePlayback;->onPlayStateChanged()V

    .line 2115
    :try_start_56
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;

    if-eqz v0, :cond_5f

    .line 2116
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;

    invoke-interface {v0}, Lcom/google/android/music/dl/IDownloadManager;->stop()V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_5f} :catch_63

    .line 2121
    :cond_5f
    :goto_5f
    invoke-direct {p0, v4}, Lcom/google/android/music/LocalDevicePlayback;->loadCurrent(Z)Z

    .line 2122
    return-void

    .line 2118
    :catch_63
    move-exception v0

    .line 2119
    const-string v1, "MediaPlaybackService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5f
.end method

.method public supportsRating()Z
    .registers 2

    .prologue
    .line 2664
    const/4 v0, 0x1

    return v0
.end method
