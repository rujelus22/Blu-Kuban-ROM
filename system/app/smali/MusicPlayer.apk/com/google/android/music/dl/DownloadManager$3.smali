.class Lcom/google/android/music/dl/DownloadManager$3;
.super Lcom/google/android/music/dl/IStreamabilityChangeListener$Stub;
.source "DownloadManager.java"


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
    .line 184
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadManager$3;->this$0:Lcom/google/android/music/dl/DownloadManager;

    invoke-direct {p0}, Lcom/google/android/music/dl/IStreamabilityChangeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStreamabilityChanged(Z)V
    .registers 3
    .parameter "isStreamable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager$3;->this$0:Lcom/google/android/music/dl/DownloadManager;

    #setter for: Lcom/google/android/music/dl/DownloadManager;->mStreamingEnabled:Z
    invoke-static {v0, p1}, Lcom/google/android/music/dl/DownloadManager;->access$302(Lcom/google/android/music/dl/DownloadManager;Z)Z

    .line 189
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager$3;->this$0:Lcom/google/android/music/dl/DownloadManager;

    #getter for: Lcom/google/android/music/dl/DownloadManager;->mStreamingEnabled:Z
    invoke-static {v0}, Lcom/google/android/music/dl/DownloadManager;->access$300(Lcom/google/android/music/dl/DownloadManager;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 190
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager$3;->this$0:Lcom/google/android/music/dl/DownloadManager;

    #calls: Lcom/google/android/music/dl/DownloadManager;->startAsyncDownloads()V
    invoke-static {v0}, Lcom/google/android/music/dl/DownloadManager;->access$400(Lcom/google/android/music/dl/DownloadManager;)V

    .line 193
    :cond_12
    return-void
.end method
