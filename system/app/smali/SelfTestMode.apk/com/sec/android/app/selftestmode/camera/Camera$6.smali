.class Lcom/sec/android/app/selftestmode/camera/Camera$6;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/selftestmode/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/selftestmode/camera/Camera;


# direct methods
.method constructor <init>(Lcom/sec/android/app/selftestmode/camera/Camera;)V
    .registers 2
    .parameter

    .prologue
    .line 2473
    iput-object p1, p0, Lcom/sec/android/app/selftestmode/camera/Camera$6;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 2477
    const-string v0, "testCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: mTimerHandler -msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2479
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_6a

    .line 2503
    :goto_1f
    return-void

    .line 2483
    :pswitch_20
    const-string v0, "testCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: KEY_TIMER_EXPIRED -mIsCaptureEnble:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera$6;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mIsPressedBackkey:Z
    invoke-static {v2}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$4200(Lcom/sec/android/app/selftestmode/camera/Camera;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2485
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$6;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mIsPressedBackkey:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$4202(Lcom/sec/android/app/selftestmode/camera/Camera;Z)Z

    goto :goto_1f

    .line 2493
    :pswitch_45
    const-string v0, "testCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: KEY_TIMER_EXPIRED_CAPTUREBLOCK -mIsCaptureEnble:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera$6;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mIsCaptureEnable:Z
    invoke-static {v2}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$4300(Lcom/sec/android/app/selftestmode/camera/Camera;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2495
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$6;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mIsCaptureEnable:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$4302(Lcom/sec/android/app/selftestmode/camera/Camera;Z)Z

    goto :goto_1f

    .line 2479
    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_20
        :pswitch_45
    .end packed-switch
.end method
