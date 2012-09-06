.class final Lcom/acquariusoft/UpdateMe/activity/e;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;


# instance fields
.field final synthetic a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;


# direct methods
.method private constructor <init>(Lcom/acquariusoft/UpdateMe/activity/TouchImageView;)V
    .registers 2

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/acquariusoft/UpdateMe/activity/TouchImageView;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/acquariusoft/UpdateMe/activity/e;-><init>(Lcom/acquariusoft/UpdateMe/activity/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public final onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 12

    const/4 v9, 0x5

    const/4 v8, 0x2

    const/high16 v7, 0x3f80

    const/high16 v6, 0x4000

    const/4 v5, 0x0

    const v0, 0x3f733333

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3ff0cccccccccccdL

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v1, v1, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->l:F

    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v3, v2, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->l:F

    mul-float/2addr v3, v0

    iput v3, v2, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->l:F

    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v2, v2, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->l:F

    iget-object v3, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v3, v3, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->f:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_fb

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v2, v2, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->f:F

    iput v2, v0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->l:F

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v0, v0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->f:F

    div-float/2addr v0, v1

    :cond_41
    :goto_41
    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v2, v2, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->j:F

    iget-object v3, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v3, v3, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->l:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v3, v3, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->j:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v3, v3, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->h:F

    mul-float/2addr v3, v6

    iget-object v4, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v4, v4, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->l:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->m:F

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v2, v2, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->k:F

    iget-object v3, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v3, v3, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->l:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v3, v3, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->k:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v3, v3, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->i:F

    mul-float/2addr v3, v6

    iget-object v4, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v4, v4, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->l:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->n:F

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v1, v1, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->o:F

    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v2, v2, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->l:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v2, v2, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->j:F

    cmpg-float v1, v1, v2

    if-lez v1, :cond_9d

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v1, v1, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->p:F

    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v2, v2, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->l:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v2, v2, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->k:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_147

    :cond_9d
    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->a:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v2, v2, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->j:F

    div-float/2addr v2, v6

    iget-object v3, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v3, v3, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->k:F

    div-float/2addr v3, v6

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    cmpg-float v1, v0, v7

    if-gez v1, :cond_f9

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->a:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget-object v2, v2, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->g:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->g:[F

    aget v1, v1, v8

    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget-object v2, v2, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->g:[F

    aget v2, v2, v9

    cmpg-float v0, v0, v7

    if-gez v0, :cond_f9

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v0, v0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->o:F

    iget-object v3, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v3, v3, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->l:F

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v3, v3, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->j:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_123

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v0, v0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->n:F

    neg-float v0, v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_116

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v1, v1, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->n:F

    add-float/2addr v1, v2

    neg-float v1, v1

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_f9
    :goto_f9
    const/4 v0, 0x1

    return v0

    :cond_fb
    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v2, v2, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->l:F

    iget-object v3, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v3, v3, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->e:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_41

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v2, v2, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->e:F

    iput v2, v0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->l:F

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v0, v0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->e:F

    div-float/2addr v0, v1

    goto/16 :goto_41

    :cond_116
    cmpl-float v0, v2, v5

    if-lez v0, :cond_f9

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->a:Landroid/graphics/Matrix;

    neg-float v1, v2

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_f9

    :cond_123
    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v0, v0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->m:F

    neg-float v0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_13a

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->a:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v2, v2, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->m:F

    add-float/2addr v1, v2

    neg-float v1, v1

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_f9

    :cond_13a
    cmpl-float v0, v1, v5

    if-lez v0, :cond_f9

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->a:Landroid/graphics/Matrix;

    neg-float v1, v1

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_f9

    :cond_147
    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->a:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget-object v2, v2, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->g:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->g:[F

    aget v1, v1, v8

    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget-object v2, v2, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->g:[F

    aget v2, v2, v9

    cmpg-float v0, v0, v7

    if-gez v0, :cond_f9

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v0, v0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->m:F

    neg-float v0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_19f

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->a:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v3, v3, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->m:F

    add-float/2addr v1, v3

    neg-float v1, v1

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_187
    :goto_187
    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v0, v0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->n:F

    neg-float v0, v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_1ac

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v1, v1, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->n:F

    add-float/2addr v1, v2

    neg-float v1, v1

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_f9

    :cond_19f
    cmpl-float v0, v1, v5

    if-lez v0, :cond_187

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->a:Landroid/graphics/Matrix;

    neg-float v1, v1

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_187

    :cond_1ac
    cmpl-float v0, v2, v5

    if-lez v0, :cond_f9

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->a:Landroid/graphics/Matrix;

    neg-float v1, v2

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_f9
.end method

.method public final onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 4

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/e;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    const/4 v1, 0x2

    iput v1, v0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->b:I

    const/4 v0, 0x1

    return v0
.end method
