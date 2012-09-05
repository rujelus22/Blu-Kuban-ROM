.class final Lcom/sec/android/app/selftestmode/camera/Camera$ZoomListener;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$OnZoomChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/selftestmode/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ZoomListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/selftestmode/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/selftestmode/camera/Camera;)V
    .registers 2
    .parameter

    .prologue
    .line 581
    iput-object p1, p0, Lcom/sec/android/app/selftestmode/camera/Camera$ZoomListener;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/selftestmode/camera/Camera;Lcom/sec/android/app/selftestmode/camera/Camera$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 581
    invoke-direct {p0, p1}, Lcom/sec/android/app/selftestmode/camera/Camera$ZoomListener;-><init>(Lcom/sec/android/app/selftestmode/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onZoomChange(IZLandroid/hardware/Camera;)V
    .registers 7
    .parameter "zoomValue"
    .parameter "stopped"
    .parameter "camera"

    .prologue
    .line 589
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

    .line 593
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$ZoomListener;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #setter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mZoomValue:I
    invoke-static {v0, p1}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$1002(Lcom/sec/android/app/selftestmode/camera/Camera;I)I

    .line 599
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$ZoomListener;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #getter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$1500(Lcom/sec/android/app/selftestmode/camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 605
    if-eqz p2, :cond_38

    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$ZoomListener;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/selftestmode/camera/Camera;->mZooming:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$1402(Lcom/sec/android/app/selftestmode/camera/Camera;Z)Z

    .line 607
    :cond_38
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera$ZoomListener;->this$0:Lcom/sec/android/app/selftestmode/camera/Camera;

    #calls: Lcom/sec/android/app/selftestmode/camera/Camera;->updateZoomButtonsEnabled()V
    invoke-static {v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->access$800(Lcom/sec/android/app/selftestmode/camera/Camera;)V

    .line 609
    return-void
.end method
