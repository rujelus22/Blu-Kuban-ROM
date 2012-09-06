.class public Lcom/twitter/android/widget/CardRowView;
.super Landroid/view/ViewGroup;


# static fields
.field private static final a:Landroid/graphics/Paint;

.field private static final b:Landroid/graphics/Paint;


# instance fields
.field private final c:F

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:F

.field private final k:I

.field private l:I

.field private m:I

.field private n:Landroid/graphics/drawable/shapes/RectShape;

.field private o:Landroid/graphics/drawable/shapes/RectShape;

.field private p:Landroid/graphics/RectF;

.field private q:Landroid/graphics/RectF;

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/twitter/android/widget/CardRowView;->a:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/twitter/android/widget/CardRowView;->b:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/widget/CardRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/twitter/android/du;->cardRowViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/widget/CardRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13

    const/16 v8, 0xd

    const v4, -0xbbbbbc

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/twitter/android/ec;->CardRowView:[I

    invoke-virtual {p1, p2, v0, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/CardRowView;->l:I

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/CardRowView;->c:F

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/CardRowView;->h:I

    const/16 v1, 0xf

    const v2, -0x333334

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/CardRowView;->i:I

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/CardRowView;->j:F

    sget-object v1, Lcom/twitter/android/widget/CardRowView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    cmpl-float v3, v2, v7

    if-lez v3, :cond_a3

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget v1, p0, Lcom/twitter/android/widget/CardRowView;->j:F

    cmpg-float v1, v1, v7

    if-gtz v1, :cond_9c

    iput v3, p0, Lcom/twitter/android/widget/CardRowView;->k:I

    :goto_5f
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/twitter/android/widget/CardRowView;->d:I

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/twitter/android/widget/CardRowView;->e:I

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/twitter/android/widget/CardRowView;->f:I

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/CardRowView;->g:I

    invoke-virtual {p0}, Lcom/twitter/android/widget/CardRowView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_8d

    const v1, 0x106000d

    invoke-virtual {p0, v1}, Lcom/twitter/android/widget/CardRowView;->setBackgroundColor(I)V

    :cond_8d
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/android/widget/CardRowView;->r:Z

    invoke-super {p0, v6, v6, v6, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_9c
    invoke-virtual {v0, v8, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/CardRowView;->k:I

    goto :goto_5f

    :cond_a3
    invoke-virtual {v0, v8, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/CardRowView;->k:I

    goto :goto_5f
.end method

.method private static a(Landroid/graphics/RectF;FF)V
    .registers 7

    iget v0, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p1

    iget v1, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, p2

    iget v2, p0, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, p1

    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private a([FLandroid/graphics/RectF;)V
    .registers 6

    const/4 v1, 0x0

    if-eqz p1, :cond_15

    new-instance v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v0, p1, v1, v1}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;->resize(FF)V

    iput-object v0, p0, Lcom/twitter/android/widget/CardRowView;->o:Landroid/graphics/drawable/shapes/RectShape;

    :cond_15
    return-void
.end method

.method private b(I)V
    .registers 3

    iget v0, p0, Lcom/twitter/android/widget/CardRowView;->l:I

    if-eq p1, v0, :cond_a

    iput p1, p0, Lcom/twitter/android/widget/CardRowView;->l:I

    invoke-virtual {p0}, Lcom/twitter/android/widget/CardRowView;->requestLayout()V

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0}, Lcom/twitter/android/widget/CardRowView;->invalidate()V

    goto :goto_9
.end method

.method private c(II)V
    .registers 4

    const/4 v0, 0x1

    if-le p2, v0, :cond_17

    if-nez p1, :cond_9

    invoke-direct {p0, v0}, Lcom/twitter/android/widget/CardRowView;->b(I)V

    :goto_8
    return-void

    :cond_9
    add-int/lit8 v0, p2, -0x1

    if-ne p1, v0, :cond_12

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/twitter/android/widget/CardRowView;->b(I)V

    goto :goto_8

    :cond_12
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/twitter/android/widget/CardRowView;->b(I)V

    goto :goto_8

    :cond_17
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/widget/CardRowView;->b(I)V

    goto :goto_8
.end method


# virtual methods
.method public final a(I)V
    .registers 3

    iget v0, p0, Lcom/twitter/android/widget/CardRowView;->m:I

    if-eq p1, v0, :cond_a

    iput p1, p0, Lcom/twitter/android/widget/CardRowView;->m:I

    invoke-virtual {p0}, Lcom/twitter/android/widget/CardRowView;->requestLayout()V

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0}, Lcom/twitter/android/widget/CardRowView;->invalidate()V

    goto :goto_9
.end method

.method public final a(II)V
    .registers 4

    const/4 v0, 0x1

    if-gt p2, v0, :cond_9

    :goto_3
    iput-boolean v0, p0, Lcom/twitter/android/widget/CardRowView;->r:Z

    invoke-direct {p0, p1, p2}, Lcom/twitter/android/widget/CardRowView;->c(II)V

    return-void

    :cond_9
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final a(IIZ)V
    .registers 5

    if-lez p2, :cond_2c

    if-nez p1, :cond_10

    if-eqz p3, :cond_b

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/CardRowView;->a(I)V

    :goto_a
    return-void

    :cond_b
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/CardRowView;->a(I)V

    goto :goto_a

    :cond_10
    add-int/lit8 v0, p2, -0x1

    if-ne p1, v0, :cond_20

    if-eqz p3, :cond_1b

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/CardRowView;->a(I)V

    goto :goto_a

    :cond_1b
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/CardRowView;->a(I)V

    goto :goto_a

    :cond_20
    if-eqz p3, :cond_27

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/CardRowView;->a(I)V

    goto :goto_a

    :cond_27
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/CardRowView;->a(I)V

    goto :goto_a

    :cond_2c
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/CardRowView;->a(I)V

    goto :goto_a
.end method

.method public addView(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p0}, Lcom/twitter/android/widget/CardRowView;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/twitter/android/widget/CardRowView;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/android/widget/CardRowView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6

    invoke-virtual {p0}, Lcom/twitter/android/widget/CardRowView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CardRowView can only hold a single child view."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    invoke-virtual {p0}, Lcom/twitter/android/widget/CardRowView;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/twitter/android/widget/CardRowView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b(II)V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/widget/CardRowView;->r:Z

    invoke-direct {p0, p1, p2}, Lcom/twitter/android/widget/CardRowView;->c(II)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 10

    const/4 v7, 0x1

    iget-object v6, p0, Lcom/twitter/android/widget/CardRowView;->q:Landroid/graphics/RectF;

    iget v0, p0, Lcom/twitter/android/widget/CardRowView;->l:I

    iget-boolean v1, p0, Lcom/twitter/android/widget/CardRowView;->r:Z

    if-nez v0, :cond_b

    if-eqz v1, :cond_d

    :cond_b
    if-nez v6, :cond_11

    :cond_d
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    :goto_10
    return-void

    :cond_11
    sget-object v5, Lcom/twitter/android/widget/CardRowView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->save(I)I

    move-result v2

    iget-object v3, p0, Lcom/twitter/android/widget/CardRowView;->p:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/twitter/android/widget/CardRowView;->p:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget v3, p0, Lcom/twitter/android/widget/CardRowView;->k:I

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/twitter/android/widget/CardRowView;->n:Landroid/graphics/drawable/shapes/RectShape;

    invoke-virtual {v3, p1, v5}, Landroid/graphics/drawable/shapes/RectShape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    if-nez v1, :cond_4b

    if-eq v0, v7, :cond_36

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4b

    :cond_36
    iget v0, p0, Lcom/twitter/android/widget/CardRowView;->i:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, v6, Landroid/graphics/RectF;->left:F

    iget v2, v6, Landroid/graphics/RectF;->bottom:F

    iget v3, v6, Landroid/graphics/RectF;->right:F

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/twitter/android/widget/CardRowView;->h:I

    int-to-float v4, v4

    add-float/2addr v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_4b
    iget-object v0, p0, Lcom/twitter/android/widget/CardRowView;->o:Landroid/graphics/drawable/shapes/RectShape;

    if-eqz v0, :cond_82

    sget-object v0, Lcom/twitter/android/widget/CardRowView;->b:Landroid/graphics/Paint;

    const/16 v1, 0x14

    invoke-virtual {p1, v6, v0, v1}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v1

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->save(I)I

    iget v2, v6, Landroid/graphics/RectF;->left:F

    iget v3, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lcom/twitter/android/widget/CardRowView;->o:Landroid/graphics/drawable/shapes/RectShape;

    invoke-virtual {v2, p1, v0}, Landroid/graphics/drawable/shapes/RectShape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    sget-object v2, Lcom/twitter/android/util/f;->a:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/16 v2, 0x10

    invoke-virtual {p1, v6, v0, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_10

    :cond_82
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    goto :goto_10
.end method

.method protected onLayout(ZIIII)V
    .registers 16

    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v7}, Lcom/twitter/android/widget/CardRowView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v8, :cond_13

    :cond_12
    :goto_12
    return-void

    :cond_13
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, p0, Lcom/twitter/android/widget/CardRowView;->q:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/View;->layout(IIII)V

    :cond_2a
    iget v0, p0, Lcom/twitter/android/widget/CardRowView;->l:I

    iget-boolean v1, p0, Lcom/twitter/android/widget/CardRowView;->r:Z

    iget v2, p0, Lcom/twitter/android/widget/CardRowView;->c:F

    if-eqz v1, :cond_64

    iget-object v0, p0, Lcom/twitter/android/widget/CardRowView;->q:Landroid/graphics/RectF;

    new-array v1, v8, [F

    aput v2, v1, v7

    aput v2, v1, v9

    const/4 v3, 0x2

    aput v2, v1, v3

    const/4 v3, 0x3

    aput v2, v1, v3

    const/4 v3, 0x4

    aput v2, v1, v3

    const/4 v3, 0x5

    aput v2, v1, v3

    const/4 v3, 0x6

    aput v2, v1, v3

    const/4 v3, 0x7

    aput v2, v1, v3

    iget-object v2, p0, Lcom/twitter/android/widget/CardRowView;->p:Landroid/graphics/RectF;

    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v3, v1, v6, v6}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v3, v4, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;->resize(FF)V

    iput-object v3, p0, Lcom/twitter/android/widget/CardRowView;->n:Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {p0, v1, v0}, Lcom/twitter/android/widget/CardRowView;->a([FLandroid/graphics/RectF;)V

    goto :goto_12

    :cond_64
    packed-switch v0, :pswitch_data_fc

    goto :goto_12

    :pswitch_68
    iget-object v0, p0, Lcom/twitter/android/widget/CardRowView;->q:Landroid/graphics/RectF;

    new-array v1, v8, [F

    aput v2, v1, v7

    aput v2, v1, v9

    const/4 v3, 0x2

    aput v2, v1, v3

    const/4 v3, 0x3

    aput v2, v1, v3

    const/4 v2, 0x4

    aput v5, v1, v2

    const/4 v2, 0x5

    aput v5, v1, v2

    const/4 v2, 0x6

    aput v5, v1, v2

    const/4 v2, 0x7

    aput v5, v1, v2

    iget-object v2, p0, Lcom/twitter/android/widget/CardRowView;->p:Landroid/graphics/RectF;

    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v3, v1, v6, v6}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v3, v4, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;->resize(FF)V

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iput-object v3, p0, Lcom/twitter/android/widget/CardRowView;->n:Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {p0, v1, v0}, Lcom/twitter/android/widget/CardRowView;->a([FLandroid/graphics/RectF;)V

    goto/16 :goto_12

    :pswitch_a6
    iget-object v0, p0, Lcom/twitter/android/widget/CardRowView;->p:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/shapes/RectShape;->resize(FF)V

    iput-object v1, p0, Lcom/twitter/android/widget/CardRowView;->n:Landroid/graphics/drawable/shapes/RectShape;

    iput-object v6, p0, Lcom/twitter/android/widget/CardRowView;->o:Landroid/graphics/drawable/shapes/RectShape;

    goto/16 :goto_12

    :pswitch_be
    iget-object v0, p0, Lcom/twitter/android/widget/CardRowView;->q:Landroid/graphics/RectF;

    new-array v1, v8, [F

    aput v5, v1, v7

    aput v5, v1, v9

    const/4 v3, 0x2

    aput v5, v1, v3

    const/4 v3, 0x3

    aput v5, v1, v3

    const/4 v3, 0x4

    aput v2, v1, v3

    const/4 v3, 0x5

    aput v2, v1, v3

    const/4 v3, 0x6

    aput v2, v1, v3

    const/4 v3, 0x7

    aput v2, v1, v3

    iget-object v2, p0, Lcom/twitter/android/widget/CardRowView;->p:Landroid/graphics/RectF;

    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v3, v1, v6, v6}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v3, v4, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;->resize(FF)V

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iput-object v3, p0, Lcom/twitter/android/widget/CardRowView;->n:Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {p0, v1, v0}, Lcom/twitter/android/widget/CardRowView;->a([FLandroid/graphics/RectF;)V

    goto/16 :goto_12

    :pswitch_data_fc
    .packed-switch 0x1
        :pswitch_68
        :pswitch_a6
        :pswitch_be
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .registers 20

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/twitter/android/widget/CardRowView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_11

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_19

    :cond_11
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/twitter/android/widget/CardRowView;->setMeasuredDimension(II)V

    :goto_18
    return-void

    :cond_19
    move-object/from16 v0, p0

    iget v8, v0, Lcom/twitter/android/widget/CardRowView;->l:I

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/twitter/android/widget/CardRowView;->r:Z

    if-nez v8, :cond_49

    if-nez v9, :cond_49

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v7, v1, v2}, Lcom/twitter/android/widget/CardRowView;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    new-instance v5, Landroid/graphics/RectF;

    const/4 v6, 0x0

    const/4 v7, 0x0

    int-to-float v8, v3

    int-to-float v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/twitter/android/widget/CardRowView;->q:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/twitter/android/widget/CardRowView;->setMeasuredDimension(II)V

    goto :goto_18

    :cond_49
    move-object/from16 v0, p0

    iget v5, v0, Lcom/twitter/android/widget/CardRowView;->e:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/twitter/android/widget/CardRowView;->g:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/twitter/android/widget/CardRowView;->d:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/twitter/android/widget/CardRowView;->f:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/twitter/android/widget/CardRowView;->h:I

    add-int v13, v10, v11

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/high16 v4, 0x4000

    if-ne v14, v4, :cond_bc

    :goto_6b
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v0, p1

    invoke-static {v0, v13, v4}, Lcom/twitter/android/widget/CardRowView;->getChildMeasureSpec(III)I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v7, v4, v1}, Lcom/twitter/android/widget/CardRowView;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int v11, v3, v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/twitter/android/widget/CardRowView;->j:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/twitter/android/widget/CardRowView;->m:I

    if-eqz v9, :cond_fc

    packed-switch v8, :pswitch_data_1a0

    :cond_91
    move v4, v6

    :goto_92
    add-int v6, v5, v4

    add-int/2addr v6, v7

    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, v10

    int-to-float v5, v5

    int-to-float v9, v11

    sub-int v4, v6, v4

    int-to-float v4, v4

    invoke-direct {v7, v8, v5, v9, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/twitter/android/widget/CardRowView;->p:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/widget/CardRowView;->p:Landroid/graphics/RectF;

    invoke-static {v4, v13, v13}, Lcom/twitter/android/widget/CardRowView;->a(Landroid/graphics/RectF;FF)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/twitter/android/widget/CardRowView;->q:Landroid/graphics/RectF;

    move v4, v6

    :goto_b5
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/twitter/android/widget/CardRowView;->setMeasuredDimension(II)V

    goto/16 :goto_18

    :cond_bc
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/widget/CardRowView;->getSuggestedMinimumWidth()I

    move-result v4

    const/high16 v15, -0x8000

    if-ne v14, v15, :cond_19c

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_6b

    :pswitch_c9
    const/4 v8, 0x2

    if-eq v4, v8, :cond_cf

    const/4 v8, 0x3

    if-ne v4, v8, :cond_91

    :cond_cf
    const/4 v4, 0x0

    invoke-static {v13}, Landroid/util/FloatMath;->ceil(F)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v4, v6

    goto :goto_92

    :pswitch_db
    const/4 v8, 0x2

    if-eq v4, v8, :cond_e1

    const/4 v8, 0x3

    if-ne v4, v8, :cond_199

    :cond_e1
    const/4 v4, 0x0

    invoke-static {v13}, Landroid/util/FloatMath;->ceil(F)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    :goto_eb
    div-int/lit8 v5, v6, 0x2

    move/from16 v16, v5

    move v5, v4

    move/from16 v4, v16

    goto :goto_92

    :pswitch_f3
    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v4, v6, 0x2

    goto :goto_92

    :pswitch_f8
    div-int/lit8 v5, v5, 0x2

    move v4, v6

    goto :goto_92

    :cond_fc
    const/4 v9, 0x2

    if-eq v4, v9, :cond_102

    const/4 v9, 0x3

    if-ne v4, v9, :cond_10c

    :cond_102
    const/4 v4, 0x0

    invoke-static {v13}, Landroid/util/FloatMath;->ceil(F)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_10c
    packed-switch v8, :pswitch_data_1ac

    move v4, v7

    goto :goto_b5

    :pswitch_111
    add-int v4, v7, v5

    new-instance v6, Landroid/graphics/RectF;

    int-to-float v7, v10

    int-to-float v5, v5

    int-to-float v8, v11

    int-to-float v9, v4

    invoke-direct {v6, v7, v5, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v5, Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->left:F

    iget v8, v6, Landroid/graphics/RectF;->top:F

    iget v9, v6, Landroid/graphics/RectF;->right:F

    iget v10, v6, Landroid/graphics/RectF;->bottom:F

    const/high16 v11, 0x4100

    add-float/2addr v10, v11

    invoke-direct {v5, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/twitter/android/widget/CardRowView;->p:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/widget/CardRowView;->p:Landroid/graphics/RectF;

    invoke-static {v5, v13, v13}, Lcom/twitter/android/widget/CardRowView;->a(Landroid/graphics/RectF;FF)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/twitter/android/widget/CardRowView;->q:Landroid/graphics/RectF;

    add-int/2addr v4, v12

    goto/16 :goto_b5

    :pswitch_13e
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v10

    const/4 v6, 0x0

    int-to-float v8, v11

    int-to-float v9, v7

    invoke-direct {v4, v5, v6, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v5, Landroid/graphics/RectF;

    iget v6, v4, Landroid/graphics/RectF;->left:F

    iget v8, v4, Landroid/graphics/RectF;->top:F

    const/high16 v9, 0x4100

    sub-float/2addr v8, v9

    iget v9, v4, Landroid/graphics/RectF;->right:F

    iget v10, v4, Landroid/graphics/RectF;->bottom:F

    const/high16 v11, 0x4100

    add-float/2addr v10, v11

    invoke-direct {v5, v6, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/twitter/android/widget/CardRowView;->p:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/widget/CardRowView;->p:Landroid/graphics/RectF;

    invoke-static {v5, v13, v13}, Lcom/twitter/android/widget/CardRowView;->a(Landroid/graphics/RectF;FF)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/twitter/android/widget/CardRowView;->q:Landroid/graphics/RectF;

    add-int v4, v7, v12

    goto/16 :goto_b5

    :pswitch_16d
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v10

    const/4 v8, 0x0

    int-to-float v9, v11

    int-to-float v10, v7

    invoke-direct {v4, v5, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v5, Landroid/graphics/RectF;

    iget v8, v4, Landroid/graphics/RectF;->left:F

    iget v9, v4, Landroid/graphics/RectF;->top:F

    const/high16 v10, 0x4100

    sub-float/2addr v9, v10

    iget v10, v4, Landroid/graphics/RectF;->right:F

    iget v11, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v5, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/twitter/android/widget/CardRowView;->p:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/widget/CardRowView;->p:Landroid/graphics/RectF;

    invoke-static {v5, v13, v13}, Lcom/twitter/android/widget/CardRowView;->a(Landroid/graphics/RectF;FF)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/twitter/android/widget/CardRowView;->q:Landroid/graphics/RectF;

    add-int v4, v7, v6

    goto/16 :goto_b5

    :cond_199
    move v4, v5

    goto/16 :goto_eb

    :cond_19c
    move v3, v4

    goto/16 :goto_6b

    nop

    :pswitch_data_1a0
    .packed-switch 0x0
        :pswitch_c9
        :pswitch_db
        :pswitch_f3
        :pswitch_f8
    .end packed-switch

    :pswitch_data_1ac
    .packed-switch 0x1
        :pswitch_111
        :pswitch_13e
        :pswitch_16d
    .end packed-switch
.end method

.method public setPadding(IIII)V
    .registers 5

    return-void
.end method
