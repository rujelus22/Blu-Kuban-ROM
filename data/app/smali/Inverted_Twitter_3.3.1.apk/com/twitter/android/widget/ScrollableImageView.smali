.class public Lcom/twitter/android/widget/ScrollableImageView;
.super Landroid/widget/ImageView;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/twitter/android/widget/ScrollableImageView;->g:I

    iput v0, p0, Lcom/twitter/android/widget/ScrollableImageView;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/twitter/android/widget/ScrollableImageView;->g:I

    iput v0, p0, Lcom/twitter/android/widget/ScrollableImageView;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/twitter/android/widget/ScrollableImageView;->g:I

    iput v0, p0, Lcom/twitter/android/widget/ScrollableImageView;->h:I

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 8

    const/4 v0, 0x0

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    sget-object v1, Lcom/twitter/android/widget/s;->a:[I

    invoke-virtual {p0}, Lcom/twitter/android/widget/ScrollableImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_46

    :goto_13
    iput-boolean v0, p0, Lcom/twitter/android/widget/ScrollableImageView;->i:Z

    :goto_15
    return-void

    :pswitch_16
    invoke-virtual {p0}, Lcom/twitter/android/widget/ScrollableImageView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/twitter/android/widget/ScrollableImageView;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/twitter/android/widget/ScrollableImageView;->j:Landroid/graphics/Rect;

    if-eqz v3, :cond_41

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int v1, v4, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/twitter/android/widget/ScrollableImageView;->e:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/twitter/android/widget/ScrollableImageView;->f:I

    iget v1, p0, Lcom/twitter/android/widget/ScrollableImageView;->e:I

    if-gtz v1, :cond_3d

    iget v1, p0, Lcom/twitter/android/widget/ScrollableImageView;->f:I

    if-lez v1, :cond_3e

    :cond_3d
    const/4 v0, 0x1

    :cond_3e
    iput-boolean v0, p0, Lcom/twitter/android/widget/ScrollableImageView;->i:Z

    goto :goto_15

    :cond_41
    iput v0, p0, Lcom/twitter/android/widget/ScrollableImageView;->e:I

    iput v0, p0, Lcom/twitter/android/widget/ScrollableImageView;->f:I

    goto :goto_13

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_16
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v6, -0x8000

    iget-boolean v0, p0, Lcom/twitter/android/widget/ScrollableImageView;->i:Z

    if-nez v0, :cond_d

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v4, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v5, v1

    packed-switch v0, :pswitch_data_6e

    :pswitch_20
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_c

    :pswitch_25
    iput v4, p0, Lcom/twitter/android/widget/ScrollableImageView;->a:I

    iput v5, p0, Lcom/twitter/android/widget/ScrollableImageView;->b:I

    iput v6, p0, Lcom/twitter/android/widget/ScrollableImageView;->c:I

    iput v6, p0, Lcom/twitter/android/widget/ScrollableImageView;->d:I

    move v0, v3

    goto :goto_c

    :pswitch_2f
    iget v0, p0, Lcom/twitter/android/widget/ScrollableImageView;->c:I

    if-eq v0, v6, :cond_64

    iget v0, p0, Lcom/twitter/android/widget/ScrollableImageView;->c:I

    sub-int v1, v0, v4

    iget v0, p0, Lcom/twitter/android/widget/ScrollableImageView;->d:I

    sub-int/2addr v0, v5

    :goto_3a
    iget v6, p0, Lcom/twitter/android/widget/ScrollableImageView;->g:I

    add-int/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/twitter/android/widget/ScrollableImageView;->e:I

    if-le v6, v7, :cond_46

    move v1, v2

    :cond_46
    iget v6, p0, Lcom/twitter/android/widget/ScrollableImageView;->h:I

    add-int/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/twitter/android/widget/ScrollableImageView;->f:I

    if-le v6, v7, :cond_6c

    :goto_51
    iget v0, p0, Lcom/twitter/android/widget/ScrollableImageView;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/twitter/android/widget/ScrollableImageView;->g:I

    iget v0, p0, Lcom/twitter/android/widget/ScrollableImageView;->h:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/twitter/android/widget/ScrollableImageView;->h:I

    invoke-virtual {p0, v1, v2}, Lcom/twitter/android/widget/ScrollableImageView;->scrollBy(II)V

    iput v4, p0, Lcom/twitter/android/widget/ScrollableImageView;->c:I

    iput v5, p0, Lcom/twitter/android/widget/ScrollableImageView;->d:I

    move v0, v3

    goto :goto_c

    :cond_64
    iget v0, p0, Lcom/twitter/android/widget/ScrollableImageView;->a:I

    sub-int v1, v0, v4

    iget v0, p0, Lcom/twitter/android/widget/ScrollableImageView;->b:I

    sub-int/2addr v0, v5

    goto :goto_3a

    :cond_6c
    move v2, v0

    goto :goto_51

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_25
        :pswitch_20
        :pswitch_2f
    .end packed-switch
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/ScrollableImageView;->j:Landroid/graphics/Rect;

    :goto_b
    return-void

    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/widget/ScrollableImageView;->j:Landroid/graphics/Rect;

    goto :goto_b
.end method
