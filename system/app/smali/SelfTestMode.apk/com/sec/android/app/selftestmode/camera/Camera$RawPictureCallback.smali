.class final Lcom/sec/android/app/selftestmode/camera/Camera$RawPictureCallback;
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
    name = "RawPictureCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/selftestmode/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/selftestmode/camera/Camera;)V
    .registers 2
    .parameter

    .prologue
    .line 833
    iput-object p1, p0, Lcom/sec/android/app/selftestmode/camera/Camera$RawPictureCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/selftestmode/camera/Camera;Lcom/sec/android/app/selftestmode/camera/Camera$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 833
    invoke-direct {p0, p1}, Lcom/sec/android/app/selftestmode/camera/Camera$RawPictureCallback;-><init>(Lcom/sec/android/app/selftestmode/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .registers 9
    .parameter "rawData"
    .parameter "camera"

    .prologue
    .line 837
    const-string v0, "testCamera"

    const-string v1, "got RawPictureCallback..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$RawPictureCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mRawPictureCallbackTime:J
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$1802(Lcom/sec/android/app/selftestmode/camera/Camera;J)J

    .line 843
    const-string v0, "testCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera$RawPictureCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mRawPictureCallbackTime:J
    invoke-static {v2}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$1800(Lcom/sec/android/app/selftestmode/camera/Camera;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/sec/android/app/selftestmode/camera/Camera$RawPictureCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mShutterCallbackTime:J
    invoke-static {v4}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$1600(Lcom/sec/android/app/selftestmode/camera/Camera;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms elapsed between"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ShutterCallback and RawPictureCallback."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    return-void
.end method
