.class public Lcom/google/android/apps/plus/util/StopWatch;
.super Ljava/lang/Object;
.source "StopWatch.java"


# instance fields
.field private mIsRunning:Z

.field private final mLabel:Ljava/lang/String;

.field private mStartNanos:J

.field private mStopNanos:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-wide v0, p0, Lcom/google/android/apps/plus/util/StopWatch;->mStartNanos:J

    .line 32
    iput-wide v0, p0, Lcom/google/android/apps/plus/util/StopWatch;->mStopNanos:J

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/util/StopWatch;->mIsRunning:Z

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/util/StopWatch;->mLabel:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public getElapsedMsec()J
    .registers 7

    .prologue
    .line 83
    iget-boolean v2, p0, Lcom/google/android/apps/plus/util/StopWatch;->mIsRunning:Z

    if-eqz v2, :cond_12

    .line 84
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/apps/plus/util/StopWatch;->mStartNanos:J

    sub-long v0, v2, v4

    .line 88
    .local v0, elapsedNanos:J
    :goto_c
    const-wide/32 v2, 0xf4240

    div-long v2, v0, v2

    return-wide v2

    .line 86
    .end local v0           #elapsedNanos:J
    :cond_12
    iget-wide v2, p0, Lcom/google/android/apps/plus/util/StopWatch;->mStopNanos:J

    iget-wide v4, p0, Lcom/google/android/apps/plus/util/StopWatch;->mStartNanos:J

    sub-long v0, v2, v4

    .restart local v0       #elapsedNanos:J
    goto :goto_c
.end method

.method public start()Lcom/google/android/apps/plus/util/StopWatch;
    .registers 3

    .prologue
    .line 57
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/plus/util/StopWatch;->mStartNanos:J

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/util/StopWatch;->mIsRunning:Z

    .line 59
    return-object p0
.end method
