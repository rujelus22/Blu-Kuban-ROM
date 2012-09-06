.class public Lcom/dropbox/android/widget/HeightMatchingSquareLayout;
.super Landroid/widget/FrameLayout;
.source "panda.py"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 34
    invoke-virtual {p0}, Lcom/dropbox/android/widget/HeightMatchingSquareLayout;->getChildCount()I

    move-result v9

    move v8, v3

    move v6, v3

    move v7, v3

    .line 40
    :goto_8
    if-ge v8, v9, :cond_39

    .line 41
    invoke-virtual {p0, v8}, Lcom/dropbox/android/widget/HeightMatchingSquareLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 42
    invoke-virtual {p0}, Lcom/dropbox/android/widget/HeightMatchingSquareLayout;->getConsiderGoneChildrenWhenMeasuring()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_9c

    :cond_1c
    move-object v0, p0

    move v2, p1

    move v4, p1

    move v5, v3

    .line 43
    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/android/widget/HeightMatchingSquareLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 44
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 45
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 40
    :goto_33
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v6, v0

    move v7, v1

    goto :goto_8

    .line 50
    :cond_39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 51
    invoke-virtual {p0}, Lcom/dropbox/android/widget/HeightMatchingSquareLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4b

    .line 52
    invoke-virtual {p0}, Lcom/dropbox/android/widget/HeightMatchingSquareLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 54
    :cond_4b
    invoke-virtual {p0}, Lcom/dropbox/android/widget/HeightMatchingSquareLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/dropbox/android/widget/HeightMatchingSquareLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    add-int/2addr v1, v6

    .line 55
    invoke-virtual {p0}, Lcom/dropbox/android/widget/HeightMatchingSquareLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/dropbox/android/widget/HeightMatchingSquareLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    add-int/2addr v0, v7

    .line 58
    invoke-virtual {p0}, Lcom/dropbox/android/widget/HeightMatchingSquareLayout;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 59
    invoke-virtual {p0}, Lcom/dropbox/android/widget/HeightMatchingSquareLayout;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 62
    invoke-virtual {p0}, Lcom/dropbox/android/widget/HeightMatchingSquareLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 63
    if-eqz v1, :cond_90

    .line 64
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 65
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 68
    :cond_90
    invoke-static {v0, p1}, Lcom/dropbox/android/widget/HeightMatchingSquareLayout;->resolveSize(II)I

    move-result v1

    invoke-static {v0, p1}, Lcom/dropbox/android/widget/HeightMatchingSquareLayout;->resolveSize(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/dropbox/android/widget/HeightMatchingSquareLayout;->setMeasuredDimension(II)V

    .line 71
    return-void

    :cond_9c
    move v0, v6

    move v1, v7

    goto :goto_33
.end method
