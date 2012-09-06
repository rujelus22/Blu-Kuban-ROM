.class public final Lcom/google/android/apps/unveil/protocol/SessionlessRequests;
.super Ljava/lang/Object;
.source "SessionlessRequests.java"


# static fields
.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/protocol/SessionlessRequests;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method static synthetic access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/google/android/apps/unveil/protocol/SessionlessRequests;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-object v0
.end method

.method private static maybeSendTraces(Lcom/google/android/apps/unveil/UnveilContext;)V
    .registers 4
    .parameter "unveilApplication"

    .prologue
    .line 35
    invoke-interface {p0}, Lcom/google/android/apps/unveil/UnveilContext;->getTraceTracker()Lcom/google/android/apps/unveil/protocol/TraceTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->hasPendingActions()Z

    move-result v1

    if-nez v1, :cond_b

    .line 58
    :goto_a
    return-void

    .line 38
    :cond_b
    invoke-static {}, Lcom/google/goggles/TracingProtos$TraceRequest;->newBuilder()Lcom/google/goggles/TracingProtos$TraceRequest$Builder;

    move-result-object v0

    .line 39
    .local v0, traceRequestBuilder:Lcom/google/goggles/TracingProtos$TraceRequest$Builder;
    invoke-interface {p0}, Lcom/google/android/apps/unveil/UnveilContext;->getTraceTracker()Lcom/google/android/apps/unveil/protocol/TraceTracker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->populateRequest(Lcom/google/goggles/TracingProtos$TraceRequest$Builder;)V

    .line 42
    invoke-virtual {v0}, Lcom/google/goggles/TracingProtos$TraceRequest$Builder;->build()Lcom/google/goggles/TracingProtos$TraceRequest;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/unveil/protocol/SessionlessRequests$1;

    invoke-direct {v2}, Lcom/google/android/apps/unveil/protocol/SessionlessRequests$1;-><init>()V

    invoke-static {p0, v1, v2}, Lcom/google/android/apps/unveil/protocol/SessionlessRequests;->sendTraceRequest(Lcom/google/android/apps/unveil/UnveilContext;Lcom/google/goggles/TracingProtos$TraceRequest;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;)V

    goto :goto_a
.end method

.method public static sendLogs(Lcom/google/android/apps/unveil/UnveilContext;)V
    .registers 1
    .parameter "unveilApplication"

    .prologue
    .line 31
    invoke-static {p0}, Lcom/google/android/apps/unveil/protocol/SessionlessRequests;->maybeSendTraces(Lcom/google/android/apps/unveil/UnveilContext;)V

    .line 32
    return-void
.end method

.method private static sendTraceRequest(Lcom/google/android/apps/unveil/UnveilContext;Lcom/google/goggles/TracingProtos$TraceRequest;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;)V
    .registers 6
    .parameter "application"
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/unveil/UnveilContext;",
            "Lcom/google/goggles/TracingProtos$TraceRequest;",
            "Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler",
            "<",
            "Lcom/google/goggles/TracingProtos$TraceResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p2, responseHandler:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;,"Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler<Lcom/google/goggles/TracingProtos$TraceResponse;>;"
    invoke-interface {p0}, Lcom/google/android/apps/unveil/UnveilContext;->getConnector()Lcom/google/android/apps/unveil/network/AbstractConnector;

    move-result-object v0

    const-class v1, Lcom/google/goggles/TracingProtos$TraceResponse;

    const-string v2, ""

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/google/android/apps/unveil/network/AbstractConnector;->sendRequest(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/Class;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;Ljava/lang/String;)V

    .line 63
    return-void
.end method
