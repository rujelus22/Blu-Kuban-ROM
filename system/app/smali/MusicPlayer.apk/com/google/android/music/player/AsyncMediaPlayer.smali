.class public Lcom/google/android/music/player/AsyncMediaPlayer;
.super Lcom/google/android/music/Worker;
.source "AsyncMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/player/AsyncMediaPlayer$AsyncCommandCallback;
    }
.end annotation


# instance fields
.field private final LOGV:Z

.field private completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private errorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private infoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private final isPreGingerbread:Z

.field private mAtHomeMediaPlayerConfig:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

.field private mCurrentSongSourceAccount:J

.field private mCurrentSongSourceId:Ljava/lang/String;

.field private mCurrentUrl:Ljava/lang/String;

.field private mDownloadCompletedPercent:F

.field private mDownloadProgressListener:Lcom/google/android/music/dl/IDownloadProgressListener;

.field private mDownloadState:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

.field private mDuration:J

.field private final mEventLogger:Lcom/google/android/music/MusicEventLogger;

.field private mHttpSeek:J

.field private mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

.field private mPosition:J

.field private mServiceHooks:Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;

.field private mStatus:I

.field private mStopWatch:Lcom/google/android/music/StopWatch;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private seekListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;)V
    .registers 11
    .parameter "context"
    .parameter "hooks"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 119
    const-string v2, "AsyncMediaPlayer"

    const/4 v3, 0x5

    invoke-direct {p0, v2, v3}, Lcom/google/android/music/Worker;-><init>(Ljava/lang/String;I)V

    .line 56
    const-string v2, "MediaPlaybackService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/google/android/music/log/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->LOGV:Z

    .line 95
    iput-wide v4, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mDuration:J

    .line 96
    iput-wide v4, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mPosition:J

    .line 97
    iput-wide v4, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mHttpSeek:J

    .line 106
    iput v6, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mStatus:I

    .line 108
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mDownloadCompletedPercent:F

    .line 109
    sget-object v2, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->NOT_STARTED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    iput-object v2, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mDownloadState:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    .line 774
    new-instance v2, Lcom/google/android/music/player/AsyncMediaPlayer$2;

    invoke-direct {v2, p0}, Lcom/google/android/music/player/AsyncMediaPlayer$2;-><init>(Lcom/google/android/music/player/AsyncMediaPlayer;)V

    iput-object v2, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 783
    new-instance v2, Lcom/google/android/music/player/AsyncMediaPlayer$3;

    invoke-direct {v2, p0}, Lcom/google/android/music/player/AsyncMediaPlayer$3;-><init>(Lcom/google/android/music/player/AsyncMediaPlayer;)V

    iput-object v2, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 817
    new-instance v2, Lcom/google/android/music/player/AsyncMediaPlayer$4;

    invoke-direct {v2, p0}, Lcom/google/android/music/player/AsyncMediaPlayer$4;-><init>(Lcom/google/android/music/player/AsyncMediaPlayer;)V

    iput-object v2, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->seekListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 825
    new-instance v2, Lcom/google/android/music/player/AsyncMediaPlayer$5;

    invoke-direct {v2, p0}, Lcom/google/android/music/player/AsyncMediaPlayer$5;-><init>(Lcom/google/android/music/player/AsyncMediaPlayer;)V

    iput-object v2, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->infoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 932
    new-instance v2, Lcom/google/android/music/player/AsyncMediaPlayer$6;

    invoke-direct {v2, p0}, Lcom/google/android/music/player/AsyncMediaPlayer$6;-><init>(Lcom/google/android/music/player/AsyncMediaPlayer;)V

    iput-object v2, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mDownloadProgressListener:Lcom/google/android/music/dl/IDownloadProgressListener;

    .line 120
    invoke-static {p1}, Lcom/google/android/music/MusicEventLogger;->getInstance(Landroid/content/Context;)Lcom/google/android/music/MusicEventLogger;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mEventLogger:Lcom/google/android/music/MusicEventLogger;

    .line 121
    iput-object p1, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mContext:Landroid/content/Context;

    .line 122
    iput-object p2, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;

    .line 123
    new-instance v2, Lcom/google/android/music/StopWatch;

    invoke-direct {v2}, Lcom/google/android/music/StopWatch;-><init>()V

    iput-object v2, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/StopWatch;

    .line 125
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isPreGingerbread()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->isPreGingerbread:Z

    .line 127
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 128
    .local v1, pm:Landroid/os/PowerManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 129
    iget-object v2, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 133
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 135
    .local v0, mediaPlayerCreated:Ljava/lang/Object;
    new-instance v2, Lcom/google/android/music/player/AsyncMediaPlayer$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/music/player/AsyncMediaPlayer$1;-><init>(Lcom/google/android/music/player/AsyncMediaPlayer;Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/google/android/music/player/AsyncMediaPlayer;->post(Ljava/lang/Runnable;)Z

    .line 160
    monitor-enter v0

    .line 161
    :goto_85
    :try_start_85
    iget-object v2, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;
    :try_end_87
    .catchall {:try_start_85 .. :try_end_87} :catchall_98

    if-nez v2, :cond_8f

    .line 163
    :try_start_89
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_98
    .catch Ljava/lang/InterruptedException; {:try_start_89 .. :try_end_8c} :catch_8d

    goto :goto_85

    .line 164
    :catch_8d
    move-exception v2

    goto :goto_85

    .line 168
    :cond_8f
    :try_start_8f
    monitor-exit v0
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_98

    .line 170
    iget-object v2, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    iget-object v3, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v7}, Lcom/google/android/music/player/CompatMediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 171
    return-void

    .line 168
    :catchall_98
    move-exception v2

    :try_start_99
    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    throw v2
.end method

