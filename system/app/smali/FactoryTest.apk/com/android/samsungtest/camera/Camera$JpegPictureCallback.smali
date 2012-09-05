.class final Lcom/android/samsungtest/camera/Camera$JpegPictureCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/sec/android/seccamera/SecCamera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field mJpegData:[B

.field final synthetic this$0:Lcom/android/samsungtest/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/android/samsungtest/camera/Camera;Landroid/location/Location;)V
    .registers 4
    .parameter
    .parameter "loc"

    .prologue
    .line 657
    iput-object p1, p0, Lcom/android/samsungtest/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 655
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/samsungtest/camera/Camera$JpegPictureCallback;->mJpegData:[B

    .line 659
    return-void
.end method


# virtual methods
.method public SavingImageForCaptureIntent(Lcom/sec/android/seccamera/SecCamera;)V
    .registers 11
    .parameter "camera"

    .prologue
    .line 682
    iget-object v3, p0, Lcom/android/samsungtest/camera/Camera$JpegPictureCallback;->mJpegData:[B

    if-eqz v3, :cond_d

    .line 685
    iget-object v3, p0, Lcom/android/samsungtest/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    iget-object v4, p0, Lcom/android/samsungtest/camera/Camera$JpegPictureCallback;->mJpegData:[B

    iput-object v4, v3, Lcom/android/samsungtest/camera/Camera;->capturedData:[B

    .line 686
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/samsungtest/camera/Camera$JpegPictureCallback;->mJpegData:[B

    .line 689
    :cond_d
    const-string v3, "testCamera"

    const-string v4, "mStatus = SNAPSHOT_COMPLETED"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iget-object v3, p0, Lcom/android/samsungtest/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    const/4 v4, 0x4

    #setter for: Lcom/android/samsungtest/camera/Camera;->mStatus:I
    invoke-static {v3, v4}, Lcom/android/samsungtest/camera/Camera;->access$502(Lcom/android/samsungtest/camera/Camera;I)I

    .line 691
    iget-object v3, p0, Lcom/android/samsungtest/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.CAMERA_STOPPED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/samsungtest/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 694
    iget-object v3, p0, Lcom/android/samsungtest/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    invoke-virtual {v3}, Lcom/android/samsungtest/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 695
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "capture_data"

    iget-object v4, p0, Lcom/android/samsungtest/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    iget-object v4, v4, Lcom/android/samsungtest/camera/Camera;->capturedData:[B

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 696
    iget-object v3, p0, Lcom/android/samsungtest/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v2}, Lcom/android/samsungtest/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 699
    iget-object v3, p0, Lcom/android/samsungtest/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    invoke-virtual {v3}, Lcom/android/samsungtest/camera/Camera;->finish()V

    .line 702
    const-wide/16 v3, 0x5dc

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/samsungtest/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mRawPictureCallbackTime:J
    invoke-static {v7}, Lcom/android/samsungtest/camera/Camera;->access$2100(Lcom/android/samsungtest/camera/Camera;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    sub-long v0, v3, v5

    .line 703
    .local v0, delay:J
    iget-object v3, p0, Lcom/android/samsungtest/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/samsungtest/camera/Camera;->access$600(Lcom/android/samsungtest/camera/Camera;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    const-wide/16 v5, 0x0

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 705
    return-void
.end method

.method public onPictureTaken([BLcom/sec/android/seccamera/SecCamera;)V
    .registers 10
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    .line 663
    iget-object v3, p0, Lcom/android/samsungtest/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mPausing:Z
    invoke-static {v3}, Lcom/android/samsungtest/camera/Camera;->access$2200(Lcom/android/samsungtest/camera/Camera;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 679
    :goto_8
    return-void

    .line 668
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 669
    .local v0, mJpegPictureCallback:J
    const-string v3, "testCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/samsungtest/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mRawPictureCallbackTime:J
    invoke-static {v5}, Lcom/android/samsungtest/camera/Camera;->access$2100(Lcom/android/samsungtest/camera/Camera;)J

    move-result-wide v5

    sub-long v5, v0, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms elapsed between"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " RawPictureCallback and JpegPictureCallback."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iput-object p1, p0, Lcom/android/samsungtest/camera/Camera$JpegPictureCallback;->mJpegData:[B

    .line 676
    iget-object v3, p0, Lcom/android/samsungtest/camera/Camera$JpegPictureCallback;->mJpegData:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/samsungtest/camera/Camera$JpegPictureCallback;->mJpegData:[B

    array-length v5, v5

    invoke-static {v3, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 677
    .local v2, testPic:Landroid/graphics/Bitmap;
    const-string v3, "testCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "testPic["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    invoke-virtual {p0, p2}, Lcom/android/samsungtest/camera/Camera$JpegPictureCallback;->SavingImageForCaptureIntent(Lcom/sec/android/seccamera/SecCamera;)V

    goto :goto_8
.end method
