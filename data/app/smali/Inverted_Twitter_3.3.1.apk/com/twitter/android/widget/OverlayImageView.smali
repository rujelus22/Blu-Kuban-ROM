.class public Lcom/twitter/android/widget/OverlayImageView;
.super Landroid/widget/ImageView;


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:I

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/widget/OverlayImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1, p2}, Lcom/twitter/android/widget/OverlayImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2}, Lcom/twitter/android/widget/OverlayImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    if-nez p2, :cond_3

    :goto_2
    return-void

    :cond_3
    sget-object v0, Lcom/twitter/android/ec;->OverlayImageView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {p0, v1}, Lcom/twitter/android/widget/OverlayImageView;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_13
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2
.end method

.method private b(Landroid/graphics/drawable/Drawable;)V
    .registers 6

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/twitter/android/widget/OverlayImageView;->d:Z

    if-eqz v0, :cond_29

    if-eqz p1, :cond_29

    invoke-virtual {p0}, Lcom/twitter/android/widget/OverlayImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/android/widget/OverlayImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/twitter/android/widget/OverlayImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/twitter/android/widget/OverlayImageView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/twitter/android/widget/OverlayImageView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/twitter/android/widget/OverlayImageView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Lcom/twitter/android/widget/OverlayImageView;->invalidate()V

    :cond_29
    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/twitter/android/widget/OverlayImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/OverlayImageView;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final a(II)V
    .registers 5

    iget v0, p0, Lcom/twitter/android/widget/OverlayImageView;->b:I

    iget v1, p0, Lcom/twitter/android/widget/OverlayImageView;->c:I

    if-ne v0, p1, :cond_8

    if-eq v1, p2, :cond_f

    :cond_8
    iput p1, p0, Lcom/twitter/android/widget/OverlayImageView;->b:I

    iput p2, p0, Lcom/twitter/android/widget/OverlayImageView;->c:I

    invoke-virtual {p0}, Lcom/twitter/android/widget/OverlayImageView;->requestLayout()V

    :cond_f
    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/widget/OverlayImageView;->a:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_28

    iget-object v0, p0, Lcom/twitter/android/widget/OverlayImageView;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/twitter/android/widget/OverlayImageView;->a:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/twitter/android/widget/OverlayImageView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/OverlayImageView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_13
    iput-object p1, p0, Lcom/twitter/android/widget/OverlayImageView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/twitter/android/widget/OverlayImageView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_25
    invoke-direct {p0, p1}, Lcom/twitter/android/widget/OverlayImageView;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_28
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 3

    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    iget-object v0, p0, Lcom/twitter/android/widget/OverlayImageView;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lcom/twitter/android/widget/OverlayImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_14
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/widget/OverlayImageView;->a:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_8

    invoke-virtual {p0}, Lcom/twitter/android/widget/OverlayImageView;->invalidate()V

    :goto_7
    return-void

    :cond_8
    invoke-super {p0, p1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/twitter/android/widget/OverlayImageView;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_a
    return-void
.end method

.method protected onMeasure(II)V
    .registers 9

    iget v2, p0, Lcom/twitter/android/widget/OverlayImageView;->b:I

    iget v3, p0, Lcom/twitter/android/widget/OverlayImageView;->c:I

    if-lez v2, :cond_21

    if-lez v3, :cond_21

    invoke-static {v2, p1}, Lcom/twitter/android/widget/OverlayImageView;->getDefaultSize(II)I

    move-result v1

    invoke-static {v3, p2}, Lcom/twitter/android/widget/OverlayImageView;->getDefaultSize(II)I

    move-result v0

    mul-int v4, v2, v0

    mul-int v5, v3, v1

    if-le v4, v5, :cond_1c

    div-int v0, v5, v2

    :cond_18
    :goto_18
    invoke-virtual {p0, v1, v0}, Lcom/twitter/android/widget/OverlayImageView;->setMeasuredDimension(II)V

    :goto_1b
    return-void

    :cond_1c
    if-ge v4, v5, :cond_18

    div-int v1, v4, v3

    goto :goto_18

    :cond_21
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    goto :goto_1b
.end method

.method protected setFrame(IIII)Z
    .registers 7

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/twitter/android/widget/OverlayImageView;->d:Z

    iget-object v1, p0, Lcom/twitter/android/widget/OverlayImageView;->a:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/twitter/android/widget/OverlayImageView;->b(Landroid/graphics/drawable/Drawable;)V

    return v0
.end method
