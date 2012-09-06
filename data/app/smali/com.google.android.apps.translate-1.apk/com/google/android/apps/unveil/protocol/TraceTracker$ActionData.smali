.class Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;
.super Ljava/lang/Object;
.source "TraceTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/protocol/TraceTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActionData"
.end annotation


# instance fields
.field private final actionNumber:I

.field private final closedIntervals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/TracingProtos$SpanVariable;",
            ">;"
        }
    .end annotation
.end field

.field private evictNotices:I

.field private final networkInfo:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

.field private final openIntervals:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/goggles/TracingProtos$SpanVariable$Type;",
            "Ljava/util/Queue",
            "<",
            "Lcom/google/goggles/TracingProtos$SpanVariable$Builder;",
            ">;>;"
        }
    .end annotation
.end field

.field private final points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/TracingProtos$PointVariable$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final processorStatuses:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/goggles/TracingProtos$ProcessorStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final startTimeMs:J

.field private final stopwatch:Lcom/google/android/apps/unveil/env/Stopwatch;

.field private final tracingCookie:Ljava/lang/String;

.field private trackingId:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;)V
    .registers 10
    .parameter "actionNumber"
    .parameter "tracingCookie"
    .parameter "networkInfo"

    .prologue
    const/4 v5, 0x0

    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    iput-object p3, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->networkInfo:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    .line 531
    if-nez p2, :cond_13

    .line 534
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->access$1100()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v1, "No tracing cookie for this trace action."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 537
    :cond_13
    iput-object p2, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->tracingCookie:Ljava/lang/String;

    .line 538
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->openIntervals:Ljava/util/Map;

    .line 539
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->points:Ljava/util/List;

    .line 540
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->closedIntervals:Ljava/util/List;

    .line 541
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->processorStatuses:Ljava/util/LinkedList;

    .line 542
    iput p1, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->actionNumber:I

    .line 544
    new-instance v0, Lcom/google/android/apps/unveil/env/Stopwatch;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/unveil/env/Stopwatch;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->stopwatch:Lcom/google/android/apps/unveil/env/Stopwatch;

    .line 549
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->startTimeMs:J

    .line 551
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->access$1100()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v1, "Start action: %d + %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->startTimeMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->stopwatch:Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-virtual {v4}, Lcom/google/android/apps/unveil/env/Stopwatch;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 552
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->stopwatch:Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/Stopwatch;->start()V

    .line 553
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;Lcom/google/android/apps/unveil/protocol/TraceTracker$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 481
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;-><init>(ILjava/lang/String;Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;Lcom/google/goggles/TracingProtos$SpanVariable$Type;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 481
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->startInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Type;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;Lcom/google/goggles/TracingProtos$SpanVariable$Type;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 481
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->endIntervalNow(Lcom/google/goggles/TracingProtos$SpanVariable$Type;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 481
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->setTrackingId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;Lcom/google/goggles/TracingProtos$PointVariable$Type;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 481
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->addPoint(Lcom/google/goggles/TracingProtos$PointVariable$Type;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 481
    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->isEnded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 481
    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->shouldEnd()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 481
    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->end()V

    return-void
.end method

.method static synthetic access$704(Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 481
    iget v0, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->evictNotices:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->evictNotices:I

    return v0
.end method

.method static synthetic access$708(Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 481
    iget v0, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->evictNotices:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->evictNotices:I

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 481
    iget v0, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->actionNumber:I

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 481
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->tracingCookie:Ljava/lang/String;

    return-object v0
.end method

.method private addPoint(Lcom/google/goggles/TracingProtos$PointVariable$Type;)V
    .registers 9
    .parameter "type"

    .prologue
    .line 707
    invoke-static {}, Lcom/google/goggles/TracingProtos$PointVariable;->newBuilder()Lcom/google/goggles/TracingProtos$PointVariable$Builder;

    move-result-object v0

    .line 708
    .local v0, point:Lcom/google/goggles/TracingProtos$PointVariable$Builder;
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->stopwatch:Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/env/Stopwatch;->getElapsedMilliseconds()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->setTimestampMs(I)Lcom/google/goggles/TracingProtos$PointVariable$Builder;

    .line 709
    invoke-virtual {v0, p1}, Lcom/google/goggles/TracingProtos$PointVariable$Builder;->setType(Lcom/google/goggles/TracingProtos$PointVariable$Type;)Lcom/google/goggles/TracingProtos$PointVariable$Builder;

    .line 710
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->access$1100()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v1

    const-string v2, "Added point (%s) at %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->stopwatch:Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-virtual {v5}, Lcom/google/android/apps/unveil/env/Stopwatch;->getElapsedMilliseconds()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 711
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->points:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 712
    return-void
.end method

.method private closeInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Builder;I)V
    .registers 9
    .parameter "intervalToClose"
    .parameter "durationMs"

    .prologue
    .line 695
    invoke-virtual {p1, p2}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->setDurationMs(I)Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    .line 697
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->access$1100()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v1, "End interval(%s): %d + %s, took %d ms"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->getType()Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->startTimeMs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->stopwatch:Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-virtual {v4}, Lcom/google/android/apps/unveil/env/Stopwatch;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p1}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->getDurationMs()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 699
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->closedIntervals:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->build()Lcom/google/goggles/TracingProtos$SpanVariable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 700
    return-void
.end method

.method private declared-synchronized end()V
    .registers 5

    .prologue
    .line 582
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->stopwatch:Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/Stopwatch;->isRunning()Z

    move-result v0

    if-nez v0, :cond_15

    .line 583
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->access$1100()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v1, "Ending an action more than once."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 586
    :cond_15
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->access$1100()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v1, "End action: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 587
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->stopwatch:Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/Stopwatch;->stop()V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 588
    monitor-exit p0

    return-void

    .line 582
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private endIntervalNow(Lcom/google/goggles/TracingProtos$SpanVariable$Type;)V
    .registers 7
    .parameter "intervalToEnd"

    .prologue
    .line 665
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->stopwatch:Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/env/Stopwatch;->isRunning()Z

    move-result v2

    if-nez v2, :cond_14

    .line 666
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->access$1100()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v2

    const-string v3, "Ending an interval on an ended action."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 668
    :cond_14
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->popInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Type;)Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    move-result-object v1

    .line 670
    .local v1, intervalToClose:Lcom/google/goggles/TracingProtos$SpanVariable$Builder;
    if-nez v1, :cond_1b

    .line 677
    :goto_1a
    return-void

    .line 674
    :cond_1b
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->stopwatch:Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/env/Stopwatch;->getElapsedMilliseconds()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->getStartMs()I

    move-result v3

    sub-int v0, v2, v3

    .line 676
    .local v0, durationMs:I
    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->closeInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Builder;I)V

    goto :goto_1a
.end method

.method private declared-synchronized hasOpenIntervals()Z
    .registers 2

    .prologue
    .line 603
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->openIntervals:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isEnded()Z
    .registers 2

    .prologue
    .line 595
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->stopwatch:Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/Stopwatch;->isRunning()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private popInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Type;)Lcom/google/goggles/TracingProtos$SpanVariable$Builder;
    .registers 9
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 642
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->openIntervals:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 643
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->access$1100()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v3

    const-string v4, "Tried to end a %s interval that has not been started."

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 657
    :cond_19
    :goto_19
    return-object v0

    .line 647
    :cond_1a
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->openIntervals:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    .line 648
    .local v1, openIntervalQueue:Ljava/util/Queue;,"Ljava/util/Queue<Lcom/google/goggles/TracingProtos$SpanVariable$Builder;>;"
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    .line 649
    .local v0, intervalToClose:Lcom/google/goggles/TracingProtos$SpanVariable$Builder;
    if-nez v0, :cond_39

    .line 650
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->access$1100()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v3

    const-string v4, "Tried to end a %s interval that has not been started."

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 651
    goto :goto_19

    .line 654
    :cond_39
    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 655
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->openIntervals:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19
.end method

