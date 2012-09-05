.class public Lcom/android/ex/variablespeed/SingleThreadedMediaPlayerProxy;
.super Ljava/lang/Object;
.source "SingleThreadedMediaPlayerProxy.java"

# interfaces
.implements Lcom/android/ex/variablespeed/MediaPlayerProxy;


# instance fields
.field private final mDelegate:Lcom/android/ex/variablespeed/MediaPlayerProxy;


# direct methods
.method public constructor <init>(Lcom/android/ex/variablespeed/MediaPlayerProxy;)V
    .registers 2
    .parameter "delegate"

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/ex/variablespeed/SingleThreadedMediaPlayerProxy;->mDelegate:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    .line 34
    return-void
.end method


# virtual methods
.method public declared-synchronized getCurrentPosition()I
    .registers 2

    .prologue
    .line 94
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/ex/variablespeed/SingleThreadedMediaPlayerProxy;->mDelegate:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->getCurrentPosition()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDuration()I
    .registers 2

    .prologue
    .line 74
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/ex/variablespeed/SingleThreadedMediaPlayerProxy;->mDelegate:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->getDuration()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPlaying()Z
    .registers 2

    .prologue
    .line 89
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/ex/variablespeed/SingleThreadedMediaPlayerProxy;->mDelegate:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->isPlaying()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pause()V
    .registers 2

    .prologue
    .line 103
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/ex/variablespeed/SingleThreadedMediaPlayerProxy;->mDelegate:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->pause()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 104
    monitor-exit p0

    return-void

    .line 103
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized prepare()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/ex/variablespeed/SingleThreadedMediaPlayerProxy;->mDelegate:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->prepare()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 70
    monitor-exit p0

    return-void

    .line 69
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .registers 2

    .prologue
    .line 48
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/ex/variablespeed/SingleThreadedMediaPlayerProxy;->mDelegate:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->release()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 49
    monitor-exit p0

    return-void

    .line 48
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .registers 2

    .prologue
    .line 53
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/ex/variablespeed/SingleThreadedMediaPlayerProxy;->mDelegate:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->reset()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 54
    monitor-exit p0

    return-void

    .line 53
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized seekTo(I)V
    .registers 3
    .parameter "startPosition"

    .prologue
    .line 79
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/ex/variablespeed/SingleThreadedMediaPlayerProxy;->mDelegate:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0, p1}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->seekTo(I)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 80
    monitor-exit p0

    return-void

    .line 79
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAudioStreamType(I)V
    .registers 3
    .parameter "streamType"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/ex/variablespeed/SingleThreadedMediaPlayerProxy;->mDelegate:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0, p1}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->setAudioStreamType(I)V

    .line 109
    return-void
.end method

.method public declared-synchronized setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 4
    .parameter "context"
    .parameter "intentUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/ex/variablespeed/SingleThreadedMediaPlayerProxy;->mDelegate:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0, p1, p2}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 65
    monitor-exit p0

    return-void

    .line 64
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 43
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/ex/variablespeed/SingleThreadedMediaPlayerProxy;->mDelegate:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0, p1}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 44
    monitor-exit p0

    return-void

    .line 43
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 38
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/ex/variablespeed/SingleThreadedMediaPlayerProxy;->mDelegate:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0, p1}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 39
    monitor-exit p0

    return-void

    .line 38
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setVariableSpeed(F)V
    .registers 3
    .parameter "rate"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/ex/variablespeed/SingleThreadedMediaPlayerProxy;->mDelegate:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    check-cast v0, Lcom/android/ex/variablespeed/VariableSpeed;

    invoke-virtual {v0, p1}, Lcom/android/ex/variablespeed/VariableSpeed;->setVariableSpeed(F)V

    .line 99
    return-void
.end method

.method public declared-synchronized start()V
    .registers 2

    .prologue
    .line 84
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/ex/variablespeed/SingleThreadedMediaPlayerProxy;->mDelegate:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->start()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 85
    monitor-exit p0

    return-void

    .line 84
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
