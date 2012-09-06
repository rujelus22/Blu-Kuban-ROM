.class Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;
.super Ljava/lang/Object;
.source "LibraryReplicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->onResponse(Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

.field final synthetic val$libraryReplicationResponse:Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iput-object p2, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;->val$libraryReplicationResponse:Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 415
    iget-object v7, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v7, v7, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    #getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    invoke-static {v7}, Lcom/google/android/finsky/library/LibraryReplicator;->access$000(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    move-result-object v7

    if-nez v7, :cond_14

    .line 416
    const-string v7, "Expected pending replication request."

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 460
    :goto_13
    return-void

    .line 419
    :cond_14
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 420
    .local v2, hasMoreLibraries:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v7, v7, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    #getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mSQLiteLibrary:Lcom/google/android/finsky/library/SQLiteLibrary;
    invoke-static {v7}, Lcom/google/android/finsky/library/LibraryReplicator;->access$600(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/SQLiteLibrary;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/finsky/library/SQLiteLibrary;->reopen()V

    .line 421
    iget-object v7, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;->val$libraryReplicationResponse:Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;

    invoke-virtual {v7}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;->getUpdateList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2d
    :goto_2d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    .line 423
    .local v6, libraryUpdate:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->hasLibraryId()Z

    move-result v7

    if-eqz v7, :cond_7e

    .line 424
    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->getLibraryId()Ljava/lang/String;

    move-result-object v5

    .line 430
    .local v5, libraryId:Ljava/lang/String;
    :goto_43
    iget-object v7, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    #getter for: Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->mOriginalTokens:Ljava/util/Map;
    invoke-static {v7}, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->access$900(Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    iget-object v8, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v8, v8, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    #getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;
    invoke-static {v8}, Lcom/google/android/finsky/library/LibraryReplicator;->access$800(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/google/android/finsky/library/AccountLibrary;->getServerToken(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-nez v7, :cond_87

    .line 432
    iget-object v7, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v7, v7, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    #getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mEnableDebugging:Z
    invoke-static {v7}, Lcom/google/android/finsky/library/LibraryReplicator;->access$200(Lcom/google/android/finsky/library/LibraryReplicator;)Z

    move-result v7

    if-eqz v7, :cond_73

    .line 433
    iget-object v7, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v7, v7, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    const/4 v8, 0x4

    #calls: Lcom/google/android/finsky/library/LibraryReplicator;->recordDebugEvent(ILcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;Lcom/android/volley/VolleyError;Ljava/lang/String;)V
    invoke-static {v7, v8, v10, v10, v10}, Lcom/google/android/finsky/library/LibraryReplicator;->access$300(Lcom/google/android/finsky/library/LibraryReplicator;ILcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;Lcom/android/volley/VolleyError;Ljava/lang/String;)V

    .line 436
    :cond_73
    const-string v7, "Tokens changed, not applying library update for libraryId=%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v11

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2d

    .line 426
    .end local v5           #libraryId:Ljava/lang/String;
    :cond_7e
    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->getCorpus()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/finsky/library/AccountLibrary;->getLibraryIdFromBackend(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #libraryId:Ljava/lang/String;
    goto :goto_43

    .line 440
    :cond_87
    iget-object v7, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v7, v7, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    iget-object v8, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v8, v8, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    #getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    invoke-static {v8}, Lcom/google/android/finsky/library/LibraryReplicator;->access$000(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    move-result-object v8

    iget-object v8, v8, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;->debugTag:Ljava/lang/String;

    #calls: Lcom/google/android/finsky/library/LibraryReplicator;->internalApplyLibraryUpdate(Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;Ljava/lang/String;)Z
    invoke-static {v7, v6, v8}, Lcom/google/android/finsky/library/LibraryReplicator;->access$700(Lcom/google/android/finsky/library/LibraryReplicator;Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 441
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 444
    .end local v5           #libraryId:Ljava/lang/String;
    .end local v6           #libraryUpdate:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    :cond_9f
    iget-object v7, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v7, v7, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    #getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mSQLiteLibrary:Lcom/google/android/finsky/library/SQLiteLibrary;
    invoke-static {v7}, Lcom/google/android/finsky/library/LibraryReplicator;->access$600(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/SQLiteLibrary;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/finsky/library/SQLiteLibrary;->close()V

    .line 445
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_10d

    .line 446
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    new-array v0, v7, [Ljava/lang/String;

    .line 447
    .local v0, continuationLibraries:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_b7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_c8

    .line 448
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v0, v3

    .line 447
    add-int/lit8 v3, v3, 0x1

    goto :goto_b7

    .line 451
    :cond_c8
    new-instance v1, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    iget-object v7, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v7, v7, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    #getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    invoke-static {v7}, Lcom/google/android/finsky/library/LibraryReplicator;->access$000(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;->finishRunnable:Ljava/lang/Runnable;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v9, v9, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    #getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    invoke-static {v9}, Lcom/google/android/finsky/library/LibraryReplicator;->access$000(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    move-result-object v9

    iget-object v9, v9, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;->debugTag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "[c]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v0, v11, v7, v8}, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;-><init>([Ljava/lang/String;ZLjava/lang/Runnable;Ljava/lang/String;)V

    .line 454
    .local v1, continuationRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    iget-object v7, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v7, v7, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    #calls: Lcom/google/android/finsky/library/LibraryReplicator;->scheduleRequestAtFront(Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;)V
    invoke-static {v7, v1}, Lcom/google/android/finsky/library/LibraryReplicator;->access$1000(Lcom/google/android/finsky/library/LibraryReplicator;Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;)V

    .line 458
    .end local v0           #continuationLibraries:[Ljava/lang/String;
    .end local v1           #continuationRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    .end local v3           #i:I
    :cond_fb
    :goto_fb
    iget-object v7, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v7, v7, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    #setter for: Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    invoke-static {v7, v10}, Lcom/google/android/finsky/library/LibraryReplicator;->access$002(Lcom/google/android/finsky/library/LibraryReplicator;Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    .line 459
    iget-object v7, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v7, v7, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    const-wide/16 v8, 0xc8

    #calls: Lcom/google/android/finsky/library/LibraryReplicator;->handleNextRequest(J)V
    invoke-static {v7, v8, v9}, Lcom/google/android/finsky/library/LibraryReplicator;->access$1200(Lcom/google/android/finsky/library/LibraryReplicator;J)V

    goto/16 :goto_13

    .line 455
    :cond_10d
    iget-object v7, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v7, v7, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    #getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    invoke-static {v7}, Lcom/google/android/finsky/library/LibraryReplicator;->access$000(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;->finishRunnable:Ljava/lang/Runnable;

    if-eqz v7, :cond_fb

    .line 456
    iget-object v7, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v7, v7, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    #getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mNotificationHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/google/android/finsky/library/LibraryReplicator;->access$1100(Lcom/google/android/finsky/library/LibraryReplicator;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener$1;->this$1:Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;

    iget-object v8, v8, Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;->this$0:Lcom/google/android/finsky/library/LibraryReplicator;

    #getter for: Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    invoke-static {v8}, Lcom/google/android/finsky/library/LibraryReplicator;->access$000(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    move-result-object v8

    iget-object v8, v8, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;->finishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_fb
.end method
