.class Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;
.super Ljava/lang/Object;
.source "MoviePlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchPlayer"
.end annotation


# instance fields
.field private final mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private final mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mDuration:J

.field private final mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mHandler:Landroid/os/Handler;

.field private final mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mIsInitialized:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private final mPlayReadyErrorListener:Landroid/media/MediaPlayer$OnPlayReadyErrorListener;

.field private final mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private final mVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field final synthetic this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)V
    .registers 4
    .parameter

    .prologue
    .line 1081
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1076
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1078
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mIsInitialized:Z

    .line 1079
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mDuration:J

    .line 1383
    new-instance v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$1;-><init>(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 1400
    new-instance v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$2;-><init>(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 1412
    new-instance v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$3;-><init>(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 1471
    new-instance v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$4;-><init>(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 1507
    new-instance v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$5;-><init>(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mPlayReadyErrorListener:Landroid/media/MediaPlayer$OnPlayReadyErrorListener;

    .line 1555
    new-instance v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$6;-><init>(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 1791
    new-instance v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$7;-><init>(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 1082
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const v1, 0x1000000a

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 1083
    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1075
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->setIsInitialized(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 1075
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->checkPauseEnable()V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)Landroid/media/MediaPlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1075
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method private checkPauseEnable()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1832
    iget-wide v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2c

    .line 1833
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_21

    sget v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_21

    .line 1834
    const-string v0, "MoviePlaybackService"

    const-string v1, "TouchPlayer::checkPauseEnable() - Local play. duration is -1. FF/REW disable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    invoke-static {v5, v4, v4}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setBtnEnableFlag(ZZZ)V

    .line 1844
    :goto_20
    return-void

    .line 1837
    :cond_21
    const-string v0, "MoviePlaybackService"

    const-string v1, "TouchPlayer::checkPauseEnable() - Streaming play. duration is -1. FF/REW disable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    invoke-static {v4, v4, v4}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setBtnEnableFlag(ZZZ)V

    goto :goto_20

    .line 1841
    :cond_2c
    const-string v0, "MoviePlaybackService"

    const-string v1, "TouchPlayer::checkPauseEnable() - duration > 0."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    invoke-static {v5, v5, v5}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setBtnEnableFlag(ZZZ)V

    goto :goto_20
.end method

.method private setIsInitialized(Z)V
    .registers 6
    .parameter "flag"

    .prologue
    const/4 v3, 0x0

    .line 1292
    const-string v0, "MoviePlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsInitialized - flag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    iput-boolean p1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mIsInitialized:Z

    .line 1295
    if-nez p1, :cond_27

    .line 1296
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #setter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoWidth:I
    invoke-static {v0, v3}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$1602(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;I)I

    .line 1297
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #setter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoHeight:I
    invoke-static {v0, v3}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$1702(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;I)I

    .line 1299
    :cond_27
    return-void
.end method


# virtual methods
.method public getDuration()J
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 1821
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_35

    iget-wide v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mDuration:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_35

    .line 1822
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mDuration:J

    .line 1824
    iget-wide v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mDuration:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_35

    .line 1825
    const-string v0, "MoviePlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duration() - mDuration <= 0. mDuration : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    :cond_35
    iget-wide v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mDuration:J

    return-wide v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 1288
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mIsInitialized:Z

    return v0
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 1813
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public pause()V
    .registers 3

    .prologue
    .line 1341
    const-string v0, "MoviePlaybackService"

    const-string v1, "TouchPlayer :: pause() : start!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mIsInitialized:Z

    if-eqz v0, :cond_18

    .line 1344
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 1346
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setPlayerState(I)V

    .line 1349
    :cond_18
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$300(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1350
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$300(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1351
    :cond_2d
    return-void
.end method

.method public position()J
    .registers 3

    .prologue
    .line 1847
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    :goto_b
    return-wide v0

    :cond_c
    const-wide/16 v0, -0x1

    goto :goto_b
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 1354
    const-string v0, "MoviePlaybackService"

    const-string v1, "TouchPlayer::reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_18

    .line 1357
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 1358
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1359
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1362
    :cond_18
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$300(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1363
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$300(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1365
    :cond_2d
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->setIsInitialized(Z)V

    .line 1366
    return-void
.end method

.method public resetPlayer()V
    .registers 3

    .prologue
    .line 1369
    const-string v0, "MoviePlaybackService"

    const-string v1, "TouchPlayer::resetPlayer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_18

    .line 1372
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 1373
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1374
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1377
    :cond_18
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->setIsInitialized(Z)V

    .line 1379
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mDuration:J

    .line 1380
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1381
    return-void
.end method

.method public resume()V
    .registers 3

    .prologue
    .line 1897
    const-string v0, "MoviePlaybackService"

    const-string v1, "TouchPlayer :: resume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mIsInitialized:Z

    if-eqz v0, :cond_f

    .line 1901
    :cond_f
    return-void
.end method

.method public seek(II)J
    .registers 7
    .parameter "whereto"
    .parameter "seekMode"

    .prologue
    .line 1859
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_33

    iget-wide v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_33

    .line 1860
    const-string v0, "MoviePlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TouchPlayer seek pos : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seekMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->seekTo(II)V

    .line 1863
    :cond_33
    int-to-long v0, p1

    return-wide v0
.end method

.method public seek(J)J
    .registers 7
    .parameter "whereto"

    .prologue
    .line 1851
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_12

    iget-wide v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_12

    .line 1852
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 1854
    :cond_12
    return-wide p1
.end method

.method public setDataSource(Landroid/net/Uri;)V
    .registers 15
    .parameter "uri"

    .prologue
    const/4 v12, 0x0

    .line 1207
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$1400(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v8

    .line 1208
    .local v8, videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1210
    .local v6, path:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1212
    .local v4, new_path:Ljava/lang/String;
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v9

    if-nez v9, :cond_2e

    .line 1213
    const-string v9, "MoviePlaybackService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setDataSource() - Uri : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    :cond_2e
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v9, :cond_3f

    .line 1216
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v9}, Landroid/media/MediaPlayer;->reset()V

    .line 1217
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v9}, Landroid/media/MediaPlayer;->release()V

    .line 1218
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1222
    :cond_3f
    const-wide/16 v9, 0x0

    :try_start_41
    iput-wide v9, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mDuration:J

    .line 1223
    new-instance v9, Landroid/media/MediaPlayer;

    invoke-direct {v9}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v9, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1224
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v10, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const v11, 0x1000000a

    invoke-virtual {v9, v10, v11}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 1225
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v10, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v9, v10}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1226
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v10, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v9, v10}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1234
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v10, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v9, v10}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 1235
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v10, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v9, v10}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1236
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v10, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v9, v10}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 1237
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v10, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v9, v10}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 1238
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const/4 v10, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mBufferPercentage:I
    invoke-static {v9, v10}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$1502(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;I)I

    .line 1240
    const-string v9, "content://"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_ba

    .line 1241
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v10, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1258
    :goto_97
    invoke-virtual {v8}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v7

    .line 1260
    .local v7, sh:Landroid/view/SurfaceHolder;
    if-eqz v7, :cond_17c

    .line 1261
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v9, v7}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 1267
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1268
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 1272
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v9}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 1273
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->setWakeMode(Z)V

    .line 1285
    .end local v7           #sh:Landroid/view/SurfaceHolder;
    :goto_b9
    return-void

    .line 1243
    :cond_ba
    const-string v9, "sphttp://["

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_14c

    .line 1244
    const-string v9, "["

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1245
    .local v1, indexofbracket1:I
    const-string v9, "]"

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1246
    .local v2, indexofbracket2:I
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v6, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1247
    .local v3, length:Ljava/lang/String;
    add-int/lit8 v9, v2, 0x1

    add-int/lit8 v10, v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1248
    .local v5, new_url:Ljava/lang/String;
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Actual URL is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1249
    add-int/lit8 v9, v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1250
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Actual PATH is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1251
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v9, v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_121
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_121} :catch_123
    .catch Ljava/lang/IllegalArgumentException; {:try_start_41 .. :try_end_121} :catch_153

    goto/16 :goto_97

    .line 1274
    .end local v1           #indexofbracket1:I
    .end local v2           #indexofbracket2:I
    .end local v3           #length:Ljava/lang/String;
    .end local v5           #new_url:Ljava/lang/String;
    :catch_123
    move-exception v0

    .line 1275
    .local v0, ex:Ljava/io/IOException;
    const-string v9, "MoviePlaybackService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setDataSource - IOException occured :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    invoke-direct {p0, v12}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->setIsInitialized(Z)V

    .line 1277
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v10, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_UNKNOWN"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    goto/16 :goto_b9

    .line 1254
    .end local v0           #ex:Ljava/io/IOException;
    :cond_14c
    :try_start_14c
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v9, v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_151
    .catch Ljava/io/IOException; {:try_start_14c .. :try_end_151} :catch_123
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14c .. :try_end_151} :catch_153

    goto/16 :goto_97

    .line 1279
    :catch_153
    move-exception v0

    .line 1280
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v9, "MoviePlaybackService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setDataSource - IllegalArgumentException occured :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    invoke-direct {p0, v12}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->setIsInitialized(Z)V

    .line 1282
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v10, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_UNKNOWN"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    goto/16 :goto_b9

    .line 1263
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    .restart local v7       #sh:Landroid/view/SurfaceHolder;
    :cond_17c
    :try_start_17c
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->resetPlayer()V
    :try_end_17f
    .catch Ljava/io/IOException; {:try_start_17c .. :try_end_17f} :catch_123
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17c .. :try_end_17f} :catch_153

    goto/16 :goto_b9
