.class public Lcom/google/android/finsky/layout/DetailsMarginBox;
.super Lcom/google/android/finsky/layout/MarginBox;
.source "DetailsMarginBox.java"


# instance fields
.field private mLeadingBanner:Landroid/view/View;

.field private mLeftColumn:Landroid/view/View;

.field private mRightColumn:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/MarginBox;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/MarginBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/layout/MarginBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 35
    invoke-super {p0}, Lcom/google/android/finsky/layout/MarginBox;->onFinishInflate()V

    .line 37
    const v0, 0x7f0800a5

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DetailsMarginBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeadingBanner:Landroid/view/View;

    .line 38
    const v0, 0x7f0800aa

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DetailsMarginBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeftColumn:Landroid/view/View;

    .line 39
    const v0, 0x7f0800b7

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DetailsMarginBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mRightColumn:Landroid/view/View;

    .line 40
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 16
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v9, 0x0

    .line 71
    sub-int v5, p4, p2

    .line 72
    .local v5, width:I
    sub-int v2, p5, p3

    .line 74
    .local v2, height:I
    const/4 v6, 0x0

    .line 76
    .local v6, x:I
    iget-object v7, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeadingBanner:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 77
    .local v4, marginWidth:I
    iget-object v7, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeadingBanner:Landroid/view/View;

    invoke-virtual {v7, v9, v9, v4, v2}, Landroid/view/View;->layout(IIII)V

    .line 78
    add-int/2addr v6, v4

    .line 80
    iget-object v7, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeftColumn:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 81
    .local v3, leftColumnWidth:I
    iget-object v7, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeftColumn:Landroid/view/View;

    add-int v8, v6, v3

    invoke-virtual {v7, v6, v9, v8, v2}, Landroid/view/View;->layout(IIII)V

    .line 82
    add-int/2addr v6, v3

    .line 84
    iget-object v7, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mRightColumn:Landroid/view/View;

    invoke-virtual {v7, v6, v9, v5, v2}, Landroid/view/View;->layout(IIII)V

    .line 86
    iget-object v7, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mRightColumn:Landroid/view/View;

    const v8, 0x7f080022

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 87
    .local v1, detailsScrollerContainer:Landroid/view/View;
    instance-of v7, v1, Lcom/google/android/finsky/layout/DetailsRightColumn;

    if-eqz v7, :cond_38

    move-object v0, v1

    .line 88
    check-cast v0, Lcom/google/android/finsky/layout/DetailsRightColumn;

    .line 89
    .local v0, detailsRightColumn:Lcom/google/android/finsky/layout/DetailsRightColumn;
    invoke-virtual {v0, v4}, Lcom/google/android/finsky/layout/DetailsRightColumn;->setRightMargin(I)V

    .line 91
    .end local v0           #detailsRightColumn:Lcom/google/android/finsky/layout/DetailsRightColumn;
    :cond_38
    return-void
.end method

.method protected onMeasure(II)V
    .registers 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v8, 0x4000

    .line 44
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 45
    .local v5, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 49
    .local v0, height:I
    iget-object v6, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeftColumn:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v2, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 50
    .local v2, mLeftColumnWidth:I
    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 52
    .local v1, leftColumnWidthSpec:I
    iget-object v6, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeftColumn:Landroid/view/View;

    invoke-virtual {v6, v1, p2}, Landroid/view/View;->measure(II)V

    .line 55
    iget v6, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mMaxContentWidth:I

    if-le v5, v6, :cond_3f

    iget v6, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mMaxContentWidth:I

    sub-int v6, v5, v6

    div-int/lit8 v3, v6, 0x2

    .line 56
    .local v3, marginWidth:I
    :goto_25
    iget-object v6, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mLeadingBanner:Landroid/view/View;

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v6, v7, p2}, Landroid/view/View;->measure(II)V

    .line 62
    sub-int v6, v5, v2

    sub-int v4, v6, v3

    .line 63
    .local v4, rightColumnWidth:I
    iget-object v6, p0, Lcom/google/android/finsky/layout/DetailsMarginBox;->mRightColumn:Landroid/view/View;

    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v6, v7, p2}, Landroid/view/View;->measure(II)V

    .line 66
    invoke-virtual {p0, v5, v0}, Lcom/google/android/finsky/layout/DetailsMarginBox;->setMeasuredDimension(II)V

    .line 67
    return-void

    .line 55
    .end local v3           #marginWidth:I
    .end local v4           #rightColumnWidth:I
    :cond_3f
    const/4 v3, 0x0

    goto :goto_25
.end method
