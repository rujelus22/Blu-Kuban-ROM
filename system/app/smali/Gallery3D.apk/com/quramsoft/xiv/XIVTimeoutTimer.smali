.class public Lcom/quramsoft/xiv/XIVTimeoutTimer;
.super Ljava/util/Timer;
.source "XIVTimeoutTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quramsoft/xiv/XIVTimeoutTimer$XivTimeoutTimerTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/util/Timer;-><init>()V

    .line 16
    sget-boolean v0, Lcom/quramsoft/xiv/XIVConfig;->isDebugMode:Z

    if-eqz v0, :cond_e

    .line 18
    const-string v0, "XIVTimeoutTimer"

    const-string v1, "XivTimeoutTimer created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_e
    return-void
.end method


# virtual methods
.method public start(J)V
    .registers 6
    .parameter "delay"

    .prologue
    .line 24
    sget-boolean v0, Lcom/quramsoft/xiv/XIVConfig;->isDebugMode:Z

    if-eqz v0, :cond_1e

    .line 26
    const-string v0, "XIVTimeoutTimer"

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

    .line 29
    :cond_1e
    monitor-enter p0

    .line 31
    :try_start_1f
    new-instance v0, Lcom/quramsoft/xiv/XIVTimeoutTimer$XivTimeoutTimerTask;

    invoke-direct {v0, p0}, Lcom/quramsoft/xiv/XIVTimeoutTimer$XivTimeoutTimerTask;-><init>(Lcom/quramsoft/xiv/XIVTimeoutTimer;)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/quramsoft/xiv/XIVTimeoutTimer;->schedule(Ljava/util/TimerTask;J)V

    .line 29
    monitor-exit p0

    .line 33
    return-void

    .line 29
    :catchall_29
    move-exception v0

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_29

    throw v0
.end method
