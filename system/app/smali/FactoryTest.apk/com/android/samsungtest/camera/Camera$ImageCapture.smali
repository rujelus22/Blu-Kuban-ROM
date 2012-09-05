.class Lcom/android/samsungtest/camera/Camera$ImageCapture;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/android/samsungtest/camera/Camera$Capturer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageCapture"
.end annotation


# instance fields
.field private mCapturing:Z

.field final synthetic this$0:Lcom/android/samsungtest/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/android/samsungtest/camera/Camera;)V
    .registers 3
    .parameter

    .prologue
    .line 918
    iput-object p1, p0, Lcom/android/samsungtest/camera/Camera$ImageCapture;->this$0:Lcom/android/samsungtest/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 908
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/samsungtest/camera/Camera$ImageCapture;->mCapturing:Z

    .line 919
    return-void
.end method

.method private capture(Z)V
    .registers 10
    .parameter "captureOnly"

    .prologue
    .line 1031
    const/4 v2, 0x0

    .line 1032
    .local v2, screenWidth:I
    const/4 v1, 0x0

    .line 1034
    .local v1, screenHeight:I
    iget-object v3, p0, Lcom/android/samsungtest/camera/Camera$ImageCapture;->this$0:Lcom/android/samsungtest/camera/Camera;

    const/4 v4, 0x0

    #setter for: Lcom/android/samsungtest/camera/Camera;->mPreviewing:Z
    invoke-static {v3, v4}, Lcom/android/samsungtest/camera/Camera;->access$3302(Lcom/android/samsungtest/camera/Camera;Z)Z

    .line 1035
    const-string v3, "testCamera"

    const-string v4, "capture : mPreviewing set false"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    const/4 v0, 0x0

    .line 1042
    .local v0, loc:Landroid/location/Location;
    iget-object v3, p0, Lcom/android/samsungtest/camera/Camera$ImageCapture;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;
    invoke-static {v3}, Lcom/android/samsungtest/camera/Camera;->access$1500(Lcom/android/samsungtest/camera/Camera;)Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v3

    const-string v4, "flash-value"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    const-string v3, "testCamera"

    const-string v4, "capture - set flash on - manufacturing mode"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    const-string v3, "800x480"

    const-string v4, "400x240"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 1054
    const/16 v2, 0x140

    .line 1055
    const/16 v1, 0xf0

    .line 1080
    :goto_32
    const-string v3, "testCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPictureSize - WH["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    iget-object v3, p0, Lcom/android/samsungtest/camera/Camera$ImageCapture;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;
    invoke-static {v3}, Lcom/android/samsungtest/camera/Camera;->access$1500(Lcom/android/samsungtest/camera/Camera;)Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPictureSize(II)V

    .line 1084
    iget-object v3, p0, Lcom/android/samsungtest/camera/Camera$ImageCapture;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v3}, Lcom/android/samsungtest/camera/Camera;->access$1300(Lcom/android/samsungtest/camera/Camera;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v3

    iget-object v4, p0, Lcom/android/samsungtest/camera/Camera$ImageCapture;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;
    invoke-static {v4}, Lcom/android/samsungtest/camera/Camera;->access$1500(Lcom/android/samsungtest/camera/Camera;)Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 1086
    iget-object v3, p0, Lcom/android/samsungtest/camera/Camera$ImageCapture;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v3}, Lcom/android/samsungtest/camera/Camera;->access$1300(Lcom/android/samsungtest/camera/Camera;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v3

    iget-object v4, p0, Lcom/android/samsungtest/camera/Camera$ImageCapture;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mShutterCallback:Lcom/android/samsungtest/camera/Camera$ShutterCallback;
    invoke-static {v4}, Lcom/android/samsungtest/camera/Camera;->access$3400(Lcom/android/samsungtest/camera/Camera;)Lcom/android/samsungtest/camera/Camera$ShutterCallback;

    move-result-object v4

    iget-object v5, p0, Lcom/android/samsungtest/camera/Camera$ImageCapture;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mRawPictureCallback:Lcom/android/samsungtest/camera/Camera$RawPictureCallback;
    invoke-static {v5}, Lcom/android/samsungtest/camera/Camera;->access$3500(Lcom/android/samsungtest/camera/Camera;)Lcom/android/samsungtest/camera/Camera$RawPictureCallback;

    move-result-object v5

    new-instance v6, Lcom/android/samsungtest/camera/Camera$JpegPictureCallback;

    iget-object v7, p0, Lcom/android/samsungtest/camera/Camera$ImageCapture;->this$0:Lcom/android/samsungtest/camera/Camera;

    invoke-direct {v6, v7, v0}, Lcom/android/samsungtest/camera/Camera$JpegPictureCallback;-><init>(Lcom/android/samsungtest/camera/Camera;Landroid/location/Location;)V

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/android/seccamera/SecCamera;->takePicture(Lcom/sec/android/seccamera/SecCamera$ShutterCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;)V

    .line 1088
    return-void

    .line 1058
    :cond_8f
    const-string v3, "800x480"

    const-string v4, "800x480"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 1067
    const/16 v2, 0x280

    .line 1068
    const/16 v1, 0x1e0

    goto :goto_32

    .line 1071
    :cond_9e
    const-string v3, "800x480"

    const-string v4, "640x480"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 1072
    const/16 v2, 0x280

    .line 1073
    const/16 v1, 0x1e0

    goto :goto_32

    .line 1076
    :cond_ad
    const/16 v2, 0x140

    .line 1077
    const/16 v1, 0xf0

    goto :goto_32
.end method


# virtual methods
.method public dismissFreezeFrame()V
    .registers 3

    .prologue
    .line 930
    const-string v0, "testCamera"

    const-string v1, "dismissFreezeFrame"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$ImageCapture;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mStatus:I
    invoke-static {v0}, Lcom/android/samsungtest/camera/Camera;->access$500(Lcom/android/samsungtest/camera/Camera;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1b

    .line 934
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$ImageCapture;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/samsungtest/camera/Camera;->access$600(Lcom/android/samsungtest/camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 938
    :goto_1a
    return-void

    .line 936
    :cond_1b
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$ImageCapture;->this$0:Lcom/android/samsungtest/camera/Camera;

    #calls: Lcom/android/samsungtest/camera/Camera;->restartPreview()V
    invoke-static {v0}, Lcom/android/samsungtest/camera/Camera;->access$3200(Lcom/android/samsungtest/camera/Camera;)V

    goto :goto_1a
.end method

.method public initiate(Z)V
    .registers 3
    .parameter "captureOnly"

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$ImageCapture;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/android/samsungtest/camera/Camera;->access$1300(Lcom/android/samsungtest/camera/Camera;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    if-nez v0, :cond_9

    .line 1024
    :goto_8
    return-void

    .line 1021
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/samsungtest/camera/Camera$ImageCapture;->mCapturing:Z

    .line 1023
    invoke-direct {p0, p1}, Lcom/android/samsungtest/camera/Camera$ImageCapture;->capture(Z)V

    goto :goto_8
.end method

.method public onSnap()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1091
    const-string v0, "testCamera"

    const-string v1, "onSnap()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$ImageCapture;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mPausing:Z
    invoke-static {v0}, Lcom/android/samsungtest/camera/Camera;->access$2200(Lcom/android/samsungtest/camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1093
    const-string v0, "testCamera"

    const-string v1, "onSnap() - mPausing == true, return "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    :goto_18
    return-void

    .line 1097
    :cond_19
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$ImageCapture;->this$0:Lcom/android/samsungtest/camera/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/android/samsungtest/camera/Camera;->mCaptureStartTime:J
    invoke-static {v0, v1, v2}, Lcom/android/samsungtest/camera/Camera;->access$2002(Lcom/android/samsungtest/camera/Camera;J)J

    .line 1102
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$ImageCapture;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mStatus:I
    invoke-static {v0}, Lcom/android/samsungtest/camera/Camera;->access$500(Lcom/android/samsungtest/camera/Camera;)I

    move-result v0

    if-eq v0, v4, :cond_33

    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$ImageCapture;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mStatus:I
    invoke-static {v0}, Lcom/android/samsungtest/camera/Camera;->access$500(Lcom/android/samsungtest/camera/Camera;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_43

    .line 1104
    :cond_33
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$ImageCapture;->this$0:Lcom/android/samsungtest/camera/Camera;

    #setter for: Lcom/android/samsungtest/camera/Camera;->mKeepAndRestartPreview:Z
    invoke-static {v0, v3}, Lcom/android/samsungtest/camera/Camera;->access$3602(Lcom/android/samsungtest/camera/Camera;Z)Z

    .line 1105
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$ImageCapture;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/samsungtest/camera/Camera;->access$600(Lcom/android/samsungtest/camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_18

    .line 1120
    :cond_43
    const-string v0, "testCamera"

    const-string v1, "mStatus = SNAPSHOT_IN_PROGRESS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$ImageCapture;->this$0:Lcom/android/samsungtest/camera/Camera;

    #setter for: Lcom/android/samsungtest/camera/Camera;->mStatus:I
    invoke-static {v0, v4}, Lcom/android/samsungtest/camera/Camera;->access$502(Lcom/android/samsungtest/camera/Camera;I)I

    .line 1123
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$ImageCapture;->this$0:Lcom/android/samsungtest/camera/Camera;

    #setter for: Lcom/android/samsungtest/camera/Camera;->mKeepAndRestartPreview:Z
    invoke-static {v0, v3}, Lcom/android/samsungtest/camera/Camera;->access$3602(Lcom/android/samsungtest/camera/Camera;Z)Z

    .line 1125
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$ImageCapture;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mImageCapture:Lcom/android/samsungtest/camera/Camera$ImageCapture;
    invoke-static {v0}, Lcom/android/samsungtest/camera/Camera;->access$2800(Lcom/android/samsungtest/camera/Camera;)Lcom/android/samsungtest/camera/Camera$ImageCapture;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/samsungtest/camera/Camera$ImageCapture;->initiate(Z)V

    goto :goto_18
.end method
