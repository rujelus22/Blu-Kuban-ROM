.class final Lcom/android/samsungtest/camera/Camera$ShutterCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/sec/android/seccamera/SecCamera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShutterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/samsungtest/camera/Camera;)V
    .registers 2
    .parameter

    .prologue
    .line 625
    iput-object p1, p0, Lcom/android/samsungtest/camera/Camera$ShutterCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/samsungtest/camera/Camera;Lcom/android/samsungtest/camera/Camera$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 625
    invoke-direct {p0, p1}, Lcom/android/samsungtest/camera/Camera$ShutterCallback;-><init>(Lcom/android/samsungtest/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .registers 8

    .prologue
    .line 629
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera$ShutterCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    #setter for: Lcom/android/samsungtest/camera/Camera;->mShutterCallbackTime:J
    invoke-static {v1, v2, v3}, Lcom/android/samsungtest/camera/Camera;->access$1902(Lcom/android/samsungtest/camera/Camera;J)J

    .line 630
    const-string v1, "testCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shutter lag was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/samsungtest/camera/Camera$ShutterCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mShutterCallbackTime:J
    invoke-static {v3}, Lcom/android/samsungtest/camera/Camera;->access$1900(Lcom/android/samsungtest/camera/Camera;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/samsungtest/camera/Camera$ShutterCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mCaptureStartTime:J
    invoke-static {v5}, Lcom/android/samsungtest/camera/Camera;->access$2000(Lcom/android/samsungtest/camera/Camera;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera$ShutterCallback;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;
    invoke-static {v1}, Lcom/android/samsungtest/camera/Camera;->access$1500(Lcom/android/samsungtest/camera/Camera;)Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getPictureSize()Lcom/sec/android/seccamera/SecCamera$Size;

    move-result-object v0

    .line 638
    .local v0, pictureSize:Lcom/sec/android/seccamera/SecCamera$Size;
    return-void
.end method
