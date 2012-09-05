.class Lcom/sec/android/app/selftestmode/camera/Camera$ImageCapture;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/sec/android/app/selftestmode/camera/Interface/Capturer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/selftestmode/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageCapture"
.end annotation


# instance fields
.field private mCapturing:Z

.field final synthetic this$0:Lcom/sec/android/app/selftestmode/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/selftestmode/camera/Camera;)V
    .registers 3
    .parameter

    .prologue
    .line 1477
    iput-object p1, p0, Lcom/sec/android/app/selftestmode/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1471
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$ImageCapture;->mCapturing:Z

    .line 1479
    return-void
.end method

.method private capture(Z)V
    .registers 8
    .parameter "captureOnly"

    .prologue
    .line 1557
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mPreviewing:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$3802(Lcom/sec/android/app/selftestmode/camera/Camera;Z)Z

    .line 1559
    const-string v1, "testCamera"

    const-string v2, "capture : mPreviewing set false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    const/4 v0, 0x0

    .line 1565
    .local v0, loc:Landroid/location/Location;
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$1500(Lcom/sec/android/app/selftestmode/camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "picture-size"

    iget-object v3, p0, Lcom/sec/android/app/selftestmode/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->cameraType:I
    invoke-static {v3}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$2800(Lcom/sec/android/app/selftestmode/camera/Camera;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/selftestmode/camera/Camera$ImageCapture;->getPictureSize(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$1300(Lcom/sec/android/app/selftestmode/camera/Camera;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$1500(Lcom/sec/android/app/selftestmode/camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1573
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$1300(Lcom/sec/android/app/selftestmode/camera/Camera;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mShutterCallback:Lcom/sec/android/app/selftestmode/camera/Camera$ShutterCallback;
    invoke-static {v2}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$3900(Lcom/sec/android/app/selftestmode/camera/Camera;)Lcom/sec/android/app/selftestmode/camera/Camera$ShutterCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/selftestmode/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mRawPictureCallback:Lcom/sec/android/app/selftestmode/camera/Camera$RawPictureCallback;
    invoke-static {v3}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$4000(Lcom/sec/android/app/selftestmode/camera/Camera;)Lcom/sec/android/app/selftestmode/camera/Camera$RawPictureCallback;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/selftestmode/camera/Camera$JpegPictureCallback;

    iget-object v5, p0, Lcom/sec/android/app/selftestmode/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    invoke-direct {v4, v5, v0}, Lcom/sec/android/app/selftestmode/camera/Camera$JpegPictureCallback;-><init>(Lcom/sec/android/app/selftestmode/camera/Camera;Landroid/location/Location;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1577
    return-void
.end method


# virtual methods
.method public dismissFreezeFrame()V
    .registers 3

    .prologue
    .line 1509
    const-string v0, "testCamera"

    const-string v1, "dismissFreezeFrame"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mStatus:I
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$500(Lcom/sec/android/app/selftestmode/camera/Camera;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1b

    .line 1517
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$600(Lcom/sec/android/app/selftestmode/camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1525
    :goto_1a
    return-void

    .line 1521
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #calls: Lcom/sec/android/app/selftestmode/camera/Camera;->restartPreview()V
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$2000(Lcom/sec/android/app/selftestmode/camera/Camera;)V

    goto :goto_1a
.end method

.method public getPictureSize(I)Ljava/lang/String;
    .registers 6
    .parameter "camType"

    .prologue
    .line 1583
    const/4 v0, 0x0

    .line 1587
    .local v0, resPicSize:Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1f

    .line 1591
    const-string v0, "1600x1200"

    .line 1609
    :goto_6
    const-string v1, "testCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPictureSize - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    return-object v0

    .line 1601
    :cond_1f
    const-string v0, "640x480"

    goto :goto_6
.end method

.method public initiate(Z)V
    .registers 3
    .parameter "captureOnly"

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$1300(Lcom/sec/android/app/selftestmode/camera/Camera;)Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_9

    .line 1551
    :goto_8
    return-void

    .line 1545
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$ImageCapture;->mCapturing:Z

    .line 1549
    invoke-direct {p0, p1}, Lcom/sec/android/app/selftestmode/camera/Camera$ImageCapture;->capture(Z)V

    goto :goto_8
.end method

.method public onSnap()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 1619
    const-string v0, "testCamera"

    const-string v1, "onSnap()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mPausing:Z
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$1900(Lcom/sec/android/app/selftestmode/camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1623
    const-string v0, "testCamera"

    const-string v1, "onSnap() - mPausing == true, return "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    :goto_17
    return-void

    .line 1631
    :cond_18
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mCaptureStartTime:J
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$1702(Lcom/sec/android/app/selftestmode/camera/Camera;J)J

    .line 1641
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mStatus:I
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$500(Lcom/sec/android/app/selftestmode/camera/Camera;)I

    move-result v0

    if-eq v0, v3, :cond_32

    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mStatus:I
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$500(Lcom/sec/android/app/selftestmode/camera/Camera;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3d

    .line 1647
    :cond_32
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$600(Lcom/sec/android/app/selftestmode/camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_17

    .line 1655
    :cond_3d
    const-string v0, "testCamera"

    const-string v1, "mStatus = SNAPSHOT_IN_PROGRESS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #setter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mStatus:I
    invoke-static {v0, v3}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$502(Lcom/sec/android/app/selftestmode/camera/Camera;I)I

    .line 1661
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$ImageCapture;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mImageCapture:Lcom/sec/android/app/selftestmode/camera/Camera$ImageCapture;
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$3300(Lcom/sec/android/app/selftestmode/camera/Camera;)Lcom/sec/android/app/selftestmode/camera/Camera$ImageCapture;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/selftestmode/camera/Camera$ImageCapture;->initiate(Z)V

    goto :goto_17
.end method
