.class public Lcom/google/android/finsky/activities/PurchaseContentLayout;
.super Landroid/view/ViewGroup;
.source "PurchaseContentLayout.java"


# instance fields
.field private mAcquireRow:Landroid/view/View;

.field private mAcquireRowDummy:Landroid/view/View;

.field private mDetailsScroller:Lcom/google/android/finsky/layout/ObservableScrollView;

.field private mInputPanel:Landroid/view/View;

.field private mLeadingStrip:Landroid/view/View;

.field private mPurchasePanel:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method private findViews()V
    .registers 4

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseContentLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/ObservableScrollView;

    .line 138
    .local v0, detailsScroller:Lcom/google/android/finsky/layout/ObservableScrollView;
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseContentLayout;->mDetailsScroller:Lcom/google/android/finsky/layout/ObservableScrollView;

    if-eq v0, v1, :cond_41

    .line 139
    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseContentLayout;->mDetailsScroller:Lcom/google/android/finsky/layout/ObservableScrollView;

    .line 140
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseContentLayout;->mDetailsScroller:Lcom/google/android/finsky/layout/ObservableScrollView;

    const v2, 0x7f080159

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/ObservableScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseContentLayout;->mInputPanel:Landroid/view/View;

    .line 141
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseContentLayout;->mDetailsScroller:Lcom/google/android/finsky/layout/ObservableScrollView;

    const v2, 0x7f08015a

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/ObservableScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseContentLayout;->mPurchasePanel:Landroid/view/View;

    .line 142
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseContentLayout;->mDetailsScroller:Lcom/google/android/finsky/layout/ObservableScrollView;

    const v2, 0x7f080153

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/ObservableScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseContentLayout;->mAcquireRow:Landroid/view/View;

    .line 143
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseContentLayout;->mDetailsScroller:Lcom/google/android/finsky/layout/ObservableScrollView;

    const v2, 0x7f080156

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/ObservableScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseContentLayout;->mAcquireRowDummy:Landroid/view/View;

    .line 144
    const v1, 0x7f080021

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/PurchaseContentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseContentLayout;->mLeadingStrip:Landroid/view/View;

    .line 146
    :cond_41
    return-void
.end method


# virtual methods
.method public getAcquireRowFooterTop()I
    .registers 7

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseContentLayout;->findViews()V

    .line 117
    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseContentLayout;->mDetailsScroller:Lcom/google/android/finsky/layout/ObservableScrollView;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/ObservableScrollView;->getViewportTop()I

    move-result v3

    .line 118
    .local v3, viewportTop:I
    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseContentLayout;->mInputPanel:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v1

    .line 119
    .local v1, dummyRowTop:I
    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseContentLayout;->mPurchasePanel:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_20

    .line 120
    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseContentLayout;->mPurchasePanel:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v1, v4

    .line 122
    :cond_20
    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseContentLayout;->mLeadingStrip:Landroid/view/View;

    if-eqz v4, :cond_2b

    .line 123
    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseContentLayout;->mLeadingStrip:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v1, v4

    .line 126
    :cond_2b
    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseContentLayout;->mAcquireRowDummy:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 127
    .local v0, dummyRowHeight:I
    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseContentLayout;->mAcquireRow:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 129
    .local v2, realRowHeight:I
    add-int v4, v1, v2

    sub-int v5, v0, v2

    sub-int/2addr v4, v5

    if-lt v3, v4, :cond_45

    .line 130
    add-int v4, v3, v2

    .line 133
    :goto_44
    return v4

    :cond_45
    add-int v4, v1, v0

    goto :goto_44
.end method

