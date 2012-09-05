.class Lcom/android/samsungtest/camera/Camera$1;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/widget/ZoomButtonsController$OnZoomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/samsungtest/camera/Camera;->initializeZoom()V
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
    .line 309
    iput-object p1, p0, Lcom/android/samsungtest/camera/Camera$1;->this$0:Lcom/android/samsungtest/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(Z)V
    .registers 3
    .parameter "visible"

    .prologue
    .line 311
    if-eqz p1, :cond_7

    .line 312
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$1;->this$0:Lcom/android/samsungtest/camera/Camera;

    #calls: Lcom/android/samsungtest/camera/Camera;->updateZoomButtonsEnabled()V
    invoke-static {v0}, Lcom/android/samsungtest/camera/Camera;->access$800(Lcom/android/samsungtest/camera/Camera;)V

    .line 314
    :cond_7
    return-void
.end method

.method public onZoom(Z)V
    .registers 5
    .parameter "zoomIn"

    .prologue
    const/4 v2, 0x1

    .line 317
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$1;->this$0:Lcom/android/samsungtest/camera/Camera;

    #calls: Lcom/android/samsungtest/camera/Camera;->isZooming()Z
    invoke-static {v0}, Lcom/android/samsungtest/camera/Camera;->access$900(Lcom/android/samsungtest/camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 342
    :cond_9
    :goto_9
    return-void

    .line 319
    :cond_a
    if-eqz p1, :cond_5d

    .line 320
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$1;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mZoomValue:I
    invoke-static {v0}, Lcom/android/samsungtest/camera/Camera;->access$1000(Lcom/android/samsungtest/camera/Camera;)I

    move-result v0

    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera$1;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mZoomMax:I
    invoke-static {v1}, Lcom/android/samsungtest/camera/Camera;->access$1100(Lcom/android/samsungtest/camera/Camera;)I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 321
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$1;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mSmoothZoomSupported:Z
    invoke-static {v0}, Lcom/android/samsungtest/camera/Camera;->access$1200(Lcom/android/samsungtest/camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 322
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$1;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/android/samsungtest/camera/Camera;->access$1300(Lcom/android/samsungtest/camera/Camera;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera$1;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mZoomValue:I
    invoke-static {v1}, Lcom/android/samsungtest/camera/Camera;->access$1000(Lcom/android/samsungtest/camera/Camera;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->startSmoothZoom(I)V

    .line 323
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$1;->this$0:Lcom/android/samsungtest/camera/Camera;

    #setter for: Lcom/android/samsungtest/camera/Camera;->mZooming:Z
    invoke-static {v0, v2}, Lcom/android/samsungtest/camera/Camera;->access$1402(Lcom/android/samsungtest/camera/Camera;Z)Z

    goto :goto_9

    .line 325
    :cond_39
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$1;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;
    invoke-static {v0}, Lcom/android/samsungtest/camera/Camera;->access$1500(Lcom/android/samsungtest/camera/Camera;)Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera$1;->this$0:Lcom/android/samsungtest/camera/Camera;

    invoke-static {v1}, Lcom/android/samsungtest/camera/Camera;->access$1004(Lcom/android/samsungtest/camera/Camera;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setZoom(I)V

    .line 326
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$1;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/android/samsungtest/camera/Camera;->access$1300(Lcom/android/samsungtest/camera/Camera;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera$1;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;
    invoke-static {v1}, Lcom/android/samsungtest/camera/Camera;->access$1500(Lcom/android/samsungtest/camera/Camera;)Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 327
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$1;->this$0:Lcom/android/samsungtest/camera/Camera;

    #calls: Lcom/android/samsungtest/camera/Camera;->updateZoomButtonsEnabled()V
    invoke-static {v0}, Lcom/android/samsungtest/camera/Camera;->access$800(Lcom/android/samsungtest/camera/Camera;)V

    goto :goto_9

    .line 331
    :cond_5d
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$1;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mZoomValue:I
    invoke-static {v0}, Lcom/android/samsungtest/camera/Camera;->access$1000(Lcom/android/samsungtest/camera/Camera;)I

    move-result v0

    if-lez v0, :cond_9

    .line 332
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$1;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mSmoothZoomSupported:Z
    invoke-static {v0}, Lcom/android/samsungtest/camera/Camera;->access$1200(Lcom/android/samsungtest/camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 333
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$1;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/android/samsungtest/camera/Camera;->access$1300(Lcom/android/samsungtest/camera/Camera;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera$1;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mZoomValue:I
    invoke-static {v1}, Lcom/android/samsungtest/camera/Camera;->access$1000(Lcom/android/samsungtest/camera/Camera;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->startSmoothZoom(I)V

    .line 334
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$1;->this$0:Lcom/android/samsungtest/camera/Camera;

    #setter for: Lcom/android/samsungtest/camera/Camera;->mZooming:Z
    invoke-static {v0, v2}, Lcom/android/samsungtest/camera/Camera;->access$1402(Lcom/android/samsungtest/camera/Camera;Z)Z

    goto :goto_9

    .line 336
    :cond_84
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$1;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;
    invoke-static {v0}, Lcom/android/samsungtest/camera/Camera;->access$1500(Lcom/android/samsungtest/camera/Camera;)Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera$1;->this$0:Lcom/android/samsungtest/camera/Camera;

    invoke-static {v1}, Lcom/android/samsungtest/camera/Camera;->access$1006(Lcom/android/samsungtest/camera/Camera;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setZoom(I)V

    .line 337
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$1;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/android/samsungtest/camera/Camera;->access$1300(Lcom/android/samsungtest/camera/Camera;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera$1;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;
    invoke-static {v1}, Lcom/android/samsungtest/camera/Camera;->access$1500(Lcom/android/samsungtest/camera/Camera;)Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 338
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$1;->this$0:Lcom/android/samsungtest/camera/Camera;

    #calls: Lcom/android/samsungtest/camera/Camera;->updateZoomButtonsEnabled()V
    invoke-static {v0}, Lcom/android/samsungtest/camera/Camera;->access$800(Lcom/android/samsungtest/camera/Camera;)V

    goto/16 :goto_9
.end method
