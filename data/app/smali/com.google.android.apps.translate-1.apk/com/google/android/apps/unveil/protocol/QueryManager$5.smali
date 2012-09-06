.class Lcom/google/android/apps/unveil/protocol/QueryManager$5;
.super Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;
.source "QueryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/protocol/QueryManager;->replayQueryRecursive(Lcom/google/android/apps/unveil/protocol/QueryBuilder;Lcom/google/android/apps/unveil/protocol/QueryListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler",
        "<",
        "Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/protocol/QueryManager;

.field final synthetic val$listener:Lcom/google/android/apps/unveil/protocol/QueryListener;

.field final synthetic val$query:Lcom/google/android/apps/unveil/protocol/QueryBuilder;

.field final synthetic val$retryCount:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/protocol/QueryManager;Lcom/google/android/apps/unveil/protocol/QueryBuilder;Lcom/google/android/apps/unveil/protocol/QueryListener;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$5;->this$0:Lcom/google/android/apps/unveil/protocol/QueryManager;

    iput-object p2, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$5;->val$query:Lcom/google/android/apps/unveil/protocol/QueryBuilder;

    iput-object p3, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$5;->val$listener:Lcom/google/android/apps/unveil/protocol/QueryListener;

    iput p4, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$5;->val$retryCount:I

    invoke-direct {p0}, Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkError()V
    .registers 5

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$5;->this$0:Lcom/google/android/apps/unveil/protocol/QueryManager;

    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$5;->val$query:Lcom/google/android/apps/unveil/protocol/QueryBuilder;

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$5;->val$listener:Lcom/google/android/apps/unveil/protocol/QueryListener;

    iget v3, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$5;->val$retryCount:I

    #calls: Lcom/google/android/apps/unveil/protocol/QueryManager;->handleReplayNetworkError(Lcom/google/android/apps/unveil/protocol/QueryBuilder;Lcom/google/android/apps/unveil/protocol/QueryListener;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/unveil/protocol/QueryManager;->access$400(Lcom/google/android/apps/unveil/protocol/QueryManager;Lcom/google/android/apps/unveil/protocol/QueryBuilder;Lcom/google/android/apps/unveil/protocol/QueryListener;I)V

    .line 276
    return-void
.end method

.method public onResponse(Lcom/google/android/apps/unveil/network/UnveilResponse;)V
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/unveil/network/UnveilResponse",
            "<",
            "Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p1, response:Lcom/google/android/apps/unveil/network/UnveilResponse;,"Lcom/google/android/apps/unveil/network/UnveilResponse<Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;>;"
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/network/UnveilResponse;->getProtocolBuffer()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    .line 281
    .local v0, replayResponse:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;
    invoke-virtual {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->getGogglesResponse()Lcom/google/goggles/GogglesProtos$GogglesResponse;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/unveil/protocol/IdExtractor;->extractMomentId(Lcom/google/goggles/GogglesProtos$GogglesResponse;)Ljava/lang/String;

    move-result-object v3

    .line 284
    .local v3, momentId:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$5;->this$0:Lcom/google/android/apps/unveil/protocol/QueryManager;

    invoke-virtual {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->getGogglesResponse()Lcom/google/goggles/GogglesProtos$GogglesResponse;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/protocol/QueryManager;->notifyAllResponsesListeners(Lcom/google/goggles/GogglesProtos$GogglesResponse;)V

    .line 285
    iget-object v7, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$5;->val$listener:Lcom/google/android/apps/unveil/protocol/QueryListener;

    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$5;->val$query:Lcom/google/android/apps/unveil/protocol/QueryBuilder;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->getQueryType()Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$5;->val$query:Lcom/google/android/apps/unveil/protocol/QueryBuilder;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->getSource()Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$5;->this$0:Lcom/google/android/apps/unveil/protocol/QueryManager;

    #getter for: Lcom/google/android/apps/unveil/protocol/QueryManager;->viewportProvider:Lcom/google/android/apps/unveil/env/Provider;
    invoke-static {v4}, Lcom/google/android/apps/unveil/protocol/QueryManager;->access$500(Lcom/google/android/apps/unveil/protocol/QueryManager;)Lcom/google/android/apps/unveil/env/Provider;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/apps/unveil/env/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/unveil/env/Viewport;

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/network/UnveilResponse;->getResponseReceivedTimestamp()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory;->interpretReplayResponse(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;Ljava/lang/String;Lcom/google/android/apps/unveil/env/Viewport;J)Lcom/google/android/apps/unveil/protocol/QueryResponse;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/google/android/apps/unveil/protocol/QueryListener;->onQueryResponse(Lcom/google/android/apps/unveil/protocol/QueryResponse;)V

    .line 288
    return-void
.end method

.method public onServerErrorCode(I)V
    .registers 6
    .parameter "statusCode"

    .prologue
    .line 292
    const/16 v0, 0x193

    if-ne p1, v0, :cond_a

    .line 293
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$5;->val$listener:Lcom/google/android/apps/unveil/protocol/QueryListener;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/protocol/QueryListener;->onAuthenticationError()V

    .line 302
    :goto_9
    return-void

    .line 295
    :cond_a
    iget v0, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$5;->val$retryCount:I

    if-lez v0, :cond_1c

    .line 296
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$5;->this$0:Lcom/google/android/apps/unveil/protocol/QueryManager;

    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$5;->val$query:Lcom/google/android/apps/unveil/protocol/QueryBuilder;

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$5;->val$listener:Lcom/google/android/apps/unveil/protocol/QueryListener;

    iget v3, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$5;->val$retryCount:I

    add-int/lit8 v3, v3, -0x1

    #calls: Lcom/google/android/apps/unveil/protocol/QueryManager;->replayQueryRecursive(Lcom/google/android/apps/unveil/protocol/QueryBuilder;Lcom/google/android/apps/unveil/protocol/QueryListener;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/unveil/protocol/QueryManager;->access$600(Lcom/google/android/apps/unveil/protocol/QueryManager;Lcom/google/android/apps/unveil/protocol/QueryBuilder;Lcom/google/android/apps/unveil/protocol/QueryListener;I)V

    goto :goto_9

    .line 299
    :cond_1c
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryManager$5;->val$listener:Lcom/google/android/apps/unveil/protocol/QueryListener;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/protocol/QueryListener;->onNetworkError(I)V

    goto :goto_9
.end method
