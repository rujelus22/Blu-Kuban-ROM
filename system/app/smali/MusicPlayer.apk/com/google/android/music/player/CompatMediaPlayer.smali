.class public Lcom/google/android/music/player/CompatMediaPlayer;
.super Landroid/media/MediaPlayer;
.source "CompatMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field private mCompatMode:Z

.field private mCompletion:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mNextPlayer:Landroid/media/MediaPlayer;

.field private mSetNextPlayer:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 33
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 28
    iput-boolean v5, p0, Lcom/google/android/music/player/CompatMediaPlayer;->mCompatMode:Z

    .line 35
    :try_start_6
    const-class v0, Landroid/media/MediaPlayer;

    const-string v1, "setNextMediaPlayer"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/media/MediaPlayer;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/player/CompatMediaPlayer;->mSetNextPlayer:Ljava/lang/reflect/Method;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/player/CompatMediaPlayer;->mCompatMode:Z
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_1b} :catch_1c

    .line 42
    :goto_1b
    return-void

    .line 38
    :catch_1c
    move-exception v0

    .line 39
    iput-boolean v5, p0, Lcom/google/android/music/player/CompatMediaPlayer;->mCompatMode:Z

    .line 40
    invoke-super {p0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    goto :goto_1b
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4
    .parameter "mp"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/music/player/CompatMediaPlayer;->mNextPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_e

    .line 79
    const-wide/16 v0, 0x32

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 80
    iget-object v0, p0, Lcom/google/android/music/player/CompatMediaPlayer;->mNextPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 82
    :cond_e
    iget-object v0, p0, Lcom/google/android/music/player/CompatMediaPlayer;->mCompletion:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_17

    .line 83
    iget-object v0, p0, Lcom/google/android/music/player/CompatMediaPlayer;->mCompletion:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-interface {v0, p0}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 85
    :cond_17
    return-void
.end method

.method public setNextMediaPlayerCompat(Landroid/media/MediaPlayer;)V
    .registers 6
    .parameter "next"

    .prologue
    .line 50
    iget-boolean v1, p0, Lcom/google/android/music/player/CompatMediaPlayer;->mCompatMode:Z

    if-eqz v1, :cond_7

    .line 51
    iput-object p1, p0, Lcom/google/android/music/player/CompatMediaPlayer;->mNextPlayer:Landroid/media/MediaPlayer;

    .line 63
    :goto_6
    return-void

    .line 54
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/google/android/music/player/CompatMediaPlayer;->mSetNextPlayer:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_12} :catch_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_12} :catch_1a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_12} :catch_21

    goto :goto_6

    .line 55
    :catch_13
    move-exception v0

    .line 56
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 57
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1a
    move-exception v0

    .line 58
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 59
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_21
    move-exception v0

    .line 60
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/google/android/music/player/CompatMediaPlayer;->mCompatMode:Z

    if-eqz v0, :cond_7

    .line 67
    iput-object p1, p0, Lcom/google/android/music/player/CompatMediaPlayer;->mCompletion:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 71
    :goto_6
    return-void

    .line 69
    :cond_7
    invoke-super {p0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    goto :goto_6
.end method
