.class public Lcom/quramsoft/xiv/XIVAnimationTimer$XivDoubleTapTimerTask;
.super Ljava/util/TimerTask;
.source "XIVAnimationTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quramsoft/xiv/XIVAnimationTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "XivDoubleTapTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/quramsoft/xiv/XIVAnimationTimer;


# direct methods
.method public constructor <init>(Lcom/quramsoft/xiv/XIVAnimationTimer;)V
    .registers 2
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/quramsoft/xiv/XIVAnimationTimer$XivDoubleTapTimerTask;->this$0:Lcom/quramsoft/xiv/XIVAnimationTimer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 49
    sget-boolean v0, Lcom/quramsoft/xiv/XIVConfig;->isDebugMode:Z

    if-eqz v0, :cond_b

    .line 50
    const-string v0, "XIVDoubleTapTimer"

    const-string v1, "XivDoubleTapTimerTask : TimerTask.run() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_b
    monitor-enter p0

    .line 54
    :try_start_c
    iget-object v0, p0, Lcom/quramsoft/xiv/XIVAnimationTimer$XivDoubleTapTimerTask;->this$0:Lcom/quramsoft/xiv/XIVAnimationTimer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/quramsoft/xiv/XIVAnimationTimer;->mIsAnimationProgressing:Z

    .line 52
    monitor-exit p0

    .line 56
    return-void

    .line 52
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw v0
.end method
