.class Lcom/google/android/music/LocalDevicePlayback$20;
.super Ljava/lang/Object;
.source "LocalDevicePlayback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/LocalDevicePlayback;->pause(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/LocalDevicePlayback;

.field final synthetic val$transientPause:Z


# direct methods
.method constructor <init>(Lcom/google/android/music/LocalDevicePlayback;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2156
    iput-object p1, p0, Lcom/google/android/music/LocalDevicePlayback$20;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    iput-boolean p2, p0, Lcom/google/android/music/LocalDevicePlayback$20;->val$transientPause:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2160
    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$20;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    iget-boolean v1, p0, Lcom/google/android/music/LocalDevicePlayback$20;->val$transientPause:Z

    #calls: Lcom/google/android/music/LocalDevicePlayback;->pauseSync(Z)V
    invoke-static {v0, v1}, Lcom/google/android/music/LocalDevicePlayback;->access$5500(Lcom/google/android/music/LocalDevicePlayback;Z)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_11

    .line 2162
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$20;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$3200(Lcom/google/android/music/LocalDevicePlayback;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2164
    return-void

    .line 2162
    :catchall_11
    move-exception v0

    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$20;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/google/android/music/LocalDevicePlayback;->access$3200(Lcom/google/android/music/LocalDevicePlayback;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method
