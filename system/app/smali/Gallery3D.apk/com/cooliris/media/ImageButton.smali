.class public final Lcom/cooliris/media/ImageButton;
.super Lcom/cooliris/media/Layer;
.source "ImageButton.java"


# instance fields
.field private mAction:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private mCurrentImage:I

.field private final mFade:Lcom/cooliris/media/FloatAnim;

.field private mImage:I

.field private mPressed:Z

.field private mPressedImage:I

.field private mPreviousImage:I

.field private final mTransparent:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Lcom/cooliris/media/Layer;-><init>()V

    .line 32
    iput v2, p0, Lcom/cooliris/media/ImageButton;->mImage:I

    .line 34
    iput v2, p0, Lcom/cooliris/media/ImageButton;->mPressedImage:I

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cooliris/media/ImageButton;->mAction:Ljava/lang/Runnable;

    .line 40
    new-instance v0, Lcom/cooliris/media/FloatAnim;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v1}, Lcom/cooliris/media/FloatAnim;-><init>(F)V

    iput-object v0, p0, Lcom/cooliris/media/ImageButton;->mFade:Lcom/cooliris/media/FloatAnim;

    .line 42
    iput v2, p0, Lcom/cooliris/media/ImageButton;->mCurrentImage:I

    .line 44
    iput v2, p0, Lcom/cooliris/media/ImageButton;->mPreviousImage:I

    .line 46
    iput-boolean v2, p0, Lcom/cooliris/media/ImageButton;->mPressed:Z

    .line 48
    sget-object v0, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v0, 0x7f02007f

    iput v0, p0, Lcom/cooliris/media/ImageButton;->mTransparent:I

    .line 54
    iput-object p1, p0, Lcom/cooliris/media/ImageButton;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method

.method private containsPoint(FFZ)Z
    .registers 11
    .parameter "x"
    .parameter "y"
    .parameter "addTrackingMargin"

    .prologue
    const/4 v4, 0x0

    const/high16 v6, 0x41f0

    .line 70
    iget v5, p0, Lcom/cooliris/media/ImageButton;->mImage:I

    if-eqz v5, :cond_2a

    .line 71
    iget v2, p0, Lcom/cooliris/media/Layer;->mX:F

    .line 72
    .local v2, minX:F
    iget v3, p0, Lcom/cooliris/media/Layer;->mY:F

    .line 73
    .local v3, minY:F
    iget v5, p0, Lcom/cooliris/media/Layer;->mWidth:F

    add-float v0, v2, v5

    .line 74
    .local v0, maxX:F
    iget v5, p0, Lcom/cooliris/media/Layer;->mHeight:F

    add-float v1, v3, v5

    .line 75
    .local v1, maxY:F
    if-eqz p3, :cond_19

    .line 76
    sub-float/2addr v2, v6

    .line 77
    sub-float/2addr v3, v6

    .line 78
    add-float/2addr v0, v6

    .line 79
    add-float/2addr v1, v6

    .line 81
    :cond_19
    cmpl-float v5, p1, v2

    if-ltz v5, :cond_2a

    cmpl-float v5, p2, v3

    if-ltz v5, :cond_2a

    cmpg-float v5, p1, v0

    if-gez v5, :cond_2a

    cmpg-float v5, p2, v1

    if-gez v5, :cond_2a

    const/4 v4, 0x1

    .line 83
    .end local v0           #maxX:F
    .end local v1           #maxY:F
    .end local v2           #minX:F
    .end local v3           #minY:F
    :cond_2a
    return v4
.end method

