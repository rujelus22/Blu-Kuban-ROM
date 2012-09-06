.class Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;

.field final synthetic val$outputFuture:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 452
    .local p0, this:Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;,"Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture.1;"
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;->val$outputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 458
    .local p0, this:Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;,"Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture.1;"
    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;

    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;->val$outputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v2}, Lcom/google/common/util/concurrent/Futures;->makeUninterruptible(Ljava/util/concurrent/Future;)Lcom/google/common/util/concurrent/UninterruptibleFuture;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/util/concurrent/UninterruptibleFuture;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->set(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_f} :catch_10

    .line 463
    :goto_f
    return-void

    .line 459
    :catch_10
    move-exception v0

    .line 461
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_f
.end method
