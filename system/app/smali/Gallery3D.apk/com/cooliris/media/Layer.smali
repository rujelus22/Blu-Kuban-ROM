.class public abstract Lcom/cooliris/media/Layer;
.super Ljava/lang/Object;
.source "Layer.java"


# instance fields
.field mHeight:F

.field mHidden:Z

.field mWidth:F

.field mX:F

.field mY:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v0, p0, Lcom/cooliris/media/Layer;->mX:F

    .line 26
    iput v0, p0, Lcom/cooliris/media/Layer;->mY:F

    .line 28
    iput v0, p0, Lcom/cooliris/media/Layer;->mWidth:F

    .line 30
    iput v0, p0, Lcom/cooliris/media/Layer;->mHeight:F

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cooliris/media/Layer;->mHidden:Z

    return-void
.end method


# virtual methods
.method public containsPoint(FF)Z
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public abstract generate(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/RenderView$Lists;)V
.end method

.method public final getHeight()F
    .registers 2

    .prologue
    .line 52
    iget v0, p0, Lcom/cooliris/media/Layer;->mHeight:F

    return v0
.end method

.method public final getWidth()F
    .registers 2

    .prologue
    .line 48
    iget v0, p0, Lcom/cooliris/media/Layer;->mWidth:F

    return v0
.end method

.method public isHidden()Z
    .registers 2

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/cooliris/media/Layer;->mHidden:Z

    return v0
.end method

.method protected onHiddenChanged()V
    .registers 1

    .prologue
    .line 104
    return-void
.end method

.method protected onSizeChanged()V
    .registers 1

    .prologue
    .line 101
    return-void
.end method

.method protected onSurfaceCreated(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .registers 3
    .parameter "view"
    .parameter "gl"

    .prologue
    .line 98
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public renderBlended(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .registers 3
    .parameter "view"
    .parameter "gl"

    .prologue
    .line 85
    return-void
.end method

.method public renderOpaque(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .registers 3
    .parameter "view"
    .parameter "gl"

    .prologue
    .line 82
    return-void
.end method

.method public setHidden(Z)V
    .registers 3
    .parameter "hidden"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/cooliris/media/Layer;->mHidden:Z

    if-eq v0, p1, :cond_9

    .line 69
    iput-boolean p1, p0, Lcom/cooliris/media/Layer;->mHidden:Z

    .line 70
    invoke-virtual {p0}, Lcom/cooliris/media/Layer;->onHiddenChanged()V

    .line 72
    :cond_9
    return-void
.end method

.method public final setPosition(FF)V
    .registers 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 43
    iput p1, p0, Lcom/cooliris/media/Layer;->mX:F

    .line 44
    iput p2, p0, Lcom/cooliris/media/Layer;->mY:F

    .line 45
    return-void
.end method

.method public final setSize(FF)V
    .registers 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 56
    iget v0, p0, Lcom/cooliris/media/Layer;->mWidth:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_c

    iget v0, p0, Lcom/cooliris/media/Layer;->mHeight:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_13

    .line 57
    :cond_c
    iput p1, p0, Lcom/cooliris/media/Layer;->mWidth:F

    .line 58
    iput p2, p0, Lcom/cooliris/media/Layer;->mHeight:F

    .line 59
    invoke-virtual {p0}, Lcom/cooliris/media/Layer;->onSizeChanged()V

    .line 61
    :cond_13
    return-void
.end method

.method public update(Lcom/cooliris/media/RenderView;F)Z
    .registers 4
    .parameter "view"
    .parameter "frameInterval"

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method
