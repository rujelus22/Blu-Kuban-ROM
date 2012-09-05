.class public abstract Lcom/cooliris/media/RootLayer;
.super Lcom/cooliris/media/Layer;
.source "RootLayer.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/cooliris/media/Layer;-><init>()V

    return-void
.end method


# virtual methods
.method public handleLowMemory()V
    .registers 1

    .prologue
    .line 51
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 59
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 55
    return-void
.end method

.method public onSensorChanged(Lcom/cooliris/media/RenderView;Landroid/hardware/SensorEvent;)V
    .registers 3
    .parameter "view"
    .parameter "e"

    .prologue
    .line 35
    return-void
.end method

.method public onSurfaceChanged(Lcom/cooliris/media/RenderView;II)V
    .registers 4
    .parameter "view"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 32
    return-void
.end method

.method public onSurfaceCreated(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .registers 3
    .parameter "renderView"
    .parameter "gl"

    .prologue
    .line 29
    return-void
.end method
