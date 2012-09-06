.class Lcom/google/android/apps/unveil/protocol/QueryManager$4;
.super Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;
.source "QueryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/protocol/QueryManager;->sendQueryRecursive(Lcom/google/android/apps/unveil/protocol/QueryBuilder;Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;Lcom/google/android/apps/unveil/protocol/QueryListener;ZI)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler",
        "<",
        "Lcom/google/goggles/GogglesProtos$GogglesResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/protocol/QueryManager;

.field final synthetic val$currentActionNumber:I

.field final synthetic val$gogglesRequest:Lcom/google/protobuf/GeneratedMessageLite;

.field final synthetic val$ignoreResults:Z

.field final synthetic val$listener:Lcom/google/android/apps/unveil/protocol/QueryListener;

.field final synthetic val$query:Lcom/google/android/apps/unveil/protocol/QueryBuilder;

.field final synthetic val$queryRequestBuilder:Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

.field final synthetic val$requestSentTimestamp:J

.field final synthetic val$retryCount:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/protocol/QueryManager;ILcom/google/android/apps/unveil/protocol/QueryListener;Lcom/google/android/apps/unveil/protocol/QueryBuilder;Lcom/google/protobuf/GeneratedMessageLite;JLcom/google/goggles/GogglesProtos$GogglesRequest$Builder;IZ)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$4;->this$0:Lcom/google/android/apps/unveil/protocol/QueryManager;

    iput p2, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$4;->val$currentActionNumber:I

    iput-object p3, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$4;->val$listener:Lcom/google/android/apps/unveil/protocol/QueryListener;

    iput-object p4, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$4;->val$query:Lcom/google/android/apps/unveil/protocol/QueryBuilder;

    iput-object p5, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$4;->val$gogglesRequest:Lcom/google/protobuf/GeneratedMessageLite;

    iput-wide p6, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$4;->val$requestSentTimestamp:J

    iput-object p8, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$4;->val$queryRequestBuilder:Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    iput p9, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$4;->val$retryCount:I

    iput-boolean p10, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$4;->val$ignoreResults:Z

    invoke-direct {p0}, Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeavyProcessing()V
    .registers 2

    .prologue
    .line 214
    invoke-super {p0}, Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;->onHeavyProcessing()V

    .line 215
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$4;->val$listener:Lcom/google/android/apps/unveil/protocol/QueryListener;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/protocol/QueryListener;->onHeavyProcessingStart()V

    .line 216
    return-void
.end method

.method public onNetworkError()V
    .registers 7

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$4;->this$0:Lcom/google/android/apps/unveil/protocol/QueryManager;

    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$4;->val$query:Lcom/google/android/apps/unveil/protocol/QueryBuilder;

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$4;->val$queryRequestBuilder:Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$4;->val$listener:Lcom/google/android/apps/unveil/protocol/QueryListener;

    iget v4, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$4;->val$retryCount:I

    iget-boolean v5, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$4;->val$ignoreResults:Z

    #calls: Lcom/google/android/apps/unveil/protocol/QueryManager;->handleNetworkError(Lcom/google/android/apps/unveil/protocol/QueryBuilder;Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;Lcom/google/android/apps/unveil/protocol/QueryListener;IZ)V
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/unveil/protocol/QueryManager;->access$200(Lcom/google/android/apps/unveil/protocol/QueryManager;Lcom/google/android/apps/unveil/protocol/QueryBuilder;Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;Lcom/google/android/apps/unveil/protocol/QueryListener;IZ)V

    .line 194
    return-void
.end method

