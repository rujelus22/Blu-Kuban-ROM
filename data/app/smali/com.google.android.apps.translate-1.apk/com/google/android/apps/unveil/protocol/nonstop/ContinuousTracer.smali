.class public Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;
.super Ljava/lang/Object;
.source "ContinuousTracer.java"


# static fields
.field public static final DEFAULT_MIN_TRACE_ACTIONS:I = 0x12c

.field private static final NO_FRAMES_PROCESSED:I = -0x1

.field public static final ON_PAUSE_MIN_TRACE_ACTIONS:I = 0x1

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private lastProcessedFrameNum:I

.field private pendingBuilder:Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

.field private final perFrameTracers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/protocol/nonstop/PerFrameTracer;",
            ">;"
        }
    .end annotation
.end field

.field private final pushLogger:Lcom/google/android/apps/unveil/network/ContinuousConnector$PushLogger;

.field private final traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/unveil/protocol/TraceTracker;)V
    .registers 3
    .parameter "t"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->perFrameTracers:Ljava/util/List;

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->lastProcessedFrameNum:I

    .line 51
    new-instance v0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer$1;-><init>(Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->pushLogger:Lcom/google/android/apps/unveil/network/ContinuousConnector$PushLogger;

    .line 64
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;)Lcom/google/android/apps/unveil/protocol/TraceTracker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    return-object v0
.end method


# virtual methods
.method public addPerFrameTracer(Lcom/google/android/apps/unveil/protocol/nonstop/PerFrameTracer;)V
    .registers 3
    .parameter "perFrameTracer"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->perFrameTracers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    return-void
.end method

.method public getPushLogger()Lcom/google/android/apps/unveil/network/ContinuousConnector$PushLogger;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->pushLogger:Lcom/google/android/apps/unveil/network/ContinuousConnector$PushLogger;

    return-object v0
.end method

.method public declared-synchronized getTraceRequest(I)Lcom/google/goggles/TracingProtos$TraceRequest;
    .registers 5
    .parameter "minTraceActionCount"

    .prologue
    .line 140
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->pendingBuilder:Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    if-nez v1, :cond_b

    .line 141
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceRequest;->newBuilder()Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->pendingBuilder:Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    .line 145
    :cond_b
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->pendingBuilder:Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->populateRequestContinuous(Lcom/google/goggles/TracingProtos$TraceRequest$Builder;)V

    .line 147
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->pendingBuilder:Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    invoke-virtual {v1}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->getTraceActionCount()I

    move-result v1

    if-le v1, p1, :cond_25

    .line 148
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->pendingBuilder:Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    invoke-virtual {v1}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->build()Lcom/google/goggles/TracingProtos$TraceRequest;

    move-result-object v0

    .line 149
    .local v0, toReturn:Lcom/google/goggles/TracingProtos$TraceRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->pendingBuilder:Lcom/google/goggles/TracingProtos$TraceRequest$Builder;
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_2a

    .line 152
    .end local v0           #toReturn:Lcom/google/goggles/TracingProtos$TraceRequest;
    :goto_23
    monitor-exit p0

    return-object v0

    :cond_25
    :try_start_25
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceRequest;->getDefaultInstance()Lcom/google/goggles/TracingProtos$TraceRequest;
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_2a

    move-result-object v0

    goto :goto_23

    .line 140
    :catchall_2a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onBeginEncoding(I)V
    .registers 4
    .parameter "frameNum"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    sget-object v1, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->CONTINUOUS_IMAGE_ENCODE:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->beginInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Type;I)V

    .line 128
    return-void
.end method

.method public onClientAnnotationPush(I)V
    .registers 4
    .parameter "frameNum"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->beginTraceAction(I)V

    .line 170
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    sget-object v1, Lcom/google/goggles/TracingProtos$PointVariable$Type;->CLIENT_ANNOTATION_SENT:Lcom/google/goggles/TracingProtos$PointVariable$Type;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->addPoint(ILcom/google/goggles/TracingProtos$PointVariable$Type;)V

    .line 171
    return-void
