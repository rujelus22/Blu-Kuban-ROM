.class Lcom/sec/android/app/selftestmode/camera/Camera$1;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/widget/ZoomButtonsController$OnZoomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/selftestmode/camera/Camera;->initializeZoom()V
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
    .line 415
    iput-object p1, p0, Lcom/sec/android/app/selftestmode/camera/Camera$1;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(Z)V
    .registers 3
    .parameter "visible"

    .prologue
    .line 419
    if-eqz p1, :cond_7

    .line 421
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$1;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #calls: Lcom/sec/android/app/selftestmode/camera/Camera;->updateZoomButtonsEnabled()V
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$800(Lcom/sec/android/app/selftestmode/camera/Camera;)V

    .line 425
    :cond_7
    return-void
.end method

.method public onZoom(Z)V
    .registers 5
    .parameter "zoomIn"

    .prologue
    const/4 v2, 0x1

    .line 431
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$1;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #calls: Lcom/sec/android/app/selftestmode/camera/Camera;->isZooming()Z
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$900(Lcom/sec/android/app/selftestmode/camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 481
    :cond_9
    :goto_9
    return-void

    .line 435
    :cond_a
    if-eqz p1, :cond_5d

    .line 437
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$1;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mZoomValue:I
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$1000(Lcom/sec/android/app/selftestmode/camera/Camera;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera$1;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mZoomMax:I
    invoke-static {v1}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$1100(Lcom/sec/android/app/selftestmode/camera/Camera;)I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 439
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$1;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mSmoothZoomSupported:Z
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$1200(Lcom/sec/android/app/selftestmode/camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 441
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$1;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$1300(Lcom/sec/android/app/selftestmode/camera/Camera;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera$1;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mZoomValue:I
    invoke-static {v1}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$1000(Lcom/sec/android/app/selftestmode/camera/Camera;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->startSmoothZoom(I)V

    .line 443
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$1;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #setter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mZooming:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$1402(Lcom/sec/android/app/selftestmode/camera/Camera;Z)Z

    goto :goto_9

    .line 447
    :cond_39
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$1;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$1500(Lcom/sec/android/app/selftestmode/camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera$1;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    invoke-static {v1}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$1004(Lcom/sec/android/app/selftestmode/camera/Camera;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 449
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$1;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$1300(Lcom/sec/android/app/selftestmode/camera/Camera;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera$1;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$1500(Lcom/sec/android/app/selftestmode/camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 451
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$1;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #calls: Lcom/sec/android/app/selftestmode/camera/Camera;->updateZoomButtonsEnabled()V
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$800(Lcom/sec/android/app/selftestmode/camera/Camera;)V

    goto :goto_9

    .line 459
    :cond_5d
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$1;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mZoomValue:I
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$1000(Lcom/sec/android/app/selftestmode/camera/Camera;)I

    move-result v0

    if-lez v0, :cond_9

    .line 461
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$1;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mSmoothZoomSupported:Z
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$1200(Lcom/sec/android/app/selftestmode/camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 463
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$1;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$1300(Lcom/sec/android/app/selftestmode/camera/Camera;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera$1;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mZoomValue:I
    invoke-static {v1}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$1000(Lcom/sec/android/app/selftestmode/camera/Camera;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->startSmoothZoom(I)V

    .line 465
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$1;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #setter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mZooming:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$1402(Lcom/sec/android/app/selftestmode/camera/Camera;Z)Z

    goto :goto_9

    .line 469
    :cond_84
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$1;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$1500(Lcom/sec/android/app/selftestmode/camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera$1;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    invoke-static {v1}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$1006(Lcom/sec/android/app/selftestmode/camera/Camera;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 471
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$1;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$1300(Lcom/sec/android/app/selftestmode/camera/Camera;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera$1;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$1500(Lcom/sec/android/app/selftestmode/camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 473
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$1;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #calls: Lcom/sec/android/app/selftestmode/camera/Camera;->updateZoomButtonsEnabled()V
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$800(Lcom/sec/android/app/selftestmode/camera/Camera;)V

    goto/16 :goto_9
.end method
