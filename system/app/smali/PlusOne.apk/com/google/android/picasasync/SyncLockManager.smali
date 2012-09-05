.class Lcom/google/android/picasasync/SyncLockManager;
.super Ljava/lang/Object;
.source "SyncLockManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasasync/SyncLockManager$1;,
        Lcom/google/android/picasasync/SyncLockManager$SyncLock;
    }
.end annotation


# instance fields
.field private final mLocks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/picasasync/SyncLockManager$SyncLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/picasasync/SyncLockManager;->mLocks:Ljava/util/HashSet;

    .line 44
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/picasasync/SyncLockManager;)Ljava/util/HashSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/picasasync/SyncLockManager;->mLocks:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public acquireLock(ILjava/lang/Object;)Lcom/google/android/picasasync/SyncLockManager$SyncLock;
    .registers 6
    .parameter "type"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 28
    iget-object v2, p0, Lcom/google/android/picasasync/SyncLockManager;->mLocks:Ljava/util/HashSet;

    monitor-enter v2

    .line 29
    :try_start_3
    new-instance v0, Lcom/google/android/picasasync/SyncLockManager$SyncLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/picasasync/SyncLockManager$SyncLock;-><init>(Lcom/google/android/picasasync/SyncLockManager;ILjava/lang/Object;Lcom/google/android/picasasync/SyncLockManager$1;)V

    .line 30
    .local v0, lock:Lcom/google/android/picasasync/SyncLockManager$SyncLock;
    :goto_9
    iget-object v1, p0, Lcom/google/android/picasasync/SyncLockManager;->mLocks:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 31
    iget-object v1, p0, Lcom/google/android/picasasync/SyncLockManager;->mLocks:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_9

    .line 34
    .end local v0           #lock:Lcom/google/android/picasasync/SyncLockManager$SyncLock;
    :catchall_17
    move-exception v1

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1

    .line 33
    .restart local v0       #lock:Lcom/google/android/picasasync/SyncLockManager$SyncLock;
    :cond_1a
    :try_start_1a
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_17

    return-object v0
.end method
