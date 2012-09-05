.class public Lcom/google/android/apps/plus/views/TabContainer;
.super Lcom/google/android/apps/plus/views/ScrollableViewGroup;
.source "TabContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/TabContainer$OnTabChangeListener;
    }
.end annotation


# instance fields
.field private mFirstVisiblePanel:I

.field private mLastVisiblePanel:I

.field private mListener:Lcom/google/android/apps/plus/views/TabContainer$OnTabChangeListener;

.field private mPanelWidth:I

.field private mSelectedPanel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attributes"

    .prologue
    const/4 v0, -0x1

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput v0, p0, Lcom/google/android/apps/plus/views/TabContainer;->mFirstVisiblePanel:I

    .line 36
    iput v0, p0, Lcom/google/android/apps/plus/views/TabContainer;->mLastVisiblePanel:I

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/TabContainer;->setVertical(Z)V

    .line 44
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 13
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v4, 0x0

    .line 80
    iget v5, p0, Lcom/google/android/apps/plus/views/TabContainer;->mPanelWidth:I

    if-nez v5, :cond_24

    const/4 v1, 0x1

    .line 81
    .local v1, firstLayout:Z
    :goto_6
    sub-int v5, p4, p2

    iput v5, p0, Lcom/google/android/apps/plus/views/TabContainer;->mPanelWidth:I

    .line 82
    sub-int v2, p5, p3

    .line 83
    .local v2, height:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/TabContainer;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_26

    .line 84
    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/views/TabContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 85
    .local v0, child:Landroid/view/View;
    iget v5, p0, Lcom/google/android/apps/plus/views/TabContainer;->mPanelWidth:I

    mul-int p2, v5, v3

    .line 86
    iget v5, p0, Lcom/google/android/apps/plus/views/TabContainer;->mPanelWidth:I

    add-int/2addr v5, p2

    invoke-virtual {v0, p2, v4, v5, v2}, Landroid/view/View;->layout(IIII)V

    .line 83
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .end local v0           #child:Landroid/view/View;
    .end local v1           #firstLayout:Z
    .end local v2           #height:I
    .end local v3           #i:I
    :cond_24
    move v1, v4

    .line 80
    goto :goto_6

    .line 88
    .restart local v1       #firstLayout:Z
    .restart local v2       #height:I
    .restart local v3       #i:I
    :cond_26
    iget v5, p0, Lcom/google/android/apps/plus/views/TabContainer;->mPanelWidth:I

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/TabContainer;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/google/android/apps/plus/views/TabContainer;->setScrollLimits(II)V

    .line 90
    if-eqz v1, :cond_3c

    .line 91
    iget v4, p0, Lcom/google/android/apps/plus/views/TabContainer;->mSelectedPanel:I

    iget v5, p0, Lcom/google/android/apps/plus/views/TabContainer;->mPanelWidth:I

    mul-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/views/TabContainer;->scrollTo(I)V

    .line 93
    :cond_3c
    return-void
.end method

.method public onMeasure(II)V
    .registers 9
    .parameter "widthRequest"
    .parameter "heightRequest"

    .prologue
    const/high16 v5, 0x4000

    .line 64
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 65
    .local v4, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 66
    .local v1, height:I
    invoke-virtual {p0, v4, v1}, Lcom/google/android/apps/plus/views/TabContainer;->setMeasuredDimension(II)V

    .line 68
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 69
    .local v0, exactWidth:I
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 70
    .local v3, maximumHeight:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_16
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/TabContainer;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_26

    .line 71
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/TabContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v0, v3}, Landroid/view/View;->measure(II)V

    .line 70
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 73
    :cond_26
    return-void
.end method

