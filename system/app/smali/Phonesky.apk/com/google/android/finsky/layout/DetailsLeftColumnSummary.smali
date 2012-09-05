.class public Lcom/google/android/finsky/layout/DetailsLeftColumnSummary;
.super Landroid/widget/LinearLayout;
.source "DetailsLeftColumnSummary.java"


# instance fields
.field private mColumnScroller:Lcom/google/android/finsky/layout/ObservableScrollView;

.field private mSummary:Landroid/view/View;

.field private mThumbnail:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method private findViews()V
    .registers 3

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsLeftColumnSummary;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/ObservableScrollView;

    .line 104
    .local v0, columnScroller:Lcom/google/android/finsky/layout/ObservableScrollView;
    iget-object v1, p0, Lcom/google/android/finsky/layout/DetailsLeftColumnSummary;->mColumnScroller:Lcom/google/android/finsky/layout/ObservableScrollView;

    if-eq v0, v1, :cond_c

    .line 105
    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsLeftColumnSummary;->mColumnScroller:Lcom/google/android/finsky/layout/ObservableScrollView;

    .line 107
    :cond_c
    return-void
.end method


# virtual methods
.method public getSummaryTop()I
    .registers 6

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/google/android/finsky/layout/DetailsLeftColumnSummary;->findViews()V

    .line 93
    iget-object v3, p0, Lcom/google/android/finsky/layout/DetailsLeftColumnSummary;->mColumnScroller:Lcom/google/android/finsky/layout/ObservableScrollView;

    invoke-virtual {v3}, Lcom/google/android/finsky/layout/ObservableScrollView;->getViewportTop()I

    move-result v2

    .line 94
    .local v2, viewportTop:I
    iget-object v3, p0, Lcom/google/android/finsky/layout/DetailsLeftColumnSummary;->mThumbnail:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 96
    .local v1, thumbnailParams:Landroid/widget/FrameLayout$LayoutParams;
    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v0, v3, v4

    .line 99
    .local v0, thumbnailBottom:I
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    return v3
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 36
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 38
    const v0, 0x7f0800b3

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DetailsLeftColumnSummary;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsLeftColumnSummary;->mSummary:Landroid/view/View;

    .line 39
    const v0, 0x7f08001a

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DetailsLeftColumnSummary;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsLeftColumnSummary;->mThumbnail:Landroid/view/View;

    .line 40
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 18
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsLeftColumnSummary;->getPaddingLeft()I

    move-result v4

    .line 63
    .local v4, paddingLeft:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsLeftColumnSummary;->getPaddingTop()I

    move-result v5

    .line 64
    .local v5, paddingTop:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsLeftColumnSummary;->getWidth()I

    move-result v9

    sub-int/2addr v9, v4

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsLeftColumnSummary;->getPaddingRight()I

    move-result v10

    sub-int v8, v9, v10

    .line 66
    .local v8, width:I
    move v7, v5

    .line 67
    .local v7, topY:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_15
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsLeftColumnSummary;->getChildCount()I

    move-result v9

    if-ge v3, v9, :cond_5a

    .line 68
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/DetailsLeftColumnSummary;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_2a

    .line 67
    :goto_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 72
    :cond_2a
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 74
    .local v2, childParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v9, p0, Lcom/google/android/finsky/layout/DetailsLeftColumnSummary;->mSummary:Landroid/view/View;

    if-eq v0, v9, :cond_47

    .line 75
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 76
    .local v1, childHeight:I
    iget v9, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v9

    .line 77
    add-int v9, v4, v8

    add-int v10, v7, v1

    invoke-virtual {v0, v4, v7, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 78
    iget v9, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v9, v1

    add-int/2addr v7, v9

    .line 79
    goto :goto_27

    .line 80
    .end local v1           #childHeight:I
    :cond_47
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsLeftColumnSummary;->getSummaryTop()I

    move-result v6

    .line 81
    .local v6, summaryTop:I
    iget-object v9, p0, Lcom/google/android/finsky/layout/DetailsLeftColumnSummary;->mSummary:Landroid/view/View;

    add-int v10, v4, v8

    iget-object v11, p0, Lcom/google/android/finsky/layout/DetailsLeftColumnSummary;->mSummary:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v6

    invoke-virtual {v9, v4, v6, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_27

    .line 85
    .end local v0           #child:Landroid/view/View;
    .end local v2           #childParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v6           #summaryTop:I
    :cond_5a
    return-void
.end method

.method protected onMeasure(II)V
    .registers 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 46
    const/4 v2, 0x0

    .line 47
    .local v2, totalHeight:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsLeftColumnSummary;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_24

    .line 48
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/DetailsLeftColumnSummary;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 49
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1a

    .line 47
    :cond_17
    :goto_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 52
    :cond_1a
    iget-object v3, p0, Lcom/google/android/finsky/layout/DetailsLeftColumnSummary;->mSummary:Landroid/view/View;

    if-eq v0, v3, :cond_17

    .line 53
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_17

    .line 57
    .end local v0           #child:Landroid/view/View;
    :cond_24
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual {p0, v3, v2}, Lcom/google/android/finsky/layout/DetailsLeftColumnSummary;->setMeasuredDimension(II)V

    .line 58
    return-void
.end method
