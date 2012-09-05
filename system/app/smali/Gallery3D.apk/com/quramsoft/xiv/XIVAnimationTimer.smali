.class public Lcom/quramsoft/xiv/XIVAnimationTimer;
.super Ljava/util/Timer;
.source "XIVAnimationTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quramsoft/xiv/XIVAnimationTimer$XivDoubleTapTimerTask;
    }
.end annotation


# instance fields
.field public mIsAnimationProgressing:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/util/Timer;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quramsoft/xiv/XIVAnimationTimer;->mIsAnimationProgressing:Z

    .line 14
    sget-boolean v0, Lcom/quramsoft/xiv/XIVConfig;->isDebugMode:Z

    if-eqz v0, :cond_11

    .line 15
    const-string v0, "XIVDoubleTapTimer"

    const-string v1, "XIVDoubleTapTimer created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_11
    return-void
.end method


# virtual methods
.method public start(J)V
    .registers 6
    .parameter "delay"

    .prologue
    .line 20
    sget-boolean v0, Lcom/quramsoft/xiv/XIVConfig;->isDebugMode:Z

    if-eqz v0, :cond_1e

    .line 22
    const-string v0, "XIVDoubleTapTimer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start( "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_1e
    monitor-enter p0

    .line 27
    const/4 v0, 0x1

    :try_start_20
    iput-boolean v0, p0, Lcom/quramsoft/xiv/XIVAnimationTimer;->mIsAnimationProgressing:Z

    .line 29
    new-instance v0, Lcom/quramsoft/xiv/XIVAnimationTimer$XivDoubleTapTimerTask;

    invoke-direct {v0, p0}, Lcom/quramsoft/xiv/XIVAnimationTimer$XivDoubleTapTimerTask;-><init>(Lcom/quramsoft/xiv/XIVAnimationTimer;)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/quramsoft/xiv/XIVAnimationTimer;->schedule(Ljava/util/TimerTask;J)V

    .line 25
    monitor-exit p0

    .line 31
    return-void

    .line 25
    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_20 .. :try_end_2e} :catchall_2c

    throw v0
.end method
