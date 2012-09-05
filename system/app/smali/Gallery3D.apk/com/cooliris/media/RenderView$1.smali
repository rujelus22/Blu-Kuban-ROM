.class Lcom/cooliris/media/RenderView$1;
.super Ljava/lang/Object;
.source "RenderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/RenderView;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/RenderView;


# direct methods
.method constructor <init>(Lcom/cooliris/media/RenderView;)V
    .registers 2
    .parameter

    .prologue
    .line 706
    iput-object p1, p0, Lcom/cooliris/media/RenderView$1;->this$0:Lcom/cooliris/media/RenderView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 708
    iget-object v1, p0, Lcom/cooliris/media/RenderView$1;->this$0:Lcom/cooliris/media/RenderView;

    #getter for: Lcom/cooliris/media/RenderView;->mPause:Z
    invoke-static {v1}, Lcom/cooliris/media/RenderView;->access$000(Lcom/cooliris/media/RenderView;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 709
    const-string v1, "RenderView"

    const-string v2, "RenderView is already paused"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_f
    :goto_f
    return-void

    .line 713
    :cond_10
    iget-object v1, p0, Lcom/cooliris/media/RenderView$1;->this$0:Lcom/cooliris/media/RenderView;

    #getter for: Lcom/cooliris/media/RenderView;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v1}, Lcom/cooliris/media/RenderView;->access$100(Lcom/cooliris/media/RenderView;)Landroid/hardware/SensorManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 714
    .local v0, sensorAccelerometer:Landroid/hardware/Sensor;
    if-eqz v0, :cond_29

    .line 715
    iget-object v1, p0, Lcom/cooliris/media/RenderView$1;->this$0:Lcom/cooliris/media/RenderView;

    #getter for: Lcom/cooliris/media/RenderView;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v1}, Lcom/cooliris/media/RenderView;->access$100(Lcom/cooliris/media/RenderView;)Landroid/hardware/SensorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/cooliris/media/RenderView$1;->this$0:Lcom/cooliris/media/RenderView;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 718
    :cond_29
    iget-object v1, p0, Lcom/cooliris/media/RenderView$1;->this$0:Lcom/cooliris/media/RenderView;

    #getter for: Lcom/cooliris/media/RenderView;->mRootLayer:Lcom/cooliris/media/RootLayer;
    invoke-static {v1}, Lcom/cooliris/media/RenderView;->access$200(Lcom/cooliris/media/RenderView;)Lcom/cooliris/media/RootLayer;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 719
    iget-object v1, p0, Lcom/cooliris/media/RenderView$1;->this$0:Lcom/cooliris/media/RenderView;

    #getter for: Lcom/cooliris/media/RenderView;->mRootLayer:Lcom/cooliris/media/RootLayer;
    invoke-static {v1}, Lcom/cooliris/media/RenderView;->access$200(Lcom/cooliris/media/RenderView;)Lcom/cooliris/media/RootLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cooliris/media/RootLayer;->onResume()V

    goto :goto_f
.end method
