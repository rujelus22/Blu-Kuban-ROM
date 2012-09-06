.class Lcom/estrongs/android/pop/view/g;
.super Landroid/view/View;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private final c:[I

.field private d:Lcom/estrongs/android/pop/view/h;

.field private e:Z

.field private f:Z

.field private final g:I

.field private final h:I

.field private final i:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/estrongs/android/pop/view/h;I)V
    .registers 9

    const/4 v4, 0x1

    const/high16 v1, 0x42c8

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/estrongs/android/pop/view/e;->f:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/estrongs/android/pop/view/g;->g:I

    sget v0, Lcom/estrongs/android/pop/view/e;->f:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/estrongs/android/pop/view/g;->h:I

    const/high16 v0, 0x4200

    sget v1, Lcom/estrongs/android/pop/view/e;->f:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/estrongs/android/pop/view/g;->i:I

    iput-object p2, p0, Lcom/estrongs/android/pop/view/g;->d:Lcom/estrongs/android/pop/view/h;

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_5c

    iput-object v0, p0, Lcom/estrongs/android/pop/view/g;->c:[I

    new-instance v0, Landroid/graphics/SweepGradient;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/g;->c:[I

    const/4 v2, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/estrongs/android/pop/view/g;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/g;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/g;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/g;->a:Landroid/graphics/Paint;

    const/high16 v1, 0x4270

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/g;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/g;->b:Landroid/graphics/Paint;

    const/high16 v1, 0x40a0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void

    nop

    :array_5c
    .array-data 0x4
        0x0t 0x0t 0xbbt 0xbbt
        0xbbt 0x0t 0xbbt 0xbbt
        0xbbt 0x0t 0x0t 0xbbt
        0xbbt 0xbbt 0x0t 0xbbt
        0x0t 0xbbt 0x0t 0xbbt
        0x0t 0xbbt 0xbbt 0xbbt
        0x0t 0x0t 0xbbt 0xbbt
    .end array-data
.end method

.method private a(IIF)I
    .registers 5

    sub-int v0, p2, p1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private a([IF)I
    .registers 10

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_9

    const/4 v0, 0x0

    aget v0, p1, v0

    :goto_8
    return v0

    :cond_9
    const/high16 v0, 0x3f80

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_15

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget v0, p1, v0

    goto :goto_8

    :cond_15
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v1, v0

    int-to-float v2, v1

    sub-float/2addr v0, v2

    aget v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    aget v1, p1, v1

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    invoke-direct {p0, v3, v4, v0}, Lcom/estrongs/android/pop/view/g;->a(IIF)I

    move-result v3

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-direct {p0, v4, v5, v0}, Lcom/estrongs/android/pop/view/g;->a(IIF)I

    move-result v4

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-direct {p0, v5, v6, v0}, Lcom/estrongs/android/pop/view/g;->a(IIF)I

    move-result v5

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-direct {p0, v2, v1, v0}, Lcom/estrongs/android/pop/view/g;->a(IIF)I

    move-result v0

    invoke-static {v3, v4, v5, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto :goto_8
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    const/4 v4, 0x0

    iget v0, p0, Lcom/estrongs/android/pop/view/g;->g:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/g;->a:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v2, 0x3f00

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/estrongs/android/pop/view/g;->g:I

    int-to-float v1, v1

    iget v2, p0, Lcom/estrongs/android/pop/view/g;->g:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    new-instance v1, Landroid/graphics/RectF;

    neg-float v2, v0

    neg-float v3, v0

    invoke-direct {v1, v2, v3, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/g;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/estrongs/android/pop/view/g;->i:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/g;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/g;->e:Z

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/estrongs/android/pop/view/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/g;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-boolean v1, p0, Lcom/estrongs/android/pop/view/g;->f:Z

    if-eqz v1, :cond_63

    iget-object v1, p0, Lcom/estrongs/android/pop/view/g;->b:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_47
    iget v1, p0, Lcom/estrongs/android/pop/view/g;->i:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/estrongs/android/pop/view/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/estrongs/android/pop/view/g;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v4, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/g;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_62
    return-void

    :cond_63
    iget-object v1, p0, Lcom/estrongs/android/pop/view/g;->b:Landroid/graphics/Paint;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_47
.end method

.method protected onMeasure(II)V
    .registers 5

    iget v0, p0, Lcom/estrongs/android/pop/view/g;->g:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/estrongs/android/pop/view/g;->h:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/view/g;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/estrongs/android/pop/view/g;->g:I

    int-to-float v3, v3

    sub-float v3, v0, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v4, p0, Lcom/estrongs/android/pop/view/g;->h:I

    int-to-float v4, v4

    sub-float v4, v0, v4

    mul-float v0, v3, v3

    mul-float v5, v4, v4

    add-float/2addr v0, v5

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    iget v0, p0, Lcom/estrongs/android/pop/view/g;->i:I

    int-to-double v7, v0

    cmpg-double v0, v5, v7

    if-gtz v0, :cond_2e

    move v0, v1

    :goto_26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_8a

    :cond_2d
    :goto_2d
    return v1

    :cond_2e
    move v0, v2

    goto :goto_26

    :pswitch_30
    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/g;->e:Z

    if-eqz v0, :cond_3a

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/g;->f:Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/g;->invalidate()V

    goto :goto_2d

    :cond_3a
    :pswitch_3a
    iget-boolean v2, p0, Lcom/estrongs/android/pop/view/g;->e:Z

    if-eqz v2, :cond_48

    iget-boolean v2, p0, Lcom/estrongs/android/pop/view/g;->f:Z

    if-eq v2, v0, :cond_2d

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/g;->f:Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/g;->invalidate()V

    goto :goto_2d

    :cond_48
    float-to-double v4, v4

    float-to-double v2, v3

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v0, v2

    const v2, 0x40c90fda

    div-float/2addr v0, v2

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gez v2, :cond_5b

    const/high16 v2, 0x3f80

    add-float/2addr v0, v2

    :cond_5b
    iget-object v2, p0, Lcom/estrongs/android/pop/view/g;->b:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/estrongs/android/pop/view/g;->c:[I

    invoke-direct {p0, v3, v0}, Lcom/estrongs/android/pop/view/g;->a([IF)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/e;->a(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/g;->invalidate()V

    goto :goto_2d

    :pswitch_73
    iget-boolean v3, p0, Lcom/estrongs/android/pop/view/g;->e:Z

    if-eqz v3, :cond_2d

    if-eqz v0, :cond_84

    iget-object v0, p0, Lcom/estrongs/android/pop/view/g;->d:Lcom/estrongs/android/pop/view/h;

    iget-object v3, p0, Lcom/estrongs/android/pop/view/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/estrongs/android/pop/view/h;->a(I)V

    :cond_84
    iput-boolean v2, p0, Lcom/estrongs/android/pop/view/g;->e:Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/g;->invalidate()V

    goto :goto_2d

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_30
        :pswitch_73
        :pswitch_3a
    .end packed-switch
.end method
