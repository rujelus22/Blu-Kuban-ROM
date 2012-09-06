.class public Lcom/google/android/apps/unveil/env/Stopwatch;
.super Ljava/lang/Object;
.source "Stopwatch.java"


# instance fields
.field private isRunning:Z

.field private final name:Ljava/lang/String;

.field private startTime:J

.field private totalTime:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/Stopwatch;->name:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/Stopwatch;->name:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getElapsedMilliseconds()J
    .registers 7

    .prologue
    .line 62
    iget-boolean v2, p0, Lcom/google/android/apps/unveil/env/Stopwatch;->isRunning:Z

    if-eqz v2, :cond_13

    .line 63
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 64
    .local v0, now:J
    iget-wide v2, p0, Lcom/google/android/apps/unveil/env/Stopwatch;->totalTime:J

    iget-wide v4, p0, Lcom/google/android/apps/unveil/env/Stopwatch;->startTime:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/apps/unveil/env/Stopwatch;->totalTime:J

    .line 65
    iput-wide v0, p0, Lcom/google/android/apps/unveil/env/Stopwatch;->startTime:J

    .line 67
    .end local v0           #now:J
    :cond_13
    iget-wide v2, p0, Lcom/google/android/apps/unveil/env/Stopwatch;->totalTime:J

    return-wide v2
.end method

.method public getElapsedSeconds()F
    .registers 3

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/Stopwatch;->getElapsedMilliseconds()J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    return v0
.end method

.method public isRunning()Z
    .registers 2

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/env/Stopwatch;->isRunning:Z

    return v0
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 53
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/unveil/env/Stopwatch;->startTime:J

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/unveil/env/Stopwatch;->totalTime:J

    .line 55
    return-void
.end method

.method public start()V
    .registers 3

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/env/Stopwatch;->isRunning:Z

    if-eqz v0, :cond_5

    .line 34
    :goto_4
    return-void

    .line 32
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/unveil/env/Stopwatch;->startTime:J

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/env/Stopwatch;->isRunning:Z

    goto :goto_4
.end method

.method public startFromZero()V
    .registers 3

    .prologue
    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/unveil/env/Stopwatch;->totalTime:J

    .line 38
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/unveil/env/Stopwatch;->startTime:J

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/env/Stopwatch;->isRunning:Z

    .line 40
    return-void
.end method

.method public stop()V
    .registers 7

    .prologue
    .line 43
    iget-boolean v2, p0, Lcom/google/android/apps/unveil/env/Stopwatch;->isRunning:Z

    if-nez v2, :cond_5

    .line 50
    :goto_4
    return-void

    .line 47
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 48
    .local v0, now:J
    iget-wide v2, p0, Lcom/google/android/apps/unveil/env/Stopwatch;->totalTime:J

    iget-wide v4, p0, Lcom/google/android/apps/unveil/env/Stopwatch;->startTime:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/apps/unveil/env/Stopwatch;->totalTime:J

    .line 49
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/apps/unveil/env/Stopwatch;->isRunning:Z

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/Stopwatch;->name:Ljava/lang/String;

    if-eqz v0, :cond_2c

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/unveil/env/Stopwatch;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/apps/unveil/env/Stopwatch;->totalTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    :goto_2b
    return-object v0

    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/google/android/apps/unveil/env/Stopwatch;->totalTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b
.end method
