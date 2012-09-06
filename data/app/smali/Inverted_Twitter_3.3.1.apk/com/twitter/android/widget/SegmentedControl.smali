.class public Lcom/twitter/android/widget/SegmentedControl;
.super Landroid/view/View;


# static fields
.field private static final b:Landroid/text/TextPaint;

.field private static final c:[I


# instance fields
.field a:Lcom/twitter/android/widget/v;

.field private d:Landroid/graphics/drawable/StateListDrawable;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:[Ljava/lang/CharSequence;

.field private g:F

.field private h:F

.field private i:F

.field private j:I

.field private k:Lcom/twitter/android/widget/w;

.field private l:F

.field private m:F

.field private n:F

.field private o:I

.field private p:I

.field private q:[I

.field private r:I

.field private s:Landroid/graphics/Rect;

.field private t:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    new-array v0, v3, [I

    const/4 v1, 0x0

    const v2, 0x10100a7

    aput v2, v0, v1

    sput-object v0, Lcom/twitter/android/widget/SegmentedControl;->c:[I

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v3}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lcom/twitter/android/widget/SegmentedControl;->b:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/widget/SegmentedControl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/twitter/android/du;->segmentedControlStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/widget/SegmentedControl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10

    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v1, Lcom/twitter/android/ec;->SegmentedControl:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    move v1, v0

    :goto_10
    if-ge v1, v3, :cond_72

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    packed-switch v0, :pswitch_data_7e

    :goto_19
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    :pswitch_1d
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    iput-object v0, p0, Lcom/twitter/android/widget/SegmentedControl;->d:Landroid/graphics/drawable/StateListDrawable;

    iget-object v0, p0, Lcom/twitter/android/widget/SegmentedControl;->d:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/widget/SegmentedControl;->t:I

    goto :goto_19

    :pswitch_2e
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/SegmentedControl;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_19

    :pswitch_35
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/SegmentedControl;->f:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/twitter/android/widget/SegmentedControl;->f:[Ljava/lang/CharSequence;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/twitter/android/widget/SegmentedControl;->q:[I

    goto :goto_19

    :pswitch_43
    const/high16 v4, 0x4160

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/twitter/android/widget/SegmentedControl;->i:F

    goto :goto_19

    :pswitch_4c
    const/4 v4, -0x1

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/widget/SegmentedControl;->j:I

    goto :goto_19

    :pswitch_54
    const/high16 v4, -0x100

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/widget/SegmentedControl;->o:I

    goto :goto_19

    :pswitch_5d
    invoke-virtual {v2, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/twitter/android/widget/SegmentedControl;->m:F

    goto :goto_19

    :pswitch_64
    invoke-virtual {v2, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/twitter/android/widget/SegmentedControl;->l:F

    goto :goto_19

    :pswitch_6b
    invoke-virtual {v2, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/twitter/android/widget/SegmentedControl;->n:F

    goto :goto_19

    :cond_72
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/widget/SegmentedControl;->s:Landroid/graphics/Rect;

    return-void

    nop

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_6b
        :pswitch_64
        :pswitch_5d
        :pswitch_54
        :pswitch_43
        :pswitch_4c
        :pswitch_1d
        :pswitch_2e
        :pswitch_35
    .end packed-switch
.end method

.method private a(F)I
    .registers 3

    iget v0, p0, Lcom/twitter/android/widget/SegmentedControl;->h:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/widget/SegmentedControl;->a:Lcom/twitter/android/widget/v;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/twitter/android/widget/SegmentedControl;->a:Lcom/twitter/android/widget/v;

    iget v1, p0, Lcom/twitter/android/widget/SegmentedControl;->p:I

    invoke-interface {v0, v1}, Lcom/twitter/android/widget/v;->b(I)V

    :cond_b
    return-void
.end method

.method public final a(I)V
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/widget/SegmentedControl;->q:[I

    iget v1, p0, Lcom/twitter/android/widget/SegmentedControl;->p:I

    aget v2, v0, v1

    and-int/lit8 v2, v2, -0x3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/twitter/android/widget/SegmentedControl;->q:[I

    aget v1, v0, p1

    or-int/lit8 v1, v1, 0x2

    aput v1, v0, p1

    iput p1, p0, Lcom/twitter/android/widget/SegmentedControl;->p:I

    invoke-virtual {p0}, Lcom/twitter/android/widget/SegmentedControl;->invalidate()V

    return-void
.end method

.method public final a(Lcom/twitter/android/widget/v;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/widget/SegmentedControl;->a:Lcom/twitter/android/widget/v;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 18

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/twitter/android/widget/SegmentedControl;->d:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/twitter/android/widget/SegmentedControl;->e:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/twitter/android/widget/SegmentedControl;->g:F

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/twitter/android/widget/SegmentedControl;->f:[Ljava/lang/CharSequence;

    sget-object v7, Lcom/twitter/android/widget/SegmentedControl;->b:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/twitter/android/widget/SegmentedControl;->i:F

    invoke-virtual {v7, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v7, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/twitter/android/widget/SegmentedControl;->j:I

    invoke-virtual {v7, v1}, Landroid/text/TextPaint;->setColor(I)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/twitter/android/widget/SegmentedControl;->n:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_44

    move-object/from16 v0, p0

    iget v1, v0, Lcom/twitter/android/widget/SegmentedControl;->n:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/twitter/android/widget/SegmentedControl;->l:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/twitter/android/widget/SegmentedControl;->m:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/twitter/android/widget/SegmentedControl;->o:I

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    :cond_44
    move-object/from16 v0, p0

    iget v12, v0, Lcom/twitter/android/widget/SegmentedControl;->h:F

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/widget/SegmentedControl;->getMeasuredHeight()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/widget/SegmentedControl;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v14, v1, 0x2

    const/4 v1, 0x0

    array-length v15, v11

    move v8, v1

    :goto_55
    if-ge v8, v15, :cond_b9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/android/widget/SegmentedControl;->q:[I

    aget v1, v1, v8

    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->save(I)I

    move-result v2

    and-int/lit8 v3, v1, 0x3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_9d

    sget-object v1, Landroid/view/View;->PRESSED_SELECTED_STATE_SET:[I

    invoke-virtual {v9, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    :goto_6e
    mul-int v1, v8, v14

    const/4 v3, 0x0

    add-int/lit8 v4, v8, 0x1

    mul-int/2addr v4, v14

    invoke-virtual {v9, v1, v3, v4, v13}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    aget-object v2, v11, v8

    const/4 v3, 0x0

    aget-object v1, v11, v8

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/high16 v1, 0x4000

    div-float v1, v12, v1

    mul-int/lit8 v5, v8, 0x2

    add-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    mul-float/2addr v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_55

    :cond_9d
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a8

    sget-object v1, Lcom/twitter/android/widget/SegmentedControl;->c:[I

    invoke-virtual {v9, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_6e

    :cond_a8
    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_b3

    sget-object v1, Landroid/view/View;->SELECTED_STATE_SET:[I

    invoke-virtual {v9, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_6e

    :cond_b3
    sget-object v1, Landroid/view/View;->EMPTY_STATE_SET:[I

    invoke-virtual {v9, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_6e

    :cond_b9
    if-eqz v10, :cond_c0

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_c0
    return-void
.end method

.method protected onMeasure(II)V
    .registers 12

    iget-object v0, p0, Lcom/twitter/android/widget/SegmentedControl;->e:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/twitter/android/widget/SegmentedControl;->t:I

    invoke-virtual {p0}, Lcom/twitter/android/widget/SegmentedControl;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/twitter/android/widget/SegmentedControl;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/twitter/android/widget/SegmentedControl;->getPaddingTop()I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/twitter/android/widget/SegmentedControl;->getSuggestedMinimumWidth()I

    move-result v5

    add-int/2addr v5, v2

    add-int/2addr v5, v3

    invoke-static {v5, p1}, Lcom/twitter/android/widget/SegmentedControl;->getDefaultSize(II)I

    move-result v5

    invoke-virtual {p0}, Lcom/twitter/android/widget/SegmentedControl;->getPaddingBottom()I

    move-result v6

    add-int/2addr v6, v1

    sub-int v7, v5, v2

    sub-int/2addr v7, v3

    iget-object v8, p0, Lcom/twitter/android/widget/SegmentedControl;->f:[Ljava/lang/CharSequence;

    array-length v8, v8

    div-int/2addr v7, v8

    int-to-float v7, v7

    iput v7, p0, Lcom/twitter/android/widget/SegmentedControl;->h:F

    iget-object v7, p0, Lcom/twitter/android/widget/SegmentedControl;->s:Landroid/graphics/Rect;

    sub-int v3, v5, v3

    invoke-virtual {v7, v2, v4, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int v3, v5, v2

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v0, v3, v4, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3f
    sget-object v0, Lcom/twitter/android/widget/SegmentedControl;->b:Landroid/text/TextPaint;

    iget v1, p0, Lcom/twitter/android/widget/SegmentedControl;->i:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    int-to-float v1, v6

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v0, v2

    sub-float v0, v1, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/twitter/android/widget/SegmentedControl;->g:F

    invoke-virtual {p0, v5, v6}, Lcom/twitter/android/widget/SegmentedControl;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    packed-switch v1, :pswitch_data_ae

    :cond_12
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_16
    return v0

    :pswitch_17
    iget-object v1, p0, Lcom/twitter/android/widget/SegmentedControl;->s:Landroid/graphics/Rect;

    float-to-int v4, v2

    float-to-int v3, v3

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-direct {p0, v2}, Lcom/twitter/android/widget/SegmentedControl;->a(F)I

    move-result v1

    iget-object v2, p0, Lcom/twitter/android/widget/SegmentedControl;->q:[I

    aget v3, v2, v1

    or-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    iput v1, p0, Lcom/twitter/android/widget/SegmentedControl;->r:I

    invoke-virtual {p0}, Lcom/twitter/android/widget/SegmentedControl;->invalidate()V

    goto :goto_16

    :pswitch_33
    iget-object v1, p0, Lcom/twitter/android/widget/SegmentedControl;->q:[I

    iget v4, p0, Lcom/twitter/android/widget/SegmentedControl;->r:I

    aget v5, v1, v4

    and-int/lit8 v5, v5, -0x2

    aput v5, v1, v4

    iget-object v1, p0, Lcom/twitter/android/widget/SegmentedControl;->s:Landroid/graphics/Rect;

    float-to-int v4, v2

    float-to-int v3, v3

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-direct {p0, v2}, Lcom/twitter/android/widget/SegmentedControl;->a(F)I

    move-result v1

    iget-object v2, p0, Lcom/twitter/android/widget/SegmentedControl;->q:[I

    aget v2, v2, v1

    iget v3, p0, Lcom/twitter/android/widget/SegmentedControl;->r:I

    if-ne v1, v3, :cond_70

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_70

    invoke-virtual {p0, v1}, Lcom/twitter/android/widget/SegmentedControl;->a(I)V

    iget-object v1, p0, Lcom/twitter/android/widget/SegmentedControl;->k:Lcom/twitter/android/widget/w;

    if-nez v1, :cond_65

    new-instance v1, Lcom/twitter/android/widget/w;

    invoke-direct {v1, p0}, Lcom/twitter/android/widget/w;-><init>(Lcom/twitter/android/widget/SegmentedControl;)V

    iput-object v1, p0, Lcom/twitter/android/widget/SegmentedControl;->k:Lcom/twitter/android/widget/w;

    :cond_65
    iget-object v1, p0, Lcom/twitter/android/widget/SegmentedControl;->k:Lcom/twitter/android/widget/w;

    invoke-virtual {p0, v1}, Lcom/twitter/android/widget/SegmentedControl;->post(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_70

    invoke-virtual {p0}, Lcom/twitter/android/widget/SegmentedControl;->a()V

    :cond_70
    invoke-virtual {p0}, Lcom/twitter/android/widget/SegmentedControl;->invalidate()V

    goto :goto_16

    :pswitch_74
    iget-object v1, p0, Lcom/twitter/android/widget/SegmentedControl;->s:Landroid/graphics/Rect;

    float-to-int v4, v2

    float-to-int v3, v3

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_94

    invoke-direct {p0, v2}, Lcom/twitter/android/widget/SegmentedControl;->a(F)I

    move-result v1

    iget v2, p0, Lcom/twitter/android/widget/SegmentedControl;->r:I

    if-eq v2, v1, :cond_90

    iget-object v1, p0, Lcom/twitter/android/widget/SegmentedControl;->q:[I

    iget v2, p0, Lcom/twitter/android/widget/SegmentedControl;->r:I

    aget v3, v1, v2

    and-int/lit8 v3, v3, -0x2

    aput v3, v1, v2

    :cond_90
    :goto_90
    invoke-virtual {p0}, Lcom/twitter/android/widget/SegmentedControl;->invalidate()V

    goto :goto_16

    :cond_94
    iget-object v1, p0, Lcom/twitter/android/widget/SegmentedControl;->q:[I

    iget v2, p0, Lcom/twitter/android/widget/SegmentedControl;->r:I

    aget v3, v1, v2

    and-int/lit8 v3, v3, -0x2

    aput v3, v1, v2

    goto :goto_90

    :pswitch_9f
    iget-object v1, p0, Lcom/twitter/android/widget/SegmentedControl;->q:[I

    iget v2, p0, Lcom/twitter/android/widget/SegmentedControl;->r:I

    aget v3, v1, v2

    and-int/lit8 v3, v3, -0x2

    aput v3, v1, v2

    invoke-virtual {p0}, Lcom/twitter/android/widget/SegmentedControl;->invalidate()V

    goto/16 :goto_16

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_17
        :pswitch_33
        :pswitch_74
        :pswitch_9f
    .end packed-switch
.end method