.end method

.method public setDataSourceAsync(Landroid/net/Uri;)V
    .registers 16
    .parameter "uri"

    .prologue
    const/4 v13, 0x0

    .line 1128
    const-string v10, "MoviePlaybackService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setDataSourceAsync() - Uri : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    const/4 v4, 0x0

    .line 1132
    .local v4, new_path:Ljava/lang/String;
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;
    invoke-static {v10}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$1400(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v9

    .line 1134
    .local v9, videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v10, :cond_39

    .line 1135
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v10}, Landroid/media/MediaPlayer;->reset()V

    .line 1136
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v10}, Landroid/media/MediaPlayer;->release()V

    .line 1137
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1141
    :cond_39
    const-wide/16 v10, 0x0

    :try_start_3b
    iput-wide v10, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mDuration:J

    .line 1142
    new-instance v10, Landroid/media/MediaPlayer;

    invoke-direct {v10}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v10, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1143
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v11, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const v12, 0x1000000a

    invoke-virtual {v10, v11, v12}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 1144
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v11, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v10, v11}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1145
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v11, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v10, v11}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1153
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v11, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v10, v11}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 1154
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v11, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v10, v11}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1155
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v11, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v10, v11}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 1156
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v11, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v10, v11}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 1158
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "sphttp://["

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_116

    .line 1159
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1160
    .local v7, path:Ljava/lang/String;
    const-string v10, "["

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1161
    .local v1, indexofbracket1:I
    const-string v10, "]"

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1162
    .local v2, indexofbracket2:I
    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v7, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1163
    .local v3, length:Ljava/lang/String;
    add-int/lit8 v10, v2, 0x1

    add-int/lit8 v11, v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1164
    .local v6, new_url:Ljava/lang/String;
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Actual URL is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1165
    add-int/lit8 v10, v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1166
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Actual PATH is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1167
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1168
    .local v5, new_uri:Landroid/net/Uri;
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v11, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v10, v11, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1175
    .end local v1           #indexofbracket1:I
    .end local v2           #indexofbracket2:I
    .end local v3           #length:Ljava/lang/String;
    .end local v5           #new_uri:Landroid/net/Uri;
    .end local v6           #new_url:Ljava/lang/String;
    .end local v7           #path:Ljava/lang/String;
    :goto_ed
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const/4 v11, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mBufferPercentage:I
    invoke-static {v10, v11}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$1502(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;I)I

    .line 1177
    invoke-virtual {v9}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v8

    .line 1179
    .local v8, sh:Landroid/view/SurfaceHolder;
    if-eqz v8, :cond_146

    .line 1180
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v10, v8}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 1186
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1187
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 1191
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v10}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 1192
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->setWakeMode(Z)V

    .line 1204
    .end local v8           #sh:Landroid/view/SurfaceHolder;
    :goto_115
    return-void

    .line 1171
    :cond_116
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v11, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v10, v11, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_11d
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_11d} :catch_11e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3b .. :try_end_11d} :catch_14a

    goto :goto_ed

    .line 1193
    :catch_11e
    move-exception v0

    .line 1194
    .local v0, ex:Ljava/io/IOException;
    const-string v10, "MoviePlaybackService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setDataSourceAsync - IOException occured :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    invoke-direct {p0, v13}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->setIsInitialized(Z)V

    .line 1196
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v11, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_UNKNOWN"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    goto :goto_115

    .line 1182
    .end local v0           #ex:Ljava/io/IOException;
    .restart local v8       #sh:Landroid/view/SurfaceHolder;
    :cond_146
    :try_start_146
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->resetPlayer()V
    :try_end_149
    .catch Ljava/io/IOException; {:try_start_146 .. :try_end_149} :catch_11e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_146 .. :try_end_149} :catch_14a

    goto :goto_115

    .line 1198
    .end local v8           #sh:Landroid/view/SurfaceHolder;
    :catch_14a
    move-exception v0

    .line 1199
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v10, "MoviePlaybackService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setDataSourceAsync - IllegalArgumentException occured :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    invoke-direct {p0, v13}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->setIsInitialized(Z)V

    .line 1201
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v11, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_UNKNOWN"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    goto :goto_115
.end method

