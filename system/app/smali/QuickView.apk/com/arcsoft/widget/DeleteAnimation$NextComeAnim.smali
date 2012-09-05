.class Lcom/arcsoft/widget/DeleteAnimation$NextComeAnim;
.super Landroid/view/animation/Animation;
.source "DeleteAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/widget/DeleteAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NextComeAnim"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/arcsoft/widget/DeleteAnimation;


# direct methods
.method private constructor <init>(Lcom/arcsoft/widget/DeleteAnimation;)V
    .registers 2
    .parameter

    .prologue
    .line 386
    iput-object p1, p0, Lcom/arcsoft/widget/DeleteAnimation$NextComeAnim;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/arcsoft/widget/DeleteAnimation;Lcom/arcsoft/widget/DeleteAnimation$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lcom/arcsoft/widget/DeleteAnimation$NextComeAnim;-><init>(Lcom/arcsoft/widget/DeleteAnimation;)V

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

    .line 392
    new-instance v0, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/arcsoft/widget/DeleteAnimation$NextComeAnim;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->nextView:Lcom/arcsoft/widget/BitmapView;
    invoke-static {v3}, Lcom/arcsoft/widget/DeleteAnimation;->access$1500(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/BitmapView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/arcsoft/widget/BitmapView;->getOriDisplayRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 394
    .local v0, dst:Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/arcsoft/widget/DeleteAnimation$NextComeAnim;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->nextImgInfo:Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;
    invoke-static {v3}, Lcom/arcsoft/widget/DeleteAnimation;->access$1600(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;

    move-result-object v3

    iget v3, v3, Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;->mImgDisplayWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    div-float v1, v3, v6

    .line 395
    .local v1, offX:F
    iget-object v3, p0, Lcom/arcsoft/widget/DeleteAnimation$NextComeAnim;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->nextImgInfo:Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;
    invoke-static {v3}, Lcom/arcsoft/widget/DeleteAnimation;->access$1600(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;

    move-result-object v3

    iget v3, v3, Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;->mImgDisplayHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    div-float v2, v3, v6

    .line 396
    .local v2, offY:F
    iget v3, v0, Landroid/graphics/RectF;->left:F

    sub-float v4, v5, p1

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v0, Landroid/graphics/RectF;->left:F

    .line 397
    iget v3, v0, Landroid/graphics/RectF;->top:F

    sub-float v4, v5, p1

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, v0, Landroid/graphics/RectF;->top:F

    .line 398
    iget v3, v0, Landroid/graphics/RectF;->right:F

    sub-float v4, v5, p1

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v0, Landroid/graphics/RectF;->right:F

    .line 399
    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v5, p1

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    .line 401
    iget-object v3, p0, Lcom/arcsoft/widget/DeleteAnimation$NextComeAnim;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->nextView:Lcom/arcsoft/widget/BitmapView;
    invoke-static {v3}, Lcom/arcsoft/widget/DeleteAnimation;->access$1500(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/BitmapView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/arcsoft/widget/BitmapView;->setDisplayRect(Landroid/graphics/RectF;)V

    .line 402
    const/4 v0, 0x0

    .line 403
    iget-object v3, p0, Lcom/arcsoft/widget/DeleteAnimation$NextComeAnim;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->nextView:Lcom/arcsoft/widget/BitmapView;
    invoke-static {v3}, Lcom/arcsoft/widget/DeleteAnimation;->access$1500(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/BitmapView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/arcsoft/widget/BitmapView;->invalidate()V

    .line 404
    return-void
.end method

.method public initialize(IIII)V
    .registers 7
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 410
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 412
    const-wide/16 v0, 0x258

    invoke-virtual {p0, v0, v1}, Lcom/arcsoft/widget/DeleteAnimation$NextComeAnim;->setDuration(J)V

    .line 413
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/arcsoft/widget/DeleteAnimation$NextComeAnim;->setStartOffset(J)V

    .line 414
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/arcsoft/widget/DeleteAnimation$NextComeAnim;->setFillAfter(Z)V

    .line 415
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/arcsoft/widget/DeleteAnimation$NextComeAnim;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 416
    return-void
.end method
