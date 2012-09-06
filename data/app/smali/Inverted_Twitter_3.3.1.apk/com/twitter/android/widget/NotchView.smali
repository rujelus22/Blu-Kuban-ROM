.class public Lcom/twitter/android/widget/NotchView;
.super Landroid/view/View;


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/widget/NotchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/twitter/android/du;->notchViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/widget/NotchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/twitter/android/ec;->NotchView:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/widget/NotchView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/widget/NotchView;->b:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/twitter/android/widget/NotchView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/NotchView;->c:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 3

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    invoke-virtual {p0}, Lcom/twitter/android/widget/NotchView;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/widget/NotchView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/twitter/android/widget/NotchView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_14
    iget-object v1, p0, Lcom/twitter/android/widget/NotchView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/twitter/android/widget/NotchView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_21
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/twitter/android/widget/NotchView;->b:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/twitter/android/widget/NotchView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/twitter/android/widget/NotchView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/twitter/android/widget/NotchView;->getScrollY()I

    move-result v4

    invoke-virtual {p0}, Lcom/twitter/android/widget/NotchView;->getScrollX()I

    move-result v5

    iget v6, p0, Lcom/twitter/android/widget/NotchView;->c:I

    add-int v7, v5, v6

    invoke-virtual {v1, v5, v4, v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/2addr v6, v5

    add-int v7, v6, v3

    invoke-virtual {v0, v6, v4, v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int v0, v6, v3

    invoke-virtual {p0}, Lcom/twitter/android/widget/NotchView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v5

    invoke-virtual {v1, v0, v4, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    iget-object v0, p0, Lcom/twitter/android/widget/NotchView;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/android/widget/NotchView;->getSuggestedMinimumWidth()I

    move-result v1

    iget-object v2, p0, Lcom/twitter/android/widget/NotchView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v2, v0

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/android/widget/NotchView;->getSuggestedMinimumHeight()I

    move-result v1

    iget-object v2, p0, Lcom/twitter/android/widget/NotchView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, p1}, Lcom/twitter/android/widget/NotchView;->getDefaultSize(II)I

    move-result v0

    invoke-static {v1, p2}, Lcom/twitter/android/widget/NotchView;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/widget/NotchView;->setMeasuredDimension(II)V

    return-void
.end method
