.class Lcom/google/android/apps/unveil/protocol/RequestPipeline$PullQueryListener;
.super Lcom/google/android/apps/unveil/protocol/RequestPipeline$ContinuousRequestQueryListener;
.source "RequestPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/protocol/RequestPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PullQueryListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/protocol/RequestPipeline;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/unveil/protocol/RequestPipeline;)V
    .registers 3
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline$PullQueryListener;->this$0:Lcom/google/android/apps/unveil/protocol/RequestPipeline;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/unveil/protocol/RequestPipeline$ContinuousRequestQueryListener;-><init>(Lcom/google/android/apps/unveil/protocol/RequestPipeline;Lcom/google/android/apps/unveil/protocol/RequestPipeline$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/unveil/protocol/RequestPipeline;Lcom/google/android/apps/unveil/protocol/RequestPipeline$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/protocol/RequestPipeline$PullQueryListener;-><init>(Lcom/google/android/apps/unveil/protocol/RequestPipeline;)V

    return-void
.end method


# virtual methods
.method public onQueryResponse(Lcom/google/android/apps/unveil/protocol/QueryResponse;)V
    .registers 8
    .parameter "queryResponse"

    .prologue
    .line 246
    const/4 v2, 0x3

    const/16 v3, 0x78

    const/16 v4, 0x5a

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/apps/unveil/env/TonePlayer;->logTone(IIIZ)V

    .line 248
    if-eqz p1, :cond_29

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline$PullQueryListener;->this$0:Lcom/google/android/apps/unveil/protocol/RequestPipeline;

    iget-boolean v2, v2, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->running:Z

    if-eqz v2, :cond_29

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 250
    .local v0, startTime:J
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline$PullQueryListener;->this$0:Lcom/google/android/apps/unveil/protocol/RequestPipeline;

    #calls: Lcom/google/android/apps/unveil/protocol/RequestPipeline;->processResponse(Lcom/google/android/apps/unveil/protocol/QueryResponse;)V
    invoke-static {v2, p1}, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->access$900(Lcom/google/android/apps/unveil/protocol/RequestPipeline;Lcom/google/android/apps/unveil/protocol/QueryResponse;)V

    .line 251
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline$PullQueryListener;->this$0:Lcom/google/android/apps/unveil/protocol/RequestPipeline;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    #setter for: Lcom/google/android/apps/unveil/protocol/RequestPipeline;->lastResponseDuration:J
    invoke-static {v2, v3, v4}, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->access$1002(Lcom/google/android/apps/unveil/protocol/RequestPipeline;J)J

    .line 252
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline$PullQueryListener;->this$0:Lcom/google/android/apps/unveil/protocol/RequestPipeline;

    invoke-static {v2}, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->access$1104(Lcom/google/android/apps/unveil/protocol/RequestPipeline;)I

    .line 255
    .end local v0           #startTime:J
    :cond_29
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline$PullQueryListener;->this$0:Lcom/google/android/apps/unveil/protocol/RequestPipeline;

    #getter for: Lcom/google/android/apps/unveil/protocol/RequestPipeline;->listeners:Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;
    invoke-static {v2}, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->access$100(Lcom/google/android/apps/unveil/protocol/RequestPipeline;)Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;->onPullReceived()V

    .line 256
    return-void
.end method