.method public onScrollChanged(IIII)V
    .registers 12
    .parameter "x"
    .parameter "y"
    .parameter "oldX"
    .parameter "oldY"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 100
    iget v3, p0, Lcom/google/android/apps/plus/views/TabContainer;->mPanelWidth:I

    div-int v0, p1, v3

    .line 101
    .local v0, firstPanel:I
    iget v3, p0, Lcom/google/android/apps/plus/views/TabContainer;->mPanelWidth:I

    rem-int v3, p1, v3

    if-nez v3, :cond_33

    move v3, v4

    :goto_d
    add-int v2, v0, v3

    .line 102
    .local v2, lastPanel:I
    iget v3, p0, Lcom/google/android/apps/plus/views/TabContainer;->mFirstVisiblePanel:I

    if-ne v0, v3, :cond_17

    iget v3, p0, Lcom/google/android/apps/plus/views/TabContainer;->mLastVisiblePanel:I

    if-eq v2, v3, :cond_37

    .line 103
    :cond_17
    iput v0, p0, Lcom/google/android/apps/plus/views/TabContainer;->mFirstVisiblePanel:I

    .line 104
    iput v2, p0, Lcom/google/android/apps/plus/views/TabContainer;->mLastVisiblePanel:I

    .line 106
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/TabContainer;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_37

    .line 107
    iget-object v6, p0, Lcom/google/android/apps/plus/views/TabContainer;->mListener:Lcom/google/android/apps/plus/views/TabContainer$OnTabChangeListener;

    iget v3, p0, Lcom/google/android/apps/plus/views/TabContainer;->mFirstVisiblePanel:I

    if-lt v1, v3, :cond_35

    iget v3, p0, Lcom/google/android/apps/plus/views/TabContainer;->mLastVisiblePanel:I

    if-gt v1, v3, :cond_35

    move v3, v5

    :goto_2d
    invoke-interface {v6, v1, v3}, Lcom/google/android/apps/plus/views/TabContainer$OnTabChangeListener;->onTabVisibilityChange(IZ)V

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .end local v1           #i:I
    .end local v2           #lastPanel:I
    :cond_33
    move v3, v5

    .line 101
    goto :goto_d

    .restart local v1       #i:I
    .restart local v2       #lastPanel:I
    :cond_35
    move v3, v4

    .line 107
    goto :goto_2d

    .line 111
    .end local v1           #i:I
    :cond_37
    return-void
.end method

.method protected onScrollFinished(I)V
    .registers 5
    .parameter "direction"

    .prologue
    .line 118
    iget v1, p0, Lcom/google/android/apps/plus/views/TabContainer;->mPanelWidth:I

    if-nez v1, :cond_5

    .line 133
    :goto_4
    return-void

    .line 122
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/TabContainer;->getScrollX()I

    move-result v0

    .line 123
    .local v0, scrollX:I
    if-gez p1, :cond_31

    .line 124
    iget v1, p0, Lcom/google/android/apps/plus/views/TabContainer;->mPanelWidth:I

    div-int v1, v0, v1

    iput v1, p0, Lcom/google/android/apps/plus/views/TabContainer;->mSelectedPanel:I

    .line 128
    :goto_11
    iget v1, p0, Lcom/google/android/apps/plus/views/TabContainer;->mSelectedPanel:I

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/TabContainer;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_21

    .line 129
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/TabContainer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/apps/plus/views/TabContainer;->mSelectedPanel:I

    .line 131
    :cond_21
    iget v1, p0, Lcom/google/android/apps/plus/views/TabContainer;->mSelectedPanel:I

    iget v2, p0, Lcom/google/android/apps/plus/views/TabContainer;->mPanelWidth:I

    mul-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/TabContainer;->smoothScrollTo(I)V

    .line 132
    iget-object v1, p0, Lcom/google/android/apps/plus/views/TabContainer;->mListener:Lcom/google/android/apps/plus/views/TabContainer$OnTabChangeListener;

    iget v2, p0, Lcom/google/android/apps/plus/views/TabContainer;->mSelectedPanel:I

    invoke-interface {v1, v2}, Lcom/google/android/apps/plus/views/TabContainer$OnTabChangeListener;->onTabSelected(I)V

    goto :goto_4

    .line 126
    :cond_31
    iget v1, p0, Lcom/google/android/apps/plus/views/TabContainer;->mPanelWidth:I

    div-int v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/apps/plus/views/TabContainer;->mSelectedPanel:I

    goto :goto_11
.end method

.method public setOnTabChangeListener(Lcom/google/android/apps/plus/views/TabContainer$OnTabChangeListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/apps/plus/views/TabContainer;->mListener:Lcom/google/android/apps/plus/views/TabContainer$OnTabChangeListener;

    .line 57
    return-void
.end method

.method public setSelectedPanel(I)V
    .registers 4
    .parameter "selectedPanel"

    .prologue
    .line 47
    iget v0, p0, Lcom/google/android/apps/plus/views/TabContainer;->mSelectedPanel:I

    if-eq v0, p1, :cond_12

    .line 48
    iput p1, p0, Lcom/google/android/apps/plus/views/TabContainer;->mSelectedPanel:I

    .line 49
    iget v0, p0, Lcom/google/android/apps/plus/views/TabContainer;->mPanelWidth:I

    if-eqz v0, :cond_12

    .line 50
    iget v0, p0, Lcom/google/android/apps/plus/views/TabContainer;->mPanelWidth:I

    iget v1, p0, Lcom/google/android/apps/plus/views/TabContainer;->mSelectedPanel:I

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/TabContainer;->smoothScrollTo(I)V

    .line 53
    :cond_12
    return-void
.end method
