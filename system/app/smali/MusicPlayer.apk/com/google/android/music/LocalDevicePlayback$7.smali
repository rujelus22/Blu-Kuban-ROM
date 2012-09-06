.class Lcom/google/android/music/LocalDevicePlayback$7;
.super Ljava/lang/Object;
.source "LocalDevicePlayback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/LocalDevicePlayback;->onCreate()V
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
    .line 1037
    iput-object p1, p0, Lcom/google/android/music/LocalDevicePlayback$7;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1041
    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$7;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #calls: Lcom/google/android/music/LocalDevicePlayback;->reloadQueue()V
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$3100(Lcom/google/android/music/LocalDevicePlayback;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_19

    .line 1043
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$7;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$1800(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->setPlaylistLoading(Z)V

    .line 1044
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$7;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$3200(Lcom/google/android/music/LocalDevicePlayback;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1046
    return-void

    .line 1043
    :catchall_19
    move-exception v0

    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$7;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;
    invoke-static {v1}, Lcom/google/android/music/LocalDevicePlayback;->access$1800(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->setPlaylistLoading(Z)V

    .line 1044
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$7;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/google/android/music/LocalDevicePlayback;->access$3200(Lcom/google/android/music/LocalDevicePlayback;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method