.method private setImage(IZ)V
    .registers 8
    .parameter "image"
    .parameter "animate"

    .prologue
    const/high16 v4, 0x3f80

    .line 150
    iget v0, p0, Lcom/cooliris/media/ImageButton;->mCurrentImage:I

    if-eq v0, p1, :cond_1f

    .line 151
    if-eqz p2, :cond_20

    .line 152
    iget-object v0, p0, Lcom/cooliris/media/ImageButton;->mFade:Lcom/cooliris/media/FloatAnim;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cooliris/media/FloatAnim;->setValue(F)V

    .line 153
    iget-object v0, p0, Lcom/cooliris/media/ImageButton;->mFade:Lcom/cooliris/media/FloatAnim;

    const/high16 v1, 0x3e80

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/cooliris/media/FloatAnim;->animateValue(FFJ)V

    .line 157
    iget v0, p0, Lcom/cooliris/media/ImageButton;->mCurrentImage:I

    iput v0, p0, Lcom/cooliris/media/ImageButton;->mPreviousImage:I

    .line 161
    :goto_1d
    iput p1, p0, Lcom/cooliris/media/ImageButton;->mCurrentImage:I

    .line 163
    :cond_1f
    return-void

    .line 159
    :cond_20
    iget-object v0, p0, Lcom/cooliris/media/ImageButton;->mFade:Lcom/cooliris/media/FloatAnim;

    invoke-virtual {v0, v4}, Lcom/cooliris/media/FloatAnim;->setValue(F)V

    goto :goto_1d
.end method


# virtual methods
.method public generate(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/RenderView$Lists;)V
    .registers 4
    .parameter "view"
    .parameter "lists"

    .prologue
    .line 88
    iget-object v0, p2, Lcom/cooliris/media/RenderView$Lists;->updateList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p2, Lcom/cooliris/media/RenderView$Lists;->blendedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p2, Lcom/cooliris/media/RenderView$Lists;->hitTestList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "e"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 117
    .local v0, action:I
    packed-switch v0, :pswitch_data_5e

    .line 146
    :cond_9
    :goto_9
    return v5

    .line 120
    :pswitch_a
    iget-object v3, p0, Lcom/cooliris/media/ImageButton;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_9

    .line 121
    iget-object v3, p0, Lcom/cooliris/media/ImageButton;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/cooliris/media/Gallery;

    invoke-virtual {v3}, Lcom/cooliris/media/Gallery;->getGridLayer()Lcom/cooliris/media/GridLayer;

    move-result-object v2

    .line 122
    .local v2, layer:Lcom/cooliris/media/GridLayer;
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/cooliris/media/GridLayer;->isFullImageLoaded()Z

    move-result v3

    if-nez v3, :cond_2c

    invoke-virtual {v2}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cooliris/media/HudLayer;->getAlpha()F

    move-result v3

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-nez v3, :cond_9

    .line 124
    :cond_2c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v3, v4, v5}, Lcom/cooliris/media/ImageButton;->containsPoint(FFZ)Z

    move-result v1

    .line 125
    .local v1, hit:Z
    iput-boolean v1, p0, Lcom/cooliris/media/ImageButton;->mPressed:Z

    .line 126
    if-eqz v1, :cond_42

    .line 127
    iget v3, p0, Lcom/cooliris/media/ImageButton;->mPressedImage:I

    invoke-direct {p0, v3, v6}, Lcom/cooliris/media/ImageButton;->setImage(IZ)V

    goto :goto_9

    .line 129
    :cond_42
    iget v3, p0, Lcom/cooliris/media/ImageButton;->mImage:I

    invoke-direct {p0, v3, v5}, Lcom/cooliris/media/ImageButton;->setImage(IZ)V

    goto :goto_9

    .line 135
    .end local v1           #hit:Z
    .end local v2           #layer:Lcom/cooliris/media/GridLayer;
    :pswitch_48
    iget-boolean v3, p0, Lcom/cooliris/media/ImageButton;->mPressed:Z

    if-eqz v3, :cond_55

    .line 136
    iget-object v3, p0, Lcom/cooliris/media/ImageButton;->mAction:Ljava/lang/Runnable;

    if-eqz v3, :cond_55

    .line 137
    iget-object v3, p0, Lcom/cooliris/media/ImageButton;->mAction:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 140
    :cond_55
    :pswitch_55
    iput-boolean v6, p0, Lcom/cooliris/media/ImageButton;->mPressed:Z

    .line 141
    iget v3, p0, Lcom/cooliris/media/ImageButton;->mImage:I

    invoke-direct {p0, v3, v5}, Lcom/cooliris/media/ImageButton;->setImage(IZ)V

    goto :goto_9

    .line 117
    nop

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_a
        :pswitch_48
        :pswitch_a
        :pswitch_55
    .end packed-switch
