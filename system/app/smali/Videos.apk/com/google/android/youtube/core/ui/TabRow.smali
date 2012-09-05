.class public Lcom/google/android/youtube/core/ui/TabRow;
.super Landroid/widget/HorizontalScrollView;
.source "TabRow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/ui/TabRow$OnTabFocusListener;,
        Lcom/google/android/youtube/core/ui/TabRow$OnTabClickListener;
    }
.end annotation


# instance fields
.field private needsLayout:Z

.field private onTabClickListener:Lcom/google/android/youtube/core/ui/TabRow$OnTabClickListener;

.field private onTabFocusListener:Lcom/google/android/youtube/core/ui/TabRow$OnTabFocusListener;

.field private requestedTab:I

.field private final tabBackgroundId:I

.field private final tabHolder:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput v3, p0, Lcom/google/android/youtube/core/ui/TabRow;->requestedTab:I

    .line 27
    iput-boolean v5, p0, Lcom/google/android/youtube/core/ui/TabRow;->needsLayout:Z

    .line 33
    sget-object v2, Lcom/google/android/youtube/R$styleable;->TabRow:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 34
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/youtube/core/ui/TabRow;->tabBackgroundId:I

    .line 36
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/youtube/core/ui/TabRow;->tabHolder:Landroid/widget/LinearLayout;

    .line 37
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 39
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/google/android/youtube/core/ui/TabRow;->tabHolder:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2, v1}, Lcom/google/android/youtube/core/ui/TabRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    invoke-virtual {p0, v3}, Lcom/google/android/youtube/core/ui/TabRow;->setHorizontalScrollBarEnabled(Z)V

    .line 41
    invoke-virtual {p0, v5}, Lcom/google/android/youtube/core/ui/TabRow;->setFillViewport(Z)V

    .line 43
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 44
    return-void
.end method


# virtual methods
.method public addTab(I)V
    .registers 4
    .parameter "resid"

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/TabRow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, s:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/TabRow;->addTab(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public addTab(Landroid/view/View;)V
    .registers 3
    .parameter "tabView"

    .prologue
    .line 62
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/TabRow;->tabHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 64
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/ui/TabRow;->needsLayout:Z

    .line 66
    return-void
.end method

.method public addTab(Ljava/lang/String;)V
    .registers 7
    .parameter "label"

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/TabRow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 53
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040012

    iget-object v3, p0, Lcom/google/android/youtube/core/ui/TabRow;->tabHolder:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 54
    .local v1, textView:Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget v2, p0, Lcom/google/android/youtube/core/ui/TabRow;->tabBackgroundId:I

    if-eqz v2, :cond_20

    .line 56
    iget v2, p0, Lcom/google/android/youtube/core/ui/TabRow;->tabBackgroundId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 58
    :cond_20
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/ui/TabRow;->addTab(Landroid/view/View;)V

    .line 59
    return-void
.end method

.method public focusTab(IZ)V
    .registers 11
    .parameter "index"
    .parameter "smooth"

    .prologue
    const/4 v6, 0x0

    .line 105
    iget-boolean v5, p0, Lcom/google/android/youtube/core/ui/TabRow;->needsLayout:Z

    if-eqz v5, :cond_8

    .line 107
    iput p1, p0, Lcom/google/android/youtube/core/ui/TabRow;->requestedTab:I

    .line 127
    :cond_7
    :goto_7
    return-void

    .line 110
    :cond_8
    invoke-virtual {p0, v6}, Lcom/google/android/youtube/core/ui/TabRow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 111
    .local v1, ll:Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 112
    .local v2, num:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    if-ge v0, v2, :cond_24

    .line 113
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-ne v0, p1, :cond_22

    const/4 v5, 0x1

    :goto_1c
    invoke-virtual {v7, v5}, Landroid/view/View;->setSelected(Z)V

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_22
    move v5, v6

    .line 113
    goto :goto_1c

    .line 115
    :cond_24
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 116
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_3f

    .line 117
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    add-int/2addr v5, v7

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/TabRow;->getWidth()I

    move-result v7

    sub-int/2addr v5, v7

    div-int/lit8 v3, v5, 0x2

    .line 118
    .local v3, pos:I
    if-eqz p2, :cond_49

    .line 119
    invoke-virtual {p0, v3, v6}, Lcom/google/android/youtube/core/ui/TabRow;->smoothScrollTo(II)V

    .line 124
    .end local v3           #pos:I
    :cond_3f
    :goto_3f
    iget-object v5, p0, Lcom/google/android/youtube/core/ui/TabRow;->onTabFocusListener:Lcom/google/android/youtube/core/ui/TabRow$OnTabFocusListener;

    if-eqz v5, :cond_7

    .line 125
    iget-object v5, p0, Lcom/google/android/youtube/core/ui/TabRow;->onTabFocusListener:Lcom/google/android/youtube/core/ui/TabRow$OnTabFocusListener;

    invoke-interface {v5, p1}, Lcom/google/android/youtube/core/ui/TabRow$OnTabFocusListener;->onTabFocus(I)V

    goto :goto_7

    .line 121
    .restart local v3       #pos:I
    :cond_49
    invoke-virtual {p0, v3, v6}, Lcom/google/android/youtube/core/ui/TabRow;->scrollTo(II)V

    goto :goto_3f
.end method

.method public getTabAt(I)Landroid/view/View;
    .registers 4
    .parameter "index"

    .prologue
    .line 79
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/ui/TabRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 80
    .local v0, ll:Landroid/widget/LinearLayout;
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public getTabCount()I
    .registers 3

    .prologue
    .line 84
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/ui/TabRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 85
    .local v0, ll:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 70
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/TabRow;->onTabClickListener:Lcom/google/android/youtube/core/ui/TabRow$OnTabClickListener;

    if-eqz v1, :cond_11

    .line 71
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/TabRow;->tabHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 72
    .local v0, index:I
    if-ltz v0, :cond_11

    .line 73
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/TabRow;->onTabClickListener:Lcom/google/android/youtube/core/ui/TabRow$OnTabClickListener;

    invoke-interface {v1, v0}, Lcom/google/android/youtube/core/ui/TabRow$OnTabClickListener;->onTabClicked(I)V

    .line 76
    .end local v0           #index:I
    :cond_11
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
    .line 95
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 96
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/youtube/core/ui/TabRow;->needsLayout:Z

    .line 97
    iget v0, p0, Lcom/google/android/youtube/core/ui/TabRow;->requestedTab:I

    .line 98
    .local v0, tab:I
    if-ltz v0, :cond_11

    .line 99
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/youtube/core/ui/TabRow;->requestedTab:I

    .line 100
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/ui/TabRow;->focusTab(IZ)V

    .line 102
    :cond_11
    return-void
.end method

.method public removeAllTabs()V
    .registers 3

    .prologue
    .line 89
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/ui/TabRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 90
    .local v0, ll:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 91
    return-void
.end method

.method public setOnTabClickListener(Lcom/google/android/youtube/core/ui/TabRow$OnTabClickListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/TabRow;->onTabClickListener:Lcom/google/android/youtube/core/ui/TabRow$OnTabClickListener;

    .line 131
    return-void
.end method

.method public setOnTabFocusListener(Lcom/google/android/youtube/core/ui/TabRow$OnTabFocusListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/TabRow;->onTabFocusListener:Lcom/google/android/youtube/core/ui/TabRow$OnTabFocusListener;

    .line 135
    return-void
.end method