.end method

.method public onEndEncoding(I)V
    .registers 4
    .parameter "frameNum"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    sget-object v1, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->CONTINUOUS_IMAGE_ENCODE:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->endInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Type;I)V

    .line 132
    return-void
.end method

.method public onMakingRequest(Ljava/lang/Integer;Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V
    .registers 6
    .parameter "lastFrameNum"
    .parameter "frame"

    .prologue
    .line 113
    if-eqz p1, :cond_16

    .line 114
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    sget-object v1, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->CONTINUOUS_REQUEST_TO_REQUEST:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->endInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Type;I)V

    .line 119
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->tryToEndTraceAction(I)V

    .line 122
    :cond_16
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    sget-object v1, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->CONTINUOUS_REQUEST_TO_REQUEST:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    invoke-virtual {p2}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getFrameNum()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->beginInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Type;I)V

    .line 124
    return-void
.end method

.method public onProcessFrame(I)V
    .registers 7
    .parameter "frameNum"

    .prologue
    .line 80
    iget v2, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->lastProcessedFrameNum:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_e

    .line 81
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    sget-object v3, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->CONTINUOUS_IMAGE_TO_IMAGE:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    iget v4, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->lastProcessedFrameNum:I

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->endInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Type;I)V

    .line 85
    :cond_e
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->beginTraceAction(I)V

    .line 86
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    sget-object v3, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->CONTINUOUS_IMAGE_TO_IMAGE:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    invoke-virtual {v2, v3, p1}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->beginInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Type;I)V

    .line 87
    iput p1, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->lastProcessedFrameNum:I

    .line 89
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->perFrameTracers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/protocol/nonstop/PerFrameTracer;

    .line 90
    .local v1, perFrameTracer:Lcom/google/android/apps/unveil/protocol/nonstop/PerFrameTracer;
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    invoke-interface {v1, p1, v2}, Lcom/google/android/apps/unveil/protocol/nonstop/PerFrameTracer;->onProcessFrame(ILcom/google/android/apps/unveil/protocol/TraceTracker;)V

    goto :goto_22

    .line 92
    .end local v1           #perFrameTracer:Lcom/google/android/apps/unveil/protocol/nonstop/PerFrameTracer;
    :cond_34
    return-void
.end method

.method public onQueryRespnse(Ljava/util/List;I)V
    .registers 4
    .parameter
    .parameter "frameNum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, activeFrameNumbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->tryToEndTraceAction(I)V

    .line 76
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->tryToEndAllExcept(Ljava/util/List;)V

    .line 77
    return-void
.end method

.method public onResult(IJ)V
    .registers 11
    .parameter "frameNum"
    .parameter "responseReceivedTimestamp"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    sget-object v1, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->CONTINUOUS_PUSH_TO_PULL:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->endIntervalDelayed(Lcom/google/goggles/TracingProtos$SpanVariable$Type;IJ)V

    .line 102
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    sget-object v1, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->CONTINUOUS_RENDER_RESPONSE:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-wide v2, p2

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->addRawInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Type;JJI)V

    .line 104
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    sget-object v1, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->CONTINUOUS_END_TO_END:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->endInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Type;I)V

    .line 108
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->tryToEndTraceAction(I)V

    .line 109
    return-void
.end method

.method public onSending(I)V
    .registers 4
    .parameter "frameNum"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    sget-object v1, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->CONTINUOUS_PUSH_TO_PULL:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->beginInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Type;I)V

    .line 69
    return-void
.end method

.method public onWillRequest(I)V
    .registers 4
    .parameter "frameNum"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    sget-object v1, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->CONTINUOUS_END_TO_END:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->beginInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Type;I)V

    .line 96
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->clearAll()V

    .line 158
    return-void
.end method
