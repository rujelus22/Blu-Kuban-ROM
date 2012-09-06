.class Lcom/estrongs/android/pop/app/imageviewer/CropImageView;
.super Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/app/imageviewer/HighlightView;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/estrongs/android/pop/app/imageviewer/HighlightView;

.field c:F

.field d:F

.field e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->b:Lcom/estrongs/android/pop/app/imageviewer/HighlightView;

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v2, 0x0

    move v1, v2

    :goto_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_17

    :goto_b
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_29

    :cond_13
    :goto_13
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->invalidate()V

    return-void

    :cond_17
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->a(Z)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->c()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_29
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->a(FF)I

    move-result v1

    if-eq v1, v4, :cond_4c

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->a()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {v0, v4}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->a(Z)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->c()V

    goto :goto_13

    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b
.end method

.method private b(Lcom/estrongs/android/pop/app/imageviewer/HighlightView;)V
    .registers 8

    const/4 v5, 0x0

    iget-object v1, p1, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->getLeft()I

    move-result v0

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->getRight()I

    move-result v0

    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v3

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->getTop()I

    move-result v0

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v4

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->getBottom()I

    move-result v4

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v4, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-eqz v2, :cond_3e

    :goto_32
    if-eqz v0, :cond_40

    :goto_34
    if-nez v2, :cond_38

    if-eqz v0, :cond_3d

    :cond_38
    int-to-float v1, v2

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->c(FF)V

    :cond_3d
    return-void

    :cond_3e
    move v2, v3

    goto :goto_32

    :cond_40
    move v0, v1

    goto :goto_34
.end method

.method private c(Lcom/estrongs/android/pop/app/imageviewer/HighlightView;)V
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x3f19999a

    iget-object v0, p1, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v1

    mul-float/2addr v1, v4

    div-float v0, v3, v0

    mul-float/2addr v0, v4

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->c()F

    move-result v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f80

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->c()F

    move-result v1

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v0

    float-to-double v1, v1

    const-wide v3, 0x3fb999999999999aL

    cmpl-double v1, v1, v3

    if-lez v1, :cond_68

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object v2, p1, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    aput v2, v1, v5

    iget-object v2, p1, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->e:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    aput v2, v1, v6

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v2, v1, v5

    aget v1, v1, v6

    const/high16 v3, 0x4396

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->a(FFFF)V

    :cond_68
    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->b(Lcom/estrongs/android/pop/app/imageviewer/HighlightView;)V

    return-void
.end method


# virtual methods
.method protected a(FF)V
    .registers 6

    invoke-super {p0, p1, p2}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->a(FF)V

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_e

    return-void

    :cond_e
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;

    iget-object v2, v0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->f:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->c()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5
.end method

.method protected a(FFF)V
    .registers 8

    invoke-super {p0, p1, p2, p3}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->a(FFF)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;

    iget-object v2, v0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->f:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->c()V

    goto :goto_9
.end method

.method public a(Lcom/estrongs/android/pop/app/imageviewer/HighlightView;)V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_e

    return-void

    :cond_e
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->a(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5
.end method

.method protected onLayout(ZIIII)V
    .registers 10

    invoke-super/range {p0 .. p5}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->h:Lcom/estrongs/android/pop/app/imageviewer/ar;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ar;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_18

    :cond_17
    return-void

    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;

    iget-object v2, v0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->f:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->c()V

    iget-boolean v2, v0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->b:Z

    if-eqz v2, :cond_11

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->c(Lcom/estrongs/android/pop/app/imageviewer/HighlightView;)V

    goto :goto_11
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    iget-boolean v1, v0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->b:Z

    if-eqz v1, :cond_d

    :goto_c
    return v2

    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_110

    :cond_14
    :goto_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_11a

    :cond_1b
    :goto_1b
    move v2, v5

    goto :goto_c

    :pswitch_1d
    iget-boolean v0, v0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->a:Z

    if-eqz v0, :cond_25

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->a(Landroid/view/MotionEvent;)V

    goto :goto_14

    :cond_25
    move v1, v2

    :goto_26
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_14

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->a(FF)I

    move-result v2

    if-eq v2, v5, :cond_63

    iput v2, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->e:I

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->b:Lcom/estrongs/android/pop/app/imageviewer/HighlightView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->c:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->d:F

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->b:Lcom/estrongs/android/pop/app/imageviewer/HighlightView;

    const/16 v0, 0x20

    if-ne v2, v0, :cond_60

    sget-object v0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;->Move:Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;

    :goto_5c
    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->a(Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;)V

    goto :goto_14

    :cond_60
    sget-object v0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;->Grow:Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;

    goto :goto_5c

    :cond_63
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_26

    :pswitch_67
    iget-boolean v1, v0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->a:Z

    if-eqz v1, :cond_b5

    move v3, v2

    :goto_6c
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v3, v1, :cond_78

    :cond_74
    :goto_74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->b:Lcom/estrongs/android/pop/app/imageviewer/HighlightView;

    goto :goto_14

    :cond_78
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->a()Z

    move-result v4

    if-eqz v4, :cond_b1

    iput-object v1, v0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->c:Lcom/estrongs/android/pop/app/imageviewer/HighlightView;

    move v4, v2

    :goto_89
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v4, v0, :cond_9f

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->c(Lcom/estrongs/android/pop/app/imageviewer/HighlightView;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    iput-boolean v2, v0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->a:Z

    move v2, v5

    goto/16 :goto_c

    :cond_9f
    if-ne v4, v3, :cond_a5

    :goto_a1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_89

    :cond_a5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;

    invoke-virtual {v0, v5}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->b(Z)V

    goto :goto_a1

    :cond_b1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_6c

    :cond_b5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->b:Lcom/estrongs/android/pop/app/imageviewer/HighlightView;

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->b:Lcom/estrongs/android/pop/app/imageviewer/HighlightView;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->c(Lcom/estrongs/android/pop/app/imageviewer/HighlightView;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->b:Lcom/estrongs/android/pop/app/imageviewer/HighlightView;

    sget-object v1, Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;->None:Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->a(Lcom/estrongs/android/pop/app/imageviewer/HighlightView$ModifyMode;)V

    goto :goto_74

    :pswitch_c6
    iget-boolean v0, v0, Lcom/estrongs/android/pop/app/imageviewer/CropImage;->a:Z

    if-eqz v0, :cond_cf

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_14

    :cond_cf
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->b:Lcom/estrongs/android/pop/app/imageviewer/HighlightView;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->b:Lcom/estrongs/android/pop/app/imageviewer/HighlightView;

    iget v1, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->e:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->c:F

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->d:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/imageviewer/HighlightView;->a(IFF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->c:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->d:F

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->b:Lcom/estrongs/android/pop/app/imageviewer/HighlightView;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->b(Lcom/estrongs/android/pop/app/imageviewer/HighlightView;)V

    goto/16 :goto_14

    :pswitch_fb
    invoke-virtual {p0, v5, v5}, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->a(ZZ)V

    goto/16 :goto_1b

    :pswitch_100
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->c()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1b

    invoke-virtual {p0, v5, v5}, Lcom/estrongs/android/pop/app/imageviewer/CropImageView;->a(ZZ)V

    goto/16 :goto_1b

    nop

    :pswitch_data_110
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_67
        :pswitch_c6
    .end packed-switch

    :pswitch_data_11a
    .packed-switch 0x1
        :pswitch_fb
        :pswitch_100
    .end packed-switch
.end method