.method private declared-synchronized setTrackingId(Ljava/lang/String;)V
    .registers 3
    .parameter "trackingId"

    .prologue
    .line 715
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->trackingId:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 716
    monitor-exit p0

    return-void

    .line 715
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized shouldEnd()Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 612
    monitor-enter p0

    :try_start_3
    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->hasOpenIntervals()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_30

    move-result v2

    if-nez v2, :cond_b

    .line 617
    :cond_9
    :goto_9
    monitor-exit p0

    return v0

    .line 616
    :cond_b
    :try_start_b
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->access$1100()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v2

    const-string v3, "Eviction notice number %d for ActionData %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->evictNotices:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->actionNumber:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 617
    iget v2, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->evictNotices:I
    :try_end_2b
    .catchall {:try_start_b .. :try_end_2b} :catchall_30

    const/4 v3, 0x4

    if-ge v2, v3, :cond_9

    move v0, v1

    goto :goto_9

    .line 612
    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Type;)V
    .registers 10
    .parameter "intervalName"

    .prologue
    const/4 v5, 0x0

    .line 624
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->stopwatch:Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/env/Stopwatch;->isRunning()Z

    move-result v2

    if-nez v2, :cond_14

    .line 625
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->access$1100()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v2

    const-string v3, "Starting an interval on an ended action."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 628
    :cond_14
    invoke-static {}, Lcom/google/goggles/TracingProtos$SpanVariable;->newBuilder()Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    move-result-object v0

    .line 629
    .local v0, interval:Lcom/google/goggles/TracingProtos$SpanVariable$Builder;
    invoke-virtual {v0, p1}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->setType(Lcom/google/goggles/TracingProtos$SpanVariable$Type;)Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    .line 630
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->stopwatch:Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/env/Stopwatch;->getElapsedMilliseconds()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->setStartMs(I)Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    .line 632
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->openIntervals:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 633
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->openIntervals:Ljava/util/Map;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    :cond_37
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->openIntervals:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    .line 636
    .local v1, intervalQueue:Ljava/util/Queue;,"Ljava/util/Queue<Lcom/google/goggles/TracingProtos$SpanVariable$Builder;>;"
    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 638
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->access$1100()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v2

    const-string v3, "Start interval(%s): %d + %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    const/4 v5, 0x1

    iget-wide v6, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->startTimeMs:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->stopwatch:Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-virtual {v6}, Lcom/google/android/apps/unveil/env/Stopwatch;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 639
    return-void
