.class Lcom/google/android/apps/unveil/sensors/CameraManager$10;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/sensors/CameraManager;->focus(Lcom/google/android/apps/unveil/sensors/CameraManager$FocusCallback;)V
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
    .line 650
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager$10;->this$0:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .registers 10
    .parameter "success"
    .parameter "camera"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 653
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/CameraManager$10;->this$0:Lcom/google/android/apps/unveil/sensors/CameraManager;

    monitor-enter v3

    .line 654
    :try_start_5
    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager$10;->this$0:Lcom/google/android/apps/unveil/sensors/CameraManager;

    const/4 v4, 0x2

    #setter for: Lcom/google/android/apps/unveil/sensors/CameraManager;->state:I
    invoke-static {v2, v4}, Lcom/google/android/apps/unveil/sensors/CameraManager;->access$002(Lcom/google/android/apps/unveil/sensors/CameraManager;I)I

    .line 656
    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager$10;->this$0:Lcom/google/android/apps/unveil/sensors/CameraManager;

    #calls: Lcom/google/android/apps/unveil/sensors/CameraManager;->maybeSetPendingCameraParameters()V
    invoke-static {v2}, Lcom/google/android/apps/unveil/sensors/CameraManager;->access$200(Lcom/google/android/apps/unveil/sensors/CameraManager;)V

    .line 658
    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager$10;->this$0:Lcom/google/android/apps/unveil/sensors/CameraManager;

    #getter for: Lcom/google/android/apps/unveil/sensors/CameraManager;->focusListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/google/android/apps/unveil/sensors/CameraManager;->access$300(Lcom/google/android/apps/unveil/sensors/CameraManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/sensors/CameraManager$FocusCallback;

    .line 659
    .local v0, cb:Lcom/google/android/apps/unveil/sensors/CameraManager$FocusCallback;
    invoke-interface {v0, p1}, Lcom/google/android/apps/unveil/sensors/CameraManager$FocusCallback;->onFocus(Z)V

    goto :goto_1a

    .line 663
    .end local v0           #cb:Lcom/google/android/apps/unveil/sensors/CameraManager$FocusCallback;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_2a
    move-exception v2

    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_2a

    throw v2

    .line 661
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2d
    :try_start_2d
    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager$10;->this$0:Lcom/google/android/apps/unveil/sensors/CameraManager;

    #getter for: Lcom/google/android/apps/unveil/sensors/CameraManager;->focusListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/google/android/apps/unveil/sensors/CameraManager;->access$300(Lcom/google/android/apps/unveil/sensors/CameraManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 662
    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager$10;->this$0:Lcom/google/android/apps/unveil/sensors/CameraManager;

    const/4 v4, 0x0

    #setter for: Lcom/google/android/apps/unveil/sensors/CameraManager;->state:I
    invoke-static {v2, v4}, Lcom/google/android/apps/unveil/sensors/CameraManager;->access$002(Lcom/google/android/apps/unveil/sensors/CameraManager;I)I

    .line 663
    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_2d .. :try_end_3d} :catchall_2a

    .line 664
    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager$10;->this$0:Lcom/google/android/apps/unveil/sensors/CameraManager;

    #getter for: Lcom/google/android/apps/unveil/sensors/CameraManager;->releaseRequiredAfterFocus:Z
    invoke-static {v2}, Lcom/google/android/apps/unveil/sensors/CameraManager;->access$400(Lcom/google/android/apps/unveil/sensors/CameraManager;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 665
    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager$10;->this$0:Lcom/google/android/apps/unveil/sensors/CameraManager;

    #setter for: Lcom/google/android/apps/unveil/sensors/CameraManager;->releaseRequiredAfterFocus:Z
    invoke-static {v2, v5}, Lcom/google/android/apps/unveil/sensors/CameraManager;->access$402(Lcom/google/android/apps/unveil/sensors/CameraManager;Z)Z

    .line 666
    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager$10;->this$0:Lcom/google/android/apps/unveil/sensors/CameraManager;

    #calls: Lcom/google/android/apps/unveil/sensors/CameraManager;->releaseCamera()V
    invoke-static {v2}, Lcom/google/android/apps/unveil/sensors/CameraManager;->access$500(Lcom/google/android/apps/unveil/sensors/CameraManager;)V

    .line 674
    :cond_4f
    :goto_4f
    return-void

    .line 667
    :cond_50
    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager$10;->this$0:Lcom/google/android/apps/unveil/sensors/CameraManager;

    #getter for: Lcom/google/android/apps/unveil/sensors/CameraManager;->snapRequiredAfterFocus:Z
    invoke-static {v2}, Lcom/google/android/apps/unveil/sensors/CameraManager;->access$600(Lcom/google/android/apps/unveil/sensors/CameraManager;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 668
    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager$10;->this$0:Lcom/google/android/apps/unveil/sensors/CameraManager;

    #setter for: Lcom/google/android/apps/unveil/sensors/CameraManager;->snapRequiredAfterFocus:Z
    invoke-static {v2, v5}, Lcom/google/android/apps/unveil/sensors/CameraManager;->access$602(Lcom/google/android/apps/unveil/sensors/CameraManager;Z)Z

    .line 669
    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager$10;->this$0:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-virtual {v2, v6, v6}, Lcom/google/android/apps/unveil/sensors/CameraManager;->takePicture(Lcom/google/android/apps/unveil/sensors/CameraManager$ShutterCallback;Lcom/google/android/apps/unveil/sensors/CameraManager$PictureCallback;)V

    goto :goto_4f

    .line 670
    :cond_63
    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager$10;->this$0:Lcom/google/android/apps/unveil/sensors/CameraManager;

    #getter for: Lcom/google/android/apps/unveil/sensors/CameraManager;->flashSettingAfterFocus:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/apps/unveil/sensors/CameraManager;->access$700(Lcom/google/android/apps/unveil/sensors/CameraManager;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4f

    .line 671
    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager$10;->this$0:Lcom/google/android/apps/unveil/sensors/CameraManager;

    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/CameraManager$10;->this$0:Lcom/google/android/apps/unveil/sensors/CameraManager;

    #getter for: Lcom/google/android/apps/unveil/sensors/CameraManager;->flashSettingAfterFocus:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/unveil/sensors/CameraManager;->access$700(Lcom/google/android/apps/unveil/sensors/CameraManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/unveil/sensors/CameraManager;->setFlashMode(Ljava/lang/String;)V

    .line 672
    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager$10;->this$0:Lcom/google/android/apps/unveil/sensors/CameraManager;

    #setter for: Lcom/google/android/apps/unveil/sensors/CameraManager;->flashSettingAfterFocus:Ljava/lang/String;
    invoke-static {v2, v6}, Lcom/google/android/apps/unveil/sensors/CameraManager;->access$702(Lcom/google/android/apps/unveil/sensors/CameraManager;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4f
.end method
