.class public Lcom/google/android/music/AsyncMediaPlayer;
.super Lcom/google/android/music/Worker;
.source "AsyncMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/AsyncMediaPlayer$StopWatch;,
        Lcom/google/android/music/AsyncMediaPlayer$AsyncCommandCallback;
    }
.end annotation


# static fields
.field private static final LOGV:Z


# instance fields
.field private completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private errorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private infoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private final isPreGingerbread:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

.field private mCurrentSongSourceAccount:J

.field private mCurrentSongSourceId:Ljava/lang/String;

.field private mCurrentUrl:Ljava/lang/String;

.field private mDownloadCompletedPercent:F

.field private mDownloadProgressListener:Lcom/google/android/music/dl/IDownloadProgressListener;

.field private mDownloadState:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

.field private mDuration:J

.field private mFileDescriptor:Ljava/io/FileDescriptor;

.field private mHttpSeek:J

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPosition:J

.field private mServiceHooks:Lcom/google/android/music/MusicPlaybackService$ServiceHooks;

.field private mStatus:I

.field private mStopWatch:Lcom/google/android/music/AsyncMediaPlayer$StopWatch;

.field private mStreamFromFileDescriptor:Ljava/io/FileInputStream;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 52
    const-string v0, "MediaPlaybackService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/AsyncMediaPlayer;->LOGV:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/music/MusicPlaybackService$ServiceHooks;)V
    .registers 11
    .parameter "context"
    .parameter "hooks"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    .line 114
    const-string v1, "AsyncMediaPlayer"

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/google/android/music/Worker;-><init>(Ljava/lang/String;I)V

    .line 90
    iput-wide v3, p0, Lcom/google/android/music/AsyncMediaPlayer;->mDuration:J

    .line 91
    iput-wide v3, p0, Lcom/google/android/music/AsyncMediaPlayer;->mPosition:J

    .line 92
    iput-wide v3, p0, Lcom/google/android/music/AsyncMediaPlayer;->mHttpSeek:J

    .line 96
    iput-object v7, p0, Lcom/google/android/music/AsyncMediaPlayer;->mStreamFromFileDescriptor:Ljava/io/FileInputStream;

    .line 97
    iput-object v7, p0, Lcom/google/android/music/AsyncMediaPlayer;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 103
    iput v5, p0, Lcom/google/android/music/AsyncMediaPlayer;->mStatus:I

    .line 105
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/music/AsyncMediaPlayer;->mDownloadCompletedPercent:F

    .line 106
    sget-object v1, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->NOT_STARTED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    iput-object v1, p0, Lcom/google/android/music/AsyncMediaPlayer;->mDownloadState:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    .line 717
    new-instance v1, Lcom/google/android/music/AsyncMediaPlayer$2;

    invoke-direct {v1, p0}, Lcom/google/android/music/AsyncMediaPlayer$2;-><init>(Lcom/google/android/music/AsyncMediaPlayer;)V

    iput-object v1, p0, Lcom/google/android/music/AsyncMediaPlayer;->completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 725
    new-instance v1, Lcom/google/android/music/AsyncMediaPlayer$3;

    invoke-direct {v1, p0}, Lcom/google/android/music/AsyncMediaPlayer$3;-><init>(Lcom/google/android/music/AsyncMediaPlayer;)V

    iput-object v1, p0, Lcom/google/android/music/AsyncMediaPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 750
    new-instance v1, Lcom/google/android/music/AsyncMediaPlayer$4;

    invoke-direct {v1, p0}, Lcom/google/android/music/AsyncMediaPlayer$4;-><init>(Lcom/google/android/music/AsyncMediaPlayer;)V

    iput-object v1, p0, Lcom/google/android/music/AsyncMediaPlayer;->infoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 839
    new-instance v1, Lcom/google/android/music/AsyncMediaPlayer$5;

    invoke-direct {v1, p0}, Lcom/google/android/music/AsyncMediaPlayer$5;-><init>(Lcom/google/android/music/AsyncMediaPlayer;)V

    iput-object v1, p0, Lcom/google/android/music/AsyncMediaPlayer;->mDownloadProgressListener:Lcom/google/android/music/dl/IDownloadProgressListener;

    .line 115
    iput-object p1, p0, Lcom/google/android/music/AsyncMediaPlayer;->mContext:Landroid/content/Context;

    .line 116
    iput-object p2, p0, Lcom/google/android/music/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/MusicPlaybackService$ServiceHooks;

    .line 117
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 118
    iget-object v1, p0, Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/google/android/music/AsyncMediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v6}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 119
    new-instance v1, Lcom/google/android/music/AsyncMediaPlayer$StopWatch;

    invoke-direct {v1}, Lcom/google/android/music/AsyncMediaPlayer$StopWatch;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/AsyncMediaPlayer$StopWatch;

    .line 121
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isPreGingerbread()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/music/AsyncMediaPlayer;->isPreGingerbread:Z

    .line 123
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 124
    .local v0, pm:Landroid/os/PowerManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/AsyncMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 125
    iget-object v1, p0, Lcom/google/android/music/AsyncMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 129
    new-instance v1, Lcom/google/android/music/AsyncMediaPlayer$1;

    invoke-direct {v1, p0}, Lcom/google/android/music/AsyncMediaPlayer$1;-><init>(Lcom/google/android/music/AsyncMediaPlayer;)V

    invoke-virtual {p0, v1}, Lcom/google/android/music/AsyncMediaPlayer;->post(Ljava/lang/Runnable;)Z

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/AsyncMediaPlayer;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/music/AsyncMediaPlayer;->releaseWakeLock(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/music/AsyncMediaPlayer;)Lcom/google/android/music/AsyncMediaPlayer$StopWatch;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/music/AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/AsyncMediaPlayer$StopWatch;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/music/AsyncMediaPlayer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/google/android/music/AsyncMediaPlayer;->isPreGingerbread:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/google/android/music/AsyncMediaPlayer;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/google/android/music/AsyncMediaPlayer;->mDownloadCompletedPercent:F

    return p1
.end method

.method static synthetic access$1202(Lcom/google/android/music/AsyncMediaPlayer;Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;)Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/music/AsyncMediaPlayer;->mDownloadState:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/google/android/music/AsyncMediaPlayer;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/AsyncMediaPlayer;->updateDownloadStatus(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/music/AsyncMediaPlayer;)Lcom/google/android/music/MusicPlaybackService$ServiceHooks;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/music/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/MusicPlaybackService$ServiceHooks;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/music/AsyncMediaPlayer;)Lcom/google/android/music/dl/ContentIdentifier;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/music/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/music/AsyncMediaPlayer;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/music/AsyncMediaPlayer;->notifyChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/music/AsyncMediaPlayer;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/music/AsyncMediaPlayer;->removeStatus(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/music/AsyncMediaPlayer;)Landroid/media/MediaPlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/music/AsyncMediaPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/android/music/AsyncMediaPlayer;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/music/AsyncMediaPlayer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/music/AsyncMediaPlayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/android/music/AsyncMediaPlayer;->onWaitForBuffer()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/music/AsyncMediaPlayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/android/music/AsyncMediaPlayer;->onResumeFromBuffer()V

    return-void
.end method

.method private acquireWakeLock(Ljava/lang/String;)V
    .registers 4
    .parameter "reason"

    .prologue
    .line 705
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

    .line 707
    iget-object v0, p0, Lcom/google/android/music/AsyncMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 708
    return-void
