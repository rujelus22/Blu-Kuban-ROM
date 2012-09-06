.class public final Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;
.super Ljava/lang/Object;
.source "InstantUploadSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncSession"
.end annotation


# instance fields
.field public final account:Ljava/lang/String;

.field mCurrentTask:Lcom/google/android/apps/plus/iu/SyncTask;

.field mSyncCancelled:Z

.field public final result:Landroid/content/SyncResult;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/SyncResult;)V
    .registers 3
    .parameter "account"
    .parameter "result"

    .prologue
    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    iput-object p1, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;->account:Ljava/lang/String;

    .line 513
    iput-object p2, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;->result:Landroid/content/SyncResult;

    .line 514
    return-void
.end method


# virtual methods
.method public declared-synchronized cancelSync()V
    .registers 2

    .prologue
    .line 517
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;->mSyncCancelled:Z

    .line 518
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;->mCurrentTask:Lcom/google/android/apps/plus/iu/SyncTask;

    if-eqz v0, :cond_10

    .line 519
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;->mCurrentTask:Lcom/google/android/apps/plus/iu/SyncTask;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/iu/SyncTask;->cancelSync()V

    .line 520
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;->mCurrentTask:Lcom/google/android/apps/plus/iu/SyncTask;
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_12

    .line 522
    :cond_10
    monitor-exit p0

    return-void

    .line 517
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSyncCancelled()Z
    .registers 2

    .prologue
    .line 525
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$SyncSession;->mSyncCancelled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
