.class Lcom/google/android/apps/unveil/protocol/QueryPipeline$1;
.super Lcom/google/android/apps/unveil/protocol/QueryListener;
.source "QueryPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/protocol/QueryPipeline;->sendLocalBarcodeQuery(Lcom/google/android/apps/unveil/protocol/QueryBuilder;Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/protocol/QueryPipeline;

.field final synthetic val$eventListener:Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/protocol/QueryPipeline;Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$1;->this$0:Lcom/google/android/apps/unveil/protocol/QueryPipeline;

    iput-object p2, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$1;->val$eventListener:Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;

    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/QueryListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError()V
    .registers 1

    .prologue
    .line 298
    return-void
.end method

.method public onHeavyProcessingEnd()V
    .registers 1

    .prologue
    .line 302
    return-void
.end method

.method public onHeavyProcessingStart()V
    .registers 1

    .prologue
    .line 300
    return-void
.end method

.method public onNetworkError(I)V
    .registers 6
    .parameter "statusCode"

    .prologue
    const/4 v3, 0x0

    .line 305
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v1, "Network error during local barcode request."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$1;->this$0:Lcom/google/android/apps/unveil/protocol/QueryPipeline;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/apps/unveil/protocol/QueryPipeline;->readyToSendImageRequest:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->access$402(Lcom/google/android/apps/unveil/protocol/QueryPipeline;Z)Z

    .line 307
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$1;->this$0:Lcom/google/android/apps/unveil/protocol/QueryPipeline;

    #setter for: Lcom/google/android/apps/unveil/protocol/QueryPipeline;->sentBarcodeRequest:Z
    invoke-static {v0, v3}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->access$502(Lcom/google/android/apps/unveil/protocol/QueryPipeline;Z)Z

    .line 310
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$1;->this$0:Lcom/google/android/apps/unveil/protocol/QueryPipeline;

    #getter for: Lcom/google/android/apps/unveil/protocol/QueryPipeline;->currentMakeRequestTask:Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;
    invoke-static {v0}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->access$600(Lcom/google/android/apps/unveil/protocol/QueryPipeline;)Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 311
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$1;->this$0:Lcom/google/android/apps/unveil/protocol/QueryPipeline;

    #getter for: Lcom/google/android/apps/unveil/protocol/QueryPipeline;->currentMakeRequestTask:Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;
    invoke-static {v0}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->access$600(Lcom/google/android/apps/unveil/protocol/QueryPipeline;)Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;->eventListener:Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;->onNetworkError(I)V

    .line 321
    :goto_2a
    return-void

    .line 319
    :cond_2b
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v1, "We could not notify a listener of this failure."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2a
.end method

.method public onQueryResponse(Lcom/google/android/apps/unveil/protocol/QueryResponse;)V
    .registers 5
    .parameter "queryResponse"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$1;->this$0:Lcom/google/android/apps/unveil/protocol/QueryPipeline;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/apps/unveil/protocol/QueryPipeline;->readyToSendImageRequest:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->access$402(Lcom/google/android/apps/unveil/protocol/QueryPipeline;Z)Z

    .line 325
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v1, "Barcode Response received by QueryPipeline."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->time(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$1;->val$eventListener:Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;->onQueryResponse(Lcom/google/android/apps/unveil/protocol/QueryResponse;)V

    .line 327
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$1;->this$0:Lcom/google/android/apps/unveil/protocol/QueryPipeline;

    #calls: Lcom/google/android/apps/unveil/protocol/QueryPipeline;->handleBarcodeResponse(Lcom/google/android/apps/unveil/protocol/QueryResponse;)V
    invoke-static {v0, p1}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->access$700(Lcom/google/android/apps/unveil/protocol/QueryPipeline;Lcom/google/android/apps/unveil/protocol/QueryResponse;)V

    .line 328
    return-void
.end method
