.class public Lcom/google/android/finsky/previews/MediaPlayerWrapper;
.super Landroid/media/MediaPlayer;
.source "MediaPlayerWrapper.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field private mCurrentState:I

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private final mStatusListener:Lcom/google/android/finsky/previews/StatusListener;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/previews/StatusListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    .line 29
    iput-object v1, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 30
    iput-object v1, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 31
    iput-object v1, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 36
    invoke-super {p0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 37
    invoke-super {p0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 38
    invoke-super {p0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 40
    iput-object p1, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    .line 41
    return-void
.end method


# virtual methods
.method public getCurrentState()I
    .registers 2

    .prologue
    .line 44
    iget v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3
    .parameter "mp"

    .prologue
    .line 121
    const/4 v0, 0x7

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    .line 122
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/StatusListener;->completed()V

    .line 123
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_11

    .line 124
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 126
    :cond_11
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 5
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 130
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    .line 131
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/StatusListener;->error()V

    .line 132
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    if-eqz v0, :cond_14

    .line 133
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    .line 135
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
    .line 112
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    .line 113
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/StatusListener;->prepared()V

    .line 114
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    if-eqz v0, :cond_11

    .line 115
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 117
    :cond_11
    return-void
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 99
    invoke-super {p0}, Landroid/media/MediaPlayer;->pause()V

    .line 100
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    .line 101
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/StatusListener;->paused()V

    .line 102
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
    .line 79
    invoke-super {p0}, Landroid/media/MediaPlayer;->prepare()V

    .line 80
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    .line 81
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/StatusListener;->prepared()V

    .line 82
    return-void
.end method

.method public prepareAsync()V
    .registers 2

    .prologue
    .line 72
    invoke-super {p0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 73
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    .line 74
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/StatusListener;->preparing()V

    .line 75
    return-void
.end method

.method public release()V
    .registers 2

    .prologue
    .line 106
    invoke-super {p0}, Landroid/media/MediaPlayer;->release()V

    .line 107
    const/16 v0, 0x9

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    .line 108
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 59
    invoke-super {p0}, Landroid/media/MediaPlayer;->reset()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    .line 61
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/StatusListener;->reset()V

    .line 62
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
    .line 66
    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    .line 68
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 55
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 50
    return-void
.end method

.method public start()V
    .registers 2

    .prologue
    .line 86
    invoke-super {p0}, Landroid/media/MediaPlayer;->start()V

    .line 87
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    .line 88
    iget-object v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/StatusListener;->playing()V

    .line 89
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 93
    invoke-super {p0}, Landroid/media/MediaPlayer;->stop()V

    .line 94
    const/4 v0, 0x6

    iput v0, p0, Lcom/google/android/finsky/previews/MediaPlayerWrapper;->mCurrentState:I

    .line 95
    return-void
.end method
