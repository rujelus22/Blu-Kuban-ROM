.class Lcom/google/android/music/dl/DownloadExecutor$4;
.super Ljava/lang/Object;
.source "DownloadExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/DownloadExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/DownloadExecutor;


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/DownloadExecutor;)V
    .registers 2
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadExecutor$4;->this$0:Lcom/google/android/music/dl/DownloadExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 255
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadExecutor$4;->this$0:Lcom/google/android/music/dl/DownloadExecutor;

    monitor-enter v1

    .line 256
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor$4;->this$0:Lcom/google/android/music/dl/DownloadExecutor;

    #getter for: Lcom/google/android/music/dl/DownloadExecutor;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;
    invoke-static {v0}, Lcom/google/android/music/dl/DownloadExecutor;->access$300(Lcom/google/android/music/dl/DownloadExecutor;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor$4;->this$0:Lcom/google/android/music/dl/DownloadExecutor;

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadExecutor;->isDownloading()Z

    move-result v0

    if-nez v0, :cond_22

    .line 257
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor$4;->this$0:Lcom/google/android/music/dl/DownloadExecutor;

    #getter for: Lcom/google/android/music/dl/DownloadExecutor;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;
    invoke-static {v0}, Lcom/google/android/music/dl/DownloadExecutor;->access$300(Lcom/google/android/music/dl/DownloadExecutor;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 258
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadExecutor$4;->this$0:Lcom/google/android/music/dl/DownloadExecutor;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/music/dl/DownloadExecutor;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;
    invoke-static {v0, v2}, Lcom/google/android/music/dl/DownloadExecutor;->access$302(Lcom/google/android/music/dl/DownloadExecutor;Landroid/net/wifi/WifiManager$WifiLock;)Landroid/net/wifi/WifiManager$WifiLock;

    .line 260
    :cond_22
    monitor-exit v1

    .line 261
    return-void

    .line 260
    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v0
.end method
