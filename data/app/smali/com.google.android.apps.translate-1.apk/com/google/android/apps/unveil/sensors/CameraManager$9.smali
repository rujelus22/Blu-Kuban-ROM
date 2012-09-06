.class Lcom/google/android/apps/unveil/sensors/CameraManager$9;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/sensors/CameraManager;->takePicture(Lcom/google/android/apps/unveil/sensors/CameraManager$ShutterCallback;Lcom/google/android/apps/unveil/sensors/CameraManager$PictureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/sensors/CameraManager;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/sensors/CameraManager;)V
    .registers 2
    .parameter

    .prologue
    .line 546
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager$9;->this$0:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .registers 6

    .prologue
    .line 549
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/CameraManager$9;->this$0:Lcom/google/android/apps/unveil/sensors/CameraManager;

    monitor-enter v3

    .line 550
    :try_start_3
    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager$9;->this$0:Lcom/google/android/apps/unveil/sensors/CameraManager;

    const/4 v4, 0x4

    #setter for: Lcom/google/android/apps/unveil/sensors/CameraManager;->state:I
    invoke-static {v2, v4}, Lcom/google/android/apps/unveil/sensors/CameraManager;->access$002(Lcom/google/android/apps/unveil/sensors/CameraManager;I)I

    .line 551
    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager$9;->this$0:Lcom/google/android/apps/unveil/sensors/CameraManager;

    #getter for: Lcom/google/android/apps/unveil/sensors/CameraManager;->shutterListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/google/android/apps/unveil/sensors/CameraManager;->access$100(Lcom/google/android/apps/unveil/sensors/CameraManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/sensors/CameraManager$ShutterCallback;

    .line 552
    .local v0, cb:Lcom/google/android/apps/unveil/sensors/CameraManager$ShutterCallback;
    invoke-interface {v0}, Lcom/google/android/apps/unveil/sensors/CameraManager$ShutterCallback;->onShutter()V

    goto :goto_13

    .line 555
    .end local v0           #cb:Lcom/google/android/apps/unveil/sensors/CameraManager$ShutterCallback;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_23
    move-exception v2

    monitor-exit v3
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v2

    .line 554
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_26
    :try_start_26
    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager$9;->this$0:Lcom/google/android/apps/unveil/sensors/CameraManager;

    #getter for: Lcom/google/android/apps/unveil/sensors/CameraManager;->shutterListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/google/android/apps/unveil/sensors/CameraManager;->access$100(Lcom/google/android/apps/unveil/sensors/CameraManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 555
    monitor-exit v3
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_23

    .line 556
    return-void
.end method
