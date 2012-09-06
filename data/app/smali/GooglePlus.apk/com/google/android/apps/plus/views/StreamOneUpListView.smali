.class public Lcom/google/android/apps/plus/views/StreamOneUpListView;
.super Landroid/widget/ListView;
.source "StreamOneUpListView.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/StreamOneUpBaseView$OnMeasuredListener;


# instance fields
.field private mMaxWidth:I

.field private mOnMeasuredListener:Lcom/google/android/apps/plus/views/StreamOneUpBaseView$OnMeasuredListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpListView;->mMaxWidth:I

    .line 37
    new-instance v0, Lcom/google/android/apps/plus/views/StreamOneUpListView$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/views/StreamOneUpListView$1;-><init>(Lcom/google/android/apps/plus/views/StreamOneUpListView;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/StreamOneUpListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpListView;->mMaxWidth:I

    .line 37
    new-instance v0, Lcom/google/android/apps/plus/views/StreamOneUpListView$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/views/StreamOneUpListView$1;-><init>(Lcom/google/android/apps/plus/views/StreamOneUpListView;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/StreamOneUpListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpListView;->mMaxWidth:I

    .line 37
    new-instance v0, Lcom/google/android/apps/plus/views/StreamOneUpListView$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/views/StreamOneUpListView$1;-><init>(Lcom/google/android/apps/plus/views/StreamOneUpListView;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/StreamOneUpListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected layoutChildren()V
    .registers 6

    .prologue
    .line 90
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 92
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;

    .line 93
    .local v0, adapter:Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;
    if-nez v0, :cond_c

    .line 102
    :cond_b
    return-void

    .line 98
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpListView;->getFirstVisiblePosition()I

    move-result v1

    .line 99
    .local v1, firstPosition:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpListView;->getChildCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, i:I
    :goto_16
    if-ltz v2, :cond_b

    .line 100
    add-int v3, v1, v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/StreamOneUpListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;->setItemHeight(II)V

    .line 99
    add-int/lit8 v2, v2, -0x1

    goto :goto_16
.end method

.method protected onMeasure(II)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 76
    iget v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpListView;->mMaxWidth:I

    if-lez v0, :cond_1a

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpListView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpListView;->mMaxWidth:I

    if-le v0, v1, :cond_1a

    .line 78
    const/high16 v0, 0x4000

    iget v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpListView;->mMaxWidth:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 82
    :cond_1a
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpListView;->mOnMeasuredListener:Lcom/google/android/apps/plus/views/StreamOneUpBaseView$OnMeasuredListener;

    if-eqz v0, :cond_23

    .line 83
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpListView;->mOnMeasuredListener:Lcom/google/android/apps/plus/views/StreamOneUpBaseView$OnMeasuredListener;

    invoke-interface {v0, p0}, Lcom/google/android/apps/plus/views/StreamOneUpBaseView$OnMeasuredListener;->onMeasured(Landroid/view/View;)V

    .line 86
    :cond_23
    return-void
.end method

.method public onMeasured(Landroid/view/View;)V
    .registers 7
    .parameter "view"

    .prologue
    .line 106
    const/4 v2, -0x1

    .line 107
    .local v2, index:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpListView;->getChildCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_7
    if-ltz v1, :cond_14

    .line 108
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/StreamOneUpListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 109
    move v2, v1

    .line 114
    :cond_14
    if-gez v2, :cond_1a

    .line 123
    :cond_16
    :goto_16
    return-void

    .line 107
    :cond_17
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 118
    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpListView;->getFirstVisiblePosition()I

    move-result v4

    add-int v3, v4, v2

    .line 119
    .local v3, position:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;

    .line 120
    .local v0, adapter:Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;
    if-eqz v0, :cond_16

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/google/android/apps/plus/fragments/StreamOneUpAdapter;->setItemHeight(II)V

    goto :goto_16
.end method

.method public setMaxWidth(I)V
    .registers 2
    .parameter "maxWidth"

    .prologue
    .line 69
    iput p1, p0, Lcom/google/android/apps/plus/views/StreamOneUpListView;->mMaxWidth:I

    .line 70
    return-void
.end method

.method public setOnMeasureListener(Lcom/google/android/apps/plus/views/StreamOneUpBaseView$OnMeasuredListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/android/apps/plus/views/StreamOneUpListView;->mOnMeasuredListener:Lcom/google/android/apps/plus/views/StreamOneUpBaseView$OnMeasuredListener;

    .line 62
    return-void
.end method
