.class public Lcom/google/android/finsky/layout/HistogramView;
.super Landroid/widget/LinearLayout;
.source "HistogramView.java"


# instance fields
.field private mAverageBox:Landroid/view/View;

.field private mHistogramTable:Lcom/google/android/finsky/layout/HistogramTable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/HistogramView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 31
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 33
    const v0, 0x7f08017b

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/HistogramView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/HistogramView;->mAverageBox:Landroid/view/View;

    .line 34
    const v0, 0x7f080180

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/HistogramView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/HistogramTable;

    iput-object v0, p0, Lcom/google/android/finsky/layout/HistogramView;->mHistogramTable:Lcom/google/android/finsky/layout/HistogramTable;

    .line 35
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 14
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HistogramView;->getHeight()I

    move-result v1

    .line 55
    .local v1, height:I
    iget-object v5, p0, Lcom/google/android/finsky/layout/HistogramView;->mAverageBox:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 56
    .local v0, averageBoxMeasuredWidth:I
    iget-object v5, p0, Lcom/google/android/finsky/layout/HistogramView;->mHistogramTable:Lcom/google/android/finsky/layout/HistogramTable;

    invoke-virtual {v5}, Lcom/google/android/finsky/layout/HistogramTable;->getMeasuredWidth()I

    move-result v2

    .line 58
    .local v2, histogramTableMeasuredWidth:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HistogramView;->getPaddingLeft()I

    move-result v3

    .line 59
    .local v3, left:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/HistogramView;->getPaddingTop()I

    move-result v4

    .line 60
    .local v4, top:I
    iget-object v5, p0, Lcom/google/android/finsky/layout/HistogramView;->mAverageBox:Landroid/view/View;

    add-int v6, v3, v0

    add-int v7, v4, v1

    invoke-virtual {v5, v3, v4, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 61
    add-int/2addr v3, v0

    .line 62
    iget-object v5, p0, Lcom/google/android/finsky/layout/HistogramView;->mHistogramTable:Lcom/google/android/finsky/layout/HistogramTable;

    add-int v6, v3, v2

    add-int v7, v4, v1

    invoke-virtual {v5, v3, v4, v6, v7}, Lcom/google/android/finsky/layout/HistogramTable;->layout(IIII)V

    .line 63
    return-void
.end method

.method protected onMeasure(II)V
    .registers 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v5, 0x4000

    .line 39
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 41
    iget-object v2, p0, Lcom/google/android/finsky/layout/HistogramView;->mHistogramTable:Lcom/google/android/finsky/layout/HistogramTable;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/HistogramTable;->getMeasuredWidth()I

    move-result v1

    .line 42
    .local v1, histogramTableMeasuredWidth:I
    iget-object v2, p0, Lcom/google/android/finsky/layout/HistogramView;->mHistogramTable:Lcom/google/android/finsky/layout/HistogramTable;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/HistogramTable;->getMaxWidth()I

    move-result v0

    .line 43
    .local v0, histogramTableMaxWidth:I
    if-le v1, v0, :cond_26

    .line 44
    iget-object v2, p0, Lcom/google/android/finsky/layout/HistogramView;->mHistogramTable:Lcom/google/android/finsky/layout/HistogramTable;

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/layout/HistogramView;->mHistogramTable:Lcom/google/android/finsky/layout/HistogramTable;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/HistogramTable;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/finsky/layout/HistogramTable;->measure(II)V

    .line 49
    :cond_26
    return-void
.end method
