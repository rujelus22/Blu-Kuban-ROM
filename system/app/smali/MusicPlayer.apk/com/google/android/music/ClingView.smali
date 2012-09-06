.class public Lcom/google/android/music/ClingView;
.super Landroid/view/View;
.source "ClingView.java"


# instance fields
.field private mCommonParent:Landroid/view/View;

.field private final mHighlightImage:Landroid/graphics/drawable/Drawable;

.field private mViewToCling:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/ClingView;->mViewToCling:Landroid/view/View;

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ClingView;->mHighlightImage:Landroid/graphics/drawable/Drawable;

    .line 27
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 13
    .parameter "c"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 43
    iget-object v0, p0, Lcom/google/android/music/ClingView;->mViewToCling:Landroid/view/View;

    if-nez v0, :cond_b

    .line 77
    :cond_a
    :goto_a
    return-void

    .line 49
    :cond_b
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 50
    .local v5, p:Landroid/graphics/Paint;
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    const/high16 v0, -0x2800

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    invoke-virtual {p0}, Lcom/google/android/music/ClingView;->getClingingViewLocationRelativeToParent()[I

    move-result-object v8

    .line 54
    .local v8, loc:[I
    const/4 v0, 0x2

    new-array v9, v0, [I

    aget v0, v8, v3

    iget-object v2, p0, Lcom/google/android/music/ClingView;->mViewToCling:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    aput v0, v9, v3

    aget v0, v8, v4

    iget-object v2, p0, Lcom/google/android/music/ClingView;->mViewToCling:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    aput v0, v9, v4

    .line 56
    .local v9, shopIconCenter:[I
    aget v0, v9, v3

    iget-object v2, p0, Lcom/google/android/music/ClingView;->mHighlightImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v7, v0, v2

    .line 57
    .local v7, left:I
    aget v0, v9, v4

    iget-object v2, p0, Lcom/google/android/music/ClingView;->mHighlightImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v10, v0, v2

    .line 62
    .local v10, top:I
    iget-object v0, p0, Lcom/google/android/music/ClingView;->mHighlightImage:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/google/android/music/ClingView;->mHighlightImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v2, v7

    iget-object v3, p0, Lcom/google/android/music/ClingView;->mHighlightImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v3, v10

    invoke-virtual {v0, v7, v10, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 64
    iget-object v0, p0, Lcom/google/android/music/ClingView;->mHighlightImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 66
    iget-object v0, p0, Lcom/google/android/music/ClingView;->mHighlightImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 67
    .local v6, hightlightBounds:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 68
    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 69
    iget v0, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_a9

    .line 70
    iget v0, v6, Landroid/graphics/Rect;->right:I

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 73
    :cond_a9
    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 74
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_a
.end method

.method public getClingingViewLocationRelativeToParent()[I
    .registers 6

    .prologue
    .line 83
    iget-object v3, p0, Lcom/google/android/music/ClingView;->mViewToCling:Landroid/view/View;

    if-nez v3, :cond_6

    .line 84
    const/4 v3, 0x0

    .line 97
    :goto_5
    return-object v3

    .line 86
    :cond_6
    iget-object v3, p0, Lcom/google/android/music/ClingView;->mViewToCling:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 87
    .local v0, left:I
    iget-object v3, p0, Lcom/google/android/music/ClingView;->mViewToCling:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    .line 88
    .local v2, top:I
    iget-object v3, p0, Lcom/google/android/music/ClingView;->mViewToCling:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 89
    .local v1, shopParent:Landroid/view/View;
    :goto_1a
    iget-object v3, p0, Lcom/google/android/music/ClingView;->mCommonParent:Landroid/view/View;

    if-eq v1, v3, :cond_31

    if-eqz v1, :cond_31

    .line 90
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v0, v3

    .line 91
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    .line 92
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .end local v1           #shopParent:Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .restart local v1       #shopParent:Landroid/view/View;
    goto :goto_1a

    .line 94
    :cond_31
    if-nez v1, :cond_3b

    .line 95
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "cling item does not share common parent"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 97
    :cond_3b
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v4, 0x1

    aput v2, v3, v4

    goto :goto_5
.end method

.method public setViewToCling(Landroid/view/View;Landroid/view/View;)V
    .registers 3
    .parameter "commonParent"
    .parameter "view"

    .prologue
    .line 35
    iput-object p2, p0, Lcom/google/android/music/ClingView;->mViewToCling:Landroid/view/View;

    .line 36
    iput-object p1, p0, Lcom/google/android/music/ClingView;->mCommonParent:Landroid/view/View;

    .line 37
    invoke-virtual {p0}, Lcom/google/android/music/ClingView;->postInvalidate()V

    .line 38
    return-void
.end method
