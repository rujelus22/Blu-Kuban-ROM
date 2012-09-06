.class Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$2;
.super Ljava/lang/Object;
.source "LibraryReplicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;)V
    .registers 2
    .parameter

    .prologue
    .line 470
    iput-object p1, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$2;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 473
    iget-object v3, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$2;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v3, v3, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    #getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    invoke-static {v3}, Lcom/google/android/finsky/library/LibraryReplicator;->access$000(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    move-result-object v3

    if-nez v3, :cond_13

    .line 474
    const-string v3, "Expected pending replication request."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    :goto_12
    return-void

    .line 477
    :cond_13
    const-wide/16 v0, 0xc8

    .line 478
    .local v0, nextRequestTimeout:J
    iget-object v3, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$2;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v3, v3, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    #getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    invoke-static {v3}, Lcom/google/android/finsky/library/LibraryReplicator;->access$000(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    move-result-object v3

    iget-boolean v3, v3, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;->isRetry:Z

    if-nez v3, :cond_7c

    .line 480
    sget-boolean v3, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v3, :cond_2c

    .line 481
    const-string v3, "Retrying replication request."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 483
    :cond_2c
    new-instance v2, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    iget-object v3, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$2;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v3, v3, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    #getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    invoke-static {v3}, Lcom/google/android/finsky/library/LibraryReplicator;->access$000(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;->libraryIds:[Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$2;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v5, v5, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    #getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    invoke-static {v5}, Lcom/google/android/finsky/library/LibraryReplicator;->access$000(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;->finishRunnable:Ljava/lang/Runnable;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$2;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v7, v7, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    #getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    invoke-static {v7}, Lcom/google/android/finsky/library/LibraryReplicator;->access$000(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;->debugTag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "[r]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;-><init>([Ljava/lang/String;ZLjava/lang/Runnable;Ljava/lang/String;)V

    .line 486
    .local v2, retryRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    iget-object v3, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$2;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v3, v3, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    #calls: Lcom/google/android/finsky/library/LibraryReplicator;->scheduleRequestAtFront(Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;)V
    invoke-static {v3, v2}, Lcom/google/android/finsky/library/LibraryReplicator;->access$1000(Lcom/google/android/finsky/library/LibraryReplicator;Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;)V

    .line 487
    const-wide/16 v0, 0x7d0

    .line 492
    .end local v2           #retryRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    :cond_6c
    :goto_6c
    iget-object v3, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$2;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v3, v3, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    const/4 v4, 0x0

    #setter for: Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    invoke-static {v3, v4}, Lcom/google/android/finsky/library/LibraryReplicator;->access$002(Lcom/google/android/finsky/library/LibraryReplicator;Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    .line 493
    iget-object v3, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$2;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v3, v3, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    #calls: Lcom/google/android/finsky/library/LibraryReplicator;->handleNextRequest(J)V
    invoke-static {v3, v0, v1}, Lcom/google/android/finsky/library/LibraryReplicator;->access$1200(Lcom/google/android/finsky/library/LibraryReplicator;J)V

    goto :goto_12

    .line 488
    :cond_7c
    iget-object v3, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$2;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v3, v3, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    #getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    invoke-static {v3}, Lcom/google/android/finsky/library/LibraryReplicator;->access$000(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;->finishRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_6c

    .line 490
    iget-object v3, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$2;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v3, v3, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    #getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mNotificationHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/google/android/finsky/library/LibraryReplicator;->access$1100(Lcom/google/android/finsky/library/LibraryReplicator;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$2;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v4, v4, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    #getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    invoke-static {v4}, Lcom/google/android/finsky/library/LibraryReplicator;->access$000(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;->finishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6c
.end method