.method static synthetic access$000(Lcom/google/android/music/player/AsyncMediaPlayer;)Lcom/google/android/music/player/CompatMediaPlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/music/player/AsyncMediaPlayer;Lcom/google/android/music/player/CompatMediaPlayer;)Lcom/google/android/music/player/CompatMediaPlayer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/music/player/AsyncMediaPlayer;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/music/player/AsyncMediaPlayer;->releaseWakeLock(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/music/player/AsyncMediaPlayer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->isPreGingerbread:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/google/android/music/player/AsyncMediaPlayer;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mDownloadCompletedPercent:F

    return p1
.end method

.method static synthetic access$1202(Lcom/google/android/music/player/AsyncMediaPlayer;Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;)Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mDownloadState:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/google/android/music/player/AsyncMediaPlayer;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/player/AsyncMediaPlayer;->updateDownloadStatus(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/music/player/AsyncMediaPlayer;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/music/player/AsyncMediaPlayer;->removeStatus(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/music/player/AsyncMediaPlayer;)Lcom/google/android/music/StopWatch;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/StopWatch;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/music/player/AsyncMediaPlayer;)Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/music/player/AsyncMediaPlayer;)Lcom/google/android/music/dl/ContentIdentifier;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/music/player/AsyncMediaPlayer;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/android/music/player/AsyncMediaPlayer;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mPosition:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/google/android/music/player/AsyncMediaPlayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/android/music/player/AsyncMediaPlayer;->onWaitForBuffer()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/music/player/AsyncMediaPlayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/android/music/player/AsyncMediaPlayer;->onResumeFromBuffer()V

    return-void
.end method

