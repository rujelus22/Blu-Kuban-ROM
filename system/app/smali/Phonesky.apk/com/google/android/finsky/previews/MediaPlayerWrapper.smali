.class public Lcom/google/android/finsky/previews/MediaPlayerWrapper;
.super Landroid/media/MediaPlayer;
.source "MediaPlayerWrapper.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field private mCurrentState:I

.field private final mHandler:Landroid/os/Handler;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private final mReleaser:Ljava/lang/Runnable;

.field private final mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/previews/StatusListener;)V
    .registers 5
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 34
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    .line 36
    iput-object v2, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 37
    iput-object v2, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 38
    iput-object v2, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 44
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mHandler:Landroid/os/Handler;

    .line 46
    new-instance v1, Lcom/google/android/finsky/previews/MediaPlayerWrapper$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/previews/MediaPlayerWrapper$1;-><init>(Lcom/google/android/finsky/previews/MediaPlayerWrapper;)V

    iput-object v1, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mReleaser:Ljava/lang/Runnable;

    .line 54
    invoke-super {p0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 55
    invoke-super {p0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 56
    invoke-super {p0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 58
    iput-object p1, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    .line 59
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/FinskyApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 61
    .local v0, powerManager:Landroid/os/PowerManager;
    const/4 v1, 0x6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/previews/MediaPlayerWrapper;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->releaseWakeLock()V

    return-void
.end method

.method private releaseWakeLock()V
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 169
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 171
    :cond_d
    return-void
.end method


# virtual methods
.method public getCurrentState()I
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3
    .parameter "mp"

    .prologue
    .line 149
    const/4 v0, 0x7

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    .line 150
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/StatusListener;->completed()V

    .line 151
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_11

    .line 152
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 154
    :cond_11
    invoke-direct {p0}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->releaseWakeLock()V

    .line 155
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 5
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 159
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    .line 160
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/StatusListener;->error()V

    .line 161
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    if-eqz v0, :cond_14

    .line 162
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    .line 164
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 3
    .parameter "mp"

    .prologue
    .line 140
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    .line 141
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/StatusListener;->prepared()V

    .line 142
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    if-eqz v0, :cond_11

    .line 143
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 145
    :cond_11
    return-void
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 125
    invoke-super {p0}, Landroid/media/MediaPlayer;->pause()V

    .line 126
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    .line 127
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/StatusListener;->paused()V

    .line 128
    invoke-direct {p0}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->releaseWakeLock()V

    .line 129
    return-void
.end method

.method public prepare()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-super {p0}, Landroid/media/MediaPlayer;->prepare()V

    .line 103
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    .line 104
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/StatusListener;->prepared()V

    .line 105
    return-void
.end method

.method public prepareAsync()V
    .registers 2

    .prologue
    .line 95
    invoke-super {p0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 96
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    .line 97
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/StatusListener;->preparing()V

    .line 98
    return-void
.end method

.method public release()V
    .registers 2

    .prologue
    .line 133
    invoke-super {p0}, Landroid/media/MediaPlayer;->release()V

    .line 134
    const/16 v0, 0x9

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    .line 135
    invoke-direct {p0}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->releaseWakeLock()V

    .line 136
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 81
    invoke-super {p0}, Landroid/media/MediaPlayer;->reset()V

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    .line 83
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/StatusListener;->reset()V

    .line 84
    invoke-direct {p0}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->releaseWakeLock()V

    .line 85
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .registers 3
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    .line 91
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 77
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 72
    return-void
.end method

.method public start()V
    .registers 5

    .prologue
    .line 109
    invoke-super {p0}, Landroid/media/MediaPlayer;->start()V

    .line 110
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    .line 111
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/StatusListener;->playing()V

    .line 112
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 113
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mReleaser:Ljava/lang/Runnable;

    invoke-super {p0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    invoke-super {p0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 114
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 118
    invoke-super {p0}, Landroid/media/MediaPlayer;->stop()V

    .line 119
    const/4 v0, 0x6

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    .line 120
    invoke-direct {p0}, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->releaseWakeLock()V

    .line 121
    return-void
.end method