.method public getAcquireRowTop()I
    .registers 8

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseContentLayout;->findViews()V

    .line 92
    iget-object v5, p0, Lcom/google/android/finsky/activities/PurchaseContentLayout;->mDetailsScroller:Lcom/google/android/finsky/layout/ObservableScrollView;

    invoke-virtual {v5}, Lcom/google/android/finsky/layout/ObservableScrollView;->getViewportTop()I

    move-result v4

    .line 93
    .local v4, viewportTop:I
    iget-object v5, p0, Lcom/google/android/finsky/activities/PurchaseContentLayout;->mInputPanel:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v1

    .line 94
    .local v1, dummyRowTop:I
    iget-object v5, p0, Lcom/google/android/finsky/activities/PurchaseContentLayout;->mPurchasePanel:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_20

    .line 95
    iget-object v5, p0, Lcom/google/android/finsky/activities/PurchaseContentLayout;->mPurchasePanel:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v1, v5

    .line 97
    :cond_20
    iget-object v5, p0, Lcom/google/android/finsky/activities/PurchaseContentLayout;->mLeadingStrip:Landroid/view/View;

    if-eqz v5, :cond_2b

    .line 98
    iget-object v5, p0, Lcom/google/android/finsky/activities/PurchaseContentLayout;->mLeadingStrip:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v1, v5

    .line 101
    :cond_2b
    iget-object v5, p0, Lcom/google/android/finsky/activities/PurchaseContentLayout;->mAcquireRowDummy:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v0, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 102
    .local v0, dummyRowHeight:I
    iget-object v5, p0, Lcom/google/android/finsky/activities/PurchaseContentLayout;->mAcquireRow:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 104
    .local v2, realRowHeight:I
    sub-int v5, v0, v2

    div-int/lit8 v3, v5, 0x2

    .line 105
    .local v3, snapDistance:I
    add-int v5, v1, v3

    if-lt v4, v5, :cond_44

    .line 108
    .end local v4           #viewportTop:I
    :goto_43
    return v4

    .restart local v4       #viewportTop:I
    :cond_44
    sub-int v5, v0, v2

    div-int/lit8 v5, v5, 0x2

    add-int v4, v1, v5

    goto :goto_43
.end method

.method protected onLayout(ZIIII)V
    .registers 17
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 68
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/google/android/finsky/activities/PurchaseContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 69
    .local v5, mainContents:Landroid/view/View;
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/google/android/finsky/activities/PurchaseContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 70
    .local v0, acquireRow:Landroid/view/View;
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/google/android/finsky/activities/PurchaseContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 72
    .local v1, acquireRowFooter:Landroid/view/View;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseContentLayout;->getPaddingLeft()I

    move-result v6

    .line 73
    .local v6, paddingLeft:I
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseContentLayout;->getPaddingTop()I

    move-result v7

    .line 74
    .local v7, paddingTop:I
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseContentLayout;->getWidth()I

    move-result v9

    sub-int/2addr v9, v6

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseContentLayout;->getPaddingRight()I

    move-result v10

    sub-int v8, v9, v10

    .line 75
    .local v8, width:I
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseContentLayout;->getHeight()I

    move-result v9

    sub-int/2addr v9, v7

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseContentLayout;->getPaddingBottom()I

    move-result v10

    sub-int v4, v9, v10

    .line 76
    .local v4, height:I
    add-int v9, v6, v8

    add-int v10, v7, v4

    invoke-virtual {v5, v6, v7, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 78
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseContentLayout;->getAcquireRowTop()I

    move-result v3

    .line 79
    .local v3, acquireRowTop:I
    add-int v9, v6, v8

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v3

    invoke-virtual {v0, v6, v3, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 81
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseContentLayout;->getAcquireRowFooterTop()I

    move-result v2

    .line 82
    .local v2, acquireRowFooterTop:I
    add-int v9, v6, v8

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v2

    invoke-virtual {v1, v6, v2, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 84
    return-void
.end method

.method protected onMeasure(II)V
    .registers 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x4000

    .line 39
    invoke-virtual {p0, v8}, Lcom/google/android/finsky/activities/PurchaseContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 40
    .local v3, mainContents:Landroid/view/View;
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/activities/PurchaseContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 41
    .local v0, acquireRow:Landroid/view/View;
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/activities/PurchaseContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 43
    .local v1, acquireRowFooter:Landroid/view/View;
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseContentLayout;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseContentLayout;->getPaddingRight()I

    move-result v6

    sub-int v4, v5, v6

    .line 48
    .local v4, widthSpecSize:I
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 50
    .local v2, fullWidthMeasureSpec:I
    invoke-virtual {v3, v2, v8}, Landroid/view/View;->measure(II)V

    .line 51
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v2, v5}, Landroid/view/View;->measure(II)V

    .line 55
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v0, v2, v5}, Landroid/view/View;->measure(II)V

    .line 58
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Landroid/view/View;->measure(II)V

    .line 62
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/google/android/finsky/activities/PurchaseContentLayout;->setMeasuredDimension(II)V

    .line 64
    return-void
.end method
