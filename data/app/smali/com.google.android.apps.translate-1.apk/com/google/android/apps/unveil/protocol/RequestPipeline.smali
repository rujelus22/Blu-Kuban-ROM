.class public Lcom/google/android/apps/unveil/protocol/RequestPipeline;
.super Lcom/google/android/apps/unveil/nonstop/FrameProcessor;
.source "RequestPipeline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/protocol/RequestPipeline$PushStrategy;,
        Lcom/google/android/apps/unveil/protocol/RequestPipeline$TraceDataListener;,
        Lcom/google/android/apps/unveil/protocol/RequestPipeline$PullQueryListener;,
        Lcom/google/android/apps/unveil/protocol/RequestPipeline$PushQueryListener;,
        Lcom/google/android/apps/unveil/protocol/RequestPipeline$ContinuousRequestQueryListener;
    }
.end annotation


# static fields
.field private static final INITIAL_UPLOAD_DELAY:J = 0x3e8L

.field private static final LOCATION_CACHE_EVICTION_METERS:F = 100.0f

.field private static final MAX_HISTORY_SIZE:I = 0xc

.field private static final NUM_THROWAWAY_FRAMES:I = 0xa

.field private static final PADDING:F = 0.2f

.field private static final PLAY_TONES:Z

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private accumulatedDelta:F

.field private final activeFrames:Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;

.field protected final annotationTracker:Lcom/google/android/apps/unveil/tracking/AnnotationTracker;

.field protected final application:Lcom/google/android/apps/unveil/UnveilContext;

.field private final bandwidthEstimator:Lcom/google/android/apps/unveil/env/BandwidthEstimator;

.field protected connectionManager:Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;

.field private final frameEncoder:Lcom/google/android/apps/unveil/protocol/nonstop/FrameEncoder;

.field private lastNumResults:I

.field private lastRequestDuration:J

.field private lastRequestEstimatedUploadDurationMillis:J

.field private lastResponseDuration:J

.field private final listeners:Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;

.field protected final locationCache:Lcom/google/android/apps/unveil/sensors/LocationCache;

.field private nextPushSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private numDroppedResults:I

.field private numRequestsSent:I

.field private numResponsesReceived:I

.field private final params:Lcom/google/android/apps/unveil/network/ContinuousNetworkParams;

.field private final pullQueryListener:Lcom/google/android/apps/unveil/protocol/QueryListener;

.field private final pushStrategy:Lcom/google/android/apps/unveil/protocol/RequestPipeline$PushStrategy;

.field private final requestPreprocessors:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/android/apps/unveil/protocol/nonstop/RequestPreprocessor;",
            ">;"
        }
    .end annotation
.end field

.field protected running:Z

.field protected sensorProvider:Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;

.field private traceDataPending:Z

.field private final tracingHelper:Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 49
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "RequestPipeline"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/unveil/UnveilContext;Lcom/google/android/apps/unveil/network/ContinuousNetworkParams;Lcom/google/android/apps/unveil/protocol/RequestPipeline$PushStrategy;Lcom/google/android/apps/unveil/tracking/AnnotationTracker;Lcom/google/android/apps/unveil/protocol/TraceTracker;Ljava/lang/Iterable;)V
    .registers 12
    .parameter "unveilApplication"
    .parameter "params"
    .parameter "pushStrategy"
    .parameter "annotationTracker"
    .parameter "traceTracker"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/unveil/UnveilContext;",
            "Lcom/google/android/apps/unveil/network/ContinuousNetworkParams;",
            "Lcom/google/android/apps/unveil/protocol/RequestPipeline$PushStrategy;",
            "Lcom/google/android/apps/unveil/tracking/AnnotationTracker;",
            "Lcom/google/android/apps/unveil/protocol/TraceTracker;",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/android/apps/unveil/protocol/nonstop/RequestPreprocessor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p6, requestPreprocessors:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/android/apps/unveil/protocol/nonstop/RequestPreprocessor;>;"
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    .line 305
    invoke-direct {p0}, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;-><init>()V

    .line 95
    new-instance v0, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->activeFrames:Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;

    .line 120
    iput-wide v3, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->lastRequestDuration:J

    .line 121
    iput-wide v3, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->lastResponseDuration:J

    .line 122
    iput v2, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->numRequestsSent:I

    .line 123
    iput v2, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->numResponsesReceived:I

    .line 144
    new-instance v0, Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->listeners:Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;

    .line 147
    new-instance v0, Lcom/google/android/apps/unveil/protocol/nonstop/FrameEncoder;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/protocol/nonstop/FrameEncoder;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->frameEncoder:Lcom/google/android/apps/unveil/protocol/nonstop/FrameEncoder;

    .line 306
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->application:Lcom/google/android/apps/unveil/UnveilContext;

    .line 307
    iput-object p2, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->params:Lcom/google/android/apps/unveil/network/ContinuousNetworkParams;

    .line 308
    iput-object p4, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->annotationTracker:Lcom/google/android/apps/unveil/tracking/AnnotationTracker;

    .line 309
    iput-object p6, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->requestPreprocessors:Ljava/lang/Iterable;

    .line 311
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->listeners:Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;

    invoke-virtual {v0, p4}, Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;->addEventListener(Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;)V

    .line 313
    iput-object p3, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->pushStrategy:Lcom/google/android/apps/unveil/protocol/RequestPipeline$PushStrategy;

    .line 315
    new-instance v0, Lcom/google/android/apps/unveil/protocol/RequestPipeline$PullQueryListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/unveil/protocol/RequestPipeline$PullQueryListener;-><init>(Lcom/google/android/apps/unveil/protocol/RequestPipeline;Lcom/google/android/apps/unveil/protocol/RequestPipeline$1;)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->pullQueryListener:Lcom/google/android/apps/unveil/protocol/QueryListener;

    .line 317
    new-instance v0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;

    invoke-direct {v0, p5}, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;-><init>(Lcom/google/android/apps/unveil/protocol/TraceTracker;)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->tracingHelper:Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;

    .line 319
    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->createNewConnectionManager()Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->connectionManager:Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;

    .line 320
    new-instance v0, Lcom/google/android/apps/unveil/env/BandwidthEstimator;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/BandwidthEstimator;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->bandwidthEstimator:Lcom/google/android/apps/unveil/env/BandwidthEstimator;

    .line 322
    iput-boolean v2, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->running:Z

    .line 323
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->application:Lcom/google/android/apps/unveil/UnveilContext;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/UnveilContext;->getLocationProvider()Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;

    move-result-object v0

    const/high16 v1, 0x42c8

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;->getLocationCache(F)Lcom/google/android/apps/unveil/sensors/LocationCache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->locationCache:Lcom/google/android/apps/unveil/sensors/LocationCache;

    .line 325
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->application:Lcom/google/android/apps/unveil/UnveilContext;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/UnveilContext;->getSensorProvider()Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->sensorProvider:Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;

    .line 327
    invoke-virtual {p0, v2}, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->reset(Z)V

    .line 328
    return-void
