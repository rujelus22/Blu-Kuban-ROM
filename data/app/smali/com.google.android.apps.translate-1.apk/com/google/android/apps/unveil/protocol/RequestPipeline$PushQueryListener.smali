.class Lcom/google/android/apps/unveil/protocol/RequestPipeline$PushQueryListener;
.super Lcom/google/android/apps/unveil/protocol/RequestPipeline$ContinuousRequestQueryListener;
.source "RequestPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/protocol/RequestPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PushQueryListener"
.end annotation


# instance fields
.field private final queryFrame:Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;

.field final synthetic this$0:Lcom/google/android/apps/unveil/protocol/RequestPipeline;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/unveil/protocol/RequestPipeline;Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;)V
    .registers 4
    .parameter
    .parameter "activeFrame"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline$PushQueryListener;->this$0:Lcom/google/android/apps/unveil/protocol/RequestPipeline;

    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/unveil/protocol/RequestPipeline$ContinuousRequestQueryListener;-><init>(Lcom/google/android/apps/unveil/protocol/RequestPipeline;Lcom/google/android/apps/unveil/protocol/RequestPipeline$1;)V

    .line 175
    iput-object p2, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline$PushQueryListener;->queryFrame:Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;

    .line 176
    return-void
.end method


# virtual methods
.method public onQueryResponse(Lcom/google/android/apps/unveil/protocol/QueryResponse;)V
    .registers 9
    .parameter "queryResponse"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 203
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline$PushQueryListener;->this$0:Lcom/google/android/apps/unveil/protocol/RequestPipeline;

    iget-boolean v1, v1, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->running:Z

    if-nez v1, :cond_9

    .line 220
    :goto_8
    return-void

    .line 207
    :cond_9
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline$PushQueryListener;->this$0:Lcom/google/android/apps/unveil/protocol/RequestPipeline;

    #getter for: Lcom/google/android/apps/unveil/protocol/RequestPipeline;->listeners:Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;
    invoke-static {v1}, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->access$100(Lcom/google/android/apps/unveil/protocol/RequestPipeline;)Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline$PushQueryListener;->queryFrame:Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;

    iget-object v2, v2, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;->metadata:Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;->onPushReceived(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;)V

    .line 209
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline$PushQueryListener;->this$0:Lcom/google/android/apps/unveil/protocol/RequestPipeline;

    #getter for: Lcom/google/android/apps/unveil/protocol/RequestPipeline;->bandwidthEstimator:Lcom/google/android/apps/unveil/env/BandwidthEstimator;
    invoke-static {v1}, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->access$300(Lcom/google/android/apps/unveil/protocol/RequestPipeline;)Lcom/google/android/apps/unveil/env/BandwidthEstimator;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/BandwidthEstimator;->requestIn(J)V

    .line 210
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline$PushQueryListener;->queryFrame:Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;->getMetadata()Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->onQuerySent()V

    .line 212
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline$PushQueryListener;->queryFrame:Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;->getFrameNum()I

    move-result v0

    .line 213
    .local v0, frameNum:I
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v1

    const-string v2, "Push response for frame %d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline$PushQueryListener;->this$0:Lcom/google/android/apps/unveil/protocol/RequestPipeline;

    #getter for: Lcom/google/android/apps/unveil/protocol/RequestPipeline;->tracingHelper:Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;
    invoke-static {v1}, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->access$500(Lcom/google/android/apps/unveil/protocol/RequestPipeline;)Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline$PushQueryListener;->this$0:Lcom/google/android/apps/unveil/protocol/RequestPipeline;

    #getter for: Lcom/google/android/apps/unveil/protocol/RequestPipeline;->activeFrames:Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;
    invoke-static {v2}, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->access$600(Lcom/google/android/apps/unveil/protocol/RequestPipeline;)Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;->getActionNumbers()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->onQueryRespnse(Ljava/util/List;I)V

    .line 217
    const/16 v1, 0x64

    const/16 v2, 0x5a

    invoke-static {v6, v1, v2, v5}, Lcom/google/android/apps/unveil/env/TonePlayer;->logTone(IIIZ)V

    .line 219
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline$PushQueryListener;->this$0:Lcom/google/android/apps/unveil/protocol/RequestPipeline;

    const/16 v2, 0x12c

    #calls: Lcom/google/android/apps/unveil/protocol/RequestPipeline;->maybeSendTraceData(I)V
    invoke-static {v1, v2}, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->access$700(Lcom/google/android/apps/unveil/protocol/RequestPipeline;I)V

    goto :goto_8
