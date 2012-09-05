.class Lcom/google/android/music/dl/DownloadManager$2;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/DownloadManager;


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/DownloadManager;)V
    .registers 2
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadManager$2;->this$0:Lcom/google/android/music/dl/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "name"
    .parameter "service"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager$2;->this$0:Lcom/google/android/music/dl/DownloadManager;

    invoke-static {p2}, Lcom/google/android/music/store/IStoreService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/music/store/IStoreService;

    move-result-object v1

    #setter for: Lcom/google/android/music/dl/DownloadManager;->mStoreService:Lcom/google/android/music/store/IStoreService;
    invoke-static {v0, v1}, Lcom/google/android/music/dl/DownloadManager;->access$202(Lcom/google/android/music/dl/DownloadManager;Lcom/google/android/music/store/IStoreService;)Lcom/google/android/music/store/IStoreService;

    .line 181
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager$2;->this$0:Lcom/google/android/music/dl/DownloadManager;

    monitor-enter v1

    .line 182
    :try_start_c
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager$2;->this$0:Lcom/google/android/music/dl/DownloadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 183
    monitor-exit v1

    .line 184
    return-void

    .line 183
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager$2;->this$0:Lcom/google/android/music/dl/DownloadManager;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/music/dl/DownloadManager;->mStoreService:Lcom/google/android/music/store/IStoreService;
    invoke-static {v0, v1}, Lcom/google/android/music/dl/DownloadManager;->access$202(Lcom/google/android/music/dl/DownloadManager;Lcom/google/android/music/store/IStoreService;)Lcom/google/android/music/store/IStoreService;

    .line 188
    return-void
.end method
