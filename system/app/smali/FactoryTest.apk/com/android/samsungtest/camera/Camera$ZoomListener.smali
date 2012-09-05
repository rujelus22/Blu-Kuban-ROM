.class final Lcom/android/samsungtest/camera/Camera$ZoomListener;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/sec/android/seccamera/SecCamera$OnZoomChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ZoomListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/samsungtest/camera/Camera;)V
    .registers 2
    .parameter

    .prologue
    .line 476
    iput-object p1, p0, Lcom/android/samsungtest/camera/Camera$ZoomListener;->this$0:Lcom/android/samsungtest/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/samsungtest/camera/Camera;Lcom/android/samsungtest/camera/Camera$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 476
    invoke-direct {p0, p1}, Lcom/android/samsungtest/camera/Camera$ZoomListener;-><init>(Lcom/android/samsungtest/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onZoomChange(IZLcom/sec/android/seccamera/SecCamera;)V
    .registers 7
    .parameter "zoomValue"
    .parameter "stopped"
    .parameter "camera"

    .prologue
    .line 479
    const-string v0, "testCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZoomListener: zoom value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". stopped="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$ZoomListener;->this$0:Lcom/android/samsungtest/camera/Camera;

    #setter for: Lcom/android/samsungtest/camera/Camera;->mZoomValue:I
    invoke-static {v0, p1}, Lcom/android/samsungtest/camera/Camera;->access$1002(Lcom/android/samsungtest/camera/Camera;I)I

    .line 484
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$ZoomListener;->this$0:Lcom/android/samsungtest/camera/Camera;

    #getter for: Lcom/android/samsungtest/camera/Camera;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;
    invoke-static {v0}, Lcom/android/samsungtest/camera/Camera;->access$1500(Lcom/android/samsungtest/camera/Camera;)Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setZoom(I)V

    .line 487
    if-eqz p2, :cond_38

    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$ZoomListener;->this$0:Lcom/android/samsungtest/camera/Camera;

    const/4 v1, 0x0

    #setter for: Lcom/android/samsungtest/camera/Camera;->mZooming:Z
    invoke-static {v0, v1}, Lcom/android/samsungtest/camera/Camera;->access$1402(Lcom/android/samsungtest/camera/Camera;Z)Z

    .line 488
    :cond_38
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera$ZoomListener;->this$0:Lcom/android/samsungtest/camera/Camera;

    #calls: Lcom/android/samsungtest/camera/Camera;->updateZoomButtonsEnabled()V
    invoke-static {v0}, Lcom/android/samsungtest/camera/Camera;->access$800(Lcom/android/samsungtest/camera/Camera;)V

    .line 489
    return-void
.end method