.end method

.method public onSending(I)V
    .registers 10
    .parameter "byteSize"

    .prologue
    .line 180
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline$PushQueryListener;->this$0:Lcom/google/android/apps/unveil/protocol/RequestPipeline;

    #getter for: Lcom/google/android/apps/unveil/protocol/RequestPipeline;->bandwidthEstimator:Lcom/google/android/apps/unveil/env/BandwidthEstimator;
    invoke-static {v2}, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->access$300(Lcom/google/android/apps/unveil/protocol/RequestPipeline;)Lcom/google/android/apps/unveil/env/BandwidthEstimator;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p1}, Lcom/google/android/apps/unveil/env/BandwidthEstimator;->requestOut(JI)V

    .line 182
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline$PushQueryListener;->this$0:Lcom/google/android/apps/unveil/protocol/RequestPipeline;

    #getter for: Lcom/google/android/apps/unveil/protocol/RequestPipeline;->bandwidthEstimator:Lcom/google/android/apps/unveil/env/BandwidthEstimator;
    invoke-static {v2}, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->access$300(Lcom/google/android/apps/unveil/protocol/RequestPipeline;)Lcom/google/android/apps/unveil/env/BandwidthEstimator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/env/BandwidthEstimator;->getThroughputBps()F

    move-result v1

    .line 183
    .local v1, throughputBps:F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_75

    .line 184
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline$PushQueryListener;->this$0:Lcom/google/android/apps/unveil/protocol/RequestPipeline;

    const v3, 0x3f99999a

    int-to-float v4, p1

    div-float/2addr v4, v1

    mul-float/2addr v3, v4

    const/high16 v4, 0x447a

    mul-float/2addr v3, v4

    float-to-long v3, v3

    #setter for: Lcom/google/android/apps/unveil/protocol/RequestPipeline;->lastRequestEstimatedUploadDurationMillis:J
    invoke-static {v2, v3, v4}, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->access$402(Lcom/google/android/apps/unveil/protocol/RequestPipeline;J)J

    .line 190
    :goto_2b
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline$PushQueryListener;->this$0:Lcom/google/android/apps/unveil/protocol/RequestPipeline;

    #getter for: Lcom/google/android/apps/unveil/protocol/RequestPipeline;->listeners:Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;
    invoke-static {v2}, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->access$100(Lcom/google/android/apps/unveil/protocol/RequestPipeline;)Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline$PushQueryListener;->queryFrame:Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;

    iget-object v3, v3, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;->metadata:Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;

    iget-object v4, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline$PushQueryListener;->queryFrame:Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;

    iget-object v4, v4, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;->cachedJpeg:[B

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/protocol/nonstop/DispatchingEventListener;->onPushSent(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;[B)V

    .line 192
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v2

    const-string v3, "Estimating that it will take %d ms to upload this %d byte request."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline$PushQueryListener;->this$0:Lcom/google/android/apps/unveil/protocol/RequestPipeline;

    #getter for: Lcom/google/android/apps/unveil/protocol/RequestPipeline;->lastRequestEstimatedUploadDurationMillis:J
    invoke-static {v6}, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->access$400(Lcom/google/android/apps/unveil/protocol/RequestPipeline;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline$PushQueryListener;->queryFrame:Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;->getMetadata()Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->onQueryStartSending()V

    .line 197
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline$PushQueryListener;->queryFrame:Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;->getFrameNum()I

    move-result v0

    .line 198
    .local v0, frameNum:I
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline$PushQueryListener;->this$0:Lcom/google/android/apps/unveil/protocol/RequestPipeline;

    #getter for: Lcom/google/android/apps/unveil/protocol/RequestPipeline;->tracingHelper:Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;
    invoke-static {v2}, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->access$500(Lcom/google/android/apps/unveil/protocol/RequestPipeline;)Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousTracer;->onSending(I)V

    .line 199
    return-void

    .line 187
    .end local v0           #frameNum:I
    :cond_75
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/RequestPipeline$PushQueryListener;->this$0:Lcom/google/android/apps/unveil/protocol/RequestPipeline;

    const-wide/16 v3, 0x3e8

    #setter for: Lcom/google/android/apps/unveil/protocol/RequestPipeline;->lastRequestEstimatedUploadDurationMillis:J
    invoke-static {v2, v3, v4}, Lcom/google/android/apps/unveil/protocol/RequestPipeline;->access$402(Lcom/google/android/apps/unveil/protocol/RequestPipeline;J)J

    goto :goto_2b
.end method