.end method

.method private declared-synchronized addStatus(I)V
    .registers 3
    .parameter "status"

    .prologue
    .line 516
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/music/AsyncMediaPlayer;->mStatus:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/music/AsyncMediaPlayer;->mStatus:I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 517
    monitor-exit p0

    return-void

    .line 516
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private eventLogBufferingEvent(I)V
    .registers 6
    .parameter "eventCode"

    .prologue
    .line 796
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/MusicPlaybackService$ServiceHooks;

    iget-object v2, p0, Lcom/google/android/music/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-interface {v1, v2, p1}, Lcom/google/android/music/MusicPlaybackService$ServiceHooks;->logStatusEvent(Lcom/google/android/music/dl/ContentIdentifier;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 800
    :goto_7
    return-void

    .line 797
    :catch_8
    move-exception v0

    .line 798
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MediaPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to log buffering event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method private handleMessageImp(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 153
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/music/AsyncMediaPlayer$AsyncCommandCallback;

    .line 155
    .local v0, cb:Lcom/google/android/music/AsyncMediaPlayer$AsyncCommandCallback;
    invoke-direct {p0}, Lcom/google/android/music/AsyncMediaPlayer;->isReleased()Z

    move-result v4

    if-eqz v4, :cond_2c

    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2c

    .line 156
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

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :goto_2b
    return-void

    .line 160
    :cond_2c
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_130

    goto :goto_2b

    .line 164
    :pswitch_32
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v3, :cond_3a

    :goto_36
    invoke-direct {p0, v3, v0}, Lcom/google/android/music/AsyncMediaPlayer;->setDataSourceImpl(ZLcom/google/android/music/AsyncMediaPlayer$AsyncCommandCallback;)V

    goto :goto_2b

    :cond_3a
    const/4 v3, 0x0

    goto :goto_36

    .line 168
    :pswitch_3c
    invoke-direct {p0}, Lcom/google/android/music/AsyncMediaPlayer;->startFX()V

    .line 169
    iget-object v3, p0, Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 170
    iget-object v3, p0, Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/google/android/music/AsyncMediaPlayer;->mPosition:J

    .line 171
    iget-object v3, p0, Lcom/google/android/music/AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/AsyncMediaPlayer$StopWatch;

    invoke-virtual {v3}, Lcom/google/android/music/AsyncMediaPlayer$StopWatch;->reset()V

    .line 172
    iget-object v3, p0, Lcom/google/android/music/AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/AsyncMediaPlayer$StopWatch;

    invoke-virtual {v3}, Lcom/google/android/music/AsyncMediaPlayer$StopWatch;->start()V

    goto :goto_2b

    .line 176
    :pswitch_58
    iget-object v3, p0, Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->pause()V

    .line 177
    iget-object v3, p0, Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/google/android/music/AsyncMediaPlayer;->mPosition:J

    .line 178
    iget-object v3, p0, Lcom/google/android/music/AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/AsyncMediaPlayer$StopWatch;

    invoke-virtual {v3}, Lcom/google/android/music/AsyncMediaPlayer$StopWatch;->pause()V

    .line 179
    iget-object v3, p0, Lcom/google/android/music/AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/AsyncMediaPlayer$StopWatch;

    invoke-virtual {v3}, Lcom/google/android/music/AsyncMediaPlayer$StopWatch;->reset()V

    .line 180
    invoke-direct {p0}, Lcom/google/android/music/AsyncMediaPlayer;->stopFX()V

    goto :goto_2b

    .line 184
    :pswitch_74
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

    .line 185
    invoke-direct {p0}, Lcom/google/android/music/AsyncMediaPlayer;->notifyIfSongPlayed()V

    .line 186
    iget-object v3, p0, Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    .line 188
    iget-object v3, p0, Lcom/google/android/music/AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/AsyncMediaPlayer$StopWatch;

    invoke-virtual {v3}, Lcom/google/android/music/AsyncMediaPlayer$StopWatch;->pause()V

    .line 189
    iget-object v3, p0, Lcom/google/android/music/AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/AsyncMediaPlayer$StopWatch;

    invoke-virtual {v3}, Lcom/google/android/music/AsyncMediaPlayer$StopWatch;->reset()V

    .line 191
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

    .line 192
    iput-object v6, p0, Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 195
    :try_start_b4
    iget-object v3, p0, Lcom/google/android/music/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/MusicPlaybackService$ServiceHooks;

    iget-object v4, p0, Lcom/google/android/music/AsyncMediaPlayer;->mDownloadProgressListener:Lcom/google/android/music/dl/IDownloadProgressListener;

    invoke-interface {v3, v4}, Lcom/google/android/music/MusicPlaybackService$ServiceHooks;->removeDownloadProgressListener(Lcom/google/android/music/dl/IDownloadProgressListener;)V
    :try_end_bb
    .catch Landroid/os/RemoteException; {:try_start_b4 .. :try_end_bb} :catch_d2

    .line 199
    :goto_bb
    iget-object v3, p0, Lcom/google/android/music/AsyncMediaPlayer;->mStreamFromFileDescriptor:Ljava/io/FileInputStream;

    if-eqz v3, :cond_c8

    .line 201
    :try_start_bf
    iget-object v3, p0, Lcom/google/android/music/AsyncMediaPlayer;->mStreamFromFileDescriptor:Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c4
    .catchall {:try_start_bf .. :try_end_c4} :catchall_ff
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c4} :catch_dd

    .line 206
    iput-object v6, p0, Lcom/google/android/music/AsyncMediaPlayer;->mStreamFromFileDescriptor:Ljava/io/FileInputStream;

    .line 207
    iput-object v6, p0, Lcom/google/android/music/AsyncMediaPlayer;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 210
    :cond_c8
    :goto_c8
    invoke-virtual {p0}, Lcom/google/android/music/AsyncMediaPlayer;->quit()V

    .line 213
    const-string v3, "release"

    invoke-direct {p0, v3}, Lcom/google/android/music/AsyncMediaPlayer;->releaseWakeLock(Ljava/lang/String;)V

    goto/16 :goto_2b

    .line 196
    :catch_d2
    move-exception v1

    .line 197
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "MediaPlaybackService"

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_bb

    .line 202
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_dd
    move-exception v1

    .line 203
    .local v1, e:Ljava/io/IOException;
    :try_start_de
    const-string v3, "MediaPlaybackService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error trying to close file descriptor stream: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fa
    .catchall {:try_start_de .. :try_end_fa} :catchall_ff

    .line 206
    iput-object v6, p0, Lcom/google/android/music/AsyncMediaPlayer;->mStreamFromFileDescriptor:Ljava/io/FileInputStream;

    .line 207
    iput-object v6, p0, Lcom/google/android/music/AsyncMediaPlayer;->mFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_c8

    .line 206
    .end local v1           #e:Ljava/io/IOException;
    :catchall_ff
    move-exception v3

    iput-object v6, p0, Lcom/google/android/music/AsyncMediaPlayer;->mStreamFromFileDescriptor:Ljava/io/FileInputStream;

    .line 207
    iput-object v6, p0, Lcom/google/android/music/AsyncMediaPlayer;->mFileDescriptor:Ljava/io/FileDescriptor;

    throw v3

    .line 217
    :pswitch_105
    iget-object v3, p0, Lcom/google/android/music/AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/AsyncMediaPlayer$StopWatch;

    invoke-virtual {v3}, Lcom/google/android/music/AsyncMediaPlayer$StopWatch;->pause()V

    .line 218
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v3}, Lcom/google/android/music/AsyncMediaPlayer;->seekImpl(I)V

    .line 219
    iget-object v3, p0, Lcom/google/android/music/AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/AsyncMediaPlayer$StopWatch;

    invoke-virtual {v3}, Lcom/google/android/music/AsyncMediaPlayer$StopWatch;->reset()V

    goto/16 :goto_2b

    .line 223
    :pswitch_116
    iget-object v3, p0, Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V

    goto/16 :goto_2b

    .line 227
    :pswitch_11d
    iget v3, p1, Landroid/os/Message;->arg1:I

    int-to-float v3, v3

    const/high16 v4, 0x447a

    div-float v2, v3, v4

    .line 228
    .local v2, vol:F
    iget-object v3, p0, Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto/16 :goto_2b

    .line 232
    .end local v2           #vol:F
    :pswitch_12b
    invoke-direct {p0}, Lcom/google/android/music/AsyncMediaPlayer;->updateDownloadStatusImpl()V

    goto/16 :goto_2b

    .line 160
    :pswitch_data_130
    .packed-switch 0x1
        :pswitch_32
        :pswitch_3c
        :pswitch_58
        :pswitch_74
        :pswitch_11d
        :pswitch_105
        :pswitch_116
        :pswitch_12b
    .end packed-switch