.end method


# virtual methods
.method public addDurationInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Type;I)V
    .registers 6
    .parameter "intervalName"
    .parameter "durationMs"

    .prologue
    .line 567
    invoke-static {}, Lcom/google/goggles/TracingProtos$SpanVariable;->newBuilder()Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    move-result-object v0

    .line 568
    .local v0, intervalBuilder:Lcom/google/goggles/TracingProtos$SpanVariable$Builder;
    invoke-virtual {v0, p1}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->setType(Lcom/google/goggles/TracingProtos$SpanVariable$Type;)Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->setDurationMs(I)Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->setStartMs(I)Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    .line 570
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->closedIntervals:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->build()Lcom/google/goggles/TracingProtos$SpanVariable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 571
    return-void
.end method

.method public addProcessorStatus(Lcom/google/goggles/TracingProtos$ProcessorStatus;)V
    .registers 3
    .parameter "processorStatus"

    .prologue
    .line 574
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->processorStatuses:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 575
    return-void
.end method

.method public addRawInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Type;JJ)V
    .registers 10
    .parameter "intervalName"
    .parameter "absoluteStartMs"
    .parameter "absoluteEndMs"

    .prologue
    .line 557
    invoke-static {}, Lcom/google/goggles/TracingProtos$SpanVariable;->newBuilder()Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    move-result-object v0

    .line 558
    .local v0, intervalBuilder:Lcom/google/goggles/TracingProtos$SpanVariable$Builder;
    invoke-virtual {v0, p1}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->setType(Lcom/google/goggles/TracingProtos$SpanVariable$Type;)Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->startTimeMs:J

    sub-long v2, p2, v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->setStartMs(I)Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    move-result-object v1

    sub-long v2, p4, p2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->setDurationMs(I)Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    .line 563
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->closedIntervals:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/goggles/TracingProtos$SpanVariable$Builder;->build()Lcom/google/goggles/TracingProtos$SpanVariable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    return-void
.end method

.method public endIntervalAtTime(Lcom/google/goggles/TracingProtos$SpanVariable$Type;J)V
    .registers 9
    .parameter "intervalToEnd"
    .parameter "when"

    .prologue
    .line 680
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->stopwatch:Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/env/Stopwatch;->isRunning()Z

    move-result v2

    if-nez v2, :cond_14

    .line 681
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->access$1100()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v2

    const-string v3, "Ending an interval on an ended action."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 683
    :cond_14
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->popInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Type;)Lcom/google/goggles/TracingProtos$SpanVariable$Builder;

    move-result-object v1

    .line 685
    .local v1, intervalToClose:Lcom/google/goggles/TracingProtos$SpanVariable$Builder;
    if-nez v1, :cond_1b

    .line 691
    :goto_1a
    return-void

    .line 689
    :cond_1b
    iget-wide v2, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->startTimeMs:J

    sub-long v2, p2, v2

    long-to-int v0, v2

    .line 690
    .local v0, durationMs:I
    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->closeInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Builder;I)V

    goto :goto_1a
.end method

