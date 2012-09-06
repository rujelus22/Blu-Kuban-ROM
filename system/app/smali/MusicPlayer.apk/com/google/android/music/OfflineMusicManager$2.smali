.class Lcom/google/android/music/OfflineMusicManager$2;
.super Lcom/google/android/music/utils/SafeServiceConnection;
.source "OfflineMusicManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/OfflineMusicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/OfflineMusicManager;


# direct methods
.method constructor <init>(Lcom/google/android/music/OfflineMusicManager;)V
    .registers 2
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/google/android/music/OfflineMusicManager$2;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-direct {p0}, Lcom/google/android/music/utils/SafeServiceConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .parameter "name"
    .parameter "service"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager$2;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-static {p2}, Lcom/google/android/music/dl/IDownloadManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v1

    #setter for: Lcom/google/android/music/OfflineMusicManager;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;
    invoke-static {v0, v1}, Lcom/google/android/music/OfflineMusicManager;->access$1102(Lcom/google/android/music/OfflineMusicManager;Lcom/google/android/music/dl/IDownloadManager;)Lcom/google/android/music/dl/IDownloadManager;

    .line 309
    new-instance v0, Lcom/google/android/music/OfflineMusicManager$GetFreeSpaceTask;

    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager$2;->this$0:Lcom/google/android/music/OfflineMusicManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/OfflineMusicManager$GetFreeSpaceTask;-><init>(Lcom/google/android/music/OfflineMusicManager;Lcom/google/android/music/OfflineMusicManager$1;)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 310
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager$2;->this$0:Lcom/google/android/music/OfflineMusicManager;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/music/OfflineMusicManager;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;
    invoke-static {v0, v1}, Lcom/google/android/music/OfflineMusicManager;->access$1102(Lcom/google/android/music/OfflineMusicManager;Lcom/google/android/music/dl/IDownloadManager;)Lcom/google/android/music/dl/IDownloadManager;

    .line 314
    return-void
.end method
