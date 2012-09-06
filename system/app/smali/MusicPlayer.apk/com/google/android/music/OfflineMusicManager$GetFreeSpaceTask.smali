.class Lcom/google/android/music/OfflineMusicManager$GetFreeSpaceTask;
.super Ljava/lang/Object;
.source "OfflineMusicManager.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/OfflineMusicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetFreeSpaceTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/OfflineMusicManager;


# direct methods
.method private constructor <init>(Lcom/google/android/music/OfflineMusicManager;)V
    .registers 2
    .parameter

    .prologue
    .line 715
    iput-object p1, p0, Lcom/google/android/music/OfflineMusicManager$GetFreeSpaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/OfflineMusicManager;Lcom/google/android/music/OfflineMusicManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 715
    invoke-direct {p0, p1}, Lcom/google/android/music/OfflineMusicManager$GetFreeSpaceTask;-><init>(Lcom/google/android/music/OfflineMusicManager;)V

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .registers 7

    .prologue
    .line 717
    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager$GetFreeSpaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    #getter for: Lcom/google/android/music/OfflineMusicManager;->mSpaceVariablesLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/google/android/music/OfflineMusicManager;->access$2100(Lcom/google/android/music/OfflineMusicManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 719
    :try_start_7
    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager$GetFreeSpaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    #getter for: Lcom/google/android/music/OfflineMusicManager;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;
    invoke-static {v2}, Lcom/google/android/music/OfflineMusicManager;->access$1100(Lcom/google/android/music/OfflineMusicManager;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v0

    .line 720
    .local v0, downloadManager:Lcom/google/android/music/dl/IDownloadManager;
    if-eqz v0, :cond_21

    .line 721
    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager$GetFreeSpaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-interface {v0}, Lcom/google/android/music/dl/IDownloadManager;->getTotalSpace()J

    move-result-wide v4

    #setter for: Lcom/google/android/music/OfflineMusicManager;->mTotalSpace:J
    invoke-static {v2, v4, v5}, Lcom/google/android/music/OfflineMusicManager;->access$2202(Lcom/google/android/music/OfflineMusicManager;J)J

    .line 722
    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager$GetFreeSpaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-interface {v0}, Lcom/google/android/music/dl/IDownloadManager;->getAvailableFreeSpace()J

    move-result-wide v4

    #setter for: Lcom/google/android/music/OfflineMusicManager;->mFreeSpace:J
    invoke-static {v2, v4, v5}, Lcom/google/android/music/OfflineMusicManager;->access$2302(Lcom/google/android/music/OfflineMusicManager;J)J
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_2e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_21} :catch_23

    .line 732
    .end local v0           #downloadManager:Lcom/google/android/music/dl/IDownloadManager;
    :cond_21
    :goto_21
    :try_start_21
    monitor-exit v3

    .line 733
    return-void

    .line 729
    :catch_23
    move-exception v1

    .line 730
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "OfflineMusicManager"

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    .line 732
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_2e
    move-exception v2

    monitor-exit v3
    :try_end_30
    .catchall {:try_start_21 .. :try_end_30} :catchall_2e

    throw v2
.end method

.method public taskCompleted()V
    .registers 2

    .prologue
    .line 736
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager$GetFreeSpaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    #calls: Lcom/google/android/music/OfflineMusicManager;->notifyAvailableSpaceChangedListener()V
    invoke-static {v0}, Lcom/google/android/music/OfflineMusicManager;->access$2400(Lcom/google/android/music/OfflineMusicManager;)V

    .line 737
    return-void
.end method
