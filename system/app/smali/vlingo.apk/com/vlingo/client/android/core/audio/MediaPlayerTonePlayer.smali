.class public Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer;
.super Ljava/lang/Object;
.source "MediaPlayerTonePlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$Player;,
        Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$TonePlayerListener;
    }
.end annotation


# instance fields
.field private e:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer;->e:Ljava/util/concurrent/Executor;

    .line 26
    return-void
.end method


# virtual methods
.method public playTone(I)V
    .registers 3
    .parameter "toneResourceId"

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer;->playTone(ILcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$TonePlayerListener;)V

    .line 30
    return-void
.end method

.method public playTone(ILcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$TonePlayerListener;)V
    .registers 10
    .parameter "toneResourceId"
    .parameter "listener"

    .prologue
    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 36
    .local v4, startTime:J
    iget-object v6, p0, Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer;->e:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$1;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$1;-><init>(Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer;ILcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$TonePlayerListener;J)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method