.end method

.method public renderBlended(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .registers 13
    .parameter "view"
    .parameter "gl"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/cooliris/media/ImageButton;->mFade:Lcom/cooliris/media/FloatAnim;

    invoke-virtual {p1}, Lcom/cooliris/media/RenderView;->getFrameTime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/cooliris/media/FloatAnim;->getValue(J)F

    move-result v3

    .line 97
    .local v3, ratio:F
    iget v0, p0, Lcom/cooliris/media/ImageButton;->mCurrentImage:I

    invoke-virtual {p1, v0}, Lcom/cooliris/media/RenderView;->getResource(I)Lcom/cooliris/media/ResourceTexture;

    move-result-object v2

    .line 98
    .local v2, currentImage:Lcom/cooliris/media/Texture;
    iget v0, p0, Lcom/cooliris/media/ImageButton;->mPreviousImage:I

    invoke-virtual {p1, v0}, Lcom/cooliris/media/RenderView;->getResource(I)Lcom/cooliris/media/ResourceTexture;

    move-result-object v1

    .line 99
    .local v1, previousImage:Lcom/cooliris/media/Texture;
    iget v0, p0, Lcom/cooliris/media/ImageButton;->mTransparent:I

    invoke-virtual {p1, v0}, Lcom/cooliris/media/RenderView;->getResource(I)Lcom/cooliris/media/ResourceTexture;

    move-result-object v9

    .line 100
    .local v9, transparent:Lcom/cooliris/media/Texture;
    if-nez v2, :cond_1f

    .line 101
    move-object v2, v9

    .line 103
    :cond_1f
    if-nez v1, :cond_22

    .line 104
    move-object v1, v9

    .line 106
    :cond_22
    const v0, 0x3f7d70a4

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_31

    .line 107
    iget v0, p0, Lcom/cooliris/media/Layer;->mX:F

    iget v4, p0, Lcom/cooliris/media/Layer;->mY:F

    invoke-virtual {p1, v2, v0, v4}, Lcom/cooliris/media/RenderView;->draw2D(Lcom/cooliris/media/Texture;FF)V

    .line 112
    :goto_30
    return-void

    .line 109
    :cond_31
    iget v4, p0, Lcom/cooliris/media/Layer;->mX:F

    iget v5, p0, Lcom/cooliris/media/Layer;->mY:F

    const/4 v6, 0x0

    invoke-virtual {v2}, Lcom/cooliris/media/ResourceTexture;->getWidth()I

    move-result v0

    int-to-float v7, v0

    invoke-virtual {v2}, Lcom/cooliris/media/ResourceTexture;->getHeight()I

    move-result v0

    int-to-float v8, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Lcom/cooliris/media/RenderView;->drawMixed2D(Lcom/cooliris/media/Texture;Lcom/cooliris/media/Texture;FFFFFF)V

    goto :goto_30
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cooliris/media/ImageButton;->mPressed:Z

    .line 167
    iget v0, p0, Lcom/cooliris/media/ImageButton;->mImage:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/cooliris/media/ImageButton;->setImage(IZ)V

    .line 168
    return-void
.end method

.method public final setAction(Ljava/lang/Runnable;)V
    .registers 2
    .parameter "action"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/cooliris/media/ImageButton;->mAction:Ljava/lang/Runnable;

    .line 67
    return-void
.end method

.method public setImages(II)V
    .registers 4
    .parameter "image"
    .parameter "pressedImage"

    .prologue
    .line 58
    iput p1, p0, Lcom/cooliris/media/ImageButton;->mImage:I

    .line 59
    iput p2, p0, Lcom/cooliris/media/ImageButton;->mPressedImage:I

    .line 60
    iget-boolean v0, p0, Lcom/cooliris/media/ImageButton;->mPressed:Z

    if-nez v0, :cond_c

    .line 61
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/cooliris/media/ImageButton;->setImage(IZ)V

    .line 63
    :cond_c
    return-void
.end method
