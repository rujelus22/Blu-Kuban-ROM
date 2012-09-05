.class final Lcom/sec/android/app/selftestmode/camera/Camera$JpegPictureCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/selftestmode/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field mJpegData:[B

.field final synthetic this$0:Lcom/sec/android/app/selftestmode/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/selftestmode/camera/Camera;Landroid/location/Location;)V
    .registers 4
    .parameter
    .parameter "loc"

    .prologue
    .line 865
    iput-object p1, p0, Lcom/sec/android/app/selftestmode/camera/Camera$JpegPictureCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 861
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$JpegPictureCallback;->mJpegData:[B

    .line 869
    return-void
.end method


# virtual methods
.method public SavingImageForCaptureIntent(Landroid/hardware/Camera;)V
    .registers 4
    .parameter "camera"

    .prologue
    .line 911
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$JpegPictureCallback;->mJpegData:[B

    if-eqz v0, :cond_d

    .line 917
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$JpegPictureCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera$JpegPictureCallback;->mJpegData:[B

    iput-object v1, v0, Lcom/sec/android/app/selftestmode/camera/Camera;->capturedData:[B

    .line 919
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$JpegPictureCallback;->mJpegData:[B

    .line 925
    :cond_d
    const-string v0, "testCamera"

    const-string v1, "mStatus = SNAPSHOT_COMPLETED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$JpegPictureCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    const/4 v1, 0x4

    #setter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mStatus:I
    invoke-static {v0, v1}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$502(Lcom/sec/android/app/selftestmode/camera/Camera;I)I

    .line 931
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$JpegPictureCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/selftestmode/camera/Camera;->capturedData:[B

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/selftestmode/camera/Camera$JpegPictureCallback;->storeImage([BLandroid/hardware/Camera;)V

    .line 935
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$JpegPictureCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #calls: Lcom/sec/android/app/selftestmode/camera/Camera;->restartPreview()V
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$2000(Lcom/sec/android/app/selftestmode/camera/Camera;)V

    .line 937
    return-void
.end method

.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .registers 9
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    .line 877
    iget-object v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera$JpegPictureCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mPausing:Z
    invoke-static {v2}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$1900(Lcom/sec/android/app/selftestmode/camera/Camera;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 905
    :goto_8
    return-void

    .line 887
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 889
    .local v0, mJpegPictureCallback:J
    const-string v2, "testCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/selftestmode/camera/Camera$JpegPictureCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mRawPictureCallbackTime:J
    invoke-static {v4}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$1800(Lcom/sec/android/app/selftestmode/camera/Camera;)J

    move-result-wide v4

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms elapsed between"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RawPictureCallback and JpegPictureCallback."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iput-object p1, p0, Lcom/sec/android/app/selftestmode/camera/Camera$JpegPictureCallback;->mJpegData:[B

    .line 903
    invoke-virtual {p0, p2}, Lcom/sec/android/app/selftestmode/camera/Camera$JpegPictureCallback;->SavingImageForCaptureIntent(Landroid/hardware/Camera;)V

    goto :goto_8
.end method

.method public storeImage([BLandroid/hardware/Camera;)V
    .registers 11
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 943
    const-string v4, "testCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "storeImage : bUseSdcard["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/selftestmode/camera/Camera$JpegPictureCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->bUseSdcard:Z
    invoke-static {v6}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$2100(Lcom/sec/android/app/selftestmode/camera/Camera;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :try_start_24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 949
    .local v0, dateTaken:J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #calls: Lcom/sec/android/app/selftestmode/camera/Camera;->createName(J)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$2200(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 953
    .local v3, name:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/selftestmode/camera/Camera$JpegPictureCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->bUseSdcard:Z
    invoke-static {v4}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$2100(Lcom/sec/android/app/selftestmode/camera/Camera;)Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 955
    invoke-static {}, Lcom/sec/android/app/selftestmode/camera/Camera;->getAvailableSpaceSd()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_5b

    .line 957
    iget-object v4, p0, Lcom/sec/android/app/selftestmode/camera/Camera$JpegPictureCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$2300()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/sec/android/app/selftestmode/camera/Camera;->writeImage(Ljava/lang/String;Ljava/lang/String;[B)V
    invoke-static {v4, v5, v3, p1}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$2400(Lcom/sec/android/app/selftestmode/camera/Camera;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 979
    .end local v0           #dateTaken:J
    .end local v3           #name:Ljava/lang/String;
    :goto_5a
    return-void

    .line 961
    .restart local v0       #dateTaken:J
    .restart local v3       #name:Ljava/lang/String;
    :cond_5b
    iget-object v4, p0, Lcom/sec/android/app/selftestmode/camera/Camera$JpegPictureCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    const/4 v5, 0x0

    #setter for: Lcom/sec/android/app/selftestmode/camera/Camera;->filePath:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$2502(Lcom/sec/android/app/selftestmode/camera/Camera;Ljava/lang/String;)Ljava/lang/String;
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_61} :catch_62

    goto :goto_5a

    .line 973
    .end local v0           #dateTaken:J
    .end local v3           #name:Ljava/lang/String;
    :catch_62
    move-exception v2

    .line 975
    .local v2, ex:Ljava/lang/Exception;
    const-string v4, "testCamera"

    const-string v5, "Exception while compressing image."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5a

    .line 969
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v0       #dateTaken:J
    .restart local v3       #name:Ljava/lang/String;
    :cond_6b
    :try_start_6b
    iget-object v4, p0, Lcom/sec/android/app/selftestmode/camera/Camera$JpegPictureCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    invoke-static {}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$2600()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/sec/android/app/selftestmode/camera/Camera;->writeImage(Ljava/lang/String;Ljava/lang/String;[B)V
    invoke-static {v4, v5, v3, p1}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$2400(Lcom/sec/android/app/selftestmode/camera/Camera;Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_74} :catch_62

    goto :goto_5a
.end method
