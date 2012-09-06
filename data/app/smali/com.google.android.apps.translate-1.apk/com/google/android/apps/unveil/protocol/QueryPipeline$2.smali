.class Lcom/google/android/apps/unveil/protocol/QueryPipeline$2;
.super Ljava/lang/Object;
.source "QueryPipeline.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/protocol/QueryPipeline;->handleBarcodeResponse(Lcom/google/android/apps/unveil/protocol/QueryResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/protocol/QueryPipeline;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/protocol/QueryPipeline;)V
    .registers 2
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$2;->this$0:Lcom/google/android/apps/unveil/protocol/QueryPipeline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 345
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$2;->this$0:Lcom/google/android/apps/unveil/protocol/QueryPipeline;

    #getter for: Lcom/google/android/apps/unveil/protocol/QueryPipeline;->queuedImageRequest:Z
    invoke-static {v1}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->access$800(Lcom/google/android/apps/unveil/protocol/QueryPipeline;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 346
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$2;->this$0:Lcom/google/android/apps/unveil/protocol/QueryPipeline;

    #getter for: Lcom/google/android/apps/unveil/protocol/QueryPipeline;->currentMakeRequestTask:Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;
    invoke-static {v1}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->access$600(Lcom/google/android/apps/unveil/protocol/QueryPipeline;)Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;

    move-result-object v1

    if-nez v1, :cond_22

    .line 347
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v1

    const-string v2, "queuedImageRequest was true, but currentMakeRequestTask was null"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$2;->this$0:Lcom/google/android/apps/unveil/protocol/QueryPipeline;

    #setter for: Lcom/google/android/apps/unveil/protocol/QueryPipeline;->queuedImageRequest:Z
    invoke-static {v1, v4}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->access$802(Lcom/google/android/apps/unveil/protocol/QueryPipeline;Z)Z

    .line 358
    :cond_21
    :goto_21
    return-void

    .line 351
    :cond_22
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v1

    const-string v2, "Found a queued image request, sending."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    :try_start_2d
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$2;->this$0:Lcom/google/android/apps/unveil/protocol/QueryPipeline;

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$2;->this$0:Lcom/google/android/apps/unveil/protocol/QueryPipeline;

    #getter for: Lcom/google/android/apps/unveil/protocol/QueryPipeline;->currentMakeRequestTask:Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;
    invoke-static {v2}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->access$600(Lcom/google/android/apps/unveil/protocol/QueryPipeline;)Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;->eventListener:Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;

    const/4 v3, 0x1

    #calls: Lcom/google/android/apps/unveil/protocol/QueryPipeline;->sendImageRequest(Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;Z)V
    invoke-static {v1, v2, v3}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->access$900(Lcom/google/android/apps/unveil/protocol/QueryPipeline;Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;Z)V
    :try_end_3b
    .catch Lcom/google/android/apps/unveil/protocol/QueryPipeline$NoPendingQueryException; {:try_start_2d .. :try_end_3b} :catch_3c

    goto :goto_21

    .line 354
    :catch_3c
    move-exception v0

    .line 355
    .local v0, e:Lcom/google/android/apps/unveil/protocol/QueryPipeline$NoPendingQueryException;
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v1

    const-string v2, "Failed to send a posterity request"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_21
.end method
