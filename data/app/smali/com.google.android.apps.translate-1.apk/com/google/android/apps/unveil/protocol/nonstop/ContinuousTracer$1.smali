.class Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer$1;
.super Ljava/lang/Object;
.source "ContinuousTracer.java"

# interfaces
.implements Lcom/google/android/apps/unveil/network/ContinuousConnector$PushLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;)V
    .registers 2
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer$1;->this$0:Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivePushResponse(I)V
    .registers 4
    .parameter "frameNum"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer$1;->this$0:Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;

    #getter for: Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;
    invoke-static {v0}, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->access$000(Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;)Lcom/google/android/apps/unveil/protocol/TraceTracker;

    move-result-object v0

    sget-object v1, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->CONTINUOUS_PUSH:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->endInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Type;I)V

    .line 60
    return-void
.end method

.method public onSendPush(I)V
    .registers 4
    .parameter "frameNum"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer$1;->this$0:Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;

    #getter for: Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;
    invoke-static {v0}, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->access$000(Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;)Lcom/google/android/apps/unveil/protocol/TraceTracker;

    move-result-object v0

    sget-object v1, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->CONTINUOUS_PUSH:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->beginInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Type;I)V

    .line 55
    return-void
.end method
