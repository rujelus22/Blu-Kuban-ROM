.class Lcom/google/android/apps/unveil/protocol/RequestPipeline$TraceDataListener;
.super Lcom/google/android/apps/unveil/protocol/RequestPipeline$ContinuousRequestQueryListener;
.source "RequestPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/protocol/RequestPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TraceDataListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/protocol/RequestPipeline;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/unveil/protocol/RequestPipeline;)V
    .registers 3
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline$TraceDataListener;->this$0:Lcom/google/android/apps/unveil/protocol/RequestPipeline;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/unveil/protocol/RequestPipeline$ContinuousRequestQueryListener;-><init>(Lcom/google/android/apps/unveil/protocol/RequestPipeline;Lcom/google/android/apps/unveil/protocol/RequestPipeline$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/unveil/protocol/RequestPipeline;Lcom/google/android/apps/unveil/protocol/RequestPipeline$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/protocol/RequestPipeline$TraceDataListener;-><init>(Lcom/google/android/apps/unveil/protocol/RequestPipeline;)V

    return-void
.end method


# virtual methods
.method public onQueryResponse(Lcom/google/android/apps/unveil/protocol/QueryResponse;)V
    .registers 5
    .parameter "queryResponse"

    .prologue
    .line 265
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline$TraceDataListener;->this$0:Lcom/google/android/apps/unveil/protocol/RequestPipeline;

    monitor-enter v1

    .line 266
    :try_start_3
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline$TraceDataListener;->this$0:Lcom/google/android/apps/unveil/protocol/RequestPipeline;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/apps/unveil/protocol/RequestPipeline;->traceDataPending:Z
    invoke-static {v0, v2}, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->access$1202(Lcom/google/android/apps/unveil/protocol/RequestPipeline;Z)Z

    .line 267
    monitor-exit v1

    .line 268
    return-void

    .line 267
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method
