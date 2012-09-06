.class public Lcom/google/android/youtube/app/ui/ClingView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Lcom/google/android/youtube/app/ui/o;

.field private final d:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ClingView;->d:Landroid/graphics/drawable/Drawable;

    .line 29
    return-void
.end method

.method private b()[I
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 89
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ClingView;->b:Landroid/view/View;

    if-nez v0, :cond_7

    move-object v0, v3

    .line 103
    :goto_6
    return-object v0

    .line 92
    :cond_7
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ClingView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 93
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ClingView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    .line 94
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ClingView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 95
    :goto_1b
    iget-object v4, p0, Lcom/google/android/youtube/app/ui/ClingView;->a:Landroid/view/View;

    if-eq v0, v4, :cond_32

    if-eqz v0, :cond_32

    .line 96
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int/2addr v2, v4

    .line 97
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v1, v4

    .line 98
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_1b

    .line 100
    :cond_32
    if-nez v0, :cond_36

    move-object v0, v3

    .line 101
    goto :goto_6

    .line 103
    :cond_36
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v3, 0x0

    aput v2, v0, v3

    const/4 v2, 0x1

    aput v1, v0, v2

    goto :goto_6
.end method


# virtual methods
.method public final a()Landroid/graphics/Rect;
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 107
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/ClingView;->b()[I

    move-result-object v1

    .line 109
    if-eqz v1, :cond_24

    .line 110
    new-instance v0, Landroid/graphics/Rect;

    aget v2, v1, v4

    aget v3, v1, v6

    aget v4, v1, v4

    iget-object v5, p0, Lcom/google/android/youtube/app/ui/ClingView;->b:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v1, v1, v6

    iget-object v5, p0, Lcom/google/android/youtube/app/ui/ClingView;->b:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v1, v5

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 117
    :goto_23
    return-object v0

    .line 115
    :cond_24
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto :goto_23
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 53
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ClingView;->b:Landroid/view/View;

    if-nez v0, :cond_b

    .line 83
    :cond_a
    :goto_a
    return-void

    .line 59
    :cond_b
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 60
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    const/high16 v0, -0x2800

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/ClingView;->b()[I

    move-result-object v0

    if-nez v0, :cond_8d

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v6, v0

    .line 67
    :goto_26
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ClingView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ClingView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 70
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 71
    iget v0, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 72
    iget v0, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_68

    .line 73
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

    .line 75
    :cond_68
    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_82

    .line 76
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

    .line 80
    :cond_82
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ClingView;->c:Lcom/google/android/youtube/app/ui/o;

    if-eqz v0, :cond_a

    .line 81
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ClingView;->c:Lcom/google/android/youtube/app/ui/o;

    invoke-interface {v0, v6}, Lcom/google/android/youtube/app/ui/o;->a(Landroid/graphics/Rect;)V

    goto/16 :goto_a

    .line 66
    :cond_8d
    const/4 v2, 0x2

    new-array v2, v2, [I

    aget v3, v0, v6

    iget-object v4, p0, Lcom/google/android/youtube/app/ui/ClingView;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aput v3, v2, v6

    aget v0, v0, v7

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/ClingView;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    aput v0, v2, v7

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ClingView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/ClingView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    aget v4, v2, v6

    div-int/lit8 v6, v0, 0x2

    sub-int/2addr v4, v6

    aget v2, v2, v7

    div-int/lit8 v6, v3, 0x2

    sub-int/2addr v2, v6

    add-int v6, v4, v0

    add-int/2addr v3, v2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v4, v2, v6, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v6, v0

    goto/16 :goto_26
.end method

.method public setHighlightBoundsListener(Lcom/google/android/youtube/app/ui/o;)V
    .registers 2
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/ClingView;->c:Lcom/google/android/youtube/app/ui/o;

    .line 37
    return-void
.end method

.method public setViewToCling(Landroid/view/View;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p2, p0, Lcom/google/android/youtube/app/ui/ClingView;->b:Landroid/view/View;

    .line 46
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/ClingView;->a:Landroid/view/View;

    .line 47
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/ClingView;->postInvalidate()V

    .line 48
    return-void
.end method