.end method

.method private isReleased()Z
    .registers 2

    .prologue
    .line 605
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/music/AsyncMediaPlayer;->isStatusOn(I)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized isStatusOn(I)Z
    .registers 3
    .parameter "status"

    .prologue
    .line 524
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/music/AsyncMediaPlayer;->mStatus:I
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

.method private notifyChange(Ljava/lang/String;)V
    .registers 3
    .parameter "what"

    .prologue
    .line 668
    iget-object v0, p0, Lcom/google/android/music/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/MusicPlaybackService$ServiceHooks;

    invoke-interface {v0, p1}, Lcom/google/android/music/MusicPlaybackService$ServiceHooks;->notifyChange(Ljava/lang/String;)V

    .line 669
    return-void
.end method

.method private notifyIfSongPlayed()V
    .registers 9

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/google/android/music/AsyncMediaPlayer;->duration()J

    move-result-wide v0

    .line 239
    .local v0, duration:J
    invoke-virtual {p0}, Lcom/google/android/music/AsyncMediaPlayer;->position()J

    move-result-wide v3

    .line 240
    .local v3, position:J
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-lez v5, :cond_27

    iget-object v5, p0, Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_27

    iget-object v5, p0, Lcom/google/android/music/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    if-eqz v5, :cond_27

    long-to-float v5, v3

    long-to-float v6, v0

    const v7, 0x3f266666

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_27

    .line 243
    :try_start_20
    iget-object v5, p0, Lcom/google/android/music/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/MusicPlaybackService$ServiceHooks;

    iget-object v6, p0, Lcom/google/android/music/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-interface {v5, v6}, Lcom/google/android/music/MusicPlaybackService$ServiceHooks;->markSongPlayed(Lcom/google/android/music/dl/ContentIdentifier;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_28

    .line 248
    :cond_27
    :goto_27
    return-void

    .line 244
    :catch_28
    move-exception v2

    .line 245
    .local v2, e:Landroid/os/RemoteException;
    const-string v5, "MediaPlaybackService"

    const-string v6, "Could not mark song as played"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27
.end method

.method private onResumeFromBuffer()V
    .registers 2

    .prologue
    .line 828
    invoke-virtual {p0}, Lcom/google/android/music/AsyncMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/google/android/music/AsyncMediaPlayer;->isPreparing()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 831
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/music/AsyncMediaPlayer;->eventLogBufferingEvent(I)V

    .line 833
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/music/AsyncMediaPlayer;->removeStatus(I)V

    .line 834
    iget-object v0, p0, Lcom/google/android/music/AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/AsyncMediaPlayer$StopWatch;

    invoke-virtual {v0}, Lcom/google/android/music/AsyncMediaPlayer$StopWatch;->start()V

    .line 835
    const-string v0, "com.android.music.playstatechanged"

    invoke-direct {p0, v0}, Lcom/google/android/music/AsyncMediaPlayer;->notifyChange(Ljava/lang/String;)V

    .line 837
    :cond_1f
    return-void
.end method

.method private onWaitForBuffer()V
    .registers 6

    .prologue
    .line 803
    const/4 v1, 0x0

    .line 805
    .local v1, state:Lcom/google/android/music/dl/DownloadState;
    :try_start_1
    iget-object v2, p0, Lcom/google/android/music/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/MusicPlaybackService$ServiceHooks;

    iget-object v3, p0, Lcom/google/android/music/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-interface {v2, v3}, Lcom/google/android/music/MusicPlaybackService$ServiceHooks;->getStreamingDownloadState(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadState;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_1a

    move-result-object v1

    .line 810
    invoke-virtual {v1}, Lcom/google/android/music/dl/DownloadState;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v2

    sget-object v3, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne v2, v3, :cond_34

    .line 811
    const-string v2, "com.android.music.playbackfailed"

    invoke-direct {p0, v2}, Lcom/google/android/music/AsyncMediaPlayer;->notifyChange(Ljava/lang/String;)V

    .line 812
    invoke-virtual {p0}, Lcom/google/android/music/AsyncMediaPlayer;->stop()V

    .line 825
    :cond_19
    :goto_19
    return-void

    .line 806
    :catch_1a
    move-exception v0

    .line 807
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

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 813
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_34
    invoke-virtual {p0}, Lcom/google/android/music/AsyncMediaPlayer;->isPreparing()Z

    move-result v2

    if-nez v2, :cond_19

    .line 817
    const/16 v2, 0x67

    invoke-direct {p0, v2}, Lcom/google/android/music/AsyncMediaPlayer;->eventLogBufferingEvent(I)V

    .line 819
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/google/android/music/AsyncMediaPlayer;->addStatus(I)V

    .line 820
    iget-object v2, p0, Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/google/android/music/AsyncMediaPlayer;->mPosition:J

    .line 821
    iget-object v2, p0, Lcom/google/android/music/AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/AsyncMediaPlayer$StopWatch;

    invoke-virtual {v2}, Lcom/google/android/music/AsyncMediaPlayer$StopWatch;->pause()V

    .line 822
    iget-object v2, p0, Lcom/google/android/music/AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/AsyncMediaPlayer$StopWatch;

    invoke-virtual {v2}, Lcom/google/android/music/AsyncMediaPlayer$StopWatch;->reset()V

    .line 823
    const-string v2, "com.android.music.playstatechanged"

    invoke-direct {p0, v2}, Lcom/google/android/music/AsyncMediaPlayer;->notifyChange(Ljava/lang/String;)V

    goto :goto_19
.end method

.method private releaseWakeLock(Ljava/lang/String;)V
    .registers 4
    .parameter "reason"

    .prologue
    .line 712
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

    .line 714
    iget-object v0, p0, Lcom/google/android/music/AsyncMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 715
    return-void
.end method

.method private declared-synchronized removeStatus(I)V
    .registers 4
    .parameter "status"

    .prologue
    .line 520
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/music/AsyncMediaPlayer;->mStatus:I

    const v1, 0x7fffffff

    xor-int/2addr v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/music/AsyncMediaPlayer;->mStatus:I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 521
    monitor-exit p0

    return-void

    .line 520
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private seekImpl(I)V
    .registers 7
    .parameter "ms"

    .prologue
    const-wide/16 v2, 0x0

    const/16 v4, 0x8

    .line 474
    invoke-virtual {p0}, Lcom/google/android/music/AsyncMediaPlayer;->isStreaming()Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 475
    invoke-direct {p0, v4}, Lcom/google/android/music/AsyncMediaPlayer;->addStatus(I)V

    .line 476
    iget-object v1, p0, Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 477
    iget-object v1, p0, Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 479
    :try_start_17
    const-string v1, "com.android.music.asyncopenstart"

    invoke-direct {p0, v1}, Lcom/google/android/music/AsyncMediaPlayer;->notifyChange(Ljava/lang/String;)V

    .line 480
    iget-object v1, p0, Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 481
    iget-object v1, p0, Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/android/music/AsyncMediaPlayer;->mCurrentUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&seek="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 482
    iget-object v1, p0, Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 483
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/google/android/music/AsyncMediaPlayer;->removeStatus(I)V

    .line 484
    int-to-long v1, p1

    iput-wide v1, p0, Lcom/google/android/music/AsyncMediaPlayer;->mHttpSeek:J

    .line 485
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/music/AsyncMediaPlayer;->mPosition:J

    .line 486
    const-string v1, "com.android.music.asyncopencomplete"

    invoke-direct {p0, v1}, Lcom/google/android/music/AsyncMediaPlayer;->notifyChange(Ljava/lang/String;)V

    .line 487
    invoke-virtual {p0}, Lcom/google/android/music/AsyncMediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 488
    iget-object v1, p0, Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_61
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_61} :catch_6d
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_61} :catch_86

    .line 510
    :cond_61
    :goto_61
    invoke-virtual {p0}, Lcom/google/android/music/AsyncMediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 511
    iget-object v1, p0, Lcom/google/android/music/AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/AsyncMediaPlayer$StopWatch;

    invoke-virtual {v1}, Lcom/google/android/music/AsyncMediaPlayer$StopWatch;->start()V

    .line 513
    :cond_6c
    :goto_6c
    return-void

    .line 490
    :catch_6d
    move-exception v0

    .line 491
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaPlaybackService"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 492
    invoke-direct {p0, v4}, Lcom/google/android/music/AsyncMediaPlayer;->removeStatus(I)V

    .line 493
    invoke-direct {p0}, Lcom/google/android/music/AsyncMediaPlayer;->isReleased()Z

    move-result v1

    if-nez v1, :cond_6c

    .line 494
    const-string v1, "com.android.music.playbackfailed"

    invoke-direct {p0, v1}, Lcom/google/android/music/AsyncMediaPlayer;->notifyChange(Ljava/lang/String;)V

    goto :goto_6c

    .line 497
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_86
    move-exception v0

    .line 498
    .local v0, e:Ljava/io/IOException;
    const-string v1, "MediaPlaybackService"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 499
    invoke-direct {p0, v4}, Lcom/google/android/music/AsyncMediaPlayer;->removeStatus(I)V

    .line 500
    invoke-direct {p0}, Lcom/google/android/music/AsyncMediaPlayer;->isReleased()Z

    move-result v1

    if-nez v1, :cond_6c

    .line 501
    const-string v1, "com.android.music.playbackfailed"

    invoke-direct {p0, v1}, Lcom/google/android/music/AsyncMediaPlayer;->notifyChange(Ljava/lang/String;)V

    goto :goto_6c

    .line 506
    .end local v0           #e:Ljava/io/IOException;
    :cond_9f
    iget-object v1, p0, Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 507
    iput-wide v2, p0, Lcom/google/android/music/AsyncMediaPlayer;->mHttpSeek:J

    .line 508
    iget-object v1, p0, Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/google/android/music/AsyncMediaPlayer;->mPosition:J

    goto :goto_61
