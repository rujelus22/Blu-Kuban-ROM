.class Lcom/estrongs/android/pop/app/imageviewer/HighlightView;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/view/View;

.field b:Z

.field c:Z

.field d:Landroid/graphics/Rect;

.field e:Landroid/graphics/RectF;

.field f:Landroid/graphics/Matrix;

.field private g:Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;

.field private h:Landroid/graphics/RectF;

.field private i:Z

.field private j:F

.field private k:Z

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Landroid/graphics/drawable/Drawable;

.field private final o:Landroid/graphics/Paint;

.field private final p:Landroid/graphics/Paint;

.field private final q:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;->None:Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->g:Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->i:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->k:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->o:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->p:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->q:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->a:Landroid/view/View;

    return-void
.end method

.method private d()V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->m:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->n:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private e()Landroid/graphics/Rect;
    .registers 6

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->f:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method


# virtual methods
.method public a(FF)I
    .registers 12

    const/16 v4, 0x20

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x1

    const/high16 v7, 0x41a0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e()Landroid/graphics/Rect;

    move-result-object v5

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->k:Z

    if-eqz v0, :cond_5d

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p2, v2

    mul-float v3, v0, v0

    mul-float v5, v2, v2

    add-float/2addr v3, v5

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v3, v5

    iget-object v5, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v6, v3, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_59

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_51

    cmpg-float v0, v2, v8

    if-gez v0, :cond_4e

    const/16 v1, 0x8

    :cond_4d
    :goto_4d
    return v1

    :cond_4e
    const/16 v1, 0x10

    goto :goto_4d

    :cond_51
    cmpg-float v0, v0, v8

    if-gez v0, :cond_57

    const/4 v1, 0x2

    goto :goto_4d

    :cond_57
    const/4 v1, 0x4

    goto :goto_4d

    :cond_59
    if-ge v3, v5, :cond_4d

    move v1, v4

    goto :goto_4d

    :cond_5d
    iget v0, v5, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr v0, v7

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_cb

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    add-float/2addr v0, v7

    cmpg-float v0, p2, v0

    if-gez v0, :cond_cb

    move v0, v1

    :goto_6e
    iget v3, v5, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v3, v7

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_7f

    iget v3, v5, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    add-float/2addr v3, v7

    cmpg-float v3, p1, v3

    if-gez v3, :cond_7f

    move v2, v1

    :cond_7f
    iget v3, v5, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v7

    if-gez v3, :cond_d2

    if-eqz v0, :cond_d2

    const/4 v3, 0x3

    :goto_8e
    iget v6, v5, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sub-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v7

    if-gez v6, :cond_9e

    if-eqz v0, :cond_9e

    or-int/lit8 v3, v3, 0x4

    :cond_9e
    iget v0, v5, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v7

    if-gez v0, :cond_ae

    if-eqz v2, :cond_ae

    or-int/lit8 v3, v3, 0x8

    :cond_ae
    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v7

    if-gez v0, :cond_d0

    if-eqz v2, :cond_d0

    or-int/lit8 v3, v3, 0x10

    move v0, v3

    :goto_bf
    if-ne v0, v1, :cond_cd

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_cd

    move v1, v4

    goto :goto_4d

    :cond_cb
    move v0, v2

    goto :goto_6e

    :cond_cd
    move v1, v0

    goto/16 :goto_4d

    :cond_d0
    move v0, v3

    goto :goto_bf

    :cond_d2
    move v3, v1

    goto :goto_8e
.end method

