.class public Lcom/quramsoft/xiv/XIVTimeoutTimer$XivTimeoutTimerTask;
.super Ljava/util/TimerTask;
.source "XIVTimeoutTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quramsoft/xiv/XIVTimeoutTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "XivTimeoutTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/quramsoft/xiv/XIVTimeoutTimer;


# direct methods
.method public constructor <init>(Lcom/quramsoft/xiv/XIVTimeoutTimer;)V
    .registers 2
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/quramsoft/xiv/XIVTimeoutTimer$XivTimeoutTimerTask;->this$0:Lcom/quramsoft/xiv/XIVTimeoutTimer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 37
    sget-boolean v0, Lcom/quramsoft/xiv/XIVConfig;->isDebugMode:Z

    if-eqz v0, :cond_b

    .line 38
    const-string v0, "XIVTimeoutTimer"

    const-string v1, "XivTimeoutTimerTask : TimerTask.run() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_b
    invoke-static {}, Lcom/quramsoft/xiv/XIVSlotChecker;->getInstance()Lcom/quramsoft/xiv/XIVSlotChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/quramsoft/xiv/XIVSlotChecker;->draw()V

    .line 41
    return-void
.end method
