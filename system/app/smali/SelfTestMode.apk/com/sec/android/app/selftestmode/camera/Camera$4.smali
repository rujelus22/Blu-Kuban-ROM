.class Lcom/sec/android/app/selftestmode/camera/Camera$4;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/selftestmode/camera/Camera;->onCreate(Landroid/os/Bundle;)V
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
    .line 1849
    iput-object p1, p0, Lcom/sec/android/app/selftestmode/camera/Camera$4;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1853
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 1855
    .local v0, cameraCnt:I
    const-string v1, "testCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate:Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/selftestmode/camera/Camera$4;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->cameraType:I
    invoke-static {v3}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$2800(Lcom/sec/android/app/selftestmode/camera/Camera;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "camera count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera$4;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    iget-object v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera$4;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->cameraType:I
    invoke-static {v2}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$2800(Lcom/sec/android/app/selftestmode/camera/Camera;)I

    move-result v2

    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    #setter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1, v2}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$1302(Lcom/sec/android/app/selftestmode/camera/Camera;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 1861
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera$4;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$1300(Lcom/sec/android/app/selftestmode/camera/Camera;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera$4;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mErrorCallback:Lcom/sec/android/app/selftestmode/camera/Camera$ErrorCallback;
    invoke-static {v2}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$4100(Lcom/sec/android/app/selftestmode/camera/Camera;)Lcom/sec/android/app/selftestmode/camera/Camera$ErrorCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1863
    return-void
.end method
