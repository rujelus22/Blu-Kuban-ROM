.class Lcom/android/launcher2/SymmetricalLinearTween;
.super Ljava/lang/Object;
.source "SymmetricalLinearTween.java"


# static fields
.field private static final FPS:I = 0x1e

.field private static final FRAME_TIME:I = 0x21


# instance fields
.field mBase:J

.field mCallback:Lcom/android/launcher2/TweenCallback;

.field mDirection:Z

.field mDuration:I

.field mHandler:Landroid/os/Handler;

.field mRunning:Z

.field mTick:Ljava/lang/Runnable;

.field mValue:F


# direct methods
.method public constructor <init>(ZILcom/android/launcher2/TweenCallback;)V
    .registers 5
    .parameter "initial"
    .parameter "duration"
    .parameter "callback"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Lcom/android/launcher2/SymmetricalLinearTween$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/SymmetricalLinearTween$1;-><init>(Lcom/android/launcher2/SymmetricalLinearTween;)V

    iput-object v0, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mTick:Ljava/lang/Runnable;

    .line 44
    if-eqz p1, :cond_1e

    const/high16 v0, 0x3f80

    :goto_e
    iput v0, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mValue:F

    .line 45
    iput-boolean p1, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mDirection:Z

    .line 46
    iput p2, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mDuration:I

    .line 47
    iput-object p3, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mCallback:Lcom/android/launcher2/TweenCallback;

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mHandler:Landroid/os/Handler;

    .line 49
    return-void

    .line 44
    :cond_1e
    const/4 v0, 0x0

    goto :goto_e
.end method


# virtual methods
.method public start(Z)V
    .registers 4
    .parameter "direction"

    .prologue
    .line 58
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/SymmetricalLinearTween;->start(ZJ)V

    .line 59
    return-void
.end method

.method public start(ZJ)V
    .registers 14
    .parameter "direction"
    .parameter "baseTime"

    .prologue
    .line 71
    iget-boolean v6, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mDirection:Z

    if-eq p1, v6, :cond_23

    .line 72
    iget-boolean v6, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mRunning:Z

    if-nez v6, :cond_24

    .line 73
    iput-wide p2, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mBase:J

    .line 74
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mRunning:Z

    .line 75
    iget-object v6, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mCallback:Lcom/android/launcher2/TweenCallback;

    invoke-interface {v6}, Lcom/android/launcher2/TweenCallback;->onTweenStarted()V

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x21

    add-long v2, v6, v8

    .line 77
    .local v2, next:J
    iget-object v6, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mTick:Ljava/lang/Runnable;

    invoke-virtual {v6, v7, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 84
    .end local v2           #next:J
    :goto_21
    iput-boolean p1, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mDirection:Z

    .line 86
    :cond_23
    return-void

    .line 80
    :cond_24
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 81
    .local v4, now:J
    iget-wide v6, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mBase:J

    sub-long v0, v4, v6

    .line 82
    .local v0, diff:J
    add-long v6, v4, v0

    iget v8, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mDuration:I

    int-to-long v8, v8

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mBase:J

    goto :goto_21
.end method
