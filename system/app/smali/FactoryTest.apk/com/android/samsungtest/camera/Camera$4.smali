.class Lcom/android/samsungtest/camera/Camera$4;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/samsungtest/camera/Camera;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/camera/Camera;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/camera/Camera;)V
    .registers 2
    .parameter

    .prologue
    .line 1239
    iput-object p1, p0, Lcom/android/samsungtest/camera/Camera$4;->this$0:Lcom/android/samsungtest/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1241
    const-string v1, "testCamera"

    const-string v2, "openCameraThread Start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    :try_start_7
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera$4;->this$0:Lcom/android/samsungtest/camera/Camera;

    sget v2, Lcom/android/samsungtest/camera/Camera;->cameraType:I

    invoke-static {v2}, Lcom/sec/android/seccamera/SecCamera;->open(I)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v2

    #setter for: Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v1, v2}, Lcom/android/samsungtest/camera/Camera;->access$1302(Lcom/android/samsungtest/camera/Camera;Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_12} :catch_52

    .line 1249
    const-string v1, "testCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate:Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/samsungtest/camera/Camera;->cameraType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    sget v1, Lcom/android/samsungtest/camera/Camera;->cameraType:I

    sget v2, Lcom/android/samsungtest/camera/Camera;->REAR:I

    if-eq v1, v2, :cond_38

    sget v1, Lcom/android/samsungtest/camera/Camera;->cameraType:I

    sget v2, Lcom/android/samsungtest/camera/Camera;->NONE:I

    if-ne v1, v2, :cond_61

    .line 1251
    :cond_38
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera$4;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v1}, Lcom/android/samsungtest/camera/Camera;->access$1300(Lcom/android/samsungtest/camera/Camera;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setShootingMode(I)V

    .line 1256
    :goto_42
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera$4;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v1}, Lcom/android/samsungtest/camera/Camera;->access$1300(Lcom/android/samsungtest/camera/Camera;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/camera/Camera$4;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mErrorCallback:Lcom/android/samsungtest/camera/Camera$ErrorCallback;
    invoke-static {v2}, Lcom/android/samsungtest/camera/Camera;->access$3800(Lcom/android/samsungtest/camera/Camera;)Lcom/android/samsungtest/camera/Camera$ErrorCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setErrorCallback(Lcom/sec/android/seccamera/SecCamera$ErrorCallback;)V

    .line 1257
    :goto_51
    return-void

    .line 1244
    :catch_52
    move-exception v0

    .line 1245
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "testCamera"

    const-string v2, "service cannot connect. critical exception occured. : "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera$4;->this$0:Lcom/android/samsungtest/camera/Camera;

    const/4 v2, 0x1

    #setter for: Lcom/android/samsungtest/camera/Camera;->mbErrorFlag:Z
    invoke-static {v1, v2}, Lcom/android/samsungtest/camera/Camera;->access$3702(Lcom/android/samsungtest/camera/Camera;Z)Z

    goto :goto_51

    .line 1254
    .end local v0           #e:Ljava/lang/Exception;
    :cond_61
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera$4;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v1}, Lcom/android/samsungtest/camera/Camera;->access$1300(Lcom/android/samsungtest/camera/Camera;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setShootingMode(I)V

    goto :goto_42
.end method
