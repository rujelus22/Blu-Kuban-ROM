.class public Lcom/google/android/finsky/exploreactivity/FPSCounter;
.super Ljava/lang/Object;
.source "FPSCounter.java"


# instance fields
.field private mFrames:I

.field private mFramesSum:I

.field private mSecondsPassed:I

.field private mStartTime:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/finsky/exploreactivity/FPSCounter;->mStartTime:J

    .line 20
    iput v2, p0, Lcom/google/android/finsky/exploreactivity/FPSCounter;->mFrames:I

    .line 23
    iput v2, p0, Lcom/google/android/finsky/exploreactivity/FPSCounter;->mSecondsPassed:I

    .line 26
    iput v2, p0, Lcom/google/android/finsky/exploreactivity/FPSCounter;->mFramesSum:I

    return-void
.end method


# virtual methods
.method public logFrame()V
    .registers 5

    .prologue
    .line 33
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/FPSCounter;->mFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/FPSCounter;->mFrames:I

    .line 34
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/finsky/exploreactivity/FPSCounter;->mStartTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x3b9aca00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2a

    .line 35
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/FPSCounter;->mFramesSum:I

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/FPSCounter;->mFrames:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/FPSCounter;->mFramesSum:I

    .line 36
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/FPSCounter;->mSecondsPassed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/FPSCounter;->mSecondsPassed:I

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/FPSCounter;->mFrames:I

    .line 44
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/finsky/exploreactivity/FPSCounter;->mStartTime:J

    .line 46
    :cond_2a
    return-void
.end method
