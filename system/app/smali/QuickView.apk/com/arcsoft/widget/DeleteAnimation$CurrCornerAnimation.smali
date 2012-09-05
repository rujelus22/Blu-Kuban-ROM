.class Lcom/arcsoft/widget/DeleteAnimation$CurrCornerAnimation;
.super Landroid/view/animation/Animation;
.source "DeleteAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/widget/DeleteAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurrCornerAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/arcsoft/widget/DeleteAnimation;


# direct methods
.method private constructor <init>(Lcom/arcsoft/widget/DeleteAnimation;)V
    .registers 2
    .parameter

    .prologue
    .line 628
    iput-object p1, p0, Lcom/arcsoft/widget/DeleteAnimation$CurrCornerAnimation;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/arcsoft/widget/DeleteAnimation;Lcom/arcsoft/widget/DeleteAnimation$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 628
    invoke-direct {p0, p1}, Lcom/arcsoft/widget/DeleteAnimation$CurrCornerAnimation;-><init>(Lcom/arcsoft/widget/DeleteAnimation;)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 7
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 635
    iget-object v2, p0, Lcom/arcsoft/widget/DeleteAnimation$CurrCornerAnimation;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->currView:Lcom/arcsoft/widget/BitmapView;
    invoke-static {v2}, Lcom/arcsoft/widget/DeleteAnimation;->access$1700(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/BitmapView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/arcsoft/widget/BitmapView;->getCornerPoint()Landroid/graphics/PointF;

    move-result-object v1

    .line 636
    .local v1, point:Landroid/graphics/PointF;
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 637
    .local v0, cornerTurnoverPoint:Landroid/graphics/PointF;
    iget v2, v1, Landroid/graphics/PointF;->x:F

    invoke-static {}, Lcom/arcsoft/widget/DeleteAnimation;->access$1900()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, p1

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 638
    iget v2, v1, Landroid/graphics/PointF;->y:F

    invoke-static {}, Lcom/arcsoft/widget/DeleteAnimation;->access$1900()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, p1

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 639
    iget-object v2, p0, Lcom/arcsoft/widget/DeleteAnimation$CurrCornerAnimation;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->currView:Lcom/arcsoft/widget/BitmapView;
    invoke-static {v2}, Lcom/arcsoft/widget/DeleteAnimation;->access$1700(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/BitmapView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/arcsoft/widget/BitmapView;->setCornerTurnoverPoint(Landroid/graphics/PointF;)V

    .line 641
    iget-object v2, p0, Lcom/arcsoft/widget/DeleteAnimation$CurrCornerAnimation;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    #getter for: Lcom/arcsoft/widget/DeleteAnimation;->currView:Lcom/arcsoft/widget/BitmapView;
    invoke-static {v2}, Lcom/arcsoft/widget/DeleteAnimation;->access$1700(Lcom/arcsoft/widget/DeleteAnimation;)Lcom/arcsoft/widget/BitmapView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/arcsoft/widget/BitmapView;->invalidate()V

    .line 642
    return-void
.end method

.method public initialize(IIII)V
    .registers 7
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    const-wide/16 v0, 0xfa

    .line 648
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 649
    invoke-virtual {p0, v0, v1}, Lcom/arcsoft/widget/DeleteAnimation$CurrCornerAnimation;->setDuration(J)V

    .line 650
    invoke-virtual {p0, v0, v1}, Lcom/arcsoft/widget/DeleteAnimation$CurrCornerAnimation;->setStartOffset(J)V

    .line 652
    return-void
.end method
