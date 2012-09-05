.class public Lcom/sec/android/app/voicerecorder/widget/VRPlayer;
.super Ljava/lang/Object;
.source "VRPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/voicerecorder/widget/VRPlayer$NotificationHandler;,
        Lcom/sec/android/app/voicerecorder/widget/VRPlayer$OnPlayerStateChangedObserver;
    }
.end annotation


# instance fields
.field public FilePath4GATE:Ljava/lang/String;

.field private mContentUri:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field private mFadeInHandler:Landroid/os/Handler;

.field private mFileDescripter:Ljava/io/FileDescriptor;

.field private mFilePath:Ljava/lang/String;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMediaPlayerState:I

.field private mNotificationHandler:Lcom/sec/android/app/voicerecorder/widget/VRPlayer$NotificationHandler;

.field private mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/voicerecorder/widget/VRPlayer$OnPlayerStateChangedObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mContentUri:Landroid/net/Uri;

    .line 53
    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mContext:Landroid/content/Context;

    .line 54
    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mPath:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->FilePath4GATE:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mObservers:Ljava/util/List;

    .line 144
    new-instance v0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer$NotificationHandler;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer$NotificationHandler;-><init>(Lcom/sec/android/app/voicerecorder/widget/VRPlayer;Lcom/sec/android/app/voicerecorder/widget/VRPlayer$1;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mNotificationHandler:Lcom/sec/android/app/voicerecorder/widget/VRPlayer$NotificationHandler;

    .line 193
    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mFileDescripter:Ljava/io/FileDescriptor;

    .line 194
    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mFilePath:Ljava/lang/String;

    .line 464
    new-instance v0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer$1;-><init>(Lcom/sec/android/app/voicerecorder/widget/VRPlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mFadeInHandler:Landroid/os/Handler;

    .line 147
    const/16 v0, 0x15

    iput v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mMediaPlayerState:I

    .line 148
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mContext:Landroid/content/Context;

    .line 149
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/voicerecorder/widget/VRPlayer;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->handleNotification(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/voicerecorder/widget/VRPlayer;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mFadeInHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private handleNotification(I)V
    .registers 7
    .parameter "state"

    .prologue
    .line 120
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 122
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/voicerecorder/widget/VRPlayer$OnPlayerStateChangedObserver;>;"
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mNotificationHandler:Lcom/sec/android/app/voicerecorder/widget/VRPlayer$NotificationHandler;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 123
    .local v1, msg:Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 125
    const/4 v2, 0x1

    if-ne p1, v2, :cond_20

    .line 126
    iget v2, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mMediaPlayerState:I

    const/16 v3, 0x16

    if-ne v2, v3, :cond_20

    .line 127
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mNotificationHandler:Lcom/sec/android/app/voicerecorder/widget/VRPlayer$NotificationHandler;

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v1, v3, v4}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer$NotificationHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 130
    :cond_20
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 131
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/voicerecorder/widget/VRPlayer$OnPlayerStateChangedObserver;

    invoke-interface {v2, p1}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer$OnPlayerStateChangedObserver;->OnPlayerStateChanged(I)V

    goto :goto_20

    .line 132
    :cond_30
    return-void
.end method

.method private notifyPlayerState(I)V
    .registers 6
    .parameter "state"

    .prologue
    .line 111
    const-string v1, "VRPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyPlayerState state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mNotificationHandler:Lcom/sec/android/app/voicerecorder/widget/VRPlayer$NotificationHandler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 114
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 115
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mNotificationHandler:Lcom/sec/android/app/voicerecorder/widget/VRPlayer$NotificationHandler;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer$NotificationHandler;->sendMessage(Landroid/os/Message;)Z

    .line 116
    return-void
.end method

.method private startPlay(Z)Z
    .registers 7
    .parameter "useDescriptor"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 207
    const-string v3, "VRPlayer"

    const-string v4, "startPlay - FileDescriptor"

    invoke-static {v3, v4}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget v3, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mMediaPlayerState:I

    const/16 v4, 0x15

    if-eq v3, v4, :cond_32

    .line 210
    const-string v2, "VRPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal player state("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :goto_31
    return v1

    .line 214
    :cond_32
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->release()V

    .line 216
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 219
    if-eqz p1, :cond_66

    .line 220
    :try_start_3e
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mFileDescripter:Ljava/io/FileDescriptor;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 223
    :goto_45
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 224
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 225
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 226
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_5a} :catch_6e

    .line 242
    const/16 v3, 0x16

    iput v3, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mMediaPlayerState:I

    .line 243
    invoke-direct {p0, v1}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->notifyPlayerState(I)V

    .line 244
    invoke-direct {p0, v2}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->notifyPlayerState(I)V

    move v1, v2

    .line 245
    goto :goto_31

    .line 222
    :cond_66
    :try_start_66
    iget-object v3, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6d} :catch_6e

    goto :goto_45

    .line 237
    :catch_6e
    move-exception v0

    .line 238
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "VRPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_31
.end method


