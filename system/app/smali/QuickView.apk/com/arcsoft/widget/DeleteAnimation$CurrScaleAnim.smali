.class Lcom/arcsoft/widget/DeleteAnimation$CurrScaleAnim;
.super Landroid/view/animation/Animation;
.source "DeleteAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/widget/DeleteAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurrScaleAnim"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/arcsoft/widget/DeleteAnimation;


# direct methods
.method private constructor <init>(Lcom/arcsoft/widget/DeleteAnimation;)V
    .registers 2
    .parameter

    .prologue
    .line 529
    iput-object p1, p0, Lcom/arcsoft/widget/DeleteAnimation$CurrScaleAnim;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/arcsoft/widget/DeleteAnimation;Lcom/arcsoft/widget/DeleteAnimation$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 529
    invoke-direct {p0, p1}, Lcom/arcsoft/widget/DeleteAnimation$CurrScaleAnim;-><init>(Lcom/arcsoft/widget/DeleteAnimation;)V

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

    .line 535
    new-instance v1, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/arcsoft/widget/DeleteAnimation$CurrScaleAnim;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->currView:Lcom/arcsoft/widget/BitmapView;
    invoke-static {v4}, Lcom/arcsoft/widget/DeleteAnimation;->access$1700(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/BitmapView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/arcsoft/widget/BitmapView;->getOriDisplayRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 537
    .local v1, dst:Landroid/graphics/RectF;
    iget-object v4, p0, Lcom/arcsoft/widget/DeleteAnimation$CurrScaleAnim;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->currImgInfo:Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;
    invoke-static {v4}, Lcom/arcsoft/widget/DeleteAnimation;->access$1800(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;

    move-result-object v4

    iget v4, v4, Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;->mImgDisplayWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    div-float v2, v4, v6

    .line 538
    .local v2, offX:F
    iget-object v4, p0, Lcom/arcsoft/widget/DeleteAnimation$CurrScaleAnim;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->currImgInfo:Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;
    invoke-static {v4}, Lcom/arcsoft/widget/DeleteAnimation;->access$1800(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;

    move-result-object v4

    iget v4, v4, Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;->mImgDisplayHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    div-float v3, v4, v6

    .line 539
    .local v3, offY:F
    iget v4, v1, Landroid/graphics/RectF;->left:F

    mul-float v5, p1, v2

    add-float/2addr v4, v5

    iput v4, v1, Landroid/graphics/RectF;->left:F

    .line 540
    iget v4, v1, Landroid/graphics/RectF;->top:F

    mul-float v5, p1, v3

    add-float/2addr v4, v5

    iput v4, v1, Landroid/graphics/RectF;->top:F

    .line 541
    iget v4, v1, Landroid/graphics/RectF;->right:F

    mul-float v5, p1, v2

    sub-float/2addr v4, v5

    iput v4, v1, Landroid/graphics/RectF;->right:F

    .line 542
    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    mul-float v5, p1, v3

    sub-float/2addr v4, v5

    iput v4, v1, Landroid/graphics/RectF;->bottom:F

    .line 544
    const/16 v0, 0xff

    .line 545
    .local v0, alpha:I
    const/high16 v4, 0x42a0

    mul-float/2addr v4, p1

    float-to-int v4, v4

    sub-int/2addr v0, v4

    .line 547
    iget-object v4, p0, Lcom/arcsoft/widget/DeleteAnimation$CurrScaleAnim;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->currView:Lcom/arcsoft/widget/BitmapView;
    invoke-static {v4}, Lcom/arcsoft/widget/DeleteAnimation;->access$1700(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/BitmapView;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/arcsoft/widget/BitmapView;->setDisplayRect(Landroid/graphics/RectF;)V

    .line 548
    iget-object v4, p0, Lcom/arcsoft/widget/DeleteAnimation$CurrScaleAnim;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->currView:Lcom/arcsoft/widget/BitmapView;
    invoke-static {v4}, Lcom/arcsoft/widget/DeleteAnimation;->access$1700(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/BitmapView;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/arcsoft/widget/BitmapView;->setBitmapAlpha(I)V

    .line 549
    const/4 v1, 0x0

    .line 550
    iget-object v4, p0, Lcom/arcsoft/widget/DeleteAnimation$CurrScaleAnim;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->currView:Lcom/arcsoft/widget/BitmapView;
    invoke-static {v4}, Lcom/arcsoft/widget/DeleteAnimation;->access$1700(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/BitmapView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/arcsoft/widget/BitmapView;->invalidate()V

    .line 551
    return-void
.end method

.method public initialize(IIII)V
    .registers 7
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 557
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 558
    const-wide/16 v0, 0x190

    invoke-virtual {p0, v0, v1}, Lcom/arcsoft/widget/DeleteAnimation$CurrScaleAnim;->setDuration(J)V

    .line 559
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/arcsoft/widget/DeleteAnimation$CurrScaleAnim;->setFillAfter(Z)V

    .line 560
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/arcsoft/widget/DeleteAnimation$CurrScaleAnim;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 561
    return-void
.end method