.method public setDataSourcePrepare(Ljava/lang/String;)V
    .registers 5
    .parameter "video_uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1086
    if-nez p1, :cond_3

    .line 1101
    :goto_2
    return-void

    .line 1089
    :cond_3
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_21

    .line 1090
    const-string v0, "MoviePlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TouchPlayer :: setDataSourcePrepare() : start. URI : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    :cond_21
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    #setter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$1302(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1094
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->setIsInitialized(Z)V

    .line 1096
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_44

    const-string v0, "file"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1097
    :cond_44
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->setDataSourceAsync(Landroid/net/Uri;)V

    goto :goto_2

    .line 1100
    :cond_4c
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->setDataSource(Landroid/net/Uri;)V

    goto :goto_2
.end method

.method public setDisplay()V
    .registers 5

    .prologue
    .line 1874
    const-string v2, "MoviePlaybackService"

    const-string v3, "TouchPlayer::setDisplay()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$1400(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v1

    .line 1877
    .local v1, videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 1879
    .local v0, sh:Landroid/view/SurfaceHolder;
    if-eqz v0, :cond_20

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_20

    .line 1880
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 1882
    :cond_20
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 1817
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mHandler:Landroid/os/Handler;

    .line 1818
    return-void
.end method

.method public setInternalEq(I)V
    .registers 8
    .parameter "mode"

    .prologue
    .line 1105
    const-string v3, "MoviePlaybackService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setInternalEq(mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is called"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    :try_start_1e
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_41

    .line 1109
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1110
    .local v1, eqValue:Landroid/os/Parcel;
    const-string v3, "android.media.IMediaPlayer"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1111
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1112
    .local v2, eqValueReply:Landroid/os/Parcel;
    const v3, 0x12fd1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1113
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1114
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1116
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v1, v2}, Landroid/media/MediaPlayer;->setSoundAlive(Landroid/os/Parcel;Landroid/os/Parcel;)I
    :try_end_41
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_41} :catch_42
    .catch Ljava/lang/IllegalStateException; {:try_start_1e .. :try_end_41} :catch_63

    .line 1125
    .end local v1           #eqValue:Landroid/os/Parcel;
    .end local v2           #eqValueReply:Landroid/os/Parcel;
    :cond_41
    :goto_41
    return-void

    .line 1118
    :catch_42
    move-exception v0

    .line 1119
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 1120
    const-string v3, "MoviePlaybackService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setInternalEq - IllegalArgumentException occured :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 1121
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_63
    move-exception v0

    .line 1122
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1123
    const-string v3, "MoviePlaybackService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setInternalEq - IllegalStateException occured 2 :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41
