.class Lcom/google/android/videochat/CameraManager$1;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/videochat/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/videochat/CameraManager;


# direct methods
.method constructor <init>(Lcom/google/android/videochat/CameraManager;)V
    .registers 2
    .parameter

    .prologue
    .line 451
    iput-object p1, p0, Lcom/google/android/videochat/CameraManager$1;->this$0:Lcom/google/android/videochat/CameraManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 455
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 456
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager$1;->this$0:Lcom/google/android/videochat/CameraManager;

    #getter for: Lcom/google/android/videochat/CameraManager;->mFramePusherLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/videochat/CameraManager;->access$100(Lcom/google/android/videochat/CameraManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 457
    :try_start_a
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager$1;->this$0:Lcom/google/android/videochat/CameraManager;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/videochat/CameraManager;->mFramePusherPending:Z
    invoke-static {v0, v2}, Lcom/google/android/videochat/CameraManager;->access$202(Lcom/google/android/videochat/CameraManager;Z)Z

    .line 458
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager$1;->this$0:Lcom/google/android/videochat/CameraManager;

    new-instance v2, Landroid/os/Handler;

    new-instance v3, Lcom/google/android/videochat/CameraManager$1$1;

    invoke-direct {v3, p0}, Lcom/google/android/videochat/CameraManager$1$1;-><init>(Lcom/google/android/videochat/CameraManager$1;)V

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    #setter for: Lcom/google/android/videochat/CameraManager;->mFramePusher:Landroid/os/Handler;
    invoke-static {v0, v2}, Lcom/google/android/videochat/CameraManager;->access$302(Lcom/google/android/videochat/CameraManager;Landroid/os/Handler;)Landroid/os/Handler;

    .line 479
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager$1;->this$0:Lcom/google/android/videochat/CameraManager;

    #getter for: Lcom/google/android/videochat/CameraManager;->mFramePusher:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/videochat/CameraManager;->access$300(Lcom/google/android/videochat/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x64

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 481
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager$1;->this$0:Lcom/google/android/videochat/CameraManager;

    #getter for: Lcom/google/android/videochat/CameraManager;->mFramePusherLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/videochat/CameraManager;->access$100(Lcom/google/android/videochat/CameraManager;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 482
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_a .. :try_end_36} :catchall_3a

    .line 483
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 485
    return-void

    .line 482
    :catchall_3a
    move-exception v0

    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v0
.end method