.method public onResponse(Lcom/google/android/apps/unveil/network/UnveilResponse;)V
    .registers 17
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/unveil/network/UnveilResponse",
            "<",
            "Lcom/google/goggles/GogglesProtos$GogglesResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, response:Lcom/google/android/apps/unveil/network/UnveilResponse;,"Lcom/google/android/apps/unveil/network/UnveilResponse<Lcom/google/goggles/GogglesProtos$GogglesResponse;>;"
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/QueryManager;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v1

    const-string v2, "ResponseHandler.onResponse"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$4;->this$0:Lcom/google/android/apps/unveil/protocol/QueryManager;

    #getter for: Lcom/google/android/apps/unveil/protocol/QueryManager;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;
    invoke-static {v1}, Lcom/google/android/apps/unveil/protocol/QueryManager;->access$100(Lcom/google/android/apps/unveil/protocol/QueryManager;)Lcom/google/android/apps/unveil/protocol/TraceTracker;

    move-result-object v1

    sget-object v2, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->REQUEST_TO_RESPONSE:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    iget v4, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$4;->val$currentActionNumber:I

    invoke-virtual {v1, v2, v4}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->endInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Type;I)V

    .line 171
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/QueryManager;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v1

    const-string v2, "Notifying listener of heavyProcessingEnd."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$4;->val$listener:Lcom/google/android/apps/unveil/protocol/QueryListener;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/protocol/QueryListener;->onHeavyProcessingEnd()V

    .line 174
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/unveil/network/UnveilResponse;->getProtocolBuffer()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$GogglesResponse;

    .line 176
    .local v0, gogglesResponse:Lcom/google/goggles/GogglesProtos$GogglesResponse;
    invoke-static {v0}, Lcom/google/android/apps/unveil/protocol/IdExtractor;->extractMomentId(Lcom/google/goggles/GogglesProtos$GogglesResponse;)Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, momentId:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/unveil/protocol/IdExtractor;->extractTrackingId(Lcom/google/goggles/GogglesProtos$GogglesResponse;)Ljava/lang/String;

    move-result-object v7

    .line 178
    .local v7, trackingId:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$4;->this$0:Lcom/google/android/apps/unveil/protocol/QueryManager;

    #getter for: Lcom/google/android/apps/unveil/protocol/QueryManager;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;
    invoke-static {v1}, Lcom/google/android/apps/unveil/protocol/QueryManager;->access$100(Lcom/google/android/apps/unveil/protocol/QueryManager;)Lcom/google/android/apps/unveil/protocol/TraceTracker;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$4;->val$currentActionNumber:I

    invoke-virtual {v1, v7, v2}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->setTrackingId(Ljava/lang/String;I)V

    .line 179
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$4;->this$0:Lcom/google/android/apps/unveil/protocol/QueryManager;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/unveil/protocol/QueryManager;->notifyAllResponsesListeners(Lcom/google/goggles/GogglesProtos$GogglesResponse;)V

    .line 180
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/QueryManager;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v1

    const-string v2, "Response size: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/unveil/network/UnveilResponse;->getResponseSize()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$4;->val$query:Lcom/google/android/apps/unveil/protocol/QueryBuilder;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->getQueryType()Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$4;->val$query:Lcom/google/android/apps/unveil/protocol/QueryBuilder;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->getSource()Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/unveil/network/UnveilResponse;->getResponseReceivedTimestamp()J

    move-result-wide v4

    new-instance v6, Lcom/google/android/apps/unveil/protocol/SingleShotQueryResponse$RequestMetrics;

    iget-object v9, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$4;->val$query:Lcom/google/android/apps/unveil/protocol/QueryBuilder;

    iget-object v9, v9, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->imageSize:Lcom/google/android/apps/unveil/env/Size;

    iget-object v10, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$4;->val$gogglesRequest:Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v10}, Lcom/google/protobuf/GeneratedMessageLite;->getSerializedSize()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/unveil/network/UnveilResponse;->getResponseReceivedTimestamp()J

    move-result-wide v11

    iget-wide v13, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$4;->val$requestSentTimestamp:J

    sub-long/2addr v11, v13

    invoke-direct {v6, v9, v10, v11, v12}, Lcom/google/android/apps/unveil/protocol/SingleShotQueryResponse$RequestMetrics;-><init>(Lcom/google/android/apps/unveil/env/Size;IJ)V

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory;->interpretResponse(Lcom/google/goggles/GogglesProtos$GogglesResponse;Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;Ljava/lang/String;JLcom/google/android/apps/unveil/protocol/SingleShotQueryResponse$RequestMetrics;Ljava/lang/String;)Lcom/google/android/apps/unveil/protocol/SingleShotQueryResponse;

    move-result-object v8

    .line 187
    .local v8, queryResponse:Lcom/google/android/apps/unveil/protocol/SingleShotQueryResponse;
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/QueryManager;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v1

    const-string v2, "Notifying listener of QueryResponse: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    invoke-virtual {v1, v2, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$4;->val$listener:Lcom/google/android/apps/unveil/protocol/QueryListener;

    invoke-virtual {v1, v8}, Lcom/google/android/apps/unveil/protocol/QueryListener;->onQueryResponse(Lcom/google/android/apps/unveil/protocol/QueryResponse;)V

    .line 189
    return-void
.end method

.method public onServerErrorCode(I)V
    .registers 8
    .parameter "statusCode"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 198
    const/16 v0, 0x193

    if-ne p1, v0, :cond_c

    .line 199
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$4;->val$listener:Lcom/google/android/apps/unveil/protocol/QueryListener;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/protocol/QueryListener;->onAuthenticationError()V

    .line 210
    :goto_b
    return-void

    .line 201
    :cond_c
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/QueryManager;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v1, "Query send failed due to server error %d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    iget v0, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$4;->val$retryCount:I

    if-lez v0, :cond_46

    .line 203
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/QueryManager;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v1, "Retrying query. Retries remaining: %d"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$4;->val$retryCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$4;->this$0:Lcom/google/android/apps/unveil/protocol/QueryManager;

    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$4;->val$query:Lcom/google/android/apps/unveil/protocol/QueryBuilder;

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$4;->val$queryRequestBuilder:Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;

    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$4;->val$listener:Lcom/google/android/apps/unveil/protocol/QueryListener;

    iget-boolean v4, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$4;->val$ignoreResults:Z

    iget v5, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$4;->val$retryCount:I

    add-int/lit8 v5, v5, -0x1

    #calls: Lcom/google/android/apps/unveil/protocol/QueryManager;->sendQueryRecursive(Lcom/google/android/apps/unveil/protocol/QueryBuilder;Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;Lcom/google/android/apps/unveil/protocol/QueryListener;ZI)I
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/unveil/protocol/QueryManager;->access$300(Lcom/google/android/apps/unveil/protocol/QueryManager;Lcom/google/android/apps/unveil/protocol/QueryBuilder;Lcom/google/goggles/GogglesProtos$GogglesRequest$Builder;Lcom/google/android/apps/unveil/protocol/QueryListener;ZI)I

    goto :goto_b

    .line 206
    :cond_46
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/QueryManager;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v1, "No retries left, this is now a network error."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$4;->val$listener:Lcom/google/android/apps/unveil/protocol/QueryListener;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/protocol/QueryListener;->onNetworkError(I)V

    goto :goto_b
.end method
