.class public Lcom/infraware/office/util/EvMessageTimer;
.super Ljava/lang/Object;
.source "EvMessageTimer.java"


# instance fields
.field private final TIMER_EXPIRED:I

.field protected mPeriod:J

.field mTimerTask:Lcom/infraware/office/util/EvMessageTimerTask;

.field protected final messageHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/office/util/EvMessageTimer;->TIMER_EXPIRED:I

    .line 9
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/infraware/office/util/EvMessageTimer;->mPeriod:J

    .line 10
    new-instance v0, Lcom/infraware/office/util/EvMessageTimer$1;

    invoke-direct {v0, p0}, Lcom/infraware/office/util/EvMessageTimer$1;-><init>(Lcom/infraware/office/util/EvMessageTimer;)V

    iput-object v0, p0, Lcom/infraware/office/util/EvMessageTimer;->messageHandler:Landroid/os/Handler;

    .line 23
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/infraware/office/util/EvMessageTimer;->messageHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/office/util/EvMessageTimer;->mTimerTask:Lcom/infraware/office/util/EvMessageTimerTask;

    .line 38
    return-void
.end method

.method public isRunning()Z
    .registers 3

    .prologue
    .line 32
    iget-object v0, p0, Lcom/infraware/office/util/EvMessageTimer;->messageHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public schedule(Lcom/infraware/office/util/EvMessageTimerTask;JJ)V
    .registers 8
    .parameter "task"
    .parameter "delay"
    .parameter "period"

    .prologue
    const/4 v1, 0x0

    .line 25
    iput-object p1, p0, Lcom/infraware/office/util/EvMessageTimer;->mTimerTask:Lcom/infraware/office/util/EvMessageTimerTask;

    .line 26
    iput-wide p4, p0, Lcom/infraware/office/util/EvMessageTimer;->mPeriod:J

    .line 27
    iget-object v0, p0, Lcom/infraware/office/util/EvMessageTimer;->messageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 28
    iget-object v0, p0, Lcom/infraware/office/util/EvMessageTimer;->messageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 29
    return-void
.end method
