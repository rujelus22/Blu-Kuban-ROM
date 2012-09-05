.class public Lcom/android/contacts/widget/AutoScrollListView;
.super Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
.source "AutoScrollListView.java"


# instance fields
.field private mRequestedScrollPosition:I

.field private mSmoothScrollRequested:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 50
    return-void
.end method


# virtual methods
.method protected layoutChildren()V
    .registers 9

    .prologue
    const/4 v7, -0x1

    .line 67
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->layoutChildren()V

    .line 68
    iget v6, p0, Lcom/android/contacts/widget/AutoScrollListView;->mRequestedScrollPosition:I

    if-ne v6, v7, :cond_9

    .line 118
    :cond_8
    :goto_8
    return-void

    .line 72
    :cond_9
    iget v3, p0, Lcom/android/contacts/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 73
    .local v3, position:I
    iput v7, p0, Lcom/android/contacts/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 75
    invoke-virtual {p0}, Lcom/android/contacts/widget/AutoScrollListView;->getFirstVisiblePosition()I

    move-result v6

    add-int/lit8 v0, v6, 0x1

    .line 76
    .local v0, firstPosition:I
    invoke-virtual {p0}, Lcom/android/contacts/widget/AutoScrollListView;->getLastVisiblePosition()I

    move-result v1

    .line 77
    .local v1, lastPosition:I
    if-lt v3, v0, :cond_1b

    if-le v3, v1, :cond_8

    .line 81
    :cond_1b
    invoke-virtual {p0}, Lcom/android/contacts/widget/AutoScrollListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3ea8f5c3

    mul-float/2addr v6, v7

    float-to-int v2, v6

    .line 82
    .local v2, offset:I
    iget-boolean v6, p0, Lcom/android/contacts/widget/AutoScrollListView;->mSmoothScrollRequested:Z

    if-nez v6, :cond_30

    .line 83
    invoke-virtual {p0, v3, v2}, Lcom/android/contacts/widget/AutoScrollListView;->setSelectionFromTop(II)V

    .line 88
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->layoutChildren()V

    goto :goto_8

    .line 93
    :cond_30
    sub-int v6, v1, v0

    mul-int/lit8 v5, v6, 0x2

    .line 95
    .local v5, twoScreens:I
    if-ge v3, v0, :cond_50

    .line 96
    add-int v4, v3, v5

    .line 97
    .local v4, preliminaryPosition:I
    invoke-virtual {p0}, Lcom/android/contacts/widget/AutoScrollListView;->getCount()I

    move-result v6

    if-lt v4, v6, :cond_44

    .line 98
    invoke-virtual {p0}, Lcom/android/contacts/widget/AutoScrollListView;->getCount()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .line 100
    :cond_44
    if-ge v4, v0, :cond_4c

    .line 101
    invoke-virtual {p0, v4}, Lcom/android/contacts/widget/AutoScrollListView;->setSelection(I)V

    .line 102
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->layoutChildren()V

    .line 116
    :cond_4c
    :goto_4c
    invoke-virtual {p0, v3, v2}, Lcom/android/contacts/widget/AutoScrollListView;->smoothScrollToPositionFromTop(II)V

    goto :goto_8

    .line 105
    .end local v4           #preliminaryPosition:I
    :cond_50
    sub-int v4, v3, v5

    .line 106
    .restart local v4       #preliminaryPosition:I
    if-gez v4, :cond_55

    .line 107
    const/4 v4, 0x0

    .line 109
    :cond_55
    if-le v4, v1, :cond_4c

    .line 110
    invoke-virtual {p0, v4}, Lcom/android/contacts/widget/AutoScrollListView;->setSelection(I)V

    .line 111
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->layoutChildren()V

    goto :goto_4c
.end method

.method public requestPositionToScreen(IZ)V
    .registers 3
    .parameter "position"
    .parameter "smoothScroll"

    .prologue
    .line 60
    iput p1, p0, Lcom/android/contacts/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 61
    iput-boolean p2, p0, Lcom/android/contacts/widget/AutoScrollListView;->mSmoothScrollRequested:Z

    .line 62
    invoke-virtual {p0}, Lcom/android/contacts/widget/AutoScrollListView;->requestLayout()V

    .line 63
    return-void
.end method