.method a(IFF)V
    .registers 9

    const/4 v1, -0x1

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e()Landroid/graphics/Rect;

    move-result-object v3

    if-ne p1, v2, :cond_a

    :goto_9
    return-void

    :cond_a
    const/16 v4, 0x20

    if-ne p1, v4, :cond_2c

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, p2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v1, p3

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->b(FF)V

    goto :goto_9

    :cond_2c
    and-int/lit8 v4, p1, 0x6

    if-nez v4, :cond_31

    move p2, v0

    :cond_31
    and-int/lit8 v4, p1, 0x18

    if-nez v4, :cond_36

    move p3, v0

    :cond_36
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    mul-float v4, p2, v0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    mul-float v3, p3, v0

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_64

    move v0, v1

    :goto_57
    int-to-float v0, v0

    mul-float/2addr v4, v0

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_66

    move v0, v1

    :goto_5e
    int-to-float v0, v0

    mul-float/2addr v0, v3

    invoke-virtual {p0, v4, v0}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->c(FF)V

    goto :goto_9

    :cond_64
    move v0, v2

    goto :goto_57

    :cond_66
    move v0, v2

    goto :goto_5e
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .registers 16

    const/high16 v6, 0x4000

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->c:Z

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->a()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->q:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_6

    :cond_23
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->k:Z

    if-eqz v0, :cond_e2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    div-float v5, v0, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    div-float/2addr v3, v6

    add-float/2addr v3, v5

    div-float/2addr v0, v6

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v4, v3, v0, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->q:Landroid/graphics/Paint;

    const v3, -0x10fb2a

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    :goto_5c
    :try_start_5c
    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
    :try_end_61
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5c .. :try_end_61} :catch_199

    :goto_61
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->a()Z

    move-result v0

    if-eqz v0, :cond_f7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->o:Landroid/graphics/Paint;

    :goto_69
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->g:Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;

    sget-object v1, Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;->Grow:Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;

    if-ne v0, v1, :cond_6

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->k:Z

    if-eqz v0, :cond_fb

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const-wide v2, 0x3fe921fb54442d18L

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iget-object v4, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v3, v0

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int v2, v3, v2

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->n:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_6

    :cond_e2
    new-instance v0, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->q:Landroid/graphics/Paint;

    const/16 v3, -0x7600

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_5c

    :cond_f7
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->p:Landroid/graphics/Paint;

    goto/16 :goto_69

    :cond_fb
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, 0x3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    iget-object v7, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    iget-object v8, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iget-object v11, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    sub-int v11, v0, v4

    sub-int v12, v9, v5

    add-int/2addr v0, v4

    add-int v13, v9, v5

    invoke-virtual {v10, v11, v12, v0, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    sub-int v10, v1, v4

    sub-int v11, v9, v5

    add-int/2addr v1, v4

    add-int v4, v9, v5

    invoke-virtual {v0, v10, v11, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->m:Landroid/graphics/drawable/Drawable;

    sub-int v1, v8, v7

    sub-int v4, v2, v6

    add-int v5, v8, v7

    add-int/2addr v2, v6

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->m:Landroid/graphics/drawable/Drawable;

    sub-int v1, v8, v7

    sub-int v2, v3, v6

    add-int v4, v8, v7

    add-int/2addr v3, v6

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_6

    :catch_199
    move-exception v0

    goto/16 :goto_61
.end method

.method public a(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V
    .registers 11

    const/16 v4, 0x7d

    const/4 v0, 0x1

    const/16 v3, 0x32

    if-eqz p4, :cond_8

    move p5, v0

    :cond_8
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->f:Landroid/graphics/Matrix;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->h:Landroid/graphics/RectF;

    iput-boolean p5, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->i:Z

    iput-boolean p4, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->k:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->j:F

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->o:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->q:Landroid/graphics/Paint;

    const/high16 v2, 0x4040

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->q:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->q:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;->None:Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->g:Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d()V

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;)V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->g:Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;

    if-eq p1, v0, :cond_b

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->g:Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_b
    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->b:Z

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->b:Z

    return v0
.end method

.method public b()Landroid/graphics/Rect;
    .registers 6

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method b(FF)V
    .registers 10

    const/16 v6, -0xa

    const/4 v5, 0x0

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->h:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->h:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->h:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->h:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v6, v6}, Landroid/graphics/Rect;->inset(II)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->c:Z

    return-void
.end method

.method public c()V
    .registers 2

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    return-void
.end method

.method c(FF)V
    .registers 11

    const/high16 v2, 0x41c8

    const/high16 v7, 0x4000

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->i:Z

    if-eqz v0, :cond_11

    cmpl-float v0, p1, v6

    if-eqz v0, :cond_d7

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->j:F

    div-float p2, p1, v0

    :cond_11
    :goto_11
    new-instance v3, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e:Landroid/graphics/RectF;

    invoke-direct {v3, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    cmpl-float v0, p1, v6

    if-lez v0, :cond_10f

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float v1, v7, p1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->h:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_10f

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->h:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v0, v1

    div-float p1, v0, v7

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->i:Z

    if-eqz v0, :cond_10f

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->j:F

    div-float p2, p1, v0

    move v0, p2

    move v1, p1

    :goto_44
    cmpl-float v4, v0, v6

    if-lez v4, :cond_6c

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float v5, v7, v0

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->h:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6c

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->h:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v0, v4

    div-float/2addr v0, v7

    iget-boolean v4, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->i:Z

    if-eqz v4, :cond_6c

    iget v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->j:F

    mul-float/2addr v1, v0

    :cond_6c
    neg-float v1, v1

    neg-float v0, v0

    invoke-virtual {v3, v1, v0}, Landroid/graphics/RectF;->inset(FF)V

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_84

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v0

    sub-float v0, v2, v0

    neg-float v0, v0

    div-float/2addr v0, v7

    invoke-virtual {v3, v0, v6}, Landroid/graphics/RectF;->inset(FF)V

    :cond_84
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->i:Z

    if-eqz v0, :cond_e1

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->j:F

    div-float v0, v2, v0

    :goto_8c
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_9e

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v0, v1

    neg-float v0, v0

    div-float/2addr v0, v7

    invoke-virtual {v3, v6, v0}, Landroid/graphics/RectF;->inset(FF)V

    :cond_9e
    iget v0, v3, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->h:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_e3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->h:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    invoke-virtual {v3, v0, v6}, Landroid/graphics/RectF;->offset(FF)V

    :cond_b2
    :goto_b2
    iget v0, v3, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->h:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_f9

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->h:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    invoke-virtual {v3, v6, v0}, Landroid/graphics/RectF;->offset(FF)V

    :cond_c6
    :goto_c6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_d7
    cmpl-float v0, p2, v6

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->j:F

    mul-float p1, p2, v0

    goto/16 :goto_11

    :cond_e1
    move v0, v2

    goto :goto_8c

    :cond_e3
    iget v0, v3, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->h:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b2

    iget v0, v3, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->h:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    neg-float v0, v0

    invoke-virtual {v3, v0, v6}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_b2

    :cond_f9
    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->h:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c6

    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->h:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    neg-float v0, v0

    invoke-virtual {v3, v6, v0}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_c6

    :cond_10f
    move v0, p2

    move v1, p1

    goto/16 :goto_44
.end method
