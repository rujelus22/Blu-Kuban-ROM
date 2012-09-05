.class Lcom/arcsoft/widget/DeleteAnimation$AlphaAnimation;
.super Landroid/view/animation/Animation;
.source "DeleteAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/widget/DeleteAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlphaAnimation"
.end annotation


# instance fields
.field private subView:Lcom/arcsoft/widget/BitmapView;

.field final synthetic this$0:Lcom/arcsoft/widget/DeleteAnimation;


# direct methods
.method public constructor <init>(Lcom/arcsoft/widget/DeleteAnimation;Lcom/arcsoft/widget/BitmapView;)V
    .registers 4
    .parameter
    .parameter "subview"

    .prologue
    .line 600
    iput-object p1, p0, Lcom/arcsoft/widget/DeleteAnimation$AlphaAnimation;->this$0:Lcom/arcsoft/widget/DeleteAnimation;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 598
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/arcsoft/widget/DeleteAnimation$AlphaAnimation;->subView:Lcom/arcsoft/widget/BitmapView;

    .line 601
    iput-object p2, p0, Lcom/arcsoft/widget/DeleteAnimation$AlphaAnimation;->subView:Lcom/arcsoft/widget/BitmapView;

    .line 602
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 6
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 609
    const/16 v0, 0xaf

    .line 610
    .local v0, alpha:I
    int-to-float v1, v0

    const/high16 v2, 0x42a0

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 611
    iget-object v1, p0, Lcom/arcsoft/widget/DeleteAnimation$AlphaAnimation;->subView:Lcom/arcsoft/widget/BitmapView;

    invoke-virtual {v1, v0}, Lcom/arcsoft/widget/BitmapView;->setBitmapAlpha(I)V

    .line 613
    iget-object v1, p0, Lcom/arcsoft/widget/DeleteAnimation$AlphaAnimation;->subView:Lcom/arcsoft/widget/BitmapView;

    invoke-virtual {v1}, Lcom/arcsoft/widget/BitmapView;->invalidate()V

    .line 614
    return-void
.end method

.method public initialize(IIII)V
    .registers 7
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 620
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 621
    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/arcsoft/widget/DeleteAnimation$AlphaAnimation;->setDuration(J)V

    .line 622
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/arcsoft/widget/DeleteAnimation$AlphaAnimation;->setStartOffset(J)V

    .line 623
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/arcsoft/widget/DeleteAnimation$AlphaAnimation;->setFillAfter(Z)V

    .line 624
    return-void
.end method
