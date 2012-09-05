.class Lcom/arcsoft/widget/DeleteAnimation$PreComeAnim;
.super Landroid/view/animation/Animation;
.source "DeleteAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/widget/DeleteAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreComeAnim"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/arcsoft/widget/DeleteAnimation;


# direct methods
.method private constructor <init>(Lcom/arcsoft/widget/DeleteAnimation;)V
    .registers 2
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/arcsoft/widget/DeleteAnimation$PreComeAnim;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/arcsoft/widget/DeleteAnimation;Lcom/arcsoft/widget/DeleteAnimation$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lcom/arcsoft/widget/DeleteAnimation$PreComeAnim;-><init>(Lcom/arcsoft/widget/DeleteAnimation;)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 10
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/high16 v6, 0x4000

    const v4, 0x3e4ccccc

    const/high16 v5, 0x3f80

    .line 290
    new-instance v0, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/arcsoft/widget/DeleteAnimation$PreComeAnim;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->preView:Lcom/arcsoft/widget/BitmapView;
    invoke-static {v3}, Lcom/arcsoft/widget/DeleteAnimation;->access$1100(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/BitmapView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/arcsoft/widget/BitmapView;->getOriDisplayRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 292
    .local v0, dst:Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/arcsoft/widget/DeleteAnimation$PreComeAnim;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->preImgInfo:Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;
    invoke-static {v3}, Lcom/arcsoft/widget/DeleteAnimation;->access$1200(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;

    move-result-object v3

    iget v3, v3, Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;->mImgDisplayWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    div-float v1, v3, v6

    .line 293
    .local v1, offX:F
    iget-object v3, p0, Lcom/arcsoft/widget/DeleteAnimation$PreComeAnim;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->preImgInfo:Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;
    invoke-static {v3}, Lcom/arcsoft/widget/DeleteAnimation;->access$1200(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;

    move-result-object v3

    iget v3, v3, Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;->mImgDisplayHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    div-float v2, v3, v6

    .line 294
    .local v2, offY:F
    iget v3, v0, Landroid/graphics/RectF;->left:F

    sub-float v4, v5, p1

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v0, Landroid/graphics/RectF;->left:F

    .line 295
    iget v3, v0, Landroid/graphics/RectF;->top:F

    sub-float v4, v5, p1

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, v0, Landroid/graphics/RectF;->top:F

    .line 296
    iget v3, v0, Landroid/graphics/RectF;->right:F

    sub-float v4, v5, p1

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v0, Landroid/graphics/RectF;->right:F

    .line 297
    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v5, p1

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    .line 299
    iget-object v3, p0, Lcom/arcsoft/widget/DeleteAnimation$PreComeAnim;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->preView:Lcom/arcsoft/widget/BitmapView;
    invoke-static {v3}, Lcom/arcsoft/widget/DeleteAnimation;->access$1100(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/BitmapView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/arcsoft/widget/BitmapView;->setDisplayRect(Landroid/graphics/RectF;)V

    .line 300
    const/4 v0, 0x0

    .line 301
    iget-object v3, p0, Lcom/arcsoft/widget/DeleteAnimation$PreComeAnim;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->preView:Lcom/arcsoft/widget/BitmapView;
    invoke-static {v3}, Lcom/arcsoft/widget/DeleteAnimation;->access$1100(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/BitmapView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/arcsoft/widget/BitmapView;->invalidate()V

    .line 302
    return-void
.end method

.method public initialize(IIII)V
    .registers 7
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 308
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 310
    const-wide/16 v0, 0x258

    invoke-virtual {p0, v0, v1}, Lcom/arcsoft/widget/DeleteAnimation$PreComeAnim;->setDuration(J)V

    .line 311
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/arcsoft/widget/DeleteAnimation$PreComeAnim;->setStartOffset(J)V

    .line 312
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/arcsoft/widget/DeleteAnimation$PreComeAnim;->setFillAfter(Z)V

    .line 313
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/arcsoft/widget/DeleteAnimation$PreComeAnim;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 314
    return-void
.end method
