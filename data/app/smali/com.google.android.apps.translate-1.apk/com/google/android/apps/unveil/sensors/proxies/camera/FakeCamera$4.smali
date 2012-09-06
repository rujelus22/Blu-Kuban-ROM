.class Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$4;
.super Ljava/lang/Object;
.source "FakeCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->handleCallback(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;

.field final synthetic val$dataBuffer:[B

.field final synthetic val$tmpCallback:Landroid/hardware/Camera$PreviewCallback;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;Landroid/hardware/Camera$PreviewCallback;[B)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 518
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$4;->this$0:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;

    iput-object p2, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$4;->val$tmpCallback:Landroid/hardware/Camera$PreviewCallback;

    iput-object p3, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$4;->val$dataBuffer:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 521
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$4;->val$tmpCallback:Landroid/hardware/Camera$PreviewCallback;

    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$4;->val$dataBuffer:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PreviewCallback;->onPreviewFrame([BLandroid/hardware/Camera;)V

    .line 522
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$4;->this$0:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->callbackRunning:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->access$702(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;Z)Z

    .line 523
    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$4;->this$0:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;

    monitor-enter v1

    .line 524
    :try_start_11
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$4;->this$0:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 525
    monitor-exit v1

    .line 526
    return-void

    .line 525
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_18

    throw v0
.end method
