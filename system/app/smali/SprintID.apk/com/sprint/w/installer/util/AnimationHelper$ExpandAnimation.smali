.class Lcom/sprint/w/installer/util/AnimationHelper$ExpandAnimation;
.super Landroid/view/animation/Animation;
.source "AnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/util/AnimationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExpandAnimation"
.end annotation


# instance fields
.field private final _finishHeight:I

.field private final _startHeight:I

.field private final _view:Landroid/view/View;

.field final synthetic this$0:Lcom/sprint/w/installer/util/AnimationHelper;


# direct methods
.method public constructor <init>(Lcom/sprint/w/installer/util/AnimationHelper;Landroid/view/View;II)V
    .registers 7
    .parameter
    .parameter "view"
    .parameter "startHeight"
    .parameter "finishHeight"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/sprint/w/installer/util/AnimationHelper$ExpandAnimation;->this$0:Lcom/sprint/w/installer/util/AnimationHelper;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 48
    iput-object p2, p0, Lcom/sprint/w/installer/util/AnimationHelper$ExpandAnimation;->_view:Landroid/view/View;

    .line 49
    iput p3, p0, Lcom/sprint/w/installer/util/AnimationHelper$ExpandAnimation;->_startHeight:I

    .line 50
    iput p4, p0, Lcom/sprint/w/installer/util/AnimationHelper$ExpandAnimation;->_finishHeight:I

    .line 51
    const-wide/16 v0, 0x14

    invoke-virtual {p0, v0, v1}, Lcom/sprint/w/installer/util/AnimationHelper$ExpandAnimation;->setDuration(J)V

    .line 52
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/util/AnimationHelper$ExpandAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 53
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 6
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 57
    iget v1, p0, Lcom/sprint/w/installer/util/AnimationHelper$ExpandAnimation;->_finishHeight:I

    iget v2, p0, Lcom/sprint/w/installer/util/AnimationHelper$ExpandAnimation;->_startHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/sprint/w/installer/util/AnimationHelper$ExpandAnimation;->_startHeight:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 58
    .local v0, newHeight:I
    iget-object v1, p0, Lcom/sprint/w/installer/util/AnimationHelper$ExpandAnimation;->_view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 59
    iget-object v1, p0, Lcom/sprint/w/installer/util/AnimationHelper$ExpandAnimation;->_view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 60
    return-void
.end method

.method public initialize(IIII)V
    .registers 5
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 65
    return-void
.end method

.method public willChangeBounds()Z
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method
