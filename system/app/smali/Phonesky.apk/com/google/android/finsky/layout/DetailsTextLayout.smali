.class public Lcom/google/android/finsky/layout/DetailsTextLayout;
.super Landroid/widget/LinearLayout;
.source "DetailsTextLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/DetailsTextLayout$MetricsListener;
    }
.end annotation


# instance fields
.field private mCurrentMaxLines:I

.field private mDefaultMaxLines:I

.field private mMetricsListener:Lcom/google/android/finsky/layout/DetailsTextLayout$MetricsListener;

.field private mPrevWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 14
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v7, 0x0

    .line 56
    iget-object v5, p0, Lcom/google/android/finsky/layout/DetailsTextLayout;->mMetricsListener:Lcom/google/android/finsky/layout/DetailsTextLayout$MetricsListener;

    if-nez v5, :cond_9

    .line 57
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 83
    :cond_8
    :goto_8
    return-void

    .line 61
    :cond_9
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 62
    sub-int v3, p4, p2

    .line 63
    .local v3, width:I
    if-lez v3, :cond_8

    iget v5, p0, Lcom/google/android/finsky/layout/DetailsTextLayout;->mPrevWidth:I

    if-eq v5, v3, :cond_8

    .line 64
    const v5, 0x7f0800ec

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/layout/DetailsTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 66
    .local v0, contentView:Landroid/widget/TextView;
    const v5, 0x7fffffff

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 67
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    const/high16 v6, 0x4000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 69
    .local v4, widthSpec:I
    invoke-virtual {v0, v4, v7}, Landroid/widget/TextView;->measure(II)V

    .line 70
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    .line 72
    .local v1, fullHeight:I
    iget v5, p0, Lcom/google/android/finsky/layout/DetailsTextLayout;->mDefaultMaxLines:I

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 73
    invoke-virtual {v0, v4, v7}, Landroid/widget/TextView;->measure(II)V

    .line 74
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    .line 76
    .local v2, truncatedHeight:I
    iget v5, p0, Lcom/google/android/finsky/layout/DetailsTextLayout;->mCurrentMaxLines:I

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 77
    invoke-virtual {v0, v4, v7}, Landroid/widget/TextView;->measure(II)V

    .line 79
    iget-object v5, p0, Lcom/google/android/finsky/layout/DetailsTextLayout;->mMetricsListener:Lcom/google/android/finsky/layout/DetailsTextLayout$MetricsListener;

    invoke-interface {v5, v1, v2}, Lcom/google/android/finsky/layout/DetailsTextLayout$MetricsListener;->metricsAvailable(II)V

    .line 81
    iput v3, p0, Lcom/google/android/finsky/layout/DetailsTextLayout;->mPrevWidth:I

    goto :goto_8
.end method

.method public setCurrentMaxLines(I)V
    .registers 4
    .parameter "currentMaxLines"

    .prologue
    .line 49
    const v1, 0x7f0800ec

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/DetailsTextLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 50
    .local v0, contentView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 51
    iput p1, p0, Lcom/google/android/finsky/layout/DetailsTextLayout;->mCurrentMaxLines:I

    .line 52
    return-void
.end method

.method public setDefaultMaxLines(I)V
    .registers 2
    .parameter "defaultMaxLines"

    .prologue
    .line 44
    iput p1, p0, Lcom/google/android/finsky/layout/DetailsTextLayout;->mDefaultMaxLines:I

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/DetailsTextLayout;->setCurrentMaxLines(I)V

    .line 46
    return-void
.end method

.method public setMetricsListener(Lcom/google/android/finsky/layout/DetailsTextLayout$MetricsListener;)V
    .registers 2
    .parameter "metricsListener"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/android/finsky/layout/DetailsTextLayout;->mMetricsListener:Lcom/google/android/finsky/layout/DetailsTextLayout$MetricsListener;

    .line 41
    return-void
.end method