.end method

.method static synthetic access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;
    .registers 1

    .prologue
    .line 48
    sget-object v0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/unveil/protocol/RequestPipeline;)Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->listeners:Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/android/apps/unveil/protocol/RequestPipeline;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->lastResponseDuration:J

    return-wide p1
.end method

.method static synthetic access$1104(Lcom/google/android/apps/unveil/protocol/RequestPipeline;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->numResponsesReceived:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->numResponsesReceived:I

    return v0
.end method

.method static synthetic access$1202(Lcom/google/android/apps/unveil/protocol/RequestPipeline;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->traceDataPending:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/google/android/apps/unveil/protocol/RequestPipeline;Ljava/lang/Runnable;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->runOnUiThreadBeforeNextFrame(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/unveil/protocol/RequestPipeline;)Lcom/google/android/apps/unveil/env/BandwidthEstimator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->bandwidthEstimator:Lcom/google/android/apps/unveil/env/BandwidthEstimator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/unveil/protocol/RequestPipeline;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->lastRequestEstimatedUploadDurationMillis:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/google/android/apps/unveil/protocol/RequestPipeline;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->lastRequestEstimatedUploadDurationMillis:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/google/android/apps/unveil/protocol/RequestPipeline;)Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->tracingHelper:Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/unveil/protocol/RequestPipeline;)Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->activeFrames:Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/unveil/protocol/RequestPipeline;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->maybeSendTraceData(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/apps/unveil/protocol/RequestPipeline;Lcom/google/android/apps/unveil/protocol/QueryResponse;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->processResponse(Lcom/google/android/apps/unveil/protocol/QueryResponse;)V

    return-void
.end method

.method private createNewConnectionManager()Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;
    .registers 9

    .prologue
    .line 283
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->nextPushSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 284
    new-instance v4, Lcom/google/android/apps/unveil/protocol/Session;

    invoke-direct {v4}, Lcom/google/android/apps/unveil/protocol/Session;-><init>()V

    .line 285
    .local v4, session:Lcom/google/android/apps/unveil/protocol/Session;
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->application:Lcom/google/android/apps/unveil/UnveilContext;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/UnveilContext;->getClickTracker()Lcom/google/android/apps/unveil/protocol/ClickTracker;

    move-result-object v0

    invoke-virtual {v4}, Lcom/google/android/apps/unveil/protocol/Session;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/protocol/ClickTracker;->setSessionId(Ljava/lang/String;)V

    .line 286
    new-instance v3, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;

    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->application:Lcom/google/android/apps/unveil/UnveilContext;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/UnveilContext;->getConnector()Lcom/google/android/apps/unveil/network/AbstractConnector;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;-><init>(Lcom/google/android/apps/unveil/network/AbstractConnector;)V

    .line 288
    .local v3, tracingCookieFetcher:Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;
    invoke-virtual {v3}, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;->replenish()V

    .line 289
    new-instance v0, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;

    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->application:Lcom/google/android/apps/unveil/UnveilContext;

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->pullQueryListener:Lcom/google/android/apps/unveil/protocol/QueryListener;

    iget-object v5, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->tracingHelper:Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;

    invoke-virtual {v5}, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->getPushLogger()Lcom/google/android/apps/unveil/network/ContinuousConnector$PushLogger;

    move-result-object v5

    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->createResponseExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->params:Lcom/google/android/apps/unveil/network/ContinuousNetworkParams;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;-><init>(Lcom/google/android/apps/unveil/UnveilContext;Lcom/google/android/apps/unveil/protocol/QueryListener;Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;Lcom/google/android/apps/unveil/protocol/Session;Lcom/google/android/apps/unveil/network/ContinuousConnector$PushLogger;Ljava/util/concurrent/Executor;Lcom/google/android/apps/unveil/network/ContinuousNetworkParams;)V

    return-object v0
.end method

.method private createResponseExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .prologue
    .line 294
    new-instance v0, Lcom/google/android/apps/unveil/protocol/RequestPipeline$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/unveil/protocol/RequestPipeline$1;-><init>(Lcom/google/android/apps/unveil/protocol/RequestPipeline;)V

    return-object v0
.end method

.method private encode(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)Lcom/google/android/apps/unveil/protocol/nonstop/FrameEncoder$EncodedFrame;
    .registers 6
    .parameter "frame"

    .prologue
    .line 575
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getFrameNum()I

    move-result v1

    .line 576
    .local v1, frameNum:I
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->tracingHelper:Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->onBeginEncoding(I)V

    .line 577
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->frameEncoder:Lcom/google/android/apps/unveil/protocol/nonstop/FrameEncoder;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/unveil/protocol/nonstop/FrameEncoder;->encode(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)Lcom/google/android/apps/unveil/protocol/nonstop/FrameEncoder$EncodedFrame;

    move-result-object v0

    .line 578
    .local v0, encodedFrame:Lcom/google/android/apps/unveil/protocol/nonstop/FrameEncoder$EncodedFrame;
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->tracingHelper:Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->onEndEncoding(I)V

    .line 580
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->listeners:Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getMetadata()Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;->onNewRequest(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;)V

    .line 584
    return-object v0
.end method

.method private maybeSendTraceData(I)V
    .registers 6
    .parameter "minTraceActionsToSend"

    .prologue
    .line 230
    iget-boolean v1, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->traceDataPending:Z

    if-nez v1, :cond_18

    .line 232
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->tracingHelper:Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->getTraceRequest(I)Lcom/google/goggles/TracingProtos$TraceRequest;

    move-result-object v0

    .line 235
    .local v0, traceRequest:Lcom/google/goggles/TracingProtos$TraceRequest;
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->connectionManager:Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;

    new-instance v2, Lcom/google/android/apps/unveil/protocol/RequestPipeline$TraceDataListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/apps/unveil/protocol/RequestPipeline$TraceDataListener;-><init>(Lcom/google/android/apps/unveil/protocol/RequestPipeline;Lcom/google/android/apps/unveil/protocol/RequestPipeline$1;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->maybeSendTraceData(Lcom/google/android/apps/unveil/protocol/QueryListener;Lcom/google/goggles/TracingProtos$TraceRequest;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->traceDataPending:Z

    .line 238
    .end local v0           #traceRequest:Lcom/google/goggles/TracingProtos$TraceRequest;
    :cond_18
    return-void
.end method

.method private populateBasicQuery(Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;J)V
    .registers 14
    .parameter "query"
    .parameter "timestamp"

    .prologue
    .line 600
    iget-object v5, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->sensorProvider:Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;

    invoke-virtual {v5}, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->getRoundedDeviceOrientation()I

    move-result v1

    .line 601
    .local v1, deviceOrientation:I
    iget-object v5, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->application:Lcom/google/android/apps/unveil/UnveilContext;

    invoke-interface {v5}, Lcom/google/android/apps/unveil/UnveilContext;->getViewport()Lcom/google/android/apps/unveil/env/Viewport;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/android/apps/unveil/env/Viewport;->deviceRotationToCameraRotation(I)I

    move-result v0

    .line 604
    .local v0, cameraRotation:I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_16

    .line 605
    invoke-virtual {p1, v1}, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->addOrientationRelativeToDevice(I)Lcom/google/android/apps/unveil/protocol/QueryBuilder;

    .line 608
    :cond_16
    iget-object v5, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->params:Lcom/google/android/apps/unveil/network/ContinuousNetworkParams;

    iget-object v5, v5, Lcom/google/android/apps/unveil/network/ContinuousNetworkParams;->source:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    if-nez v5, :cond_24

    .line 609
    new-instance v5, Ljava/lang/AssertionError;

    const-string v6, "Continuous params don\'t have a source."

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 611
    :cond_24
    iget-object v5, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->params:Lcom/google/android/apps/unveil/network/ContinuousNetworkParams;

    iget-object v5, v5, Lcom/google/android/apps/unveil/network/ContinuousNetworkParams;->source:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    invoke-virtual {p1, v5}, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->setSource(Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;)V

    .line 612
    invoke-virtual {p1, v0}, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->addOrientationRelativeToCamera(I)Lcom/google/android/apps/unveil/protocol/QueryBuilder;

    .line 614
    iget-object v5, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->locationCache:Lcom/google/android/apps/unveil/sensors/LocationCache;

    invoke-virtual {v5}, Lcom/google/android/apps/unveil/sensors/LocationCache;->getLocation()Lcom/google/goggles/LocationProtos$Location;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->locationCache:Lcom/google/android/apps/unveil/sensors/LocationCache;

    invoke-virtual {v6}, Lcom/google/android/apps/unveil/sensors/LocationCache;->getEncryptedLocation()Lcom/google/protobuf/ByteString;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->addLocation(Lcom/google/goggles/LocationProtos$Location;Lcom/google/protobuf/ByteString;)Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;

    .line 615
    move-wide v2, p2

    .line 616
    .local v2, requestIdBase:J
    iget-object v5, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->nextPushSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v4

    .line 617
    .local v4, sequenceNumber:I
    sget-object v5, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v6, "Sending request requestIdBase=%d; sequenceNumber=%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 618
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->addRequestIdBase(Ljava/lang/Long;)Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->connectionManager:Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;

    invoke-virtual {v6}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->getSession()Lcom/google/android/apps/unveil/protocol/Session;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->setSession(Lcom/google/android/apps/unveil/protocol/Session;)Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;

    .line 619
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->addPushSequenceNumber(Ljava/lang/Integer;)Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;

    .line 620
    return-void
.end method

.method private processResponse(Lcom/google/android/apps/unveil/protocol/QueryResponse;)V
    .registers 10
    .parameter "response"

    .prologue
    .line 464
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 466
    .local v3, results:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Lcom/google/android/apps/unveil/results/ResultItem;Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;>;>;"
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/protocol/QueryResponse;->getResults()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->lastNumResults:I

    .line 468
    iget-object v5, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->activeFrames:Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;

    monitor-enter v5

    .line 470
    :try_start_12
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/protocol/QueryResponse;->getResults()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/unveil/results/ResultItem;

    .line 471
    .local v2, resultItem:Lcom/google/android/apps/unveil/results/ResultItem;
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/protocol/QueryResponse;->getResponseReceivedTimestamp()J

    move-result-wide v6

    invoke-direct {p0, v2, v6, v7}, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->processResult(Lcom/google/android/apps/unveil/results/ResultItem;J)Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;

    move-result-object v0

    .line 476
    .local v0, frame:Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;
    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 478
    .end local v0           #frame:Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #resultItem:Lcom/google/android/apps/unveil/results/ResultItem;
    :catchall_36
    move-exception v4

    monitor-exit v5
    :try_end_38
    .catchall {:try_start_12 .. :try_end_38} :catchall_36

    throw v4

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_39
    :try_start_39
    monitor-exit v5
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_36

    .line 480
    iget-object v4, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->listeners:Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;

    invoke-virtual {v4, v3}, Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;->onNewResults(Ljava/util/List;)V

    .line 481
    return-void
.end method

.method private processResult(Lcom/google/android/apps/unveil/results/ResultItem;J)Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;
    .registers 15
    .parameter "resultItem"
    .parameter "responseReceivedTimestamp"

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 489
    sget-object v7, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v8, "Result: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 490
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/results/ResultItem;->getAnnotationResult()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v0

    .line 491
    .local v0, annotationResult:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;
    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasBoundingBoxRequestId()Z

    move-result v7

    if-eqz v7, :cond_1e

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasBoundingBox()Z

    move-result v7

    if-nez v7, :cond_29

    .line 492
    :cond_1e
    sget-object v7, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v8, "No bounding box, aborting."

    new-array v9, v10, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v6

    .line 516
    :goto_28
    return-object v2

    .line 496
    :cond_29
    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getBoundingBoxRequestId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/apps/unveil/protocol/nonstop/RequestIds;->decodeBaseRequestId(Ljava/lang/String;)J

    move-result-wide v4

    .line 499
    .local v4, resultFrameTimestamp:J
    iget-object v7, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->activeFrames:Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;

    monitor-enter v7

    .line 500
    :try_start_34
    iget-object v8, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->activeFrames:Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;

    invoke-virtual {v8, v4, v5}, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;->getByTimestamp(J)Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;

    move-result-object v2

    .line 502
    .local v2, frame:Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;
    if-eqz v2, :cond_54

    .line 503
    invoke-virtual {v2}, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;->getMetadata()Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->addResult(Lcom/google/android/apps/unveil/results/ResultItem;)Z

    move-result v1

    .line 505
    .local v1, firstResultForFrame:Z
    if-eqz v1, :cond_4f

    .line 506
    invoke-virtual {v2}, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;->getFrameNum()I

    move-result v3

    .line 507
    .local v3, frameNum:I
    iget-object v6, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->tracingHelper:Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;

    invoke-virtual {v6, v3, p2, p3}, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->onResult(IJ)V

    .line 510
    .end local v3           #frameNum:I
    :cond_4f
    monitor-exit v7

    goto :goto_28

    .line 512
    .end local v1           #firstResultForFrame:Z
    .end local v2           #frame:Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;
    :catchall_51
    move-exception v6

    monitor-exit v7
    :try_end_53
    .catchall {:try_start_34 .. :try_end_53} :catchall_51

    throw v6

    .restart local v2       #frame:Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;
    :cond_54
    :try_start_54
    monitor-exit v7
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_51

    .line 514
    sget-object v7, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v8, "Dropping result!"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 515
    iget v7, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->numDroppedResults:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->numDroppedResults:I

    move-object v2, v6

    .line 516
    goto :goto_28
.end method

.method private pushImage(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V
    .registers 14
    .parameter "timestampedFrame"

    .prologue
    const/4 v11, 0x0

    .line 546
    sget-object v7, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v8, "Making request"

    new-array v9, v11, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 547
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getFrameNum()I

    move-result v2

    .line 549
    .local v2, frameNum:I
    iget-object v7, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->tracingHelper:Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;

    iget-object v8, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->activeFrames:Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;

    invoke-virtual {v8}, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;->getLastFrameNum()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, p1}, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->onMakingRequest(Ljava/lang/Integer;Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V

    .line 550
    iget-object v7, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->pushStrategy:Lcom/google/android/apps/unveil/protocol/RequestPipeline$PushStrategy;

    invoke-interface {v7, p1}, Lcom/google/android/apps/unveil/protocol/RequestPipeline$PushStrategy;->onPush(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V

    .line 552
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getMetadata()Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->onPickedForQuery()V

    .line 554
    sget-object v7, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v8, "Making request on session %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->connectionManager:Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;

    invoke-virtual {v10}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->getSessionId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 555
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->encode(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)Lcom/google/android/apps/unveil/protocol/nonstop/FrameEncoder$EncodedFrame;

    move-result-object v1

    .line 556
    .local v1, encodedFrame:Lcom/google/android/apps/unveil/protocol/nonstop/FrameEncoder$EncodedFrame;
    invoke-virtual {p0, v1}, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->makeQuery(Lcom/google/android/apps/unveil/protocol/nonstop/FrameEncoder$EncodedFrame;)Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;

    move-result-object v6

    .line 558
    .local v6, query:Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;
    iget-object v7, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->activeFrames:Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;

    iget-object v8, v1, Lcom/google/android/apps/unveil/protocol/nonstop/FrameEncoder$EncodedFrame;->jpegData:[B

    invoke-virtual {v7, p1, v8}, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;->maybeAdd(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;[B)Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;

    move-result-object v0

    .line 561
    .local v0, activeFrame:Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;
    iget-object v7, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->application:Lcom/google/android/apps/unveil/UnveilContext;

    invoke-virtual {v6, v7}, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->buildGogglesRequestBuilder(Lcom/google/android/apps/unveil/UnveilContext;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    move-result-object v3

    .line 563
    .local v3, gogglesRequest:Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;
    invoke-virtual {v3}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->build()Lcom/google/goggles/GogglesProtos$GogglesRequest;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->toByteArray()[B

    move-result-object v4

    .line 564
    .local v4, pushEntity:[B
    new-instance v5, Lcom/google/android/apps/unveil/protocol/RequestPipeline$PushQueryListener;

    invoke-direct {v5, p0, v0}, Lcom/google/android/apps/unveil/protocol/RequestPipeline$PushQueryListener;-><init>(Lcom/google/android/apps/unveil/protocol/RequestPipeline;Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;)V

    .line 565
    .local v5, pushQueryListener:Lcom/google/android/apps/unveil/protocol/QueryListener;
    array-length v7, v4

    invoke-virtual {v5, v7}, Lcom/google/android/apps/unveil/protocol/QueryListener;->onSending(I)V

    .line 567
    iget-object v7, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->connectionManager:Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;

    invoke-virtual {v7}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->getConnector()Lcom/google/android/apps/unveil/network/ContinuousConnector;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->connectionManager:Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;

    invoke-virtual {v8, v5}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->newPushHandler(Lcom/google/android/apps/unveil/protocol/QueryListener;)Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;

    move-result-object v8

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getFrameNum()I

    move-result v9

    invoke-virtual {v7, v4, v8, v9}, Lcom/google/android/apps/unveil/network/ContinuousConnector;->serialPush([BLcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;I)Z

    .line 571
    const/16 v7, 0x8

    const/16 v8, 0x64

    const/16 v9, 0x5a

    invoke-static {v7, v8, v9, v11}, Lcom/google/android/apps/unveil/env/TonePlayer;->logTone(IIIZ)V

    .line 572
    return-void
.end method

.method private shouldRequest(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)Z
    .registers 5
    .parameter "frame"

    .prologue
    const/4 v0, 0x0

    .line 526
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getFrameNum()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_a

    .line 529
    :cond_9
    :goto_9
    return v0

    :cond_a
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->connectionManager:Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->canPush()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->pushStrategy:Lcom/google/android/apps/unveil/protocol/RequestPipeline$PushStrategy;

    invoke-interface {v1, p1}, Lcom/google/android/apps/unveil/protocol/RequestPipeline$PushStrategy;->shouldPush(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    goto :goto_9
.end method


# virtual methods
.method public declared-synchronized addEventListener(Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 272
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->listeners:Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;->addEventListener(Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 273
    monitor-exit p0

    return-void

    .line 272
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addPerFrameTracer(Lcom/google/android/apps/unveil/protocol/nonstop/PerFrameTracer;)V
    .registers 3
    .parameter "perFrameTracer"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->tracingHelper:Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->addPerFrameTracer(Lcom/google/android/apps/unveil/protocol/nonstop/PerFrameTracer;)V

    .line 280
    return-void
.end method

.method public declared-synchronized getDebugText()Ljava/util/Vector;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 664
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 665
    .local v1, lines:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->connectionManager:Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;

    invoke-virtual {v4}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->getSessionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 666
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->application:Lcom/google/android/apps/unveil/UnveilContext;

    invoke-interface {v4}, Lcom/google/android/apps/unveil/UnveilContext;->getFrontendUrl()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 669
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tx|Rx times and counts: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->lastRequestDuration:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->lastResponseDuration:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "       "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->numRequestsSent:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->numResponsesReceived:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 672
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Num results: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->lastNumResults:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 673
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Num results dropped: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->numDroppedResults:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 674
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Accum move amount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->accumulatedDelta:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 676
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->bandwidthEstimator:Lcom/google/android/apps/unveil/env/BandwidthEstimator;

    invoke-virtual {v3}, Lcom/google/android/apps/unveil/env/BandwidthEstimator;->getDebugText()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 678
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->requestPreprocessors:Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_d5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/unveil/protocol/nonstop/RequestPreprocessor;

    .line 679
    .local v2, preprocessor:Lcom/google/android/apps/unveil/protocol/nonstop/RequestPreprocessor;
    invoke-interface {v2, v1}, Lcom/google/android/apps/unveil/protocol/nonstop/RequestPreprocessor;->addDebugText(Ljava/util/List;)V
    :try_end_e4
    .catchall {:try_start_1 .. :try_end_e4} :catchall_e5

    goto :goto_d5

    .line 664
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #lines:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v2           #preprocessor:Lcom/google/android/apps/unveil/protocol/nonstop/RequestPreprocessor;
    :catchall_e5
    move-exception v3

    monitor-exit p0

    throw v3

    .line 682
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #lines:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_e8
    monitor-exit p0

    return-object v1
.end method

.method protected getProcessorType()Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;
    .registers 2

    .prologue
    .line 691
    sget-object v0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;->REQUEST_PIPELINE:Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 686
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->connectionManager:Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->getSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected makeQuery(Lcom/google/android/apps/unveil/protocol/nonstop/FrameEncoder$EncodedFrame;)Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;
    .registers 6
    .parameter "encodedFrame"

    .prologue
    .line 588
    new-instance v2, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;

    invoke-direct {v2}, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;-><init>()V

    .line 589
    .local v2, query:Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;
    invoke-virtual {p0, v2, p1}, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->populateQueryBuilder(Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;Lcom/google/android/apps/unveil/protocol/nonstop/FrameEncoder$EncodedFrame;)V

    .line 590
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->requestPreprocessors:Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/protocol/nonstop/RequestPreprocessor;

    .line 591
    .local v1, preprocessor:Lcom/google/android/apps/unveil/protocol/nonstop/RequestPreprocessor;
    invoke-interface {v1, v2}, Lcom/google/android/apps/unveil/protocol/nonstop/RequestPreprocessor;->preprocess(Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;)V

    goto :goto_e

    .line 593
    .end local v1           #preprocessor:Lcom/google/android/apps/unveil/protocol/nonstop/RequestPreprocessor;
    :cond_1e
    return-object v2
.end method

.method protected onDrawDebug(Landroid/graphics/Canvas;)V
    .registers 3
    .parameter "canvas"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->activeFrames:Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;->drawDebug(Landroid/graphics/Canvas;)V

    .line 413
    return-void
.end method

.method protected declared-synchronized onPause()V
    .registers 2

    .prologue
    .line 353
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->pausePipeline()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 354
    monitor-exit p0

    return-void

    .line 353
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onProcessFrame(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V
    .registers 7
    .parameter "previewFrame"

    .prologue
    .line 379
    monitor-enter p0

    :try_start_1
    iget-boolean v3, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->running:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_40

    if-nez v3, :cond_7

    .line 403
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 383
    :cond_7
    const/4 v0, 0x1

    .line 384
    .local v0, shouldDiscardFrame:Z
    :try_start_8
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->listeners:Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;

    invoke-virtual {v3, p1}, Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;->onNewFrame(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V

    .line 386
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->tracingHelper:Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getFrameNum()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->onProcessFrame(I)V

    .line 388
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->shouldRequest(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 390
    .local v1, startTime:J
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->tracingHelper:Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getFrameNum()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->onWillRequest(I)V

    .line 392
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->pushImage(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V

    .line 394
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    iput-wide v3, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->lastRequestDuration:J

    .line 396
    iget v3, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->numRequestsSent:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->numRequestsSent:I

    .line 397
    const/4 v0, 0x0

    .line 400
    .end local v1           #startTime:J
    :cond_3a
    if-eqz v0, :cond_5

    .line 401
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->discardFrame()V
    :try_end_3f
    .catchall {:try_start_8 .. :try_end_3f} :catchall_40

    goto :goto_5

    .line 379
    .end local v0           #shouldDiscardFrame:Z
    :catchall_40
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected declared-synchronized onShutdown()V
    .registers 3

    .prologue
    .line 371
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->running:Z

    .line 372
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->connectionManager:Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->disconnect()V

    .line 373
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->application:Lcom/google/android/apps/unveil/UnveilContext;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/UnveilContext;->getClickTracker()Lcom/google/android/apps/unveil/protocol/ClickTracker;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/protocol/ClickTracker;->setSessionId(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_16

    .line 374
    monitor-exit p0

    return-void

    .line 371
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onStart()V
    .registers 2

    .prologue
    .line 336
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->startPipeline()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 337
    monitor-exit p0

    return-void

    .line 336
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public outOfBandPush(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;)V
    .registers 10
    .parameter "frame"
    .parameter "query"

    .prologue
    .line 640
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->activeFrames:Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;->maybeAdd(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;[B)Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;

    move-result-object v0

    .line 642
    .local v0, activeFrame:Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getTimestamp()J

    move-result-wide v3

    invoke-direct {p0, p2, v3, v4}, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->populateBasicQuery(Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;J)V

    .line 644
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->application:Lcom/google/android/apps/unveil/UnveilContext;

    invoke-virtual {p2, v3}, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->buildGogglesRequestBuilder(Lcom/google/android/apps/unveil/UnveilContext;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;->build()Lcom/google/goggles/GogglesProtos$GogglesRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->toByteArray()[B

    move-result-object v1

    .line 649
    .local v1, pushEntity:[B
    new-instance v2, Lcom/google/android/apps/unveil/protocol/RequestPipeline$PushQueryListener;

    invoke-direct {v2, p0, v0}, Lcom/google/android/apps/unveil/protocol/RequestPipeline$PushQueryListener;-><init>(Lcom/google/android/apps/unveil/protocol/RequestPipeline;Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;)V

    .line 650
    .local v2, pushQueryListener:Lcom/google/android/apps/unveil/protocol/QueryListener;
    array-length v3, v1

    invoke-virtual {v2, v3}, Lcom/google/android/apps/unveil/protocol/QueryListener;->onSending(I)V

    .line 652
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->tracingHelper:Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getFrameNum()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->onClientAnnotationPush(I)V

    .line 653
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->connectionManager:Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;

    invoke-virtual {v3}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->getConnector()Lcom/google/android/apps/unveil/network/ContinuousConnector;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->connectionManager:Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;

    invoke-virtual {v4, v2}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->newPushHandler(Lcom/google/android/apps/unveil/protocol/QueryListener;)Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getFrameNum()I

    move-result v5

    invoke-virtual {v3, v1, v4, v5}, Lcom/google/android/apps/unveil/network/ContinuousConnector;->outOfBandPush([BLcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;I)Z

    .line 656
    const/16 v3, 0x8

    const/16 v4, 0x64

    const/16 v5, 0x5a

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/apps/unveil/env/TonePlayer;->logTone(IIIZ)V

    .line 657
    return-void
.end method

.method public declared-synchronized pausePipeline()V
    .registers 4

    .prologue
    .line 360
    monitor-enter p0

    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->running:Z

    .line 361
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->connectionManager:Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->pause()V

    .line 363
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->requestPreprocessors:Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/protocol/nonstop/RequestPreprocessor;

    .line 364
    .local v1, preprocessor:Lcom/google/android/apps/unveil/protocol/nonstop/RequestPreprocessor;
    invoke-interface {v1}, Lcom/google/android/apps/unveil/protocol/nonstop/RequestPreprocessor;->onPause()V
    :try_end_1e
    .catchall {:try_start_2 .. :try_end_1e} :catchall_1f

    goto :goto_f

    .line 360
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #preprocessor:Lcom/google/android/apps/unveil/protocol/nonstop/RequestPreprocessor;
    :catchall_1f
    move-exception v2

    monitor-exit p0

    throw v2

    .line 366
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_22
    const/4 v2, 0x1

    :try_start_23
    invoke-direct {p0, v2}, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->maybeSendTraceData(I)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_1f

    .line 367
    monitor-exit p0

    return-void
.end method

.method protected populateQueryBuilder(Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;Lcom/google/android/apps/unveil/protocol/nonstop/FrameEncoder$EncodedFrame;)V
    .registers 7
    .parameter "query"
    .parameter "encodedFrame"

    .prologue
    .line 627
    iget-wide v0, p2, Lcom/google/android/apps/unveil/protocol/nonstop/FrameEncoder$EncodedFrame;->timestamp:J

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->populateBasicQuery(Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;J)V

    .line 628
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->annotationTracker:Lcom/google/android/apps/unveil/tracking/AnnotationTracker;

    iget-wide v1, p2, Lcom/google/android/apps/unveil/protocol/nonstop/FrameEncoder$EncodedFrame;->timestamp:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->addTrackingDataToQuery(Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;J)V

    .line 629
    iget v0, p2, Lcom/google/android/apps/unveil/protocol/nonstop/FrameEncoder$EncodedFrame;->quality:I

    invoke-virtual {p1, v0}, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->addJpegQuality(I)Lcom/google/android/apps/unveil/protocol/QueryBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/apps/unveil/protocol/nonstop/FrameEncoder$EncodedFrame;->jpegData:[B

    iget-object v2, p2, Lcom/google/android/apps/unveil/protocol/nonstop/FrameEncoder$EncodedFrame;->size:Lcom/google/android/apps/unveil/env/Size;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->addImageData([BLcom/google/android/apps/unveil/env/Size;Z)Lcom/google/android/apps/unveil/protocol/QueryBuilder;

    .line 631
    return-void
.end method

.method public declared-synchronized reset()V
    .registers 2

    .prologue
    .line 424
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->reset(Z)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 425
    monitor-exit p0

    return-void

    .line 424
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized reset(Z)V
    .registers 7
    .parameter "alsoResetSession"

    .prologue
    .line 428
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->bandwidthEstimator:Lcom/google/android/apps/unveil/env/BandwidthEstimator;

    invoke-virtual {v3}, Lcom/google/android/apps/unveil/env/BandwidthEstimator;->reset()V

    .line 430
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->activeFrames:Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;

    invoke-virtual {v3}, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;->clear()V

    .line 431
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->lastRequestEstimatedUploadDurationMillis:J

    .line 433
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->application:Lcom/google/android/apps/unveil/UnveilContext;

    invoke-interface {v3}, Lcom/google/android/apps/unveil/UnveilContext;->getTraceTracker()Lcom/google/android/apps/unveil/protocol/TraceTracker;

    move-result-object v2

    .line 434
    .local v2, traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->tracingHelper:Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;

    invoke-virtual {v3}, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->reset()V

    .line 438
    if-eqz p1, :cond_27

    .line 439
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->connectionManager:Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;

    invoke-virtual {v3}, Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;->disconnect()V

    .line 440
    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->createNewConnectionManager()Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->connectionManager:Lcom/google/android/apps/unveil/protocol/ContinuousConnectionManager;

    .line 443
    :cond_27
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->traceDataPending:Z

    .line 445
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->accumulatedDelta:F

    .line 446
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->numDroppedResults:I

    .line 448
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->lastNumResults:I

    .line 450
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->pushStrategy:Lcom/google/android/apps/unveil/protocol/RequestPipeline$PushStrategy;

    invoke-interface {v3}, Lcom/google/android/apps/unveil/protocol/RequestPipeline$PushStrategy;->onReset()V

    .line 451
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->listeners:Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;

    invoke-virtual {v3}, Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;->onSessionReset()V

    .line 453
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->requestPreprocessors:Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_43
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/protocol/nonstop/RequestPreprocessor;

    .line 454
    .local v1, preprocessor:Lcom/google/android/apps/unveil/protocol/nonstop/RequestPreprocessor;
    invoke-interface {v1}, Lcom/google/android/apps/unveil/protocol/nonstop/RequestPreprocessor;->onReset()V
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_53

    goto :goto_43

    .line 428
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #preprocessor:Lcom/google/android/apps/unveil/protocol/nonstop/RequestPreprocessor;
    .end local v2           #traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;
    :catchall_53
    move-exception v3

    monitor-exit p0

    throw v3

    .line 456
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;
    :cond_56
    monitor-exit p0

    return-void
.end method

.method public startPipeline()V
    .registers 4

    .prologue
    .line 340
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->running:Z

    .line 344
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->activeFrames:Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;->clear()V

    .line 346
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->requestPreprocessors:Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/protocol/nonstop/RequestPreprocessor;

    .line 347
    .local v1, preprocessor:Lcom/google/android/apps/unveil/protocol/nonstop/RequestPreprocessor;
    invoke-interface {v1}, Lcom/google/android/apps/unveil/protocol/nonstop/RequestPreprocessor;->onStart()V

    goto :goto_e

    .line 349
    .end local v1           #preprocessor:Lcom/google/android/apps/unveil/protocol/nonstop/RequestPreprocessor;
    :cond_1e
    return-void
.end method