# virtual methods
.method public getContentURI()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getCurrentPosition()I
    .registers 5

    .prologue
    .line 426
    const/4 v1, -0x1

    .line 427
    .local v1, pos:I
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_b

    .line 429
    :try_start_5
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_a} :catch_c

    move-result v1

    .line 436
    :cond_b
    :goto_b
    return v1

    .line 430
    :catch_c
    move-exception v0

    .line 431
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "VRPlayer"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const/4 v1, -0x1

    goto :goto_b
.end method

.method public getDuration()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 412
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_b

    .line 415
    :try_start_5
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_a} :catch_c

    move-result v1

    .line 421
    :cond_b
    :goto_b
    return v1

    .line 416
    :catch_c
    move-exception v0

    .line 417
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_b
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 70
    iget v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mMediaPlayerState:I

    return v0
.end method

.method public isPaused()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 405
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_6

    .line 408
    :cond_5
    :goto_5
    return v0

    :cond_6
    iget v1, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mMediaPlayerState:I

    const/16 v2, 0x17

    if-ne v1, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public isPlaying()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 391
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_6

    .line 400
    :goto_5
    return v1

    .line 397
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 398
    :catch_d
    move-exception v0

    .line 399
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_5
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4
    .parameter "mp"

    .prologue
    .line 440
    const-string v0, "VRPlayer"

    const-string v1, "onCompletion E"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 442
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 443
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 445
    const/16 v0, 0x15

    iput v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mMediaPlayerState:I

    .line 446
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->notifyPlayerState(I)V

    .line 447
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->notifyPlayerState(I)V

    .line 449
    invoke-static {}, Lcom/sec/android/app/voicerecorder/widget/VRRemoteView;->playStop()V

    .line 450
    return-void
.end method

.method public pausePlay()V
    .registers 4

    .prologue
    const/16 v2, 0x17

    .line 267
    const-string v0, "VRPlayer"

    const-string v1, "pausePlay"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mMediaPlayerState:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_13

    iget v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mMediaPlayerState:I

    if-ne v0, v2, :cond_36

    .line 270
    :cond_13
    const-string v0, "VRPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal player state("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :goto_35
    return-void

    .line 275
    :cond_36
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3f

    .line 276
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 279
    :cond_3f
    iput v2, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mMediaPlayerState:I

    .line 282
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->notifyPlayerState(I)V

    goto :goto_35
.end method

.method public release()V
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_11

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 157
    :cond_11
    return-void
.end method

.method public removeAllOnPlayerStateChangedObserver()V
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 108
    return-void
.end method

.method public removeOnPlayerStateChangedObserver(Lcom/sec/android/app/voicerecorder/widget/VRPlayer$OnPlayerStateChangedObserver;)V
    .registers 3
    .parameter "o"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method public resetPath()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 331
    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mPath:Ljava/lang/String;

    .line 332
    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mContentUri:Landroid/net/Uri;

    .line 333
    return-void
.end method

.method public resumePlay()V
    .registers 5

    .prologue
    const/16 v3, 0x16

    const/16 v2, 0x15

    .line 286
    const-string v0, "VRPlayer"

    const-string v1, "resumePlay"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mMediaPlayerState:I

    if-eq v0, v2, :cond_13

    iget v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mMediaPlayerState:I

    if-ne v0, v3, :cond_36

    .line 289
    :cond_13
    const-string v0, "VRPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal player state("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :goto_35
    return-void

    .line 293
    :cond_36
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4a

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 300
    :goto_3f
    iput v3, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mMediaPlayerState:I

    .line 301
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->notifyPlayerState(I)V

    .line 302
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->notifyPlayerState(I)V

    goto :goto_35

    .line 296
    :cond_4a
    iput v2, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mMediaPlayerState:I

    .line 297
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->startPlay()Z

    goto :goto_3f
.end method

