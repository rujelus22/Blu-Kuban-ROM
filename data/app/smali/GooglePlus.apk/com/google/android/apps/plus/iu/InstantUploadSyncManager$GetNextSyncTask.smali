.class Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$GetNextSyncTask;
.super Ljava/lang/Object;
.source "InstantUploadSyncManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetNextSyncTask"
.end annotation

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
.field private final mSession:Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;

.field final synthetic this$0:Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;)V
    .registers 3
    .parameter
    .parameter "session"

    .prologue
    .line 369
    iput-object p1, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$GetNextSyncTask;->this$0:Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    iput-object p2, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$GetNextSyncTask;->mSession:Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;

    .line 371
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
    .line 366
    invoke-virtual {p0}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$GetNextSyncTask;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 375
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$GetNextSyncTask;->this$0:Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;

    #getter for: Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mSyncHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->access$000(Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 376
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$GetNextSyncTask;->this$0:Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;

    iget-object v2, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$GetNextSyncTask;->mSession:Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;

    iget-object v2, v2, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;->account:Ljava/lang/String;

    #calls: Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->nextSyncTaskInternal(Ljava/lang/String;)Lcom/google/android/apps/plus/iu/SyncTask;
    invoke-static {v1, v2}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->access$700(Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;Ljava/lang/String;)Lcom/google/android/apps/plus/iu/SyncTask;

    move-result-object v0

    .line 377
    .local v0, task:Lcom/google/android/apps/plus/iu/SyncTask;
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$GetNextSyncTask;->mSession:Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;

    monitor-enter v2

    .line 378
    :try_start_18
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$GetNextSyncTask;->mSession:Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;

    iget-boolean v1, v1, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;->mSyncCancelled:Z

    if-eqz v1, :cond_20

    .line 379
    monitor-exit v2

    .line 383
    :goto_1f
    return-object v3

    .line 381
    :cond_20
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$GetNextSyncTask;->mSession:Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;

    iput-object v0, v1, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;->mCurrentTask:Lcom/google/android/apps/plus/iu/SyncTask;

    .line 382
    monitor-exit v2

    goto :goto_1f

    :catchall_26
    move-exception v1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_26

    throw v1
.end method