.method declared-synchronized fillTraceAction(Lcom/google/goggles/TracingProtos$TraceAction$Type;Lcom/google/goggles/TracingProtos$TraceAction$Builder;)V
    .registers 8
    .parameter "actionType"
    .parameter "traceAction"

    .prologue
    .line 723
    monitor-enter p0

    :try_start_1
    invoke-virtual {p2, p1}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->setType(Lcom/google/goggles/TracingProtos$TraceAction$Type;)Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    .line 724
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->closedIntervals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$SpanVariable;

    .line 725
    .local v0, closedInterval:Lcom/google/goggles/TracingProtos$SpanVariable;
    invoke-virtual {p2, v0}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->addSpanVariables(Lcom/google/goggles/TracingProtos$SpanVariable;)Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1a

    goto :goto_a

    .line 723
    .end local v0           #closedInterval:Lcom/google/goggles/TracingProtos$SpanVariable;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_1a
    move-exception v3

    monitor-exit p0

    throw v3

    .line 727
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1d
    :try_start_1d
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->points:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/goggles/TracingProtos$PointVariable$Builder;

    .line 728
    .local v2, point:Lcom/google/goggles/TracingProtos$PointVariable$Builder;
    invoke-virtual {p2, v2}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->addPointVariables(Lcom/google/goggles/TracingProtos$PointVariable$Builder;)Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    goto :goto_23

    .line 730
    .end local v2           #point:Lcom/google/goggles/TracingProtos$PointVariable$Builder;
    :cond_33
    iget-wide v3, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->startTimeMs:J

    invoke-virtual {p2, v3, v4}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->setActionStartMs(J)Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    .line 731
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->stopwatch:Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-virtual {v3}, Lcom/google/android/apps/unveil/env/Stopwatch;->getElapsedMilliseconds()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {p2, v3}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->setDurationMs(I)Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    .line 732
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->tracingCookie:Ljava/lang/String;

    if-eqz v3, :cond_4b

    .line 733
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->tracingCookie:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->setTracingCookie(Ljava/lang/String;)Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    .line 736
    :cond_4b
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->trackingId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_58

    .line 737
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->trackingId:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lcom/google/goggles/TracingProtos$TraceAction$Builder;->setTrackingId(Ljava/lang/String;)Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    :try_end_58
    .catchall {:try_start_1d .. :try_end_58} :catchall_1a

    .line 739
    :cond_58
    monitor-exit p0

    return-void
.end method

.method public getNetworkInfo()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;
    .registers 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->networkInfo:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    return-object v0
.end method

.method populate(Lcom/google/goggles/TracingProtos$TraceRequest$Builder;)V
    .registers 4
    .parameter "traceRequest"

    .prologue
    .line 781
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceAction;->newBuilder()Lcom/google/goggles/TracingProtos$TraceAction$Builder;

    move-result-object v0

    .line 783
    .local v0, traceAction:Lcom/google/goggles/TracingProtos$TraceAction$Builder;
    sget-object v1, Lcom/google/goggles/TracingProtos$TraceAction$Type;->CONTINUOUS_GOGGLES:Lcom/google/goggles/TracingProtos$TraceAction$Type;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->fillTraceAction(Lcom/google/goggles/TracingProtos$TraceAction$Type;Lcom/google/goggles/TracingProtos$TraceAction$Builder;)V

    .line 784
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->getNetworkInfo()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->setNetworkInfo(Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;)Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    .line 785
    invoke-static {}, Lcom/google/android/apps/unveil/env/InfoProvider;->getDeviceInfo()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->setDeviceInfo(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;)Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    .line 786
    invoke-virtual {p1, v0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->addTraceAction(Lcom/google/goggles/TracingProtos$TraceAction$Builder;)Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    .line 787
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->processorStatuses:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_27

    .line 788
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->processorStatuses:Ljava/util/LinkedList;

    invoke-virtual {p1, v1}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->addAllProcessorStatus(Ljava/lang/Iterable;)Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    .line 790
    :cond_27
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 744
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v3, "ActionData ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    const-string v3, "actionNumber="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    iget v3, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->actionNumber:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 747
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->tracingCookie:Ljava/lang/String;

    if-eqz v3, :cond_2c

    .line 749
    const-string v3, "tracingCookie="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->tracingCookie:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    :cond_2c
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->openIntervals:Ljava/util/Map;

    if-eqz v3, :cond_4c

    .line 754
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->openIntervals:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 755
    const-string v3, " openIntervals: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->openIntervals:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 757
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    :cond_4c
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->closedIntervals:Ljava/util/List;

    if-eqz v3, :cond_a2

    .line 760
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->closedIntervals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 761
    const-string v3, " closedIntervals: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->closedIntervals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_64
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/goggles/TracingProtos$SpanVariable;

    .line 763
    .local v2, variable:Lcom/google/goggles/TracingProtos$SpanVariable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/google/goggles/TracingProtos$SpanVariable;->getType()Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/goggles/TracingProtos$SpanVariable;->getDurationMs()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_64

    .line 765
    .end local v2           #variable:Lcom/google/goggles/TracingProtos$SpanVariable;
    :cond_9d
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_a2
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->points:Ljava/util/List;

    if-eqz v3, :cond_b9

    .line 768
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->points:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 769
    const-string v3, " points"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    :cond_b9
    const-string v3, "startTimeMs="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    iget-wide v3, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->startTimeMs:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 774
    const-string v3, ", trackingId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->trackingId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