.method public seek(IZ)V
    .registers 6
    .parameter "msec"
    .parameter "restart"

    .prologue
    .line 336
    const-string v0, "VRPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seek msec="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1f

    .line 339
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->startPlay()Z

    .line 343
    :cond_1f
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->pausePlay()V

    .line 345
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2b

    .line 346
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 348
    :cond_2b
    if-eqz p2, :cond_30

    .line 349
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->resumePlay()V

    .line 351
    :cond_30
    return-void
.end method

.method public setOnPlayerStateChangedObserver(Lcom/sec/android/app/voicerecorder/widget/VRPlayer$OnPlayerStateChangedObserver;)V
    .registers 3
    .parameter "o"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    return-void
.end method

.method public startFadeIn()V
    .registers 5

    .prologue
    const/16 v1, 0x1f

    const/16 v3, 0x20

    .line 453
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->volumeCtrl(F)V

    .line 454
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mFadeInHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 455
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mFadeInHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 457
    :cond_16
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mFadeInHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 458
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mFadeInHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 460
    :cond_23
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->volumeCtrl(F)V

    .line 461
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mFadeInHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 462
    return-void
.end method

.method public startPlay()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 160
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mPath:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 161
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mPath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->startPlay(Ljava/lang/String;)Z

    .line 169
    :goto_a
    return v0

    .line 164
    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mContentUri:Landroid/net/Uri;

    if-eqz v1, :cond_15

    .line 165
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mContentUri:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->startPlay(Landroid/net/Uri;)Z

    goto :goto_a

    .line 169
    :cond_15
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public startPlay(Landroid/net/Uri;)Z
    .registers 8
    .parameter "contentUri"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mContentUri:Landroid/net/Uri;

    .line 177
    :try_start_2
    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "r"

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 178
    .local v3, mpfd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 179
    .local v2, fd:Ljava/io/FileDescriptor;
    invoke-virtual {p0, v2}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->startPlay(Ljava/io/FileDescriptor;)Z
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_15} :catch_26

    move-result v0

    .line 181
    .local v0, bResult:Z
    :try_start_16
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_19} :catch_26

    .line 189
    .end local v0           #bResult:Z
    .end local v2           #fd:Ljava/io/FileDescriptor;
    .end local v3           #mpfd:Landroid/os/ParcelFileDescriptor;
    :goto_19
    return v0

    .line 182
    .restart local v0       #bResult:Z
    .restart local v2       #fd:Ljava/io/FileDescriptor;
    .restart local v3       #mpfd:Landroid/os/ParcelFileDescriptor;
    :catch_1a
    move-exception v1

    .line 183
    .local v1, e:Ljava/io/IOException;
    :try_start_1b
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 184
    const-string v4, "VRPlayer"

    const-string v5, "mpfd.close()"

    invoke-static {v4, v5, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_25} :catch_26

    goto :goto_19

    .line 187
    .end local v0           #bResult:Z
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #fd:Ljava/io/FileDescriptor;
    .end local v3           #mpfd:Landroid/os/ParcelFileDescriptor;
    :catch_26
    move-exception v1

    .line 188
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v4, "VRPlayer"

    const-string v5, "error in startPlay(fd)"

    invoke-static {v4, v5, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public startPlay(Ljava/io/FileDescriptor;)Z
    .registers 3
    .parameter "descriptor"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mFileDescripter:Ljava/io/FileDescriptor;

    .line 198
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->startPlay(Z)Z

    move-result v0

    return v0
.end method

.method public startPlay(Ljava/lang/String;)Z
    .registers 3
    .parameter "path"

    .prologue
    .line 202
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mFilePath:Ljava/lang/String;

    .line 203
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->startPlay(Z)Z

    move-result v0

    return v0
.end method

.method public stopPlay()V
    .registers 6

    .prologue
    const/16 v4, 0x20

    const/16 v3, 0x1f

    const/16 v2, 0x15

    .line 306
    const-string v0, "VRPlayer"

    const-string v1, "stopPlay"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mMediaPlayerState:I

    if-ne v0, v2, :cond_34

    .line 309
    const-string v0, "VRPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal player state("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :goto_33
    return-void

    .line 313
    :cond_34
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mFadeInHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mFadeInHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 316
    :cond_41
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mFadeInHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mFadeInHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 320
    :cond_4e
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->release()V

    .line 322
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->notifyPlayerState(I)V

    .line 323
    iput v2, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mMediaPlayerState:I

    goto :goto_33
.end method

.method public volumeCtrl(F)V
    .registers 3
    .parameter "volume"

    .prologue
    .line 365
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/widget/VRPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 367
    :cond_9
    return-void
.end method