.end method

.method public setVolume(F)V
    .registers 3
    .parameter "vol"

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    .line 1869
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 1871
    :cond_9
    return-void
.end method

.method public start()V
    .registers 4

    .prologue
    .line 1302
    const-string v1, "MoviePlaybackService"

    const-string v2, "TouchPlayer :: start()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_42

    iget-boolean v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mIsInitialized:Z

    if-eqz v1, :cond_42

    .line 1305
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCallState:I
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$800(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)I

    move-result v1

    if-nez v1, :cond_39

    .line 1306
    const/4 v0, 0x0

    .line 1308
    .local v0, movieVolume:F
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$900(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/media/AudioManager;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 1309
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$900(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/media/AudioManager;

    move-result-object v1

    const-string v2, "situation=7;device=0"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 1311
    :cond_30
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$100(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->setVolume(F)V

    .line 1314
    .end local v0           #movieVolume:F
    :cond_39
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 1315
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setPlayerState(I)V

    .line 1318
    :cond_42
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$300(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_57

    .line 1319
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$300(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1320
    :cond_57
    return-void
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 1323
    const-string v0, "MoviePlaybackService"

    const-string v1, "TouchPlayer :: stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1c

    .line 1326
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1327
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1330
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setPlayerState(I)V

    .line 1333
    :cond_1c
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$300(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1334
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$300(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1336
    :cond_31
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->setIsInitialized(Z)V

    .line 1337
    return-void
.end method

.method public suspend()V
    .registers 3

    .prologue
    .line 1885
    const-string v0, "MoviePlaybackService"

    const-string v1, "TouchPlayer :: suspend()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mIsInitialized:Z

    if-eqz v0, :cond_13

    .line 1889
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setPlayerState(I)V

    .line 1892
    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$300(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1893
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$300(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1894
    :cond_28
    return-void
.end method
