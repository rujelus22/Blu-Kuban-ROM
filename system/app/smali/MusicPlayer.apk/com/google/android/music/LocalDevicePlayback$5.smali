.class Lcom/google/android/music/LocalDevicePlayback$5;
.super Lcom/google/android/music/utils/SafeServiceConnection;
.source "LocalDevicePlayback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/LocalDevicePlayback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/LocalDevicePlayback;


# direct methods
.method constructor <init>(Lcom/google/android/music/LocalDevicePlayback;)V
    .registers 2
    .parameter

    .prologue
    .line 960
    iput-object p1, p0, Lcom/google/android/music/LocalDevicePlayback$5;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    invoke-direct {p0}, Lcom/google/android/music/utils/SafeServiceConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 962
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 963
    const-class v1, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 964
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$5;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    invoke-static {p2}, Lcom/google/android/music/dl/IDownloadManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v1

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;
    invoke-static {v0, v1}, Lcom/google/android/music/LocalDevicePlayback;->access$502(Lcom/google/android/music/LocalDevicePlayback;Lcom/google/android/music/dl/IDownloadManager;)Lcom/google/android/music/dl/IDownloadManager;

    .line 968
    :goto_19
    return-void

    .line 966
    :cond_1a
    const-string v0, "MediaPlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown connection to class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .parameter

    .prologue
    .line 971
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 972
    const-class v1, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 973
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$5;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;
    invoke-static {v0, v1}, Lcom/google/android/music/LocalDevicePlayback;->access$502(Lcom/google/android/music/LocalDevicePlayback;Lcom/google/android/music/dl/IDownloadManager;)Lcom/google/android/music/dl/IDownloadManager;

    .line 977
    :goto_16
    return-void

    .line 975
    :cond_17
    const-string v0, "MediaPlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown disconnection from class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16
.end method
