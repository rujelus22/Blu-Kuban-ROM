.class Lcom/arcsoft/widget/DeleteAnimation$NextGoScaleAnim;
.super Landroid/view/animation/Animation;
.source "DeleteAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/widget/DeleteAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NextGoScaleAnim"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/arcsoft/widget/DeleteAnimation;


# direct methods
.method private constructor <init>(Lcom/arcsoft/widget/DeleteAnimation;)V
    .registers 2
    .parameter

    .prologue
    .line 493
    iput-object p1, p0, Lcom/arcsoft/widget/DeleteAnimation$NextGoScaleAnim;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/arcsoft/widget/DeleteAnimation;Lcom/arcsoft/widget/DeleteAnimation$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 493
    invoke-direct {p0, p1}, Lcom/arcsoft/widget/DeleteAnimation$NextGoScaleAnim;-><init>(Lcom/arcsoft/widget/DeleteAnimation;)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 10
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/high16 v5, 0x4000

    const/high16 v6, 0x3f80

    const v4, 0x3e4ccccc

    .line 499
    new-instance v0, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/arcsoft/widget/DeleteAnimation$NextGoScaleAnim;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->nextView:Lcom/arcsoft/widget/BitmapView;
    invoke-static {v3}, Lcom/arcsoft/widget/DeleteAnimation;->access$1500(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/BitmapView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/arcsoft/widget/BitmapView;->getOriDisplayRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 501
    .local v0, dst:Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/arcsoft/widget/DeleteAnimation$NextGoScaleAnim;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->nextImgInfo:Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;
    invoke-static {v3}, Lcom/arcsoft/widget/DeleteAnimation;->access$1600(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;

    move-result-object v3

    iget v3, v3, Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;->mImgDisplayWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    div-float v1, v3, v5

    .line 502
    .local v1, offX:F
    iget-object v3, p0, Lcom/arcsoft/widget/DeleteAnimation$NextGoScaleAnim;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->nextImgInfo:Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;
    invoke-static {v3}, Lcom/arcsoft/widget/DeleteAnimation;->access$1600(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;

    move-result-object v3

    iget v3, v3, Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;->mImgDisplayHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    div-float v2, v3, v5

    .line 504
    .local v2, offY:F
    iget v3, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v0, Landroid/graphics/RectF;->left:F

    .line 505
    iget v3, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v1

    iput v3, v0, Landroid/graphics/RectF;->right:F

    .line 506
    iget v3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v2

    iput v3, v0, Landroid/graphics/RectF;->top:F

    .line 507
    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v2

    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    .line 509
    iget v3, v0, Landroid/graphics/RectF;->left:F

    sub-float v4, v6, p1

    iget-object v5, p0, Lcom/arcsoft/widget/DeleteAnimation$NextGoScaleAnim;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->TRANS_VALUE:F
    invoke-static {v5}, Lcom/arcsoft/widget/DeleteAnimation;->access$1300(Lcom/arcsoft/widget/DeleteAnimation;)F

    move-result v5

    add-float/2addr v5, v1

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v0, Landroid/graphics/RectF;->left:F

    .line 510
    iget v3, v0, Landroid/graphics/RectF;->right:F

    sub-float v4, v6, p1

    iget-object v5, p0, Lcom/arcsoft/widget/DeleteAnimation$NextGoScaleAnim;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->TRANS_VALUE:F
    invoke-static {v5}, Lcom/arcsoft/widget/DeleteAnimation;->access$1300(Lcom/arcsoft/widget/DeleteAnimation;)F

    move-result v5

    add-float/2addr v5, v1

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v0, Landroid/graphics/RectF;->right:F

    .line 512
    iget-object v3, p0, Lcom/arcsoft/widget/DeleteAnimation$NextGoScaleAnim;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->nextView:Lcom/arcsoft/widget/BitmapView;
    invoke-static {v3}, Lcom/arcsoft/widget/DeleteAnimation;->access$1500(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/BitmapView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/arcsoft/widget/BitmapView;->setDisplayRect(Landroid/graphics/RectF;)V

    .line 513
    const/4 v0, 0x0

    .line 514
    iget-object v3, p0, Lcom/arcsoft/widget/DeleteAnimation$NextGoScaleAnim;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->nextView:Lcom/arcsoft/widget/BitmapView;
    invoke-static {v3}, Lcom/arcsoft/widget/DeleteAnimation;->access$1500(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/BitmapView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/arcsoft/widget/BitmapView;->invalidate()V

    .line 515
    return-void
.end method

.method public initialize(IIII)V
    .registers 7
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 521
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 523
    const-wide/16 v0, 0x190

    invoke-virtual {p0, v0, v1}, Lcom/arcsoft/widget/DeleteAnimation$NextGoScaleAnim;->setDuration(J)V

    .line 524
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/arcsoft/widget/DeleteAnimation$NextGoScaleAnim;->setFillAfter(Z)V

    .line 525
    return-void
.end method
