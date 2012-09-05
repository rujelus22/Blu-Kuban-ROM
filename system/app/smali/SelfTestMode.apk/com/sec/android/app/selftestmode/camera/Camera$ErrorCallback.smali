.class public final Lcom/sec/android/app/selftestmode/camera/Camera$ErrorCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/selftestmode/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ErrorCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/selftestmode/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/selftestmode/camera/Camera;)V
    .registers 2
    .parameter

    .prologue
    .line 1117
    iput-object p1, p0, Lcom/sec/android/app/selftestmode/camera/Camera$ErrorCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .registers 7
    .parameter "error"
    .parameter "camera"

    .prologue
    .line 1133
    const-string v1, "testCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onError - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    sparse-switch p1, :sswitch_data_8a

    .line 1183
    const-string v1, "testCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ErrorCallback - CAMERA BAD["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera$ErrorCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    const v2, 0x7f080030

    #calls: Lcom/sec/android/app/selftestmode/camera/Camera;->dialogErrorPopup(I)V
    invoke-static {v1, v2}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$2700(Lcom/sec/android/app/selftestmode/camera/Camera;I)V

    .line 1191
    :goto_41
    :sswitch_41
    return-void

    .line 1145
    :sswitch_42
    const-string v1, "testCamera"

    const-string v2, "ErrorCallback - CAMERA_ERROR_WRONG_FW"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera$ErrorCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    const v2, 0x7f080031

    #calls: Lcom/sec/android/app/selftestmode/camera/Camera;->dialogErrorPopup(I)V
    invoke-static {v1, v2}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$2700(Lcom/sec/android/app/selftestmode/camera/Camera;I)V

    goto :goto_41

    .line 1155
    :sswitch_52
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera$ErrorCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$600(Lcom/sec/android/app/selftestmode/camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_41

    .line 1163
    :sswitch_5d
    const-string v1, "testCamera"

    const-string v2, "ErrorCallback - CAMERA_ERROR_DATALINE_FAIL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera$ErrorCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$1300(Lcom/sec/android/app/selftestmode/camera/Camera;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1169
    .local v0, params:Landroid/hardware/Camera$Parameters;
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera$ErrorCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->cameraType:I
    invoke-static {v1}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$2800(Lcom/sec/android/app/selftestmode/camera/Camera;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_80

    .line 1171
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera$ErrorCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    const v2, 0x7f08002f

    #calls: Lcom/sec/android/app/selftestmode/camera/Camera;->dialogErrorPopup(I)V
    invoke-static {v1, v2}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$2700(Lcom/sec/android/app/selftestmode/camera/Camera;I)V

    goto :goto_41

    .line 1175
    :cond_80
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera$ErrorCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    const v2, 0x7f08002e

    #calls: Lcom/sec/android/app/selftestmode/camera/Camera;->dialogErrorPopup(I)V
    invoke-static {v1, v2}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$2700(Lcom/sec/android/app/selftestmode/camera/Camera;I)V

    goto :goto_41

    .line 1137
    nop

    :sswitch_data_8a
    .sparse-switch
        0x0 -> :sswitch_41
        0x3e8 -> :sswitch_42
        0x7d0 -> :sswitch_5d
        0x7d1 -> :sswitch_52
    .end sparse-switch
.end method
