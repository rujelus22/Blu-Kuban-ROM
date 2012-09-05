.class Lcom/arcsoft/widget/DeleteAnimation$PreGoScaleAnim;
.super Landroid/view/animation/Animation;
.source "DeleteAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/widget/DeleteAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreGoScaleAnim"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/arcsoft/widget/DeleteAnimation;


# direct methods
.method private constructor <init>(Lcom/arcsoft/widget/DeleteAnimation;)V
    .registers 2
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/arcsoft/widget/DeleteAnimation$PreGoScaleAnim;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/arcsoft/widget/DeleteAnimation;Lcom/arcsoft/widget/DeleteAnimation$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 350
    invoke-direct {p0, p1}, Lcom/arcsoft/widget/DeleteAnimation$PreGoScaleAnim;-><init>(Lcom/arcsoft/widget/DeleteAnimation;)V

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

    .line 356
    new-instance v0, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/arcsoft/widget/DeleteAnimation$PreGoScaleAnim;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->preView:Lcom/arcsoft/widget/BitmapView;
    invoke-static {v3}, Lcom/arcsoft/widget/DeleteAnimation;->access$1100(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/BitmapView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/arcsoft/widget/BitmapView;->getOriDisplayRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 358
    .local v0, dst:Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/arcsoft/widget/DeleteAnimation$PreGoScaleAnim;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->preImgInfo:Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;
    invoke-static {v3}, Lcom/arcsoft/widget/DeleteAnimation;->access$1200(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;

    move-result-object v3

    iget v3, v3, Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;->mImgDisplayWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    div-float v1, v3, v5

    .line 359
    .local v1, offX:F
    iget-object v3, p0, Lcom/arcsoft/widget/DeleteAnimation$PreGoScaleAnim;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->preImgInfo:Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;
    invoke-static {v3}, Lcom/arcsoft/widget/DeleteAnimation;->access$1200(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;

    move-result-object v3

    iget v3, v3, Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;->mImgDisplayHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    div-float v2, v3, v5

    .line 361
    .local v2, offY:F
    iget v3, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iput v3, v0, Landroid/graphics/RectF;->left:F

    .line 362
    iget v3, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v1

    iput v3, v0, Landroid/graphics/RectF;->right:F

    .line 363
    iget v3, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v2

    iput v3, v0, Landroid/graphics/RectF;->top:F

    .line 364
    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v2

    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    .line 366
    iget v3, v0, Landroid/graphics/RectF;->left:F

    sub-float v4, v6, p1

    iget-object v5, p0, Lcom/arcsoft/widget/DeleteAnimation$PreGoScaleAnim;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->TRANS_VALUE:F
    invoke-static {v5}, Lcom/arcsoft/widget/DeleteAnimation;->access$1300(Lcom/arcsoft/widget/DeleteAnimation;)F

    move-result v5

    add-float/2addr v5, v1

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v0, Landroid/graphics/RectF;->left:F

    .line 367
    iget v3, v0, Landroid/graphics/RectF;->right:F

    sub-float v4, v6, p1

    iget-object v5, p0, Lcom/arcsoft/widget/DeleteAnimation$PreGoScaleAnim;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->TRANS_VALUE:F
    invoke-static {v5}, Lcom/arcsoft/widget/DeleteAnimation;->access$1300(Lcom/arcsoft/widget/DeleteAnimation;)F

    move-result v5

    add-float/2addr v5, v1

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v0, Landroid/graphics/RectF;->right:F

    .line 369
    iget-object v3, p0, Lcom/arcsoft/widget/DeleteAnimation$PreGoScaleAnim;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->preView:Lcom/arcsoft/widget/BitmapView;
    invoke-static {v3}, Lcom/arcsoft/widget/DeleteAnimation;->access$1100(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/BitmapView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/arcsoft/widget/BitmapView;->setDisplayRect(Landroid/graphics/RectF;)V

    .line 370
    const/4 v0, 0x0

    .line 371
    iget-object v3, p0, Lcom/arcsoft/widget/DeleteAnimation$PreGoScaleAnim;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->preView:Lcom/arcsoft/widget/BitmapView;
    invoke-static {v3}, Lcom/arcsoft/widget/DeleteAnimation;->access$1100(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/BitmapView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/arcsoft/widget/BitmapView;->invalidate()V

    .line 372
    return-void
.end method

.method public initialize(IIII)V
    .registers 7
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 378
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 380
    const-wide/16 v0, 0x190

    invoke-virtual {p0, v0, v1}, Lcom/arcsoft/widget/DeleteAnimation$PreGoScaleAnim;->setDuration(J)V

    .line 381
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/arcsoft/widget/DeleteAnimation$PreGoScaleAnim;->setFillAfter(Z)V

    .line 382
    return-void
.end method
