.class final Lcom/acquariusoft/UpdateMe/activity/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;


# direct methods
.method constructor <init>(Lcom/acquariusoft/UpdateMe/activity/TouchImageView;)V
    .registers 2

    iput-object p1, p0, Lcom/acquariusoft/UpdateMe/activity/d;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 14

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/d;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->s:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/d;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->a:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/activity/d;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget-object v2, v2, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->g:[F

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/d;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->g:[F

    const/4 v2, 0x2

    aget v3, v0, v2

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/d;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->g:[F

    const/4 v2, 0x5

    aget v4, v0, v2

    new-instance v5, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v5, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_166

    :cond_38
    :goto_38
    :pswitch_38
    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/d;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/activity/d;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/d;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    invoke-virtual {v0}, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->invalidate()V

    return v9

    :pswitch_47
    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/d;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->c:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/d;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->d:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/activity/d;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->c:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/d;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iput v9, v0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->b:I

    goto :goto_38

    :pswitch_66
    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/d;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v0, v0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->b:I

    if-ne v0, v9, :cond_38

    iget v0, v5, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/activity/d;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget-object v2, v2, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->c:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v2, v0, v2

    iget v0, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/acquariusoft/UpdateMe/activity/d;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget-object v6, v6, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->c:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v6

    iget-object v6, p0, Lcom/acquariusoft/UpdateMe/activity/d;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v6, v6, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->o:F

    iget-object v7, p0, Lcom/acquariusoft/UpdateMe/activity/d;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v7, v7, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->l:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/acquariusoft/UpdateMe/activity/d;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v7, v7, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->p:F

    iget-object v8, p0, Lcom/acquariusoft/UpdateMe/activity/d;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v8, v8, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->l:F

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/acquariusoft/UpdateMe/activity/d;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v8, v8, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->j:F

    cmpg-float v6, v6, v8

    if-gez v6, :cond_d0

    add-float v2, v4, v0

    cmpl-float v2, v2, v1

    if-lez v2, :cond_be

    neg-float v0, v4

    :cond_aa
    :goto_aa
    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/activity/d;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget-object v2, v2, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->a:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/d;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget-object v0, v0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->c:Landroid/graphics/PointF;

    iget v1, v5, Landroid/graphics/PointF;->x:F

    iget v2, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_38

    :cond_be
    add-float v2, v4, v0

    iget-object v3, p0, Lcom/acquariusoft/UpdateMe/activity/d;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v3, v3, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->n:F

    neg-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_aa

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/d;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v0, v0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->n:F

    add-float/2addr v0, v4

    neg-float v0, v0

    goto :goto_aa

    :cond_d0
    iget-object v6, p0, Lcom/acquariusoft/UpdateMe/activity/d;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v6, v6, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->k:F

    cmpg-float v6, v7, v6

    if-gez v6, :cond_f8

    add-float v0, v3, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_e3

    neg-float v0, v3

    move v10, v1

    move v1, v0

    move v0, v10

    goto :goto_aa

    :cond_e3
    add-float v0, v3, v2

    iget-object v4, p0, Lcom/acquariusoft/UpdateMe/activity/d;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v4, v4, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->m:F

    neg-float v4, v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_162

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/d;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v0, v0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->m:F

    add-float/2addr v0, v3

    neg-float v0, v0

    move v10, v1

    move v1, v0

    move v0, v10

    goto :goto_aa

    :cond_f8
    add-float v6, v3, v2

    cmpl-float v6, v6, v1

    if-lez v6, :cond_108

    neg-float v2, v3

    :cond_ff
    :goto_ff
    add-float v3, v4, v0

    cmpl-float v1, v3, v1

    if-lez v1, :cond_11a

    neg-float v0, v4

    move v1, v2

    goto :goto_aa

    :cond_108
    add-float v6, v3, v2

    iget-object v7, p0, Lcom/acquariusoft/UpdateMe/activity/d;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v7, v7, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->m:F

    neg-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_ff

    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/activity/d;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v2, v2, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->m:F

    add-float/2addr v2, v3

    neg-float v2, v2

    goto :goto_ff

    :cond_11a
    add-float v1, v4, v0

    iget-object v3, p0, Lcom/acquariusoft/UpdateMe/activity/d;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v3, v3, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->n:F

    neg-float v3, v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_15f

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/d;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget v0, v0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->n:F

    add-float/2addr v0, v4

    neg-float v0, v0

    move v1, v2

    goto/16 :goto_aa

    :pswitch_12e
    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/d;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iput v6, v0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->b:I

    iget v0, v5, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/acquariusoft/UpdateMe/activity/d;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget-object v1, v1, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->d:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    iget v1, v5, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/activity/d;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iget-object v2, v2, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->d:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    if-ge v0, v7, :cond_38

    if-ge v1, v7, :cond_38

    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/d;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    invoke-virtual {v0}, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->performClick()Z

    goto/16 :goto_38

    :pswitch_159
    iget-object v0, p0, Lcom/acquariusoft/UpdateMe/activity/d;->a:Lcom/acquariusoft/UpdateMe/activity/TouchImageView;

    iput v6, v0, Lcom/acquariusoft/UpdateMe/activity/TouchImageView;->b:I

    goto/16 :goto_38

    :cond_15f
    move v1, v2

    goto/16 :goto_aa

    :cond_162
    move v0, v1

    move v1, v2

    goto/16 :goto_aa

    :pswitch_data_166
    .packed-switch 0x0
        :pswitch_47
        :pswitch_12e
        :pswitch_66
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_159
    .end packed-switch
.end method
