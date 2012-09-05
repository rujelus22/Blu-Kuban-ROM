.class Lcom/arcsoft/widget/DeleteAnimation$NextComeAnim2;
.super Landroid/view/animation/Animation;
.source "DeleteAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/widget/DeleteAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NextComeAnim2"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/arcsoft/widget/DeleteAnimation;


# direct methods
.method private constructor <init>(Lcom/arcsoft/widget/DeleteAnimation;)V
    .registers 2
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lcom/arcsoft/widget/DeleteAnimation$NextComeAnim2;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/arcsoft/widget/DeleteAnimation;Lcom/arcsoft/widget/DeleteAnimation$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 419
    invoke-direct {p0, p1}, Lcom/arcsoft/widget/DeleteAnimation$NextComeAnim2;-><init>(Lcom/arcsoft/widget/DeleteAnimation;)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 11
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/high16 v7, 0x3f80

    .line 425
    new-instance v0, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/arcsoft/widget/DeleteAnimation$NextComeAnim2;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->nextView:Lcom/arcsoft/widget/BitmapView;
    invoke-static {v3}, Lcom/arcsoft/widget/DeleteAnimation;->access$1500(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/BitmapView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/arcsoft/widget/BitmapView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 427
    .local v0, dst:Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/arcsoft/widget/DeleteAnimation$NextComeAnim2;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->nextImgInfo:Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;
    invoke-static {v3}, Lcom/arcsoft/widget/DeleteAnimation;->access$1600(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;

    move-result-object v3

    iget v3, v3, Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;->mImgDisplayWidth:I

    int-to-float v3, v3

    const v4, 0x3e4ccccc

    mul-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float v1, v3, v4

    .line 428
    .local v1, offOriX:F
    iget-object v3, p0, Lcom/arcsoft/widget/DeleteAnimation$NextComeAnim2;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->SCREEN_WIDTH:I
    invoke-static {v3}, Lcom/arcsoft/widget/DeleteAnimation;->access$1400(Lcom/arcsoft/widget/DeleteAnimation;)I

    move-result v3

    iget-object v4, p0, Lcom/arcsoft/widget/DeleteAnimation$NextComeAnim2;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->nextImgInfo:Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;
    invoke-static {v4}, Lcom/arcsoft/widget/DeleteAnimation;->access$1600(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;

    move-result-object v4

    iget v4, v4, Lcom/arcsoft/widget/DeleteAnimation$ImageInfo;->mImgDisplayWidth:I

    add-int/2addr v3, v4

    div-int/lit8 v2, v3, 0x2

    .line 430
    .local v2, offX:I
    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/arcsoft/widget/DeleteAnimation$NextComeAnim2;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->TRANS_VALUE:F
    invoke-static {v4}, Lcom/arcsoft/widget/DeleteAnimation;->access$1300(Lcom/arcsoft/widget/DeleteAnimation;)F

    move-result v4

    sub-float v5, v7, p1

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    int-to-float v5, v2

    iget-object v6, p0, Lcom/arcsoft/widget/DeleteAnimation$NextComeAnim2;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->TRANS_VALUE:F
    invoke-static {v6}, Lcom/arcsoft/widget/DeleteAnimation;->access$1300(Lcom/arcsoft/widget/DeleteAnimation;)F

    move-result v6

    sub-float/2addr v5, v6

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v0, Landroid/graphics/RectF;->left:F

    .line 432
    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/arcsoft/widget/DeleteAnimation$NextComeAnim2;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->TRANS_VALUE:F
    invoke-static {v4}, Lcom/arcsoft/widget/DeleteAnimation;->access$1300(Lcom/arcsoft/widget/DeleteAnimation;)F

    move-result v4

    sub-float v5, v7, p1

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    int-to-float v5, v2

    iget-object v6, p0, Lcom/arcsoft/widget/DeleteAnimation$NextComeAnim2;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->TRANS_VALUE:F
    invoke-static {v6}, Lcom/arcsoft/widget/DeleteAnimation;->access$1300(Lcom/arcsoft/widget/DeleteAnimation;)F

    move-result v6

    sub-float/2addr v5, v6

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v0, Landroid/graphics/RectF;->right:F

    .line 435
    iget-object v3, p0, Lcom/arcsoft/widget/DeleteAnimation$NextComeAnim2;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->nextView:Lcom/arcsoft/widget/BitmapView;
    invoke-static {v3}, Lcom/arcsoft/widget/DeleteAnimation;->access$1500(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/BitmapView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/arcsoft/widget/BitmapView;->setDisplayRect(Landroid/graphics/RectF;)V

    .line 436
    const/4 v0, 0x0

    .line 437
    iget-object v3, p0, Lcom/arcsoft/widget/DeleteAnimation$NextComeAnim2;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->nextView:Lcom/arcsoft/widget/BitmapView;
    invoke-static {v3}, Lcom/arcsoft/widget/DeleteAnimation;->access$1500(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/BitmapView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/arcsoft/widget/BitmapView;->invalidate()V

    .line 438
    return-void
.end method

.method public initialize(IIII)V
    .registers 7
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 444
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 446
    const-wide/16 v0, 0x1c2

    invoke-virtual {p0, v0, v1}, Lcom/arcsoft/widget/DeleteAnimation$NextComeAnim2;->setDuration(J)V

    .line 447
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/arcsoft/widget/DeleteAnimation$NextComeAnim2;->setStartOffset(J)V

    .line 448
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/arcsoft/widget/DeleteAnimation$NextComeAnim2;->setFillAfter(Z)V

    .line 449
    return-void
.end method
