.class public Lcom/google/android/music/TabRow;
.super Landroid/widget/HorizontalScrollView;
.source "TabRow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/TabRow$OnTabClickListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/google/android/music/TabRow$OnTabClickListener;

.field private mNeedsLayout:Z

.field private mRequestedTab:I

.field private mTabHolder:Landroid/widget/TabWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v4, 0x7f02023e

    const/4 v2, 0x1

    const/4 v3, -0x2

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/music/TabRow;->mRequestedTab:I

    .line 33
    iput-boolean v2, p0, Lcom/google/android/music/TabRow;->mNeedsLayout:Z

    .line 38
    new-instance v1, Landroid/widget/TabWidget;

    invoke-direct {v1, p1}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/music/TabRow;->mTabHolder:Landroid/widget/TabWidget;

    .line 39
    iget-object v1, p0, Lcom/google/android/music/TabRow;->mTabHolder:Landroid/widget/TabWidget;

    invoke-virtual {v1, v2}, Landroid/widget/TabWidget;->setStripEnabled(Z)V

    .line 40
    iget-object v1, p0, Lcom/google/android/music/TabRow;->mTabHolder:Landroid/widget/TabWidget;

    invoke-virtual {v1, v4}, Landroid/widget/TabWidget;->setLeftStripDrawable(I)V

    .line 41
    iget-object v1, p0, Lcom/google/android/music/TabRow;->mTabHolder:Landroid/widget/TabWidget;

    invoke-virtual {v1, v4}, Landroid/widget/TabWidget;->setRightStripDrawable(I)V

    .line 42
    iget-object v1, p0, Lcom/google/android/music/TabRow;->mTabHolder:Landroid/widget/TabWidget;

    const v2, 0x7f020243

    invoke-virtual {v1, v2}, Landroid/widget/TabWidget;->setDividerDrawable(I)V

    .line 44
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/google/android/music/TabRow;->mTabHolder:Landroid/widget/TabWidget;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/music/TabRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/music/TabRow;->setHorizontalFadingEdgeEnabled(Z)V

    .line 49
    return-void
.end method


# virtual methods
.method public addTab(I)V
    .registers 4
    .parameter "resid"

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/android/music/TabRow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, s:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/music/TabRow;->addTab(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public addTab(Ljava/lang/String;)V
    .registers 8
    .parameter "label"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 57
    invoke-virtual {p0}, Lcom/google/android/music/TabRow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 58
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040046

    iget-object v3, p0, Lcom/google/android/music/TabRow;->mTabHolder:Landroid/widget/TabWidget;

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/StatefulShadowTextView;

    .line 60
    .local v1, view:Lcom/google/android/music/StatefulShadowTextView;
    iget-object v2, p0, Lcom/google/android/music/TabRow;->mTabHolder:Landroid/widget/TabWidget;

    invoke-virtual {v2, v1}, Landroid/widget/TabWidget;->addView(Landroid/view/View;)V

    .line 62
    invoke-virtual {v1, p1}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v3, p0, Lcom/google/android/music/TabRow;->mTabHolder:Landroid/widget/TabWidget;

    invoke-virtual {v3}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/music/StatefulShadowTextView;->setTag(Ljava/lang/Object;)V

    .line 65
    invoke-virtual {v1, p0}, Lcom/google/android/music/StatefulShadowTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-virtual {v1, p0}, Lcom/google/android/music/StatefulShadowTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 67
    invoke-virtual {v1, v4}, Lcom/google/android/music/StatefulShadowTextView;->setShowShadowWhenSelected(Z)V

    .line 68
    invoke-virtual {v1, v5}, Lcom/google/android/music/StatefulShadowTextView;->setShowShadowWhenDeselected(Z)V

    .line 69
    iput-boolean v5, p0, Lcom/google/android/music/TabRow;->mNeedsLayout:Z

    .line 70
    return-void
.end method

.method public focusCurrentTab()V
    .registers 5

    .prologue
    .line 112
    iget-object v3, p0, Lcom/google/android/music/TabRow;->mTabHolder:Landroid/widget/TabWidget;

    invoke-virtual {v3}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v1

    .line 113
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-ge v0, v1, :cond_1b

    .line 114
    iget-object v3, p0, Lcom/google/android/music/TabRow;->mTabHolder:Landroid/widget/TabWidget;

    invoke-virtual {v3, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    .line 115
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 116
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 113
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 119
    .end local v2           #v:Landroid/view/View;
    :cond_1b
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 74
    iget-object v2, p0, Lcom/google/android/music/TabRow;->mListener:Lcom/google/android/music/TabRow$OnTabClickListener;

    if-eqz v2, :cond_34

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 76
    .local v1, tag:Ljava/lang/Object;
    if-eqz v1, :cond_35

    instance-of v2, v1, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v2, :cond_35

    .line 77
    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .end local v1           #tag:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 78
    .local v0, index:I
    if-gez v0, :cond_2f

    .line 79
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown tab index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_2f
    iget-object v2, p0, Lcom/google/android/music/TabRow;->mListener:Lcom/google/android/music/TabRow$OnTabClickListener;

    invoke-interface {v2, v0}, Lcom/google/android/music/TabRow$OnTabClickListener;->onTabClicked(I)V

    .line 86
    .end local v0           #index:I
    :cond_34
    :goto_34
    return-void

    .line 83
    .restart local v1       #tag:Ljava/lang/Object;
    :cond_35
    const-string v2, "TabRow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unkown tab clicked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 130
    if-eqz p2, :cond_5

    .line 131
    invoke-virtual {p0, p1}, Lcom/google/android/music/TabRow;->onClick(Landroid/view/View;)V

    .line 133
    :cond_5
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 90
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 91
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/music/TabRow;->mNeedsLayout:Z

    .line 92
    iget v0, p0, Lcom/google/android/music/TabRow;->mRequestedTab:I

    .line 93
    .local v0, tab:I
    if-ltz v0, :cond_10

    .line 94
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/music/TabRow;->mRequestedTab:I

    .line 95
    invoke-virtual {p0, v0}, Lcom/google/android/music/TabRow;->setCurrentTab(I)V

    .line 97
    :cond_10
    return-void
.end method

.method public setCurrentTab(I)V
    .registers 6
    .parameter "index"

    .prologue
    .line 100
    iget-boolean v2, p0, Lcom/google/android/music/TabRow;->mNeedsLayout:Z

    if-eqz v2, :cond_7

    .line 102
    iput p1, p0, Lcom/google/android/music/TabRow;->mRequestedTab:I

    .line 109
    :goto_6
    return-void

    .line 105
    :cond_7
    iget-object v2, p0, Lcom/google/android/music/TabRow;->mTabHolder:Landroid/widget/TabWidget;

    invoke-virtual {v2, p1}, Landroid/widget/TabWidget;->setCurrentTab(I)V

    .line 106
    iget-object v2, p0, Lcom/google/android/music/TabRow;->mTabHolder:Landroid/widget/TabWidget;

    invoke-virtual {v2, p1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 107
    .local v1, v:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getRight()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/music/TabRow;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 108
    .local v0, pos:I
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/TabRow;->smoothScrollTo(II)V

    goto :goto_6
.end method

.method public setOnTabClickListener(Lcom/google/android/music/TabRow$OnTabClickListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/android/music/TabRow;->mListener:Lcom/google/android/music/TabRow$OnTabClickListener;

    .line 123
    return-void
.end method
