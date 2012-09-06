.class public Lcom/google/googlenav/ui/android/ElevationChartView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/ui/android/E;

.field private b:Lcom/google/googlenav/ui/android/E;

.field private c:Lcom/google/googlenav/ui/android/ElevationSeriesView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 41
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/googlenav/ui/android/ElevationChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/ui/android/ElevationChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/ElevationChartView;->setClipToPadding(Z)V

    .line 51
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/ElevationChartView;->setClipChildren(Z)V

    .line 52
    new-instance v0, Lcom/google/googlenav/ui/android/E;

    invoke-direct {v0}, Lcom/google/googlenav/ui/android/E;-><init>()V

    new-instance v1, Lcom/google/googlenav/ui/android/ad;

    new-instance v2, Lcom/google/googlenav/ui/android/E;

    invoke-direct {v2}, Lcom/google/googlenav/ui/android/E;-><init>()V

    invoke-direct {v1, v2}, Lcom/google/googlenav/ui/android/ad;-><init>(Lcom/google/googlenav/ui/android/E;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/android/ElevationChartView;->a(Lcom/google/googlenav/ui/android/E;Lcom/google/googlenav/ui/android/E;)V

    .line 53
    return-void
.end method


# virtual methods
.method a(Lcom/google/googlenav/ui/android/E;Lcom/google/googlenav/ui/android/E;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 56
    const-string v0, "missing horizontal axis"

    invoke-static {p1, v0}, Lcom/google/common/base/P;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/E;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/ElevationChartView;->a:Lcom/google/googlenav/ui/android/E;

    .line 57
    const-string v0, "missing vertical axis"

    invoke-static {p2, v0}, Lcom/google/common/base/P;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/E;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/ElevationChartView;->b:Lcom/google/googlenav/ui/android/E;

    .line 58
    return-void
.end method

.method a(Ljava/util/List;)V
    .registers 11
    .parameter

    .prologue
    .line 108
    invoke-static {p1}, Lae/d;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/google/googlenav/ui/android/ElevationChartView;->a:Lcom/google/googlenav/ui/android/E;

    const-wide/16 v2, 0x0

    invoke-static {v0}, Lae/d;->b(Ljava/util/List;)I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/googlenav/ui/android/E;->a(DD)Z

    .line 110
    invoke-static {v0}, Lae/d;->d(Ljava/util/List;)Lae/a;

    move-result-object v1

    invoke-virtual {v1}, Lae/a;->b()D

    move-result-wide v1

    .line 111
    invoke-static {v0}, Lae/d;->c(Ljava/util/List;)Lae/a;

    move-result-object v0

    invoke-virtual {v0}, Lae/a;->b()D

    move-result-wide v3

    .line 112
    sub-double v5, v3, v1

    const-wide v7, 0x3fb999999999999aL

    mul-double/2addr v5, v7

    .line 113
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ElevationChartView;->b:Lcom/google/googlenav/ui/android/E;

    add-double/2addr v3, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/googlenav/ui/android/E;->a(DD)Z

    .line 114
    return-void
.end method

.method public a(Ljava/util/List;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ElevationChartView;->c:Lcom/google/googlenav/ui/android/ElevationSeriesView;

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/ui/android/ElevationSeriesView;->a(Ljava/util/List;Z)V

    .line 97
    if-eqz p1, :cond_d

    .line 98
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/android/ElevationChartView;->a(Ljava/util/List;)V

    .line 99
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/ElevationChartView;->invalidate()V

    .line 101
    :cond_d
    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    .line 62
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 63
    const v0, 0x7f10018b

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/ElevationChartView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/ElevationSeriesView;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/ElevationChartView;->c:Lcom/google/googlenav/ui/android/ElevationSeriesView;

    .line 64
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ElevationChartView;->c:Lcom/google/googlenav/ui/android/ElevationSeriesView;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/ElevationChartView;->a:Lcom/google/googlenav/ui/android/E;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/ElevationChartView;->b:Lcom/google/googlenav/ui/android/E;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/android/ElevationSeriesView;->a(Lcom/google/googlenav/ui/android/E;Lcom/google/googlenav/ui/android/E;)V

    .line 65
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 70
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/ElevationChartView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/ElevationChartView;->getPaddingTop()I

    move-result v1

    sub-int v3, p4, p2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/ElevationChartView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v4, p5, p3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/ElevationChartView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 72
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 73
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 76
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ElevationChartView;->a:Lcom/google/googlenav/ui/android/E;

    int-to-float v1, v3

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/E;->a(F)Z

    .line 77
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ElevationChartView;->b:Lcom/google/googlenav/ui/android/E;

    int-to-float v1, v4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/E;->a(F)Z

    .line 79
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 80
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 82
    const/4 v0, 0x0

    move v1, v0

    :goto_3e
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/ElevationChartView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_65

    .line 83
    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/android/ElevationChartView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 84
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 86
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 87
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-static {v0, v3, v4, v5, v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 88
    iget v0, v6, Landroid/graphics/Rect;->left:I

    iget v8, v6, Landroid/graphics/Rect;->top:I

    iget v9, v6, Landroid/graphics/Rect;->right:I

    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v0, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 82
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3e

    .line 90
    :cond_65
    return-void
.end method
