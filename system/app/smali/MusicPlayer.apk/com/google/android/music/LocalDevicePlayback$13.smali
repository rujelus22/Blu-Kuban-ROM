.class Lcom/google/android/music/LocalDevicePlayback$13;
.super Ljava/lang/Object;
.source "LocalDevicePlayback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/LocalDevicePlayback;->clearQueue()V
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
    .line 1544
    iput-object p1, p0, Lcom/google/android/music/LocalDevicePlayback$13;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1547
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$13;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    invoke-virtual {v1}, Lcom/google/android/music/LocalDevicePlayback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v0

    .line 1548
    .local v0, store:Lcom/google/android/music/store/Store;
    invoke-virtual {v0}, Lcom/google/android/music/store/Store;->clearPlayQueue()V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_17

    .line 1550
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$13;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/google/android/music/LocalDevicePlayback;->access$3200(Lcom/google/android/music/LocalDevicePlayback;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1552
    return-void

    .line 1550
    .end local v0           #store:Lcom/google/android/music/store/Store;
    :catchall_17
    move-exception v1

    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$13;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$3200(Lcom/google/android/music/LocalDevicePlayback;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v1
.end method
