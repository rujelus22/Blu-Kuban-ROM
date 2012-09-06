.class Lcom/google/android/apps/unveil/textinput/ZoomableContainer$1;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "ZoomableContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/textinput/ZoomableContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/textinput/ZoomableContainer;

.field final values:[F


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/textinput/ZoomableContainer;)V
    .registers 3
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer$1;->this$0:Lcom/google/android/apps/unveil/textinput/ZoomableContainer;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    .line 35
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer$1;->values:[F

    return-void
.end method

.method private constrainMatrix(Landroid/graphics/Matrix;)V
    .registers 12
    .parameter "matrix"

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 72
    iget-object v5, p0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer$1;->values:[F

    invoke-virtual {p1, v5}, Landroid/graphics/Matrix;->getValues([F)V

    .line 73
    iget-object v5, p0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer$1;->values:[F

    const/4 v6, 0x0

    aget v1, v5, v6

    .line 74
    .local v1, scale:F
    iget-object v5, p0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer$1;->values:[F

    aget v2, v5, v8

    .line 75
    .local v2, translateX:F
    iget-object v5, p0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer$1;->values:[F

    aget v3, v5, v9

    .line 76
    .local v3, translateY:F
    iget-object v5, p0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer$1;->this$0:Lcom/google/android/apps/unveil/textinput/ZoomableContainer;

    invoke-virtual {v5}, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->getWidth()I

    move-result v4

    .line 77
    .local v4, width:I
    iget-object v5, p0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer$1;->this$0:Lcom/google/android/apps/unveil/textinput/ZoomableContainer;

    invoke-virtual {v5}, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->getHeight()I

    move-result v0

    .line 78
    .local v0, height:I
    cmpl-float v5, v2, v7

    if-lez v5, :cond_39

    .line 79
    const/4 v2, 0x0

    .line 83
    :cond_26
    :goto_26
    cmpl-float v5, v3, v7

    if-lez v5, :cond_48

    .line 84
    const/4 v3, 0x0

    .line 88
    :cond_2b
    :goto_2b
    iget-object v5, p0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer$1;->values:[F

    aput v2, v5, v8

    .line 89
    iget-object v5, p0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer$1;->values:[F

    aput v3, v5, v9

    .line 90
    iget-object v5, p0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer$1;->values:[F

    invoke-virtual {p1, v5}, Landroid/graphics/Matrix;->setValues([F)V

    .line 91
    return-void

    .line 80
    :cond_39
    neg-float v5, v2

    int-to-float v6, v4

    add-float/2addr v5, v6

    int-to-float v6, v4

    mul-float/2addr v6, v1

    cmpl-float v5, v5, v6

    if-lez v5, :cond_26

    .line 81
    int-to-float v5, v4

    int-to-float v6, v4

    mul-float/2addr v6, v1

    sub-float v2, v5, v6

    goto :goto_26

    .line 85
    :cond_48
    neg-float v5, v3

    int-to-float v6, v0

    add-float/2addr v5, v6

    int-to-float v6, v0

    mul-float/2addr v6, v1

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2b

    .line 86
    int-to-float v5, v0

    int-to-float v6, v0

    mul-float/2addr v6, v1

    sub-float v3, v5, v6

    goto :goto_2b
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 12
    .parameter "detector"

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v3

    .line 50
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v4

    .line 51
    .local v4, y:F
    iget-object v5, p0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer$1;->this$0:Lcom/google/android/apps/unveil/textinput/ZoomableContainer;

    #getter for: Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->point:Landroid/graphics/PointF;
    invoke-static {v5}, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->access$000(Lcom/google/android/apps/unveil/textinput/ZoomableContainer;)Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float v1, v3, v5

    .line 52
    .local v1, translateX:F
    iget-object v5, p0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer$1;->this$0:Lcom/google/android/apps/unveil/textinput/ZoomableContainer;

    #getter for: Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->point:Landroid/graphics/PointF;
    invoke-static {v5}, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->access$000(Lcom/google/android/apps/unveil/textinput/ZoomableContainer;)Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float v2, v4, v5

    .line 53
    .local v2, translateY:F
    iget-object v5, p0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer$1;->this$0:Lcom/google/android/apps/unveil/textinput/ZoomableContainer;

    #getter for: Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->point:Landroid/graphics/PointF;
    invoke-static {v5}, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->access$000(Lcom/google/android/apps/unveil/textinput/ZoomableContainer;)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 55
    iget-object v5, p0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer$1;->this$0:Lcom/google/android/apps/unveil/textinput/ZoomableContainer;

    #getter for: Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->scaleFactor:F
    invoke-static {v5}, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->access$200(Lcom/google/android/apps/unveil/textinput/ZoomableContainer;)F

    move-result v0

    .line 56
    .local v0, oldFactor:F
    iget-object v5, p0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer$1;->this$0:Lcom/google/android/apps/unveil/textinput/ZoomableContainer;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v6

    invoke-static {v5, v6}, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->access$232(Lcom/google/android/apps/unveil/textinput/ZoomableContainer;F)F

    .line 57
    iget-object v5, p0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer$1;->this$0:Lcom/google/android/apps/unveil/textinput/ZoomableContainer;

    invoke-static {}, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->access$300()F

    move-result v6

    iget-object v7, p0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer$1;->this$0:Lcom/google/android/apps/unveil/textinput/ZoomableContainer;

    #getter for: Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->scaleFactor:F
    invoke-static {v7}, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->access$200(Lcom/google/android/apps/unveil/textinput/ZoomableContainer;)F

    move-result v7

    invoke-static {}, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->access$400()F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    #setter for: Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->scaleFactor:F
    invoke-static {v5, v6}, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->access$202(Lcom/google/android/apps/unveil/textinput/ZoomableContainer;F)F

    .line 59
    iget-object v5, p0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer$1;->this$0:Lcom/google/android/apps/unveil/textinput/ZoomableContainer;

    #getter for: Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->matrix:Landroid/graphics/Matrix;
    invoke-static {v5}, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->access$100(Lcom/google/android/apps/unveil/textinput/ZoomableContainer;)Landroid/graphics/Matrix;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer$1;->this$0:Lcom/google/android/apps/unveil/textinput/ZoomableContainer;

    #getter for: Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->scaleFactor:F
    invoke-static {v6}, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->access$200(Lcom/google/android/apps/unveil/textinput/ZoomableContainer;)F

    move-result v6

    div-float/2addr v6, v0

    iget-object v7, p0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer$1;->this$0:Lcom/google/android/apps/unveil/textinput/ZoomableContainer;

    #getter for: Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->scaleFactor:F
    invoke-static {v7}, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->access$200(Lcom/google/android/apps/unveil/textinput/ZoomableContainer;)F

    move-result v7

    div-float/2addr v7, v0

    iget-object v8, p0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer$1;->this$0:Lcom/google/android/apps/unveil/textinput/ZoomableContainer;

    invoke-virtual {v8}, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    iget-object v9, p0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer$1;->this$0:Lcom/google/android/apps/unveil/textinput/ZoomableContainer;

    invoke-virtual {v9}, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 61
    iget-object v5, p0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer$1;->this$0:Lcom/google/android/apps/unveil/textinput/ZoomableContainer;

    #getter for: Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->matrix:Landroid/graphics/Matrix;
    invoke-static {v5}, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->access$100(Lcom/google/android/apps/unveil/textinput/ZoomableContainer;)Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 63
    iget-object v5, p0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer$1;->this$0:Lcom/google/android/apps/unveil/textinput/ZoomableContainer;

    #getter for: Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->matrix:Landroid/graphics/Matrix;
    invoke-static {v5}, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->access$100(Lcom/google/android/apps/unveil/textinput/ZoomableContainer;)Landroid/graphics/Matrix;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/android/apps/unveil/textinput/ZoomableContainer$1;->constrainMatrix(Landroid/graphics/Matrix;)V

    .line 65
    iget-object v5, p0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer$1;->this$0:Lcom/google/android/apps/unveil/textinput/ZoomableContainer;

    #calls: Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->notifyChildren()V
    invoke-static {v5}, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->access$500(Lcom/google/android/apps/unveil/textinput/ZoomableContainer;)V

    .line 67
    iget-object v5, p0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer$1;->this$0:Lcom/google/android/apps/unveil/textinput/ZoomableContainer;

    invoke-virtual {v5}, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->invalidate()V

    .line 68
    const/4 v5, 0x1

    return v5
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 5
    .parameter "detector"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer$1;->this$0:Lcom/google/android/apps/unveil/textinput/ZoomableContainer;

    #getter for: Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->point:Landroid/graphics/PointF;
    invoke-static {v0}, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->access$000(Lcom/google/android/apps/unveil/textinput/ZoomableContainer;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 41
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer$1;->this$0:Lcom/google/android/apps/unveil/textinput/ZoomableContainer;

    #getter for: Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->matrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->access$100(Lcom/google/android/apps/unveil/textinput/ZoomableContainer;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 42
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/ZoomableContainer$1;->this$0:Lcom/google/android/apps/unveil/textinput/ZoomableContainer;

    const/high16 v1, 0x3f80

    #setter for: Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->scaleFactor:F
    invoke-static {v0, v1}, Lcom/google/android/apps/unveil/textinput/ZoomableContainer;->access$202(Lcom/google/android/apps/unveil/textinput/ZoomableContainer;F)F

    .line 44
    :cond_24
    const/4 v0, 0x1

    return v0
.end method