.end method

.method private setDataSourceImpl(ZLcom/google/android/music/AsyncMediaPlayer$AsyncCommandCallback;)V
    .registers 24
    .parameter "fromUserAction"
    .parameter "cb"

    .prologue
    .line 268
    const/16 v17, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/music/AsyncMediaPlayer;->addStatus(I)V

    .line 270
    const/4 v3, 0x0

    .line 271
    .local v3, downloadState:Lcom/google/android/music/dl/DownloadState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->mStreamFromFileDescriptor:Ljava/io/FileInputStream;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2b

    .line 273
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->mStreamFromFileDescriptor:Ljava/io/FileInputStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_138
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1b} :catch_109

    .line 278
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/AsyncMediaPlayer;->mStreamFromFileDescriptor:Ljava/io/FileInputStream;

    .line 279
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/AsyncMediaPlayer;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 283
    :cond_2b
    :goto_2b
    const/4 v5, 0x0

    .line 285
    .local v5, durationSet:Z
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v14, v0, [I

    const/16 v17, 0x0

    const/16 v18, 0x0

    aput v18, v14, v17

    .line 286
    .local v14, sourceAccount:[I
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v15, v0, [Ljava/lang/String;

    .line 289
    .local v15, sourceId:[Ljava/lang/String;
    :try_start_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/MusicPlaybackService$ServiceHooks;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Lcom/google/android/music/MusicPlaybackService$ServiceHooks;->getPreferredMusicId(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/MusicPlaybackService$ServiceHooks;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v14, v15}, Lcom/google/android/music/MusicPlaybackService$ServiceHooks;->getSourceAccountAndId(Lcom/google/android/music/dl/ContentIdentifier;[I[Ljava/lang/String;)V

    .line 291
    const/16 v17, 0x0

    aget v17, v14, v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/music/AsyncMediaPlayer;->mCurrentSongSourceAccount:J

    .line 292
    const/16 v17, 0x0

    aget-object v17, v15, v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/AsyncMediaPlayer;->mCurrentSongSourceId:Ljava/lang/String;

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/MusicPlaybackService$ServiceHooks;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lcom/google/android/music/dl/ContentIdentifier;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    invoke-interface/range {v17 .. v18}, Lcom/google/android/music/MusicPlaybackService$ServiceHooks;->requiresDownloadManager([Lcom/google/android/music/dl/ContentIdentifier;)[Lcom/google/android/music/dl/ContentIdentifier;
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_9b} :catch_14d

    move-result-object v17

    if-eqz v17, :cond_14a

    const/4 v12, 0x1

    .line 301
    .local v12, requiresDLMan:Z
    :goto_9f
    if-eqz v12, :cond_37e

    .line 311
    if-nez p1, :cond_17f

    .line 312
    :try_start_a3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/MusicPlaybackService$ServiceHooks;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Lcom/google/android/music/MusicPlaybackService$ServiceHooks;->getStreamingDownloadState(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadState;

    move-result-object v3

    .line 313
    if-eqz v3, :cond_17f

    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadState;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v17

    sget-object v18, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_17f

    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadState;->getErrorType()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/google/android/music/dl/DownloadOrder;->isServerError(I)Z

    move-result v17

    if-eqz v17, :cond_17f

    .line 317
    const-string v17, "MediaPlaybackService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Song already in error state: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadState;->getErrorType()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".  Not retrying"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/16 v17, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/music/AsyncMediaPlayer;->removeStatus(I)V

    .line 320
    const/16 v17, 0x30

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/music/AsyncMediaPlayer;->addStatus(I)V

    .line 321
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/google/android/music/AsyncMediaPlayer$AsyncCommandCallback;->onFailure(Z)V
    :try_end_108
    .catch Landroid/os/RemoteException; {:try_start_a3 .. :try_end_108} :catch_1db

    .line 446
    .end local v12           #requiresDLMan:Z
    :cond_108
    :goto_108
    return-void

    .line 274
    .end local v5           #durationSet:Z
    .end local v14           #sourceAccount:[I
    .end local v15           #sourceId:[Ljava/lang/String;
    :catch_109
    move-exception v6

    .line 275
    .local v6, e:Ljava/io/IOException;
    :try_start_10a
    const-string v17, "MediaPlaybackService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error trying to close file descriptor stream: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_126
    .catchall {:try_start_10a .. :try_end_126} :catchall_138

    .line 278
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/AsyncMediaPlayer;->mStreamFromFileDescriptor:Ljava/io/FileInputStream;

    .line 279
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/AsyncMediaPlayer;->mFileDescriptor:Ljava/io/FileDescriptor;

    goto/16 :goto_2b

    .line 278
    .end local v6           #e:Ljava/io/IOException;
    :catchall_138
    move-exception v17

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/AsyncMediaPlayer;->mStreamFromFileDescriptor:Ljava/io/FileInputStream;

    .line 279
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/AsyncMediaPlayer;->mFileDescriptor:Ljava/io/FileDescriptor;

    throw v17

    .line 293
    .restart local v5       #durationSet:Z
    .restart local v14       #sourceAccount:[I
    .restart local v15       #sourceId:[Ljava/lang/String;
    :cond_14a
    const/4 v12, 0x0

    goto/16 :goto_9f

    .line 295
    :catch_14d
    move-exception v6

    .line 296
    .local v6, e:Landroid/os/RemoteException;
    const-string v17, "MediaPlaybackService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Could not find song id: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/16 v17, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/music/AsyncMediaPlayer;->removeStatus(I)V

    .line 298
    const/16 v17, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/google/android/music/AsyncMediaPlayer$AsyncCommandCallback;->onFailure(Z)V

    goto :goto_108

    .line 325
    .end local v6           #e:Landroid/os/RemoteException;
    .restart local v12       #requiresDLMan:Z
    :cond_17f
    :try_start_17f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/music/dl/ContentIdentifier;->isSharedDomain()Z

    move-result v17

    if-eqz v17, :cond_1eb

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/MusicPlaybackService$ServiceHooks;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Lcom/google/android/music/MusicPlaybackService$ServiceHooks;->createDownloadOrder(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v10

    .line 327
    .local v10, order:Lcom/google/android/music/dl/DownloadOrder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/MusicPlaybackService$ServiceHooks;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Lcom/google/android/music/MusicPlaybackService$ServiceHooks;->streamSongWithOrder(Lcom/google/android/music/dl/DownloadOrder;)Lcom/google/android/music/dl/DownloadState;

    move-result-object v3

    .line 331
    .end local v10           #order:Lcom/google/android/music/dl/DownloadOrder;
    :goto_1a7
    if-nez v3, :cond_1fc

    .line 332
    const-string v17, "MediaPlaybackService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Could not create download for song id: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/16 v17, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/music/AsyncMediaPlayer;->removeStatus(I)V

    .line 334
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/google/android/music/AsyncMediaPlayer$AsyncCommandCallback;->onFailure(Z)V
    :try_end_1d9
    .catch Landroid/os/RemoteException; {:try_start_17f .. :try_end_1d9} :catch_1db

    goto/16 :goto_108

    .line 360
    :catch_1db
    move-exception v6

    .line 361
    .restart local v6       #e:Landroid/os/RemoteException;
    const-string v17, "MediaPlaybackService"

    invoke-virtual {v6}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_108

    .line 329
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_1eb
    :try_start_1eb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/MusicPlaybackService$ServiceHooks;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Lcom/google/android/music/MusicPlaybackService$ServiceHooks;->streamSong(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadState;

    move-result-object v3

    goto :goto_1a7

    .line 337
    :cond_1fc
    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadState;->getUrl()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/AsyncMediaPlayer;->mCurrentUrl:Ljava/lang/String;

    .line 338
    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadState;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v4

    .line 339
    .local v4, downloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    sget-object v17, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-object/from16 v0, v17

    if-ne v4, v0, :cond_25a

    .line 340
    const/16 v17, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/music/AsyncMediaPlayer;->removeStatus(I)V

    .line 341
    const/16 v17, 0x30

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/music/AsyncMediaPlayer;->addStatus(I)V

    .line 342
    const-string v17, "MediaPlaybackService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Failing playback because download failed: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadState;->getErrorType()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_257

    const/16 v17, 0x1

    :goto_24e
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/google/android/music/AsyncMediaPlayer$AsyncCommandCallback;->onFailure(Z)V

    goto/16 :goto_108

    :cond_257
    const/16 v17, 0x0

    goto :goto_24e

    .line 347
    :cond_25a
    sget-object v17, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->NOT_STARTED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-object/from16 v0, v17

    if-eq v4, v0, :cond_266

    sget-object v17, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->DOWNLOADING:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-object/from16 v0, v17

    if-ne v4, v0, :cond_34c

    .line 349
    :cond_266
    const/16 v17, 0x20

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/music/AsyncMediaPlayer;->addStatus(I)V

    .line 355
    :cond_26f
    :goto_26f
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/music/AsyncMediaPlayer;->mCurrentUrl:Ljava/lang/String;

    .line 356
    .local v11, path:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadState;->getDuration()J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/music/AsyncMediaPlayer;->mDuration:J

    .line 357
    const/4 v5, 0x1

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/MusicPlaybackService$ServiceHooks;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->mDownloadProgressListener:Lcom/google/android/music/dl/IDownloadProgressListener;

    move-object/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Lcom/google/android/music/MusicPlaybackService$ServiceHooks;->addDownloadProgressListener(Lcom/google/android/music/dl/ContentIdentifier;Lcom/google/android/music/dl/IDownloadProgressListener;)Z
    :try_end_293
    .catch Landroid/os/RemoteException; {:try_start_1eb .. :try_end_293} :catch_1db

    .line 378
    .end local v4           #downloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    :goto_293
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/AsyncMediaPlayer;->isStreaming()Z

    move-result v17

    if-eqz v17, :cond_2a2

    .line 379
    const-string v17, "com.android.music.asyncopenstart"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/music/AsyncMediaPlayer;->notifyChange(Ljava/lang/String;)V

    .line 381
    :cond_2a2
    const-string v17, "content://"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    .line 382
    .local v9, isContentUri:Z
    const/16 v16, 0x0

    .line 384
    .local v16, uriForPath:Landroid/net/Uri;
    :try_start_2ac
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/media/MediaPlayer;->reset()V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 386
    if-eqz v9, :cond_419

    .line 387
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 389
    const/16 v17, 0x20

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/music/AsyncMediaPlayer;->removeStatus(I)V

    .line 402
    :goto_2e4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    invoke-virtual/range {v17 .. v18}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/media/MediaPlayer;->prepare()V

    .line 406
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/AsyncMediaPlayer;->isReleased()Z

    move-result v17

    if-eqz v17, :cond_474

    .line 409
    const/16 v17, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/music/AsyncMediaPlayer;->removeStatus(I)V
    :try_end_307
    .catch Ljava/io/IOException; {:try_start_2ac .. :try_end_307} :catch_309
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2ac .. :try_end_307} :catch_430

    goto/16 :goto_108

    .line 427
    :catch_309
    move-exception v8

    .line 428
    .local v8, ex:Ljava/io/IOException;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/AsyncMediaPlayer;->isReleased()Z

    move-result v17

    if-nez v17, :cond_31d

    .line 429
    const-string v17, "MediaPlaybackService"

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 437
    .end local v8           #ex:Ljava/io/IOException;
    :cond_31d
    :goto_31d
    const/16 v17, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/music/AsyncMediaPlayer;->removeStatus(I)V

    .line 438
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/AsyncMediaPlayer;->isReleased()Z

    move-result v17

    if-nez v17, :cond_108

    .line 439
    const/16 v17, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/music/AsyncMediaPlayer;->addStatus(I)V

    .line 440
    const/4 v13, 0x1

    .line 441
    .local v13, shouldRetry:Z
    if-eqz v3, :cond_345

    .line 442
    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadState;->getErrorType()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4da

    const/4 v13, 0x1

    .line 444
    :cond_345
    :goto_345
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lcom/google/android/music/AsyncMediaPlayer$AsyncCommandCallback;->onFailure(Z)V

    goto/16 :goto_108

    .line 350
    .end local v9           #isContentUri:Z
    .end local v11           #path:Ljava/lang/String;
    .end local v13           #shouldRetry:Z
    .end local v16           #uriForPath:Landroid/net/Uri;
    .restart local v4       #downloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    :cond_34c
    :try_start_34c
    sget-boolean v17, Lcom/google/android/music/AsyncMediaPlayer;->LOGV:Z

    if-eqz v17, :cond_26f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->mCurrentUrl:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "http"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_26f

    .line 351
    const-string v17, "MediaPlaybackService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Song is not downloading, but given http streamUrl: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37c
    .catch Landroid/os/RemoteException; {:try_start_34c .. :try_end_37c} :catch_1db

    goto/16 :goto_26f

    .line 366
    .end local v4           #downloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    :cond_37e
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->mCurrentSongSourceAccount:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-nez v17, :cond_413

    const-string v7, ""

    .line 368
    .local v7, eventLogSourceId:Ljava/lang/String;
    :goto_38c
    const v17, 0x12110

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/music/dl/ContentIdentifier;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    aput-object v7, v18, v19

    const/16 v19, 0x2

    const/16 v20, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 372
    const-string v17, "MediaPlaybackService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Event logging MUSIC_START_PLAYBACK_REQUESTED: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": local playback"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/AsyncMediaPlayer;->mCurrentUrl:Ljava/lang/String;

    .line 375
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/google/android/music/store/MusicContent$XAudio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .restart local v11       #path:Ljava/lang/String;
    goto/16 :goto_293

    .line 366
    .end local v7           #eventLogSourceId:Ljava/lang/String;
    .end local v11           #path:Ljava/lang/String;
    :cond_413
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/music/AsyncMediaPlayer;->mCurrentSongSourceId:Ljava/lang/String;

    goto/16 :goto_38c

    .line 391
    .restart local v9       #isContentUri:Z
    .restart local v11       #path:Ljava/lang/String;
    .restart local v16       #uriForPath:Landroid/net/Uri;
    :cond_419
    :try_start_419
    const-string v17, "http"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_446

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_42e
    .catch Ljava/io/IOException; {:try_start_419 .. :try_end_42e} :catch_309
    .catch Ljava/lang/IllegalArgumentException; {:try_start_419 .. :try_end_42e} :catch_430

    goto/16 :goto_2e4

    .line 431
    :catch_430
    move-exception v8

    .line 432
    .local v8, ex:Ljava/lang/IllegalArgumentException;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/AsyncMediaPlayer;->isReleased()Z

    move-result v17

    if-nez v17, :cond_31d

    .line 433
    const-string v17, "MediaPlaybackService"

    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_31d

    .line 397
    .end local v8           #ex:Ljava/lang/IllegalArgumentException;
    :cond_446
    :try_start_446
    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/AsyncMediaPlayer;->mStreamFromFileDescriptor:Ljava/io/FileInputStream;

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->mStreamFromFileDescriptor:Ljava/io/FileInputStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/AsyncMediaPlayer;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->mFileDescriptor:Ljava/io/FileDescriptor;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    goto/16 :goto_2e4

    .line 412
    :cond_474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 414
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/AsyncMediaPlayer;->startFX()V

    .line 415
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->isPreGingerbread:Z

    move/from16 v17, v0

    if-nez v17, :cond_4ac

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->infoListener:Landroid/media/MediaPlayer$OnInfoListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 418
    :cond_4ac
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/music/AsyncMediaPlayer;->addStatus(I)V

    .line 419
    if-nez v5, :cond_4cc

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/music/AsyncMediaPlayer;->mDuration:J

    .line 422
    :cond_4cc
    const/16 v17, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/music/AsyncMediaPlayer;->removeStatus(I)V

    .line 423
    invoke-interface/range {p2 .. p2}, Lcom/google/android/music/AsyncMediaPlayer$AsyncCommandCallback;->onSuccess()V
    :try_end_4d8
    .catch Ljava/io/IOException; {:try_start_446 .. :try_end_4d8} :catch_309
    .catch Ljava/lang/IllegalArgumentException; {:try_start_446 .. :try_end_4d8} :catch_430

    goto/16 :goto_108

    .line 442
    .restart local v13       #shouldRetry:Z
    :cond_4da
    const/4 v13, 0x0

    goto/16 :goto_345
.end method

.method private startFX()V
    .registers 4

    .prologue
    .line 539
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 540
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {p0}, Lcom/google/android/music/AsyncMediaPlayer;->getAudioSessionId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 541
    const-string v1, "android.media.extra.PACKAGE_NAME"

    iget-object v2, p0, Lcom/google/android/music/AsyncMediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    iget-object v1, p0, Lcom/google/android/music/AsyncMediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 543
    return-void
.end method

.method private stopFX()V
    .registers 4

    .prologue
    .line 532
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 533
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {p0}, Lcom/google/android/music/AsyncMediaPlayer;->getAudioSessionId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 534
    const-string v1, "android.media.extra.PACKAGE_NAME"

    iget-object v2, p0, Lcom/google/android/music/AsyncMediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    iget-object v1, p0, Lcom/google/android/music/AsyncMediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 536
    return-void
.end method

.method private updateDownloadStatus(J)V
    .registers 6
    .parameter "millisTillNextPossibleOutage"

    .prologue
    const/16 v2, 0x8

    .line 766
    invoke-virtual {p0, v2}, Lcom/google/android/music/AsyncMediaPlayer;->removeMessages(I)V

    .line 767
    iget-object v0, p0, Lcom/google/android/music/AsyncMediaPlayer;->mDownloadState:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    sget-object v1, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->COMPLETED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-eq v0, v1, :cond_e

    .line 768
    invoke-virtual {p0, v2, p1, p2}, Lcom/google/android/music/AsyncMediaPlayer;->sendEmptyMessageDelayed(IJ)Z

    .line 770
    :cond_e
    return-void
.end method

.method private updateDownloadStatusImpl()V
    .registers 12

    .prologue
    .line 773
    invoke-virtual {p0}, Lcom/google/android/music/AsyncMediaPlayer;->duration()J

    move-result-wide v5

    .line 774
    .local v5, totalDuration:J
    invoke-virtual {p0}, Lcom/google/android/music/AsyncMediaPlayer;->position()J

    move-result-wide v7

    const-wide/16 v9, 0x1388

    add-long v0, v7, v9

    .line 775
    .local v0, currentPosition:J
    long-to-float v7, v0

    long-to-float v8, v5

    div-float v4, v7, v8

    .line 777
    .local v4, playbackCompletePercent:F
    iget v7, p0, Lcom/google/android/music/AsyncMediaPlayer;->mDownloadCompletedPercent:F

    cmpl-float v7, v7, v4

    if-lez v7, :cond_24

    .line 780
    invoke-direct {p0}, Lcom/google/android/music/AsyncMediaPlayer;->onResumeFromBuffer()V

    .line 784
    iget v7, p0, Lcom/google/android/music/AsyncMediaPlayer;->mDownloadCompletedPercent:F

    long-to-float v8, v5

    mul-float/2addr v7, v8

    float-to-long v7, v7

    sub-long v2, v7, v0

    .line 786
    .local v2, nextSchedule:J
    invoke-direct {p0, v2, v3}, Lcom/google/android/music/AsyncMediaPlayer;->updateDownloadStatus(J)V

    .line 792
    .end local v2           #nextSchedule:J
    :goto_23
    return-void

    .line 790
    :cond_24
    invoke-direct {p0}, Lcom/google/android/music/AsyncMediaPlayer;->onWaitForBuffer()V

    goto :goto_23
.end method


# virtual methods
.method public duration()J
    .registers 3

    .prologue
    .line 676
    iget-wide v0, p0, Lcom/google/android/music/AsyncMediaPlayer;->mDuration:J

    return-wide v0
.end method

.method public getAudioSessionId()I
    .registers 5

    .prologue
    .line 639
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getAudioSessionId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 640
    .local v0, m:Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1f

    move-result v1

    .line 645
    .end local v0           #m:Ljava/lang/reflect/Method;
    :goto_1e
    return v1

    .line 641
    :catch_1f
    move-exception v1

    .line 645
    const/4 v1, -0x1

    goto :goto_1e
.end method

.method public getDebugInfo()Ljava/lang/String;
    .registers 5

    .prologue
    .line 650
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/MusicPlaybackService$ServiceHooks;

    iget-object v2, p0, Lcom/google/android/music/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-interface {v1, v2}, Lcom/google/android/music/MusicPlaybackService$ServiceHooks;->getDebugInfo(Lcom/google/android/music/dl/ContentIdentifier;)Ljava/lang/String;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 654
    :goto_8
    return-object v1

    .line 651
    :catch_9
    move-exception v0

    .line 652
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

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getErrorType()I
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 620
    iget-object v3, p0, Lcom/google/android/music/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    if-nez v3, :cond_6

    .line 634
    :cond_5
    :goto_5
    return v2

    .line 624
    :cond_6
    const/4 v1, 0x0

    .line 626
    .local v1, state:Lcom/google/android/music/dl/DownloadState;
    :try_start_7
    iget-object v3, p0, Lcom/google/android/music/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/MusicPlaybackService$ServiceHooks;

    iget-object v4, p0, Lcom/google/android/music/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-interface {v3, v4}, Lcom/google/android/music/MusicPlaybackService$ServiceHooks;->getStreamingDownloadState(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadState;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_16

    move-result-object v1

    .line 631
    :goto_f
    if-eqz v1, :cond_5

    .line 634
    invoke-virtual {v1}, Lcom/google/android/music/dl/DownloadState;->getErrorType()I

    move-result v2

    goto :goto_5

    .line 627
    :catch_16
    move-exception v0

    .line 628
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

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method getPlayerStatusString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_7

    .line 468
    const-string v0, "no player"

    .line 470
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getRemoteSongId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 454
    iget-wide v0, p0, Lcom/google/android/music/AsyncMediaPlayer;->mCurrentSongSourceAccount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const-string v0, ""

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/google/android/music/AsyncMediaPlayer;->mCurrentSongSourceId:Ljava/lang/String;

    goto :goto_a
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 144
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/music/AsyncMediaPlayer;->handleMessageImp(Landroid/os/Message;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 150
    return-void

    .line 145
    :catch_4
    move-exception v0

    .line 146
    .local v0, t:Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 147
    const-string v1, "handleMessage"

    invoke-direct {p0, v1}, Lcom/google/android/music/AsyncMediaPlayer;->releaseWakeLock(Ljava/lang/String;)V

    .line 148
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isInErrorState()Z
    .registers 2

    .prologue
    .line 617
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/google/android/music/AsyncMediaPlayer;->isStatusOn(I)Z

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 528
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/music/AsyncMediaPlayer;->isStatusOn(I)Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 608
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/music/AsyncMediaPlayer;->isStatusOn(I)Z

    move-result v0

    return v0
.end method

.method public isPreparing()Z
    .registers 2

    .prologue
    .line 611
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/music/AsyncMediaPlayer;->isStatusOn(I)Z

    move-result v0

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    .prologue
    .line 614
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/google/android/music/AsyncMediaPlayer;->isStatusOn(I)Z

    move-result v0

    return v0
.end method

.method public pause()V
    .registers 4

    .prologue
    const/4 v2, 0x3

    .line 558
    invoke-direct {p0}, Lcom/google/android/music/AsyncMediaPlayer;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 570
    :goto_7
    return-void

    .line 561
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncMediaPlayer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

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

    .line 562
    invoke-virtual {p0, v2}, Lcom/google/android/music/AsyncMediaPlayer;->removeMessages(I)V

    .line 563
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncMediaPlayer;->removeMessages(I)V

    .line 564
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncMediaPlayer;->removeMessages(I)V

    .line 566
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/music/AsyncMediaPlayer;->removeStatus(I)V

    .line 568
    const-string v0, "pause"

    invoke-direct {p0, v0}, Lcom/google/android/music/AsyncMediaPlayer;->acquireWakeLock(Ljava/lang/String;)V

    .line 569
    invoke-virtual {p0, v2}, Lcom/google/android/music/AsyncMediaPlayer;->sendEmptyMessage(I)Z

    goto :goto_7
.end method

.method public position()J
    .registers 5

    .prologue
    .line 672
    iget-wide v0, p0, Lcom/google/android/music/AsyncMediaPlayer;->mPosition:J

    iget-object v2, p0, Lcom/google/android/music/AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/AsyncMediaPlayer$StopWatch;

    invoke-virtual {v2}, Lcom/google/android/music/AsyncMediaPlayer$StopWatch;->getTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/music/AsyncMediaPlayer;->mHttpSeek:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public release()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 587
    invoke-direct {p0}, Lcom/google/android/music/AsyncMediaPlayer;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 602
    :goto_7
    return-void

    .line 590
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncMediaPlayer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

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

    .line 593
    iget-object v0, p0, Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 594
    iget-object v0, p0, Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 595
    iget-object v0, p0, Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 596
    iget-object v0, p0, Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 597
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/music/AsyncMediaPlayer;->addStatus(I)V

    .line 598
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/google/android/music/AsyncMediaPlayer;->removeStatus(I)V

    .line 599
    invoke-virtual {p0, v2}, Lcom/google/android/music/AsyncMediaPlayer;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 600
    const-string v0, "release"

    invoke-direct {p0, v0}, Lcom/google/android/music/AsyncMediaPlayer;->acquireWakeLock(Ljava/lang/String;)V

    .line 601
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncMediaPlayer;->sendEmptyMessage(I)Z

    goto :goto_7
.end method

.method public seek(J)J
    .registers 8
    .parameter "position"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v4, 0x6

    .line 680
    invoke-direct {p0}, Lcom/google/android/music/AsyncMediaPlayer;->isReleased()Z

    move-result v3

    if-eqz v3, :cond_b

    move-wide p1, v1

    .line 690
    .end local p1
    :goto_a
    return-wide p1

    .line 683
    .restart local p1
    :cond_b
    invoke-virtual {p0, v4}, Lcom/google/android/music/AsyncMediaPlayer;->removeMessages(I)V

    .line 684
    iput-wide p1, p0, Lcom/google/android/music/AsyncMediaPlayer;->mPosition:J

    .line 685
    iput-wide v1, p0, Lcom/google/android/music/AsyncMediaPlayer;->mHttpSeek:J

    .line 686
    long-to-int v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v4, v1, v2}, Lcom/google/android/music/AsyncMediaPlayer;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 687
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/music/AsyncMediaPlayer;->mStopWatch:Lcom/google/android/music/AsyncMediaPlayer$StopWatch;

    invoke-virtual {v1}, Lcom/google/android/music/AsyncMediaPlayer$StopWatch;->reset()V

    .line 688
    const-string v1, "seek"

    invoke-direct {p0, v1}, Lcom/google/android/music/AsyncMediaPlayer;->acquireWakeLock(Ljava/lang/String;)V

    .line 689
    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncMediaPlayer;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a
.end method

.method public setAudioSessionId(I)V
    .registers 8
    .parameter "fxsession"

    .prologue
    .line 659
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

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

    .line 660
    .local v0, m:Ljava/lang/reflect/Method;
    iget-object v1, p0, Lcom/google/android/music/AsyncMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    .line 665
    .end local v0           #m:Ljava/lang/reflect/Method;
    :goto_23
    return-void

    .line 661
    :catch_24
    move-exception v1

    goto :goto_23
.end method

.method public setDataSource(Lcom/google/android/music/dl/ContentIdentifier;ZLcom/google/android/music/AsyncMediaPlayer$AsyncCommandCallback;)V
    .registers 8
    .parameter "songId"
    .parameter "fromUserAction"
    .parameter "cb"

    .prologue
    const/4 v1, 0x1

    .line 252
    if-nez p1, :cond_b

    .line 253
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid ContentIdentifier"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 255
    :cond_b
    iget-object v2, p0, Lcom/google/android/music/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    if-eqz v2, :cond_34

    .line 256
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t reuse. Previously used for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

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

    .line 259
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

    .line 260
    iput-object p1, p0, Lcom/google/android/music/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    .line 261
    invoke-virtual {p0, v1, p3}, Lcom/google/android/music/AsyncMediaPlayer;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 262
    .local v0, msg:Landroid/os/Message;
    if-eqz p2, :cond_67

    :goto_5c
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 263
    const-string v1, "setDataSource"

    invoke-direct {p0, v1}, Lcom/google/android/music/AsyncMediaPlayer;->acquireWakeLock(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncMediaPlayer;->sendMessage(Landroid/os/Message;)Z

    .line 265
    return-void

    .line 262
    :cond_67
    const/4 v1, 0x0

    goto :goto_5c
.end method

.method public setVolume(F)V
    .registers 6
    .parameter "vol"

    .prologue
    const/4 v3, 0x5

    .line 694
    invoke-direct {p0}, Lcom/google/android/music/AsyncMediaPlayer;->isReleased()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 701
    :goto_7
    return-void

    .line 697
    :cond_8
    invoke-virtual {p0, v3}, Lcom/google/android/music/AsyncMediaPlayer;->removeMessages(I)V

    .line 698
    const/high16 v1, 0x447a

    mul-float/2addr v1, p1

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v3, v1, v2}, Lcom/google/android/music/AsyncMediaPlayer;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 699
    .local v0, msg:Landroid/os/Message;
    const-string v1, "setVolume"

    invoke-direct {p0, v1}, Lcom/google/android/music/AsyncMediaPlayer;->acquireWakeLock(Ljava/lang/String;)V

    .line 700
    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncMediaPlayer;->sendMessage(Landroid/os/Message;)Z

    goto :goto_7
.end method

.method public start()V
    .registers 4

    .prologue
    const/4 v2, 0x2

    .line 546
    invoke-direct {p0}, Lcom/google/android/music/AsyncMediaPlayer;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 555
    :goto_7
    return-void

    .line 549
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncMediaPlayer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

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

    .line 550
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncMediaPlayer;->removeMessages(I)V

    .line 551
    invoke-virtual {p0, v2}, Lcom/google/android/music/AsyncMediaPlayer;->removeMessages(I)V

    .line 552
    const-string v0, "start"

    invoke-direct {p0, v0}, Lcom/google/android/music/AsyncMediaPlayer;->acquireWakeLock(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p0, v2}, Lcom/google/android/music/AsyncMediaPlayer;->sendEmptyMessage(I)Z

    .line 554
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/music/AsyncMediaPlayer;->addStatus(I)V

    goto :goto_7
.end method

.method public stop()V
    .registers 4

    .prologue
    const/4 v2, 0x7

    .line 573
    invoke-direct {p0}, Lcom/google/android/music/AsyncMediaPlayer;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 584
    :goto_7
    return-void

    .line 576
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncMediaPlayer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/AsyncMediaPlayer;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

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

    .line 577
    iget-object v0, p0, Lcom/google/android/music/AsyncMediaPlayer;->mServiceHooks:Lcom/google/android/music/MusicPlaybackService$ServiceHooks;

    invoke-interface {v0}, Lcom/google/android/music/MusicPlaybackService$ServiceHooks;->cancelTryNext()V

    .line 578
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncMediaPlayer;->removeMessages(I)V

    .line 579
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/music/AsyncMediaPlayer;->removeMessages(I)V

    .line 580
    invoke-virtual {p0, v2}, Lcom/google/android/music/AsyncMediaPlayer;->removeMessages(I)V

    .line 581
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/google/android/music/AsyncMediaPlayer;->removeStatus(I)V

    .line 582
    const-string v0, "stop"

    invoke-direct {p0, v0}, Lcom/google/android/music/AsyncMediaPlayer;->acquireWakeLock(Ljava/lang/String;)V

    .line 583
    invoke-virtual {p0, v2}, Lcom/google/android/music/AsyncMediaPlayer;->sendEmptyMessage(I)Z

    goto :goto_7
.end method
