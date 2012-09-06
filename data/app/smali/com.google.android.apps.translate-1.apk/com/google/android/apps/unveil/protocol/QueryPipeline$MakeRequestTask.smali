.class Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;
.super Landroid/os/AsyncTask;
.source "QueryPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/protocol/QueryPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MakeRequestTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field volatile eventListener:Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;

.field private imageData:[B

.field private final intent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/google/android/apps/unveil/protocol/QueryPipeline;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/unveil/protocol/QueryPipeline;Landroid/content/Intent;Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;)V
    .registers 4
    .parameter
    .parameter "intent"
    .parameter "listener"

    .prologue
    .line 440
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;->this$0:Lcom/google/android/apps/unveil/protocol/QueryPipeline;

    .line 441
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 442
    iput-object p2, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;->intent:Landroid/content/Intent;

    .line 443
    iput-object p3, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;->eventListener:Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;

    .line 444
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 435
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 8
    .parameter "params"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 464
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "MakeRequestTask"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 466
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v1

    const-string v2, "MakeRequestTask started in background"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->time(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 467
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;->this$0:Lcom/google/android/apps/unveil/protocol/QueryPipeline;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->getPicture()Lcom/google/android/apps/unveil/env/Picture;

    move-result-object v0

    .line 468
    .local v0, picture:Lcom/google/android/apps/unveil/env/Picture;
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;->this$0:Lcom/google/android/apps/unveil/protocol/QueryPipeline;

    #getter for: Lcom/google/android/apps/unveil/protocol/QueryPipeline;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;
    invoke-static {v1}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->access$1000(Lcom/google/android/apps/unveil/protocol/QueryPipeline;)Lcom/google/android/apps/unveil/protocol/TraceTracker;

    move-result-object v1

    sget-object v2, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->IMAGE_REENCODE:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->endInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Type;)V

    .line 469
    if-nez v0, :cond_37

    .line 470
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v1

    const-string v2, "Picture is null, aborting query."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 471
    iput-object v5, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;->imageData:[B

    .line 477
    :goto_36
    return-object v5

    .line 474
    :cond_37
    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/Picture;->getJpegData()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;->imageData:[B

    .line 476
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v1

    const-string v2, "MakeRequestTask done in background"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->time(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_36
.end method

.method protected onCancelled()V
    .registers 4

    .prologue
    .line 457
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v1, "Cancelling request construction."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 459
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;->imageData:[B

    .line 460
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 435
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 9
    .parameter "result"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 482
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 483
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;->imageData:[B

    if-nez v1, :cond_19

    .line 484
    :cond_f
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;->eventListener:Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;

    if-eqz v1, :cond_18

    .line 485
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;->eventListener:Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;->onImageFailed()V

    .line 530
    :cond_18
    :goto_18
    return-void

    .line 491
    :cond_19
    :try_start_19
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;->this$0:Lcom/google/android/apps/unveil/protocol/QueryPipeline;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->getPendingQuery()Lcom/google/android/apps/unveil/protocol/QueryBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;->imageData:[B

    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;->this$0:Lcom/google/android/apps/unveil/protocol/QueryPipeline;

    invoke-virtual {v3}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->getPicture()Lcom/google/android/apps/unveil/env/Picture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/unveil/env/Picture;->getSize()Lcom/google/android/apps/unveil/env/Size;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->addImageData([BLcom/google/android/apps/unveil/env/Size;)Lcom/google/android/apps/unveil/protocol/QueryBuilder;

    .line 492
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;->eventListener:Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;

    if-eqz v1, :cond_43

    .line 493
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;->eventListener:Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;->this$0:Lcom/google/android/apps/unveil/protocol/QueryPipeline;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->getPicture()Lcom/google/android/apps/unveil/env/Picture;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;->this$0:Lcom/google/android/apps/unveil/protocol/QueryPipeline;

    invoke-virtual {v3}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->getPendingQuery()Lcom/google/android/apps/unveil/protocol/QueryBuilder;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;->onImageReady(Lcom/google/android/apps/unveil/env/Picture;Lcom/google/android/apps/unveil/protocol/QueryBuilder;)V

    .line 496
    :cond_43
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;->this$0:Lcom/google/android/apps/unveil/protocol/QueryPipeline;

    new-instance v2, Lcom/google/android/apps/unveil/protocol/QueryPipeline$SaveQueryImageTask;

    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;->this$0:Lcom/google/android/apps/unveil/protocol/QueryPipeline;

    iget-object v4, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;->intent:Landroid/content/Intent;

    invoke-direct {v2, v3, v4}, Lcom/google/android/apps/unveil/protocol/QueryPipeline$SaveQueryImageTask;-><init>(Lcom/google/android/apps/unveil/protocol/QueryPipeline;Landroid/content/Intent;)V

    #setter for: Lcom/google/android/apps/unveil/protocol/QueryPipeline;->currentSaveQueryImageTask:Lcom/google/android/apps/unveil/protocol/QueryPipeline$SaveQueryImageTask;
    invoke-static {v1, v2}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->access$1102(Lcom/google/android/apps/unveil/protocol/QueryPipeline;Lcom/google/android/apps/unveil/protocol/QueryPipeline$SaveQueryImageTask;)Lcom/google/android/apps/unveil/protocol/QueryPipeline$SaveQueryImageTask;

    .line 497
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;->this$0:Lcom/google/android/apps/unveil/protocol/QueryPipeline;

    #getter for: Lcom/google/android/apps/unveil/protocol/QueryPipeline;->readyToSendImageRequest:Z
    invoke-static {v1}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->access$400(Lcom/google/android/apps/unveil/protocol/QueryPipeline;)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 498
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;->this$0:Lcom/google/android/apps/unveil/protocol/QueryPipeline;

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;->eventListener:Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;

    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;->this$0:Lcom/google/android/apps/unveil/protocol/QueryPipeline;

    invoke-virtual {v3}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->hasSentBarcodeRequest()Z

    move-result v3

    #calls: Lcom/google/android/apps/unveil/protocol/QueryPipeline;->sendImageRequest(Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;Z)V
    invoke-static {v1, v2, v3}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->access$900(Lcom/google/android/apps/unveil/protocol/QueryPipeline;Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;Z)V
    :try_end_66
    .catch Lcom/google/android/apps/unveil/protocol/QueryPipeline$NoPendingQueryException; {:try_start_19 .. :try_end_66} :catch_9a

    .line 517
    :goto_66
    const-wide/16 v1, 0x64

    :try_start_68
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6b
    .catch Ljava/lang/InterruptedException; {:try_start_68 .. :try_end_6b} :catch_b1

    .line 522
    :goto_6b
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;->eventListener:Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;

    if-eqz v1, :cond_74

    .line 523
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;->eventListener:Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;->onHeavyProcessingEnd()V

    .line 526
    :cond_74
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;->this$0:Lcom/google/android/apps/unveil/protocol/QueryPipeline;

    #getter for: Lcom/google/android/apps/unveil/protocol/QueryPipeline;->currentSaveQueryImageTask:Lcom/google/android/apps/unveil/protocol/QueryPipeline$SaveQueryImageTask;
    invoke-static {v1}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->access$1100(Lcom/google/android/apps/unveil/protocol/QueryPipeline;)Lcom/google/android/apps/unveil/protocol/QueryPipeline$SaveQueryImageTask;

    move-result-object v1

    new-array v2, v6, [[B

    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;->imageData:[B

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/protocol/QueryPipeline$SaveQueryImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 529
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;->imageData:[B

    goto :goto_18

    .line 502
    :cond_87
    :try_start_87
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;->this$0:Lcom/google/android/apps/unveil/protocol/QueryPipeline;

    const/4 v2, 0x1

    #setter for: Lcom/google/android/apps/unveil/protocol/QueryPipeline;->queuedImageRequest:Z
    invoke-static {v1, v2}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->access$802(Lcom/google/android/apps/unveil/protocol/QueryPipeline;Z)Z

    .line 503
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v1

    const-string v2, "Queueing image request to allow local barcode request to complete."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_99
    .catch Lcom/google/android/apps/unveil/protocol/QueryPipeline$NoPendingQueryException; {:try_start_87 .. :try_end_99} :catch_9a

    goto :goto_66

    .line 505
    :catch_9a
    move-exception v0

    .line 506
    .local v0, e:Lcom/google/android/apps/unveil/protocol/QueryPipeline$NoPendingQueryException;
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v1

    const-string v2, "Pending query parameters disappeared unexpectedly."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 507
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;->eventListener:Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;

    if-eqz v1, :cond_18

    .line 508
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;->eventListener:Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;->onImageFailed()V

    goto/16 :goto_18

    .line 518
    .end local v0           #e:Lcom/google/android/apps/unveil/protocol/QueryPipeline$NoPendingQueryException;
    :catch_b1
    move-exception v1

    goto :goto_6b
.end method

.method protected onPreExecute()V
    .registers 4

    .prologue
    .line 448
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v1, "MakeRequestTask pre execute"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->time(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 449
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 451
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;->this$0:Lcom/google/android/apps/unveil/protocol/QueryPipeline;

    #getter for: Lcom/google/android/apps/unveil/protocol/QueryPipeline;->traceTracker:Lcom/google/android/apps/unveil/protocol/TraceTracker;
    invoke-static {v0}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->access$1000(Lcom/google/android/apps/unveil/protocol/QueryPipeline;)Lcom/google/android/apps/unveil/protocol/TraceTracker;

    move-result-object v0

    sget-object v1, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->IMAGE_REENCODE:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->beginInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Type;)I

    .line 452
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$MakeRequestTask;->this$0:Lcom/google/android/apps/unveil/protocol/QueryPipeline;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->asyncProcessPicture()V

    .line 453
    return-void
.end method
