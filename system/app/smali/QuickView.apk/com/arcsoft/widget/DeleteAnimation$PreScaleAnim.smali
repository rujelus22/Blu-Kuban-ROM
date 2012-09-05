.class Lcom/arcsoft/widget/DeleteAnimation$PreScaleAnim;
.super Landroid/view/animation/Animation;
.source "DeleteAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/widget/DeleteAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreScaleAnim"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/arcsoft/widget/DeleteAnimation;


# direct methods
.method private constructor <init>(Lcom/arcsoft/widget/DeleteAnimation;)V
    .registers 2
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/arcsoft/widget/DeleteAnimation$PreScaleAnim;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/arcsoft/widget/DeleteAnimation;Lcom/arcsoft/widget/DeleteAnimation$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/arcsoft/widget/DeleteAnimation$PreScaleAnim;-><init>(Lcom/arcsoft/widget/DeleteAnimation;)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 10
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/high16 v6, 0x4000

    const v5, 0x3e4ccccc

    .line 249
    new-instance v1, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/arcsoft/widget/DeleteAnimation$PreScaleAnim;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->preView:Lcom/arcsoft/widget/BitmapView;
    invoke-static {v4}, Lcom/arcsoft/widget/DeleteAnimation;->access$1100(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/BitmapView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/arcsoft/widget/BitmapView;->getOriDisplayRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 251
    .local v1, dst:Landroid/graphics/RectF;
    iget-object v4, p0, Lcom/arcsoft/widget/DeleteAnimation$PreScaleAnim;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->preImgInfo:Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;
    invoke-static {v4}, Lcom/arcsoft/widget/DeleteAnimation;->access$1200(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;

    move-result-object v4

    iget v4, v4, Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;->mImgDisplayWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    div-float v2, v4, v6

    .line 252
    .local v2, offX:F
    iget-object v4, p0, Lcom/arcsoft/widget/DeleteAnimation$PreScaleAnim;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->preImgInfo:Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;
    invoke-static {v4}, Lcom/arcsoft/widget/DeleteAnimation;->access$1200(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;

    move-result-object v4

    iget v4, v4, Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;->mImgDisplayHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    div-float v3, v4, v6

    .line 254
    .local v3, offY:F
    iget v4, v1, Landroid/graphics/RectF;->left:F

    mul-float v5, p1, v2

    add-float/2addr v4, v5

    iput v4, v1, Landroid/graphics/RectF;->left:F

    .line 255
    iget v4, v1, Landroid/graphics/RectF;->top:F

    mul-float v5, p1, v3

    add-float/2addr v4, v5

    iput v4, v1, Landroid/graphics/RectF;->top:F

    .line 256
    iget v4, v1, Landroid/graphics/RectF;->right:F

    mul-float v5, p1, v2

    sub-float/2addr v4, v5

    iput v4, v1, Landroid/graphics/RectF;->right:F

    .line 257
    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    mul-float v5, p1, v3

    sub-float/2addr v4, v5

    iput v4, v1, Landroid/graphics/RectF;->bottom:F

    .line 259
    iget v4, v1, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/arcsoft/widget/DeleteAnimation$PreScaleAnim;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->TRANS_VALUE:F
    invoke-static {v5}, Lcom/arcsoft/widget/DeleteAnimation;->access$1300(Lcom/arcsoft/widget/DeleteAnimation;)F

    move-result v5

    add-float/2addr v5, v2

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    iput v4, v1, Landroid/graphics/RectF;->left:F

    .line 260
    iget v4, v1, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/arcsoft/widget/DeleteAnimation$PreScaleAnim;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->TRANS_VALUE:F
    invoke-static {v5}, Lcom/arcsoft/widget/DeleteAnimation;->access$1300(Lcom/arcsoft/widget/DeleteAnimation;)F

    move-result v5

    add-float/2addr v5, v2

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    iput v4, v1, Landroid/graphics/RectF;->right:F

    .line 262
    const/16 v0, 0xff

    .line 263
    .local v0, alpha:I
    const/high16 v4, 0x42a0

    mul-float/2addr v4, p1

    float-to-int v4, v4

    sub-int/2addr v0, v4

    .line 264
    iget-object v4, p0, Lcom/arcsoft/widget/DeleteAnimation$PreScaleAnim;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->preView:Lcom/arcsoft/widget/BitmapView;
    invoke-static {v4}, Lcom/arcsoft/widget/DeleteAnimation;->access$1100(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/BitmapView;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/arcsoft/widget/BitmapView;->setBitmapAlpha(I)V

    .line 266
    iget-object v4, p0, Lcom/arcsoft/widget/DeleteAnimation$PreScaleAnim;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->preView:Lcom/arcsoft/widget/BitmapView;
    invoke-static {v4}, Lcom/arcsoft/widget/DeleteAnimation;->access$1100(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/BitmapView;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/arcsoft/widget/BitmapView;->setDisplayRect(Landroid/graphics/RectF;)V

    .line 267
    const/4 v1, 0x0

    .line 268
    iget-object v4, p0, Lcom/arcsoft/widget/DeleteAnimation$PreScaleAnim;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->preView:Lcom/arcsoft/widget/BitmapView;
    invoke-static {v4}, Lcom/arcsoft/widget/DeleteAnimation;->access$1100(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/BitmapView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/arcsoft/widget/BitmapView;->invalidate()V

    .line 269
    return-void
.end method

.method public initialize(IIII)V
    .registers 7
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 275
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 277
    const-wide/16 v0, 0x190

    invoke-virtual {p0, v0, v1}, Lcom/arcsoft/widget/DeleteAnimation$PreScaleAnim;->setDuration(J)V

    .line 278
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/arcsoft/widget/DeleteAnimation$PreScaleAnim;->setFillAfter(Z)V

    .line 279
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/arcsoft/widget/DeleteAnimation$PreScaleAnim;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 280
    return-void
.end method
