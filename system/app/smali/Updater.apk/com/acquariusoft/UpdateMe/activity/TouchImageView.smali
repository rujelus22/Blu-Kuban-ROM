.class public Lcom/acquariusoft/UpdateMe/activity/TouchImageView;
.super Landroid/widget/ImageView;


# instance fields
.field a:Landroid/graphics/Matrix;

.field b:I

.field c:Landroid/graphics/PointF;

.field d:Landroid/graphics/PointF;

.field e:F

.field f:F

.field g:[F

.field h:F

.field i:F

.field j:F

.field k:F

.field l:F

.field m:F

.field n:F

.field o:F

.field p:F

.field q:F

.field r:F

.field s:Landroid/view/ScaleGestureDetector;

.field t:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/high16 v1, 0x3f80

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->a:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->b:I

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->c:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->d:Landroid/graphics/PointF;

    iput v1, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->e:F

    const/high16 v0, 0x4040

    iput v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->f:F

    iput v1, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->l:F

    invoke-direct {p0, p1}, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/high16 v1, 0x3f80

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->a:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->b:I

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->c:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->d:Landroid/graphics/PointF;

    iput v1, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->e:F

    const/high16 v0, 0x4040

    iput v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->f:F

    iput v1, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->l:F

    invoke-direct {p0, p1}, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const/high16 v1, 0x3f80

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->a:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->b:I

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->c:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->d:Landroid/graphics/PointF;

    iput v1, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->e:F

    const/high16 v0, 0x4040

    iput v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->f:F

    iput v1, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->l:F

    invoke-direct {p0, p1}, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 7

    const/high16 v4, 0x3f80

    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->t:Landroid/content/Context;

    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->t:Landroid/content/Context;

    new-instance v2, Lcom/acquariusoft/UpdateMe/activity/e;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/acquariusoft/UpdateMe/activity/e;-><init>(Lcom/acquariusoft/UpdateMe/activity/TouchImageView;B)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->s:Landroid/view/ScaleGestureDetector;

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, v4, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->g:[F

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Lcom/acquariusoft/UpdateMe/activity/d;

    invoke-direct {v0, p0}, Lcom/acquariusoft/UpdateMe/activity/d;-><init>(Lcom/acquariusoft/UpdateMe/activity/TouchImageView;)V

    invoke-virtual {p0, v0}, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/high16 v0, 0x4080

    iput v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->f:F

    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    const/high16 v3, 0x4000

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->j:F

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->k:F

    iget v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->j:F

    iget v1, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->q:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->k:F

    iget v2, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->r:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1}, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->l:F

    iget v1, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->k:F

    iget v2, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->r:F

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->i:F

    iget v1, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->j:F

    iget v2, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->q:F

    mul-float/2addr v0, v2

    sub-float v0, v1, v0

    iput v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->h:F

    iget v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->i:F

    div-float/2addr v0, v3

    iput v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->i:F

    iget v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->h:F

    div-float/2addr v0, v3

    iput v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->h:F

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->a:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->h:F

    iget v2, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->i:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->j:F

    iget v1, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->h:F

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->o:F

    iget v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->k:F

    iget v1, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->i:F

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->p:F

    iget v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->j:F

    iget v1, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->l:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->j:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->h:F

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->l:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->m:F

    iget v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->k:F

    iget v1, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->l:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->k:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->i:F

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->l:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->n:F

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->s:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->a:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->g:[F

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->g:[F

    const/4 v2, 0x2

    aget v3, v0, v2

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->g:[F

    const/4 v2, 0x5

    aget v4, v0, v2

    new-instance v5, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v5, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_11c

    :cond_2e
    :goto_2e
    :pswitch_2e
    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->invalidate()V

    return v9

    :pswitch_37
    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->c:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->d:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->c:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iput v9, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->b:I

    goto :goto_2e

    :pswitch_4e
    iget v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->b:I

    if-ne v0, v9, :cond_2e

    iget v0, v5, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->c:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v2, v0, v2

    iget v0, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->c:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v6

    iget v6, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->o:F

    iget v7, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->l:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->p:F

    iget v8, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->l:F

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->j:F

    cmpg-float v6, v6, v8

    if-gez v6, :cond_9f

    add-float v2, v4, v0

    cmpl-float v2, v2, v1

    if-lez v2, :cond_91

    neg-float v0, v4

    :cond_82
    :goto_82
    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->c:Landroid/graphics/PointF;

    iget v1, v5, Landroid/graphics/PointF;->x:F

    iget v2, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_2e

    :cond_91
    add-float v2, v4, v0

    iget v3, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->n:F

    neg-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_82

    iget v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->n:F

    add-float/2addr v0, v4

    neg-float v0, v0

    goto :goto_82

    :cond_9f
    iget v6, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->k:F

    cmpg-float v6, v7, v6

    if-gez v6, :cond_c1

    add-float v0, v3, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b0

    neg-float v0, v3

    move v10, v1

    move v1, v0

    move v0, v10

    goto :goto_82

    :cond_b0
    add-float v0, v3, v2

    iget v4, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->m:F

    neg-float v4, v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_118

    iget v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->m:F

    add-float/2addr v0, v3

    neg-float v0, v0

    move v10, v1

    move v1, v0

    move v0, v10

    goto :goto_82

    :cond_c1
    add-float v6, v3, v2

    cmpl-float v6, v6, v1

    if-lez v6, :cond_d1

    neg-float v2, v3

    :cond_c8
    :goto_c8
    add-float v3, v4, v0

    cmpl-float v1, v3, v1

    if-lez v1, :cond_df

    neg-float v0, v4

    move v1, v2

    goto :goto_82

    :cond_d1
    add-float v6, v3, v2

    iget v7, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->m:F

    neg-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_c8

    iget v2, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->m:F

    add-float/2addr v2, v3

    neg-float v2, v2

    goto :goto_c8

    :cond_df
    add-float v1, v4, v0

    iget v3, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->n:F

    neg-float v3, v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_115

    iget v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->n:F

    add-float/2addr v0, v4

    neg-float v0, v0

    move v1, v2

    goto :goto_82

    :pswitch_ee
    iput v6, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->b:I

    iget v0, v5, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->d:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    iget v1, v5, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->d:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    if-ge v0, v7, :cond_2e

    if-ge v1, v7, :cond_2e

    invoke-virtual {p0}, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->performClick()Z

    goto/16 :goto_2e

    :pswitch_111
    iput v6, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->b:I

    goto/16 :goto_2e

    :cond_115
    move v1, v2

    goto/16 :goto_82

    :cond_118
    move v0, v1

    move v1, v2

    goto/16 :goto_82

    :pswitch_data_11c
    .packed-switch 0x0
        :pswitch_37
        :pswitch_ee
        :pswitch_4e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_111
    .end packed-switch
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->q:F

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->r:F

    :cond_13
    return-void
.end method
