.class public final Lcom/android/samsungtest/camera/Camera$ErrorCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/sec/android/seccamera/SecCamera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ErrorCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/android/samsungtest/camera/Camera;)V
    .registers 2
    .parameter

    .prologue
    .line 708
    iput-object p1, p0, Lcom/android/samsungtest/camera/Camera$ErrorCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILcom/sec/android/seccamera/SecCamera;)V
    .registers 6
    .parameter "error"
    .parameter "camera"

    .prologue
    .line 715
    const-string v0, "testCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    sparse-switch p1, :sswitch_data_80

    .line 746
    const-string v0, "testCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ErrorCallback - CAMERA BAD["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$ErrorCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    const v1, 0x7f08002d

    #calls: Lcom/android/samsungtest/camera/Camera;->dialogErrorPopup(I)V
    invoke-static {v0, v1}, Lcom/android/samsungtest/camera/Camera;->access$2300(Lcom/android/samsungtest/camera/Camera;I)V

    .line 750
    :goto_41
    return-void

    .line 719
    :sswitch_42
    const-string v0, "testCamera"

    const-string v1, "ErrorCallback - CAMERA_ERROR_MSG_NO_ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$ErrorCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    const/4 v1, 0x1

    #setter for: Lcom/android/samsungtest/camera/Camera;->mCameraStarted:I
    invoke-static {v0, v1}, Lcom/android/samsungtest/camera/Camera;->access$1802(Lcom/android/samsungtest/camera/Camera;I)I

    goto :goto_41

    .line 725
    :sswitch_50
    const-string v0, "testCamera"

    const-string v1, "ErrorCallback - CAMERA_ERROR_WRONG_FW"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$ErrorCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    const v1, 0x7f08002e

    #calls: Lcom/android/samsungtest/camera/Camera;->dialogErrorPopup(I)V
    invoke-static {v0, v1}, Lcom/android/samsungtest/camera/Camera;->access$2300(Lcom/android/samsungtest/camera/Camera;I)V

    goto :goto_41

    .line 731
    :sswitch_60
    const-string v0, "testCamera"

    const-string v1, "ErrorCallback - CAMERA_ERROR_DATALINE_FAIL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    sget v0, Lcom/android/samsungtest/camera/Camera;->cameraType:I

    sget v1, Lcom/android/samsungtest/camera/Camera;->FRONT:I

    if-ne v0, v1, :cond_76

    .line 738
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$ErrorCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    const v1, 0x7f08002c

    #calls: Lcom/android/samsungtest/camera/Camera;->dialogErrorPopup(I)V
    invoke-static {v0, v1}, Lcom/android/samsungtest/camera/Camera;->access$2300(Lcom/android/samsungtest/camera/Camera;I)V

    goto :goto_41

    .line 740
    :cond_76
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$ErrorCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    const v1, 0x7f08002b

    #calls: Lcom/android/samsungtest/camera/Camera;->dialogErrorPopup(I)V
    invoke-static {v0, v1}, Lcom/android/samsungtest/camera/Camera;->access$2300(Lcom/android/samsungtest/camera/Camera;I)V

    goto :goto_41

    .line 717
    nop

    :sswitch_data_80
    .sparse-switch
        0x0 -> :sswitch_42
        0x1 -> :sswitch_60
        0x3e8 -> :sswitch_50
    .end sparse-switch
.end method
