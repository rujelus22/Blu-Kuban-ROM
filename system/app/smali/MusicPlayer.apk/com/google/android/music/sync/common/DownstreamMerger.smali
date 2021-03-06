.class public abstract Lcom/google/android/music/sync/common/DownstreamMerger;
.super Ljava/lang/Object;
.source "DownstreamMerger.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected mMaxBlockSize:I

.field protected final mMergeQueue:Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueue;

.field protected final mTag:Ljava/lang/String;

.field private final useVerboseLogging:Z


# direct methods
.method public constructor <init>(Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueue;ILjava/lang/String;)V
    .registers 5
    .parameter "mergeQueue"
    .parameter "maxBlockSize"
    .parameter "logTag"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/android/music/sync/common/DownstreamMerger;->mMergeQueue:Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueue;

    .line 30
    iput p2, p0, Lcom/google/android/music/sync/common/DownstreamMerger;->mMaxBlockSize:I

    .line 31
    iput-object p3, p0, Lcom/google/android/music/sync/common/DownstreamMerger;->mTag:Ljava/lang/String;

    .line 32
    invoke-static {p3}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/sync/common/DownstreamMerger;->useVerboseLogging:Z

    .line 33
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/google/android/music/sync/common/DownstreamMerger;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    .line 63
    const/4 v9, 0x0

    .line 66
    .local v9, shouldBail:Z
    :goto_1
    :try_start_1
    iget-object v10, p0, Lcom/google/android/music/sync/common/DownstreamMerger;->mMergeQueue:Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueue;

    iget v11, p0, Lcom/google/android/music/sync/common/DownstreamMerger;->mMaxBlockSize:I

    invoke-virtual {v10, v11}, Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueue;->take(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 67
    .local v1, block:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueueEntry;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 68
    .local v0, actualBlockSize:I
    iget-boolean v10, p0, Lcom/google/android/music/sync/common/DownstreamMerger;->useVerboseLogging:Z

    if-eqz v10, :cond_2f

    .line 69
    iget-object v10, p0, Lcom/google/android/music/sync/common/DownstreamMerger;->mTag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Pulled block of size "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " from the merge queue."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_2f
    if-nez v0, :cond_50

    .line 73
    iget-boolean v10, p0, Lcom/google/android/music/sync/common/DownstreamMerger;->useVerboseLogging:Z

    if-eqz v10, :cond_3c

    .line 74
    iget-object v10, p0, Lcom/google/android/music/sync/common/DownstreamMerger;->mTag:Ljava/lang/String;

    const-string v11, "Merge queue empty.  Exiting. "

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_7f
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_3c} :catch_75
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_3c} :catch_99

    .line 102
    :cond_3c
    if-eqz v9, :cond_43

    .line 106
    iget-object v10, p0, Lcom/google/android/music/sync/common/DownstreamMerger;->mMergeQueue:Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueue;

    invoke-virtual {v10}, Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueue;->kill()V

    .line 108
    :cond_43
    iget-boolean v10, p0, Lcom/google/android/music/sync/common/DownstreamMerger;->useVerboseLogging:Z

    if-eqz v10, :cond_4e

    .line 109
    iget-object v10, p0, Lcom/google/android/music/sync/common/DownstreamMerger;->mTag:Ljava/lang/String;

    const-string v11, "Downstream merger thread exiting."

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_4e
    const/4 v10, 0x0

    return-object v10

    .line 78
    :cond_50
    const/4 v7, 0x0

    .line 80
    .local v7, isBlockMergeSuccessful:Z
    :try_start_51
    invoke-virtual {p0}, Lcom/google/android/music/sync/common/DownstreamMerger;->onStartMergeBlock()V

    .line 81
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_58
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_93

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueueEntry;

    .line 82
    .local v4, entry:Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueueEntry;
    iget-object v8, v4, Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueueEntry;->first:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/music/sync/common/QueueableSyncEntity;

    .line 83
    .local v8, serverEntity:Lcom/google/android/music/sync/common/QueueableSyncEntity;
    iget-object v2, v4, Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueueEntry;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/music/sync/common/QueueableSyncEntity;

    .line 84
    .local v2, clientEntity:Lcom/google/android/music/sync/common/QueueableSyncEntity;
    invoke-virtual {p0, v8, v2}, Lcom/google/android/music/sync/common/DownstreamMerger;->processMergeItem(Lcom/google/android/music/sync/common/QueueableSyncEntity;Lcom/google/android/music/sync/common/QueueableSyncEntity;)V
    :try_end_6f
    .catchall {:try_start_51 .. :try_end_6f} :catchall_70

    goto :goto_58

    .line 88
    .end local v2           #clientEntity:Lcom/google/android/music/sync/common/QueueableSyncEntity;
    .end local v4           #entry:Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueueEntry;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #serverEntity:Lcom/google/android/music/sync/common/QueueableSyncEntity;
    :catchall_70
    move-exception v10

    :try_start_71
    invoke-virtual {p0, v7}, Lcom/google/android/music/sync/common/DownstreamMerger;->onEndMergeBlock(Z)V

    throw v10
    :try_end_75
    .catchall {:try_start_71 .. :try_end_75} :catchall_7f
    .catch Ljava/lang/InterruptedException; {:try_start_71 .. :try_end_75} :catch_75
    .catch Ljava/lang/RuntimeException; {:try_start_71 .. :try_end_75} :catch_99

    .line 91
    .end local v0           #actualBlockSize:I
    .end local v1           #block:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueueEntry;>;"
    .end local v7           #isBlockMergeSuccessful:Z
    :catch_75
    move-exception v3

    .line 92
    .local v3, e:Ljava/lang/InterruptedException;
    const/4 v9, 0x1

    .line 93
    :try_start_77
    new-instance v10, Lcom/google/android/music/sync/common/SoftSyncException;

    const-string v11, "Downstream merger thread interrupted.  Bailing. "

    invoke-direct {v10, v11, v3}, Lcom/google/android/music/sync/common/SoftSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
    :try_end_7f
    .catchall {:try_start_77 .. :try_end_7f} :catchall_7f

    .line 102
    .end local v3           #e:Ljava/lang/InterruptedException;
    :catchall_7f
    move-exception v10

    if-eqz v9, :cond_87

    .line 106
    iget-object v11, p0, Lcom/google/android/music/sync/common/DownstreamMerger;->mMergeQueue:Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueue;

    invoke-virtual {v11}, Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueue;->kill()V

    .line 108
    :cond_87
    iget-boolean v11, p0, Lcom/google/android/music/sync/common/DownstreamMerger;->useVerboseLogging:Z

    if-eqz v11, :cond_92

    .line 109
    iget-object v11, p0, Lcom/google/android/music/sync/common/DownstreamMerger;->mTag:Ljava/lang/String;

    const-string v12, "Downstream merger thread exiting."

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_92
    throw v10

    .line 86
    .restart local v0       #actualBlockSize:I
    .restart local v1       #block:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueueEntry;>;"
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v7       #isBlockMergeSuccessful:Z
    :cond_93
    const/4 v7, 0x1

    .line 88
    :try_start_94
    invoke-virtual {p0, v7}, Lcom/google/android/music/sync/common/DownstreamMerger;->onEndMergeBlock(Z)V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_7f
    .catch Ljava/lang/InterruptedException; {:try_start_94 .. :try_end_97} :catch_75
    .catch Ljava/lang/RuntimeException; {:try_start_94 .. :try_end_97} :catch_99

    goto/16 :goto_1

    .line 95
    .end local v0           #actualBlockSize:I
    .end local v1           #block:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueueEntry;>;"
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #isBlockMergeSuccessful:Z
    :catch_99
    move-exception v3

    .line 96
    .local v3, e:Ljava/lang/RuntimeException;
    const/4 v9, 0x1

    .line 97
    :try_start_9b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Merger thread threw an unknown error.  Bailing. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 99
    .local v5, exitMsg:Ljava/lang/String;
    iget-object v10, p0, Lcom/google/android/music/sync/common/DownstreamMerger;->mTag:Ljava/lang/String;

    invoke-static {v10, v5, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    new-instance v10, Lcom/google/android/music/sync/common/HardSyncException;

    invoke-direct {v10, v5, v3}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
    :try_end_bd
    .catchall {:try_start_9b .. :try_end_bd} :catchall_7f
.end method

.method public abstract onEndMergeBlock(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;
        }
    .end annotation
.end method

.method public abstract onStartMergeBlock()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;
        }
    .end annotation
.end method

.method public abstract processMergeItem(Lcom/google/android/music/sync/common/QueueableSyncEntity;Lcom/google/android/music/sync/common/QueueableSyncEntity;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;
        }
    .end annotation
.end method