.method private acquireWakeLock(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncMediaPlayer.acquireWakeLock(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 764
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 765
    return-void
.end method

.method private declared-synchronized addStatus(I)V
    .registers 3
    .parameter "status"

    .prologue
    .line 569
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mStatus:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mStatus:I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 570
    monitor-exit p0

    return-void

    .line 569
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private eventLogBufferingEvent(I)V
    .registers 6
    .parameter

    .prologue
    .line 871
    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;

    iget-object v1, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-interface {v0, v1, p1}, Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;->logStatusEvent(Lcom/google/android/music/dl/ContentIdentifier;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 875
    :goto_7
    return-void

    .line 872
    :catch_8
    move-exception v0

    .line 873
    const-string v1, "MediaPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to log buffering event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method private handleMessageImp(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 185
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/music/player/AsyncMediaPlayer$AsyncCommandCallback;

    .line 187
    .local v0, cb:Lcom/google/android/music/player/AsyncMediaPlayer$AsyncCommandCallback;
    invoke-direct {p0}, Lcom/google/android/music/player/AsyncMediaPlayer;->isReleased()Z

    move-result v4

    if-eqz v4, :cond_2b

    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2b

    .line 188
    const-string v3, "MediaPlaybackService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Command after release: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :goto_2a
    return-void

    .line 192
    :cond_2b
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_fc

    goto :goto_2a

    .line 196
    :pswitch_31
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v3, :cond_39

    :goto_35
    invoke-direct {p0, v3, v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->setDataSourceImpl(ZLcom/google/android/music/player/AsyncMediaPlayer$AsyncCommandCallback;)V

    goto :goto_2a

    :cond_39
    const/4 v3, 0x0

    goto :goto_35

    .line 200
    :pswitch_3b
    invoke-direct {p0}, Lcom/google/android/music/player/AsyncMediaPlayer;->startFX()V

    .line 201
    iget-object v3, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    invoke-virtual {v3}, Lcom/google/android/music/player/CompatMediaPlayer;->start()V

    .line 202
    iget-object v3, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    invoke-virtual {v3}, Lcom/google/android/music/player/CompatMediaPlayer;->getCurrentPosition()I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mPosition:J

    .line 203
    iget-object v3, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/StopWatch;

    invoke-virtual {v3}, Lcom/google/android/music/StopWatch;->reset()V

    .line 204
    iget-object v3, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/StopWatch;

    invoke-virtual {v3}, Lcom/google/android/music/StopWatch;->start()V

    goto :goto_2a

    .line 208
    :pswitch_57
    iget-object v3, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    invoke-virtual {v3}, Lcom/google/android/music/player/CompatMediaPlayer;->pause()V

    .line 209
    iget-object v3, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    invoke-virtual {v3}, Lcom/google/android/music/player/CompatMediaPlayer;->getCurrentPosition()I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mPosition:J

    .line 210
    iget-object v3, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/StopWatch;

    invoke-virtual {v3}, Lcom/google/android/music/StopWatch;->pause()V

    .line 211
    iget-object v3, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/StopWatch;

    invoke-virtual {v3}, Lcom/google/android/music/StopWatch;->reset()V

    .line 212
    invoke-direct {p0}, Lcom/google/android/music/player/AsyncMediaPlayer;->stopFX()V

    goto :goto_2a

    .line 216
    :pswitch_73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AsyncMediaPlayer.RELEASE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 217
    invoke-direct {p0}, Lcom/google/android/music/player/AsyncMediaPlayer;->notifyIfSongPlayed()V

    .line 218
    iget-object v3, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    invoke-virtual {v3}, Lcom/google/android/music/player/CompatMediaPlayer;->release()V

    .line 220
    iget-object v3, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/StopWatch;

    invoke-virtual {v3}, Lcom/google/android/music/StopWatch;->pause()V

    .line 221
    iget-object v3, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/StopWatch;

    invoke-virtual {v3}, Lcom/google/android/music/StopWatch;->reset()V

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AsyncMediaPlayer.RELEASE done "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 224
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    .line 227
    :try_start_b4
    iget-object v3, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;

    iget-object v4, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mDownloadProgressListener:Lcom/google/android/music/dl/IDownloadProgressListener;

    invoke-interface {v3, v4}, Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;->removeDownloadProgressListener(Lcom/google/android/music/dl/IDownloadProgressListener;)V
    :try_end_bb
    .catch Landroid/os/RemoteException; {:try_start_b4 .. :try_end_bb} :catch_c5

    .line 231
    :goto_bb
    invoke-virtual {p0}, Lcom/google/android/music/player/AsyncMediaPlayer;->quit()V

    .line 234
    const-string v3, "release"

    invoke-direct {p0, v3}, Lcom/google/android/music/player/AsyncMediaPlayer;->releaseWakeLock(Ljava/lang/String;)V

    goto/16 :goto_2a

    .line 228
    :catch_c5
    move-exception v1

    .line 229
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "MediaPlaybackService"

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_bb

    .line 238
    .end local v1           #e:Landroid/os/RemoteException;
    :pswitch_d0
    iget-object v3, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/StopWatch;

    invoke-virtual {v3}, Lcom/google/android/music/StopWatch;->pause()V

    .line 239
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v3}, Lcom/google/android/music/player/AsyncMediaPlayer;->seekImpl(I)V

    .line 240
    iget-object v3, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/StopWatch;

    invoke-virtual {v3}, Lcom/google/android/music/StopWatch;->reset()V

    goto/16 :goto_2a

    .line 244
    :pswitch_e1
    iget-object v3, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    invoke-virtual {v3}, Lcom/google/android/music/player/CompatMediaPlayer;->reset()V

    goto/16 :goto_2a

    .line 248
    :pswitch_e8
    iget v3, p1, Landroid/os/Message;->arg1:I

    int-to-float v3, v3

    const/high16 v4, 0x447a

    div-float v2, v3, v4

    .line 249
    .local v2, vol:F
    iget-object v3, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    invoke-virtual {v3, v2, v2}, Lcom/google/android/music/player/CompatMediaPlayer;->setVolume(FF)V

    goto/16 :goto_2a

    .line 253
    .end local v2           #vol:F
    :pswitch_f6
    invoke-direct {p0}, Lcom/google/android/music/player/AsyncMediaPlayer;->updateDownloadStatusImpl()V

    goto/16 :goto_2a

    .line 192
    nop

    :pswitch_data_fc
    .packed-switch 0x1
        :pswitch_31
        :pswitch_3b
        :pswitch_57
        :pswitch_73
        :pswitch_e8
        :pswitch_d0
        :pswitch_e1
        :pswitch_f6
    .end packed-switch
.end method

.method private isReleased()Z
    .registers 2

    .prologue
    .line 659
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->isStatusOn(I)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized isStatusOn(I)Z
    .registers 3
    .parameter "status"

    .prologue
    .line 577
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mStatus:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    and-int/2addr v0, p1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_7
    monitor-exit p0

    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_7

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private notifyIfSongPlayed()V
    .registers 9

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/google/android/music/player/AsyncMediaPlayer;->duration()J

    move-result-wide v0

    .line 260
    .local v0, duration:J
    invoke-virtual {p0}, Lcom/google/android/music/player/AsyncMediaPlayer;->position()J

    move-result-wide v3

    .line 261
    .local v3, position:J
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-lez v5, :cond_27

    iget-object v5, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    if-eqz v5, :cond_27

    iget-object v5, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    if-eqz v5, :cond_27

    long-to-float v5, v3

    long-to-float v6, v0

    const v7, 0x3f266666

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_27

    .line 264
    :try_start_20
    iget-object v5, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;

    iget-object v6, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-interface {v5, v6}, Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;->markSongPlayed(Lcom/google/android/music/dl/ContentIdentifier;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_28

    .line 269
    :cond_27
    :goto_27
    return-void

    .line 265
    :catch_28
    move-exception v2

    .line 266
    .local v2, e:Landroid/os/RemoteException;
    const-string v5, "MediaPlaybackService"

    const-string v6, "Could not mark song as played"

    invoke-static {v5, v6, v2}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_27
.end method

.method private onResumeFromBuffer()V
    .registers 2

    .prologue
    .line 920
    invoke-virtual {p0}, Lcom/google/android/music/player/AsyncMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/google/android/music/player/AsyncMediaPlayer;->isPreparing()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 923
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->eventLogBufferingEvent(I)V

    .line 925
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->removeStatus(I)V

    .line 926
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/StopWatch;

    invoke-virtual {v0}, Lcom/google/android/music/StopWatch;->start()V

    .line 928
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;

    invoke-interface {v0}, Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;->notifyPlayStateChanged()V

    .line 930
    :cond_1f
    return-void
.end method

.method private onWaitForBuffer()V
    .registers 6

    .prologue
    .line 878
    const/4 v1, 0x0

    .line 880
    .local v1, state:Lcom/google/android/music/dl/DownloadState;
    :try_start_1
    iget-object v2, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;

    iget-object v3, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-interface {v2, v3}, Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;->getStreamingDownloadState(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadState;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_1c

    move-result-object v1

    .line 885
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/google/android/music/dl/DownloadState;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v2

    sget-object v3, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne v2, v3, :cond_36

    .line 886
    :cond_13
    iget-object v2, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;

    invoke-interface {v2}, Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;->notifyPlaybackFailure()V

    .line 887
    invoke-virtual {p0}, Lcom/google/android/music/player/AsyncMediaPlayer;->stop()V

    .line 901
    :cond_1b
    :goto_1b
    return-void

    .line 881
    :catch_1c
    move-exception v0

    .line 882
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "MediaPlaybackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get download state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 888
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_36
    invoke-virtual {p0}, Lcom/google/android/music/player/AsyncMediaPlayer;->isPreparing()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 892
    const/16 v2, 0x67

    invoke-direct {p0, v2}, Lcom/google/android/music/player/AsyncMediaPlayer;->eventLogBufferingEvent(I)V

    .line 894
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/google/android/music/player/AsyncMediaPlayer;->addStatus(I)V

    .line 895
    iget-object v2, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    invoke-virtual {v2}, Lcom/google/android/music/player/CompatMediaPlayer;->getCurrentPosition()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mPosition:J

    .line 896
    iget-object v2, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/StopWatch;

    invoke-virtual {v2}, Lcom/google/android/music/StopWatch;->pause()V

    .line 897
    iget-object v2, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/StopWatch;

    invoke-virtual {v2}, Lcom/google/android/music/StopWatch;->reset()V

    .line 898
    iget-object v2, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;

    invoke-interface {v2}, Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;->notifyPlayStateChanged()V

    goto :goto_1b
.end method

.method private releaseWakeLock(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncMediaPlayer.releaseWakeLock(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 771
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 772
    return-void
.end method

.method private declared-synchronized removeStatus(I)V
    .registers 4
    .parameter "status"

    .prologue
    .line 573
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mStatus:I

    const v1, 0x7fffffff

    xor-int/2addr v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mStatus:I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 574
    monitor-exit p0

    return-void

    .line 573
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private seekImpl(I)V
    .registers 8
    .parameter "ms"

    .prologue
    const-wide/16 v4, 0x0

    const/16 v3, 0x8

    .line 526
    invoke-virtual {p0}, Lcom/google/android/music/player/AsyncMediaPlayer;->isStreaming()Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 527
    invoke-direct {p0, v3}, Lcom/google/android/music/player/AsyncMediaPlayer;->addStatus(I)V

    .line 528
    iget-object v1, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    invoke-virtual {v1}, Lcom/google/android/music/player/CompatMediaPlayer;->stop()V

    .line 529
    iget-object v1, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    invoke-virtual {v1}, Lcom/google/android/music/player/CompatMediaPlayer;->reset()V

    .line 531
    :try_start_17
    iget-object v1, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;

    invoke-interface {v1}, Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;->notifyOpenStarted()V

    .line 532
    iget-object v1, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/android/music/player/CompatMediaPlayer;->setAudioStreamType(I)V

    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&seek="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/music/player/AsyncMediaPlayer;->setMediaPlayerDataSource(Ljava/lang/String;)V

    .line 534
    iget-object v1, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    invoke-virtual {v1}, Lcom/google/android/music/player/CompatMediaPlayer;->prepare()V

    .line 535
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/google/android/music/player/AsyncMediaPlayer;->removeStatus(I)V

    .line 536
    int-to-long v1, p1

    iput-wide v1, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mHttpSeek:J

    .line 537
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mPosition:J

    .line 538
    iget-object v1, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;

    invoke-interface {v1}, Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;->notifyOpenComplete()V

    .line 539
    invoke-virtual {p0}, Lcom/google/android/music/player/AsyncMediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 540
    iget-object v1, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    invoke-virtual {v1}, Lcom/google/android/music/player/CompatMediaPlayer;->start()V
    :try_end_5f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_5f} :catch_6b
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_5f} :catch_84

    .line 563
    :cond_5f
    :goto_5f
    invoke-virtual {p0}, Lcom/google/android/music/player/AsyncMediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 564
    iget-object v1, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/StopWatch;

    invoke-virtual {v1}, Lcom/google/android/music/StopWatch;->start()V

    .line 566
    :cond_6a
    :goto_6a
    return-void

    .line 542
    :catch_6b
    move-exception v0

    .line 543
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaPlaybackService"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 544
    invoke-direct {p0, v3}, Lcom/google/android/music/player/AsyncMediaPlayer;->removeStatus(I)V

    .line 545
    invoke-direct {p0}, Lcom/google/android/music/player/AsyncMediaPlayer;->isReleased()Z

    move-result v1

    if-nez v1, :cond_6a

    .line 546
    iget-object v1, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;

    invoke-interface {v1}, Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;->notifyPlaybackFailure()V

    goto :goto_6a

    .line 549
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_84
    move-exception v0

    .line 550
    .local v0, e:Ljava/io/IOException;
    const-string v1, "MediaPlaybackService"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 551
    invoke-direct {p0, v3}, Lcom/google/android/music/player/AsyncMediaPlayer;->removeStatus(I)V

    .line 552
    invoke-direct {p0}, Lcom/google/android/music/player/AsyncMediaPlayer;->isReleased()Z

    move-result v1

    if-nez v1, :cond_6a

    .line 553
    iget-object v1, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;

    invoke-interface {v1}, Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;->notifyPlaybackFailure()V

    goto :goto_6a

    .line 558
    .end local v0           #e:Ljava/io/IOException;
    :cond_9d
    iget-object v1, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    invoke-virtual {v1, p1}, Lcom/google/android/music/player/CompatMediaPlayer;->seekTo(I)V

    .line 559
    iput-wide v4, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mHttpSeek:J

    .line 560
    iget-object v1, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    invoke-virtual {v1}, Lcom/google/android/music/player/CompatMediaPlayer;->getCurrentPosition()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mPosition:J

    .line 561
    iget-object v1, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;

    invoke-interface {v1}, Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;->notifyPlayStateChanged()V

    goto :goto_5f
.end method

.method private setDataSourceImpl(ZLcom/google/android/music/player/AsyncMediaPlayer$AsyncCommandCallback;)V
    .registers 14
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/16 v8, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 293
    invoke-direct {p0, v8}, Lcom/google/android/music/player/AsyncMediaPlayer;->addStatus(I)V

    .line 294
    const/4 v3, 0x0

    .line 298
    new-array v0, v1, [I

    aput v2, v0, v2

    .line 299
    new-array v4, v1, [Ljava/lang/String;

    .line 302
    :try_start_10
    iget-object v5, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;

    iget-object v6, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-interface {v5, v6}, Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;->getPreferredMusicId(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    .line 303
    iget-object v5, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;

    iget-object v6, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-interface {v5, v6, v0, v4}, Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;->getSourceAccountAndId(Lcom/google/android/music/dl/ContentIdentifier;[I[Ljava/lang/String;)V

    .line 304
    const/4 v5, 0x0

    aget v0, v0, v5

    int-to-long v5, v0

    iput-wide v5, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentSongSourceAccount:J

    .line 305
    const/4 v0, 0x0

    aget-object v0, v4, v0

    iput-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentSongSourceId:Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/android/music/dl/ContentIdentifier;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    aput-object v6, v4, v5

    invoke-interface {v0, v4}, Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;->requiresDownloadManager([Lcom/google/android/music/dl/ContentIdentifier;)[Lcom/google/android/music/dl/ContentIdentifier;
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_39} :catch_90

    move-result-object v0

    if-eqz v0, :cond_8e

    move v0, v1

    .line 314
    :goto_3d
    if-eqz v0, :cond_261

    .line 324
    if-nez p1, :cond_b2

    .line 325
    :try_start_41
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;

    iget-object v3, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-interface {v0, v3}, Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;->getStreamingDownloadState(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadState;

    move-result-object v0

    .line 326
    if-eqz v0, :cond_b2

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadState;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v3

    sget-object v4, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne v3, v4, :cond_b2

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadState;->getErrorType()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/music/dl/DownloadOrder;->isServerError(I)Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 330
    const-string v1, "MediaPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Song already in error state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadState;->getErrorType()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".  Not retrying"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->removeStatus(I)V

    .line 333
    const/16 v0, 0x30

    invoke-direct {p0, v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->addStatus(I)V

    .line 334
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/google/android/music/player/AsyncMediaPlayer$AsyncCommandCallback;->onFailure(Z)V
    :try_end_8d
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_8d} :catch_ef

    .line 472
    :cond_8d
    :goto_8d
    return-void

    :cond_8e
    move v0, v2

    .line 306
    goto :goto_3d

    .line 308
    :catch_90
    move-exception v0

    .line 309
    const-string v0, "MediaPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find song id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-direct {p0, v8}, Lcom/google/android/music/player/AsyncMediaPlayer;->removeStatus(I)V

    .line 311
    invoke-interface {p2, v1}, Lcom/google/android/music/player/AsyncMediaPlayer$AsyncCommandCallback;->onFailure(Z)V

    goto :goto_8d

    .line 339
    :cond_b2
    :try_start_b2
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {v0}, Lcom/google/android/music/dl/ContentIdentifier;->isDefaultDomain()Z

    move-result v0

    if-nez v0, :cond_fa

    .line 340
    const/4 v0, 0x1

    .line 341
    iget-object v3, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;

    iget-object v4, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-interface {v3, v4, v0}, Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;->createDownloadOrder(Lcom/google/android/music/dl/ContentIdentifier;I)Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v0

    .line 342
    iget-object v3, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;

    invoke-interface {v3, v0}, Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;->streamSongWithOrder(Lcom/google/android/music/dl/DownloadOrder;)Lcom/google/android/music/dl/DownloadState;

    move-result-object v3

    .line 346
    :goto_c9
    if-nez v3, :cond_103

    .line 347
    const-string v0, "MediaPlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create download for song id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->removeStatus(I)V

    .line 349
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/google/android/music/player/AsyncMediaPlayer$AsyncCommandCallback;->onFailure(Z)V
    :try_end_ee
    .catch Landroid/os/RemoteException; {:try_start_b2 .. :try_end_ee} :catch_ef

    goto :goto_8d

    .line 375
    :catch_ef
    move-exception v0

    .line 376
    const-string v1, "MediaPlaybackService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8d

    .line 344
    :cond_fa
    :try_start_fa
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;

    iget-object v3, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-interface {v0, v3}, Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;->streamSong(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadState;

    move-result-object v3

    goto :goto_c9

    .line 352
    :cond_103
    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadState;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentUrl:Ljava/lang/String;

    .line 353
    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadState;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v0

    .line 354
    sget-object v4, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne v0, v4, :cond_142

    .line 355
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->removeStatus(I)V

    .line 356
    const/16 v0, 0x30

    invoke-direct {p0, v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->addStatus(I)V

    .line 357
    const-string v0, "MediaPlaybackService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failing playback because download failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadState;->getErrorType()I

    move-result v0

    if-ne v0, v1, :cond_140

    :goto_13b
    invoke-interface {p2, v1}, Lcom/google/android/music/player/AsyncMediaPlayer$AsyncCommandCallback;->onFailure(Z)V

    goto/16 :goto_8d

    :cond_140
    move v1, v2

    goto :goto_13b

    .line 362
    :cond_142
    sget-object v4, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->NOT_STARTED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-eq v0, v4, :cond_14a

    sget-object v4, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->DOWNLOADING:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne v0, v4, :cond_237

    .line 364
    :cond_14a
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->addStatus(I)V

    .line 370
    :cond_14f
    :goto_14f
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentUrl:Ljava/lang/String;

    .line 371
    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadState;->getDuration()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mDuration:J

    .line 373
    iget-object v4, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;

    iget-object v5, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    iget-object v6, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mDownloadProgressListener:Lcom/google/android/music/dl/IDownloadProgressListener;

    invoke-interface {v4, v5, v6}, Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;->addDownloadProgressListener(Lcom/google/android/music/dl/ContentIdentifier;Lcom/google/android/music/dl/IDownloadProgressListener;)Z
    :try_end_160
    .catch Landroid/os/RemoteException; {:try_start_fa .. :try_end_160} :catch_ef

    move-object v4, v3

    move v3, v1

    .line 393
    :goto_162
    invoke-virtual {p0}, Lcom/google/android/music/player/AsyncMediaPlayer;->isStreaming()Z

    move-result v5

    if-eqz v5, :cond_16d

    .line 394
    iget-object v5, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;

    invoke-interface {v5}, Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;->notifyOpenStarted()V

    .line 396
    :cond_16d
    const-string v5, "content://"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    .line 399
    :try_start_173
    iget-object v6, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    invoke-virtual {v6}, Lcom/google/android/music/player/CompatMediaPlayer;->reset()V

    .line 400
    iget-object v6, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/google/android/music/player/CompatMediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 401
    if-eqz v5, :cond_2d6

    .line 402
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 403
    iget-object v5, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    iget-object v6, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v0}, Lcom/google/android/music/player/CompatMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 404
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->removeStatus(I)V

    .line 408
    :goto_190
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/google/android/music/player/CompatMediaPlayer;->setAudioStreamType(I)V

    .line 410
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    iget-object v5, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v5}, Lcom/google/android/music/player/CompatMediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 411
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    iget-object v5, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v5}, Lcom/google/android/music/player/CompatMediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 412
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    iget-object v5, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->seekListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v0, v5}, Lcom/google/android/music/player/CompatMediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 414
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/player/CompatMediaPlayer;->prepare()V

    .line 416
    invoke-direct {p0}, Lcom/google/android/music/player/AsyncMediaPlayer;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_30b

    .line 419
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->removeStatus(I)V
    :try_end_1bb
    .catch Ljava/io/IOException; {:try_start_173 .. :try_end_1bb} :catch_1bd
    .catch Ljava/lang/IllegalArgumentException; {:try_start_173 .. :try_end_1bb} :catch_2db

    goto/16 :goto_8d

    .line 436
    :catch_1bd
    move-exception v0

    .line 437
    invoke-direct {p0}, Lcom/google/android/music/player/AsyncMediaPlayer;->isReleased()Z

    move-result v3

    if-nez v3, :cond_1eb

    .line 438
    const-string v3, "MediaPlaybackService"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 439
    iget-object v3, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mEventLogger:Lcom/google/android/music/MusicEventLogger;

    const-string v5, "playerError"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "failureMsg"

    aput-object v7, v6, v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    const-string v7, "failureStack"

    aput-object v7, v6, v9

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v10

    invoke-virtual {v3, v5, v6}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 452
    :cond_1eb
    :goto_1eb
    invoke-direct {p0, v8}, Lcom/google/android/music/player/AsyncMediaPlayer;->removeStatus(I)V

    .line 453
    invoke-direct {p0}, Lcom/google/android/music/player/AsyncMediaPlayer;->isReleased()Z

    move-result v0

    if-nez v0, :cond_204

    .line 454
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->addStatus(I)V

    .line 456
    if-eqz v4, :cond_201

    .line 457
    invoke-virtual {v4}, Lcom/google/android/music/dl/DownloadState;->getErrorType()I

    move-result v0

    if-ne v0, v1, :cond_332

    .line 459
    :cond_201
    :goto_201
    invoke-interface {p2, v1}, Lcom/google/android/music/player/AsyncMediaPlayer$AsyncCommandCallback;->onFailure(Z)V

    .line 462
    :cond_204
    iget-wide v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentSongSourceAccount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8d

    .line 464
    const-string v0, "MediaPlaybackService"

    const-string v1, "Requesting import of media store"

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mContext:Landroid/content/Context;

    const-class v2, Lcom/google/android/music/store/MediaStoreImportService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 466
    const-string v1, "MediaStoreImportService.import"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    iget-object v1, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    .line 468
    if-nez v0, :cond_8d

    .line 469
    const-string v0, "MediaPlaybackService"

    const-string v1, "Failed to start MediaStoreImportService"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/google/android/music/log/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8d

    .line 365
    :cond_237
    :try_start_237
    iget-boolean v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->LOGV:Z

    if-eqz v0, :cond_14f

    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentUrl:Ljava/lang/String;

    const-string v4, "http"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14f

    .line 366
    const-string v0, "MediaPlaybackService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Song is not downloading, but given http streamUrl: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/android/music/log/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25f
    .catch Landroid/os/RemoteException; {:try_start_237 .. :try_end_25f} :catch_ef

    goto/16 :goto_14f

    .line 381
    :cond_261
    iget-wide v4, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentSongSourceAccount:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_2d3

    const-string v0, ""

    .line 383
    :goto_26b
    const v4, 0x12110

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {v6}, Lcom/google/android/music/dl/ContentIdentifier;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    aput-object v0, v5, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 387
    const-string v4, "MediaPlaybackService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Event logging MUSIC_START_PLAYBACK_REQUESTED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ": local playback"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/music/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentUrl:Ljava/lang/String;

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/google/android/music/store/MusicContent$XAudio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {v4}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v3

    move v3, v2

    goto/16 :goto_162

    .line 381
    :cond_2d3
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentSongSourceId:Ljava/lang/String;

    goto :goto_26b

    .line 406
    :cond_2d6
    :try_start_2d6
    invoke-direct {p0, v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->setMediaPlayerDataSource(Ljava/lang/String;)V
    :try_end_2d9
    .catch Ljava/io/IOException; {:try_start_2d6 .. :try_end_2d9} :catch_1bd
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d6 .. :try_end_2d9} :catch_2db

    goto/16 :goto_190

    .line 443
    :catch_2db
    move-exception v0

    .line 444
    invoke-direct {p0}, Lcom/google/android/music/player/AsyncMediaPlayer;->isReleased()Z

    move-result v3

    if-nez v3, :cond_1eb

    .line 445
    const-string v3, "MediaPlaybackService"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 446
    iget-object v3, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mEventLogger:Lcom/google/android/music/MusicEventLogger;

    const-string v5, "playerError"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "failureMsg"

    aput-object v7, v6, v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    const-string v7, "failureStack"

    aput-object v7, v6, v9

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v10

    invoke-virtual {v3, v5, v6}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1eb

    .line 423
    :cond_30b
    :try_start_30b
    invoke-direct {p0}, Lcom/google/android/music/player/AsyncMediaPlayer;->startFX()V

    .line 424
    iget-boolean v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->isPreGingerbread:Z

    if-nez v0, :cond_319

    .line 425
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    iget-object v5, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->infoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v0, v5}, Lcom/google/android/music/player/CompatMediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 427
    :cond_319
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->addStatus(I)V

    .line 428
    if-nez v3, :cond_328

    .line 429
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/player/CompatMediaPlayer;->getDuration()I

    move-result v0

    int-to-long v5, v0

    iput-wide v5, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mDuration:J

    .line 431
    :cond_328
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->removeStatus(I)V

    .line 432
    invoke-interface {p2}, Lcom/google/android/music/player/AsyncMediaPlayer$AsyncCommandCallback;->onSuccess()V
    :try_end_330
    .catch Ljava/io/IOException; {:try_start_30b .. :try_end_330} :catch_1bd
    .catch Ljava/lang/IllegalArgumentException; {:try_start_30b .. :try_end_330} :catch_2db

    goto/16 :goto_8d

    :cond_332
    move v1, v2

    .line 457
    goto/16 :goto_201
.end method

.method private setMediaPlayerDataSource(Ljava/lang/String;)V
    .registers 6
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 482
    iget-object v2, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mAtHomeMediaPlayerConfig:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 483
    iget-object v2, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    iget-object v3, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mAtHomeMediaPlayerConfig:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/support/place/music/MediaPlayerConfigurator;->configureMediaPlayer(Landroid/media/MediaPlayer;Ljava/lang/String;)V

    .line 486
    :cond_b
    const-string v2, "http"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 487
    iget-object v2, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    invoke-virtual {v2, p1}, Lcom/google/android/music/player/CompatMediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 498
    :goto_18
    return-void

    .line 492
    :cond_19
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 493
    .local v1, fis:Ljava/io/FileInputStream;
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 495
    .local v0, fd:Ljava/io/FileDescriptor;
    iget-object v2, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    invoke-virtual {v2, v0}, Lcom/google/android/music/player/CompatMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 496
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_18
.end method

.method private startFX()V
    .registers 4

    .prologue
    .line 592
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 593
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {p0}, Lcom/google/android/music/player/AsyncMediaPlayer;->getAudioSessionId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 594
    const-string v1, "android.media.extra.PACKAGE_NAME"

    iget-object v2, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 595
    iget-object v1, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 596
    return-void
.end method

.method private stopFX()V
    .registers 4

    .prologue
    .line 585
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 586
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {p0}, Lcom/google/android/music/player/AsyncMediaPlayer;->getAudioSessionId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 587
    const-string v1, "android.media.extra.PACKAGE_NAME"

    iget-object v2, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    iget-object v1, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 589
    return-void
.end method

.method private updateDownloadStatus(J)V
    .registers 6
    .parameter "millisTillNextPossibleOutage"

    .prologue
    const/16 v2, 0x8

    .line 841
    invoke-virtual {p0, v2}, Lcom/google/android/music/player/AsyncMediaPlayer;->removeMessages(I)V

    .line 842
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mDownloadState:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    sget-object v1, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->COMPLETED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-eq v0, v1, :cond_e

    .line 843
    invoke-virtual {p0, v2, p1, p2}, Lcom/google/android/music/player/AsyncMediaPlayer;->sendEmptyMessageDelayed(IJ)Z

    .line 845
    :cond_e
    return-void
.end method

.method private updateDownloadStatusImpl()V
    .registers 12

    .prologue
    .line 848
    invoke-virtual {p0}, Lcom/google/android/music/player/AsyncMediaPlayer;->duration()J

    move-result-wide v5

    .line 849
    .local v5, totalDuration:J
    invoke-virtual {p0}, Lcom/google/android/music/player/AsyncMediaPlayer;->position()J

    move-result-wide v7

    const-wide/16 v9, 0x1388

    add-long v0, v7, v9

    .line 850
    .local v0, currentPosition:J
    long-to-float v7, v0

    long-to-float v8, v5

    div-float v4, v7, v8

    .line 852
    .local v4, playbackCompletePercent:F
    iget v7, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mDownloadCompletedPercent:F

    cmpl-float v7, v7, v4

    if-lez v7, :cond_24

    .line 855
    invoke-direct {p0}, Lcom/google/android/music/player/AsyncMediaPlayer;->onResumeFromBuffer()V

    .line 859
    iget v7, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mDownloadCompletedPercent:F

    long-to-float v8, v5

    mul-float/2addr v7, v8

    float-to-long v7, v7

    sub-long v2, v7, v0

    .line 861
    .local v2, nextSchedule:J
    invoke-direct {p0, v2, v3}, Lcom/google/android/music/player/AsyncMediaPlayer;->updateDownloadStatus(J)V

    .line 867
    .end local v2           #nextSchedule:J
    :goto_23
    return-void

    .line 865
    :cond_24
    invoke-direct {p0}, Lcom/google/android/music/player/AsyncMediaPlayer;->onWaitForBuffer()V

    goto :goto_23
.end method


# virtual methods
.method public duration()J
    .registers 3

    .prologue
    .line 733
    iget-wide v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mDuration:J

    return-wide v0
.end method

.method public getAtHomeMediaPlayerConfig()Ljava/lang/String;
    .registers 2

    .prologue
    .line 908
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mAtHomeMediaPlayerConfig:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioSessionId()I
    .registers 5

    .prologue
    .line 693
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getAudioSessionId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 694
    .local v0, m:Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1f

    move-result v1

    .line 699
    .end local v0           #m:Ljava/lang/reflect/Method;
    :goto_1e
    return v1

    .line 695
    :catch_1f
    move-exception v1

    .line 699
    const/4 v1, -0x1

    goto :goto_1e
.end method

.method public getDebugInfo()Ljava/lang/String;
    .registers 5

    .prologue
    .line 704
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;

    iget-object v2, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-interface {v1, v2}, Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;->getDebugInfo(Lcom/google/android/music/dl/ContentIdentifier;)Ljava/lang/String;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 708
    :goto_8
    return-object v1

    .line 705
    :catch_9
    move-exception v0

    .line 706
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MediaPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get debug info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getErrorType()I
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 674
    iget-object v3, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    if-nez v3, :cond_6

    .line 688
    :cond_5
    :goto_5
    return v2

    .line 678
    :cond_6
    const/4 v1, 0x0

    .line 680
    .local v1, state:Lcom/google/android/music/dl/DownloadState;
    :try_start_7
    iget-object v3, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;

    iget-object v4, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-interface {v3, v4}, Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;->getStreamingDownloadState(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadState;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_16

    move-result-object v1

    .line 685
    :goto_f
    if-eqz v1, :cond_5

    .line 688
    invoke-virtual {v1}, Lcom/google/android/music/dl/DownloadState;->getErrorType()I

    move-result v2

    goto :goto_5

    .line 681
    :catch_16
    move-exception v0

    .line 682
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MediaPlaybackService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get download state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method public getPlayerStatusString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    if-nez v0, :cond_7

    .line 520
    const-string v0, "no player"

    .line 522
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/player/CompatMediaPlayer;->isPlaying()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getRemoteSongId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 506
    iget-wide v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentSongSourceAccount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const-string v0, ""

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentSongSourceId:Ljava/lang/String;

    goto :goto_a
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 176
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/music/player/AsyncMediaPlayer;->handleMessageImp(Landroid/os/Message;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 182
    return-void

    .line 177
    :catch_4
    move-exception v0

    .line 178
    .local v0, t:Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 179
    const-string v1, "handleMessage"

    invoke-direct {p0, v1}, Lcom/google/android/music/player/AsyncMediaPlayer;->releaseWakeLock(Ljava/lang/String;)V

    .line 180
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isInErrorState()Z
    .registers 2

    .prologue
    .line 671
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->isStatusOn(I)Z

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 581
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->isStatusOn(I)Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 662
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->isStatusOn(I)Z

    move-result v0

    return v0
.end method

.method public isPreparing()Z
    .registers 2

    .prologue
    .line 665
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->isStatusOn(I)Z

    move-result v0

    return v0
.end method

.method public isRenderingAudioLocally()Z
    .registers 2

    .prologue
    .line 916
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mAtHomeMediaPlayerConfig:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isStreaming()Z
    .registers 2

    .prologue
    .line 668
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->isStatusOn(I)Z

    move-result v0

    return v0
.end method

.method public pause()V
    .registers 4

    .prologue
    const/4 v2, 0x3

    .line 611
    invoke-direct {p0}, Lcom/google/android/music/player/AsyncMediaPlayer;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 623
    :goto_7
    return-void

    .line 614
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncMediaPlayer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ").pause "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 615
    invoke-virtual {p0, v2}, Lcom/google/android/music/player/AsyncMediaPlayer;->removeMessages(I)V

    .line 616
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->removeMessages(I)V

    .line 617
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->removeMessages(I)V

    .line 619
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->removeStatus(I)V

    .line 621
    const-string v0, "pause"

    invoke-direct {p0, v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->acquireWakeLock(Ljava/lang/String;)V

    .line 622
    invoke-virtual {p0, v2}, Lcom/google/android/music/player/AsyncMediaPlayer;->sendEmptyMessage(I)Z

    goto :goto_7
.end method

.method public position()J
    .registers 5

    .prologue
    .line 729
    iget-wide v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mPosition:J

    iget-object v2, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/StopWatch;

    invoke-virtual {v2}, Lcom/google/android/music/StopWatch;->getTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mHttpSeek:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public release()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 640
    invoke-direct {p0}, Lcom/google/android/music/player/AsyncMediaPlayer;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 656
    :goto_7
    return-void

    .line 643
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncMediaPlayer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ").release "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 646
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    invoke-virtual {v0, v2}, Lcom/google/android/music/player/CompatMediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 647
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    invoke-virtual {v0, v2}, Lcom/google/android/music/player/CompatMediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 648
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    invoke-virtual {v0, v2}, Lcom/google/android/music/player/CompatMediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 649
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    invoke-virtual {v0, v2}, Lcom/google/android/music/player/CompatMediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 650
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    invoke-virtual {v0, v2}, Lcom/google/android/music/player/CompatMediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 651
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->addStatus(I)V

    .line 652
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->removeStatus(I)V

    .line 653
    invoke-virtual {p0, v2}, Lcom/google/android/music/player/AsyncMediaPlayer;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 654
    const-string v0, "release"

    invoke-direct {p0, v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->acquireWakeLock(Ljava/lang/String;)V

    .line 655
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->sendEmptyMessage(I)Z

    goto :goto_7
.end method

.method public seek(J)J
    .registers 7
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    const/4 v3, 0x6

    .line 737
    invoke-direct {p0}, Lcom/google/android/music/player/AsyncMediaPlayer;->isReleased()Z

    move-result v2

    if-eqz v2, :cond_b

    move-wide p1, v0

    .line 747
    :goto_a
    return-wide p1

    .line 740
    :cond_b
    invoke-virtual {p0, v3}, Lcom/google/android/music/player/AsyncMediaPlayer;->removeMessages(I)V

    .line 741
    iput-wide p1, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mPosition:J

    .line 742
    iput-wide v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mHttpSeek:J

    .line 743
    long-to-int v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v3, v0, v1}, Lcom/google/android/music/player/AsyncMediaPlayer;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 744
    iget-object v1, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/StopWatch;

    invoke-virtual {v1}, Lcom/google/android/music/StopWatch;->reset()V

    .line 745
    const-string v1, "seek"

    invoke-direct {p0, v1}, Lcom/google/android/music/player/AsyncMediaPlayer;->acquireWakeLock(Ljava/lang/String;)V

    .line 746
    invoke-virtual {p0, v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a
.end method

.method public setAtHomeMediaPlayerConfig(Ljava/lang/String;)V
    .registers 2
    .parameter "mediaPlayerConfig"

    .prologue
    .line 904
    iput-object p1, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mAtHomeMediaPlayerConfig:Ljava/lang/String;

    .line 905
    return-void
.end method

.method public setAudioSessionId(I)V
    .registers 8
    .parameter "fxsession"

    .prologue
    .line 715
    if-gez p1, :cond_3

    .line 726
    :goto_2
    return-void

    .line 720
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setAudioSessionId"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 721
    .local v0, m:Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_26} :catch_27

    goto :goto_2

    .line 722
    .end local v0           #m:Ljava/lang/reflect/Method;
    :catch_27
    move-exception v1

    goto :goto_2
.end method

.method public setDataSource(Lcom/google/android/music/dl/ContentIdentifier;ZLcom/google/android/music/player/AsyncMediaPlayer$AsyncCommandCallback;)V
    .registers 8
    .parameter "songId"
    .parameter "fromUserAction"
    .parameter "cb"

    .prologue
    const/4 v1, 0x1

    .line 273
    if-nez p1, :cond_b

    .line 274
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid ContentIdentifier"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 276
    :cond_b
    iget-object v2, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    if-eqz v2, :cond_34

    .line 277
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t reuse. Previously used for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", now for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 280
    :cond_34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AsyncMediaPlayer setDataSource "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 281
    iput-object p1, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    .line 282
    invoke-virtual {p0, v1, p3}, Lcom/google/android/music/player/AsyncMediaPlayer;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 283
    .local v0, msg:Landroid/os/Message;
    if-eqz p2, :cond_67

    :goto_5c
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 284
    const-string v1, "setDataSource"

    invoke-direct {p0, v1}, Lcom/google/android/music/player/AsyncMediaPlayer;->acquireWakeLock(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0, v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->sendMessage(Landroid/os/Message;)Z

    .line 286
    return-void

    .line 283
    :cond_67
    const/4 v1, 0x0

    goto :goto_5c
.end method

.method public setNextPlayer(Lcom/google/android/music/player/AsyncMediaPlayer;)V
    .registers 4
    .parameter "player"

    .prologue
    .line 289
    iget-object v1, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    if-eqz p1, :cond_a

    iget-object v0, p1, Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;

    :goto_6
    invoke-virtual {v1, v0}, Lcom/google/android/music/player/CompatMediaPlayer;->setNextMediaPlayerCompat(Landroid/media/MediaPlayer;)V

    .line 290
    return-void

    .line 289
    :cond_a
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public setVolume(F)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x5

    .line 751
    invoke-direct {p0}, Lcom/google/android/music/player/AsyncMediaPlayer;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 758
    :goto_7
    return-void

    .line 754
    :cond_8
    invoke-virtual {p0, v2}, Lcom/google/android/music/player/AsyncMediaPlayer;->removeMessages(I)V

    .line 755
    const/high16 v0, 0x447a

    mul-float/2addr v0, p1

    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/music/player/AsyncMediaPlayer;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 756
    const-string v1, "setVolume"

    invoke-direct {p0, v1}, Lcom/google/android/music/player/AsyncMediaPlayer;->acquireWakeLock(Ljava/lang/String;)V

    .line 757
    invoke-virtual {p0, v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->sendMessage(Landroid/os/Message;)Z

    goto :goto_7
.end method

.method public start()V
    .registers 4

    .prologue
    const/4 v2, 0x2

    .line 599
    invoke-direct {p0}, Lcom/google/android/music/player/AsyncMediaPlayer;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 608
    :goto_7
    return-void

    .line 602
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncMediaPlayer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ").start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 603
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->removeMessages(I)V

    .line 604
    invoke-virtual {p0, v2}, Lcom/google/android/music/player/AsyncMediaPlayer;->removeMessages(I)V

    .line 605
    const-string v0, "start"

    invoke-direct {p0, v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->acquireWakeLock(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p0, v2}, Lcom/google/android/music/player/AsyncMediaPlayer;->sendEmptyMessage(I)Z

    .line 607
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->addStatus(I)V

    goto :goto_7
.end method

.method public stop()V
    .registers 4

    .prologue
    const/4 v2, 0x7

    .line 626
    invoke-direct {p0}, Lcom/google/android/music/player/AsyncMediaPlayer;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 637
    :goto_7
    return-void

    .line 629
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncMediaPlayer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ").stop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 630
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;

    invoke-interface {v0}, Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;->cancelTryNext()V

    .line 631
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->removeMessages(I)V

    .line 632
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->removeMessages(I)V

    .line 633
    invoke-virtual {p0, v2}, Lcom/google/android/music/player/AsyncMediaPlayer;->removeMessages(I)V

    .line 634
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->removeStatus(I)V

    .line 635
    const-string v0, "stop"

    invoke-direct {p0, v0}, Lcom/google/android/music/player/AsyncMediaPlayer;->acquireWakeLock(Ljava/lang/String;)V

    .line 636
    invoke-virtual {p0, v2}, Lcom/google/android/music/player/AsyncMediaPlayer;->sendEmptyMessage(I)Z

    goto :goto_7
.end method
