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
    .line 697
    iput-object p1, p0, Lcom/google/android/music/OfflineMusicManager$GetFreeSpaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/OfflineMusicManager;Lcom/google/android/music/OfflineMusicManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 697
    invoke-direct {p0, p1}, Lcom/google/android/music/OfflineMusicManager$GetFreeSpaceTask;-><init>(Lcom/google/android/music/OfflineMusicManager;)V

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .registers 6

    .prologue
    .line 699
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager$GetFreeSpaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    #getter for: Lcom/google/android/music/OfflineMusicManager;->mSpaceVariablesLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/android/music/OfflineMusicManager;->access$2000(Lcom/google/android/music/OfflineMusicManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 701
    :try_start_7
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager$GetFreeSpaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    iget-object v3, p0, Lcom/google/android/music/OfflineMusicManager$GetFreeSpaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    #getter for: Lcom/google/android/music/OfflineMusicManager;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;
    invoke-static {v3}, Lcom/google/android/music/OfflineMusicManager;->access$2200(Lcom/google/android/music/OfflineMusicManager;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/music/dl/IDownloadManager;->getTotalSpace()J

    move-result-wide v3

    #setter for: Lcom/google/android/music/OfflineMusicManager;->mTotalSpace:J
    invoke-static {v1, v3, v4}, Lcom/google/android/music/OfflineMusicManager;->access$2102(Lcom/google/android/music/OfflineMusicManager;J)J

    .line 702
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager$GetFreeSpaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    iget-object v3, p0, Lcom/google/android/music/OfflineMusicManager$GetFreeSpaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    #getter for: Lcom/google/android/music/OfflineMusicManager;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;
    invoke-static {v3}, Lcom/google/android/music/OfflineMusicManager;->access$2200(Lcom/google/android/music/OfflineMusicManager;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/music/dl/IDownloadManager;->getAvailableFreeSpace()J

    move-result-wide v3

    #setter for: Lcom/google/android/music/OfflineMusicManager;->mFreeSpace:J
    invoke-static {v1, v3, v4}, Lcom/google/android/music/OfflineMusicManager;->access$2302(Lcom/google/android/music/OfflineMusicManager;J)J
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_32
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_25} :catch_27

    .line 710
    :goto_25
    :try_start_25
    monitor-exit v2

    .line 711
    return-void

    .line 707
    :catch_27
    move-exception v0

    .line 708
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "OfflineMusicManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25

    .line 710
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_32
    move-exception v1

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_25 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public taskCompleted()V
    .registers 2

    .prologue
    .line 714
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager$GetFreeSpaceTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    #calls: Lcom/google/android/music/OfflineMusicManager;->notifyAvailableSpaceChangedListener()V
    invoke-static {v0}, Lcom/google/android/music/OfflineMusicManager;->access$2400(Lcom/google/android/music/OfflineMusicManager;)V

    .line 715
    return-void
.end method
