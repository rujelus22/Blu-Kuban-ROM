.class public final Lcom/anddoes/launcher/jl;
.super Landroid/widget/GridLayout;
.source "SourceFile"

# interfaces
.implements Lcom/anddoes/launcher/ip;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    iput p2, p0, Lcom/anddoes/launcher/jl;->a:I

    .line 38
    iput p3, p0, Lcom/anddoes/launcher/jl;->b:I

    .line 39
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/anddoes/launcher/jl;->getChildCount()I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/Runnable;)V
    .registers 2
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/anddoes/launcher/jl;->c:Ljava/lang/Runnable;

    .line 79
    return-void
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/anddoes/launcher/jl;->removeAllViews()V

    .line 112
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/jl;->setLayerType(ILandroid/graphics/Paint;)V

    .line 113
    return-void
.end method

.method final c()I
    .registers 2

    .prologue
    .line 42
    iget v0, p0, Lcom/anddoes/launcher/jl;->a:I

    return v0
.end method

.method final d()I
    .registers 2

    .prologue
    .line 46
    iget v0, p0, Lcom/anddoes/launcher/jl;->b:I

    return v0
.end method

.method public final e()V
    .registers 5

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/anddoes/launcher/jl;->getChildCount()I

    move-result v1

    .line 54
    const/4 v0, 0x0

    :goto_5
    if-lt v0, v1, :cond_8

    .line 57
    return-void

    .line 55
    :cond_8
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/jl;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method final f()V
    .registers 3

    .prologue
    .line 106
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/anddoes/launcher/jl;->setLayerType(ILandroid/graphics/Paint;)V

    .line 107
    return-void
.end method

.method protected final onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 73
    invoke-super {p0}, Landroid/widget/GridLayout;->onDetachedFromWindow()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/jl;->c:Ljava/lang/Runnable;

    .line 75
    return-void
.end method

.method protected final onLayout(ZIIII)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-super/range {p0 .. p5}, Landroid/widget/GridLayout;->onLayout(ZIIII)V

    .line 83
    iget-object v0, p0, Lcom/anddoes/launcher/jl;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    .line 84
    iget-object v0, p0, Lcom/anddoes/launcher/jl;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 86
    :cond_c
    return-void
.end method

.method protected final onMeasure(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/anddoes/launcher/jl;->getSuggestedMinimumWidth()I

    move-result v0

    .line 65
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 64
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 66
    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 67
    invoke-super {p0, v0, p2}, Landroid/widget/GridLayout;->onMeasure(II)V

    .line 69
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/widget/GridLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 91
    invoke-virtual {p0}, Lcom/anddoes/launcher/jl;->getChildCount()I

    move-result v1

    .line 92
    if-lez v1, :cond_20

    .line 94
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/jl;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 96
    if-nez v0, :cond_21

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_21

    const/4 v0, 0x0

    .line 98
    :cond_20
    :goto_20
    return v0

    .line 96
    :cond_21
    const/4 v0, 0x1

    goto :goto_20
.end method

.method protected final setChildrenDrawingCacheEnabled(Z)V
    .registers 6
    .parameter

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/anddoes/launcher/jl;->getChildCount()I

    move-result v1

    .line 144
    const/4 v0, 0x0

    :goto_5
    if-lt v0, v1, :cond_8

    .line 152
    return-void

    .line 145
    :cond_8
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/jl;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 146
    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 148
    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v3

    if-nez v3, :cond_1b

    if-eqz p1, :cond_1b

    .line 149
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 144
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method protected final setChildrenDrawnWithCacheEnabled(Z)V
    .registers 2
    .parameter

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/widget/GridLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 157
    return-void
.end method
