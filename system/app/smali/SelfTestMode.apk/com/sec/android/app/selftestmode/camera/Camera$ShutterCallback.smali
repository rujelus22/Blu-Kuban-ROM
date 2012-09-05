.class final Lcom/sec/android/app/selftestmode/camera/Camera$ShutterCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/selftestmode/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShutterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/selftestmode/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/selftestmode/camera/Camera;)V
    .registers 2
    .parameter

    .prologue
    .line 811
    iput-object p1, p0, Lcom/sec/android/app/selftestmode/camera/Camera$ShutterCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/selftestmode/camera/Camera;Lcom/sec/android/app/selftestmode/camera/Camera$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 811
    invoke-direct {p0, p1}, Lcom/sec/android/app/selftestmode/camera/Camera$ShutterCallback;-><init>(Lcom/sec/android/app/selftestmode/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .registers 7

    .prologue
    .line 819
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$ShutterCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mShutterCallbackTime:J
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$1602(Lcom/sec/android/app/selftestmode/camera/Camera;J)J

    .line 821
    const-string v0, "testCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shutter lag was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera$ShutterCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mShutterCallbackTime:J
    invoke-static {v2}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$1600(Lcom/sec/android/app/selftestmode/camera/Camera;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/sec/android/app/selftestmode/camera/Camera$ShutterCallback;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mCaptureStartTime:J
    invoke-static {v4}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$1700(Lcom/sec/android/app/selftestmode/camera/Camera;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    return-void
.end method
