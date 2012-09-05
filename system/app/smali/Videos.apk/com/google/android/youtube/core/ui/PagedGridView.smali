.class public Lcom/google/android/youtube/core/ui/PagedGridView;
.super Lcom/google/android/youtube/core/ui/BasePagedView;
.source "PagedGridView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 25
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/youtube/core/ui/PagedGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/youtube/core/ui/PagedGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 14
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 33
    const v8, 0x7f04000c

    invoke-direct {p0, v8, p1, p2, p3}, Lcom/google/android/youtube/core/ui/BasePagedView;-><init>(ILandroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    iget-object v3, p0, Lcom/google/android/youtube/core/ui/PagedGridView;->itemsView:Landroid/view/View;

    check-cast v3, Landroid/widget/GridView;

    .line 37
    .local v3, gridView:Landroid/widget/GridView;
    sget-object v8, Lcom/google/android/youtube/R$styleable;->PagedGridView:[I

    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 39
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    .line 40
    .local v7, vSpacing:I
    invoke-virtual {v3, v7}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 42
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    .line 43
    .local v4, hSpacing:I
    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 45
    const/4 v8, 0x4

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 46
    .local v1, columnWidth:I
    if-lez v1, :cond_2d

    .line 47
    invoke-virtual {v3, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 50
    :cond_2d
    const/4 v8, 0x3

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 51
    .local v5, index:I
    if-ltz v5, :cond_3c

    .line 52
    packed-switch v5, :pswitch_data_66

    .line 56
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 60
    :cond_3c
    :goto_3c
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 61
    .local v6, numColumns:I
    invoke-virtual {v3, v6}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 63
    const/4 v8, 0x5

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 64
    .local v2, gravity:I
    if-ltz v2, :cond_50

    .line 65
    invoke-virtual {v3, v2}, Landroid/widget/GridView;->setGravity(I)V

    .line 68
    :cond_50
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    invoke-virtual {v3, p0}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 71
    return-void

    .line 53
    .end local v2           #gravity:I
    .end local v6           #numColumns:I
    :pswitch_57
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/widget/GridView;->setStretchMode(I)V

    goto :goto_3c

    .line 54
    :pswitch_5c
    const/4 v8, 0x2

    invoke-virtual {v3, v8}, Landroid/widget/GridView;->setStretchMode(I)V

    goto :goto_3c

    .line 55
    :pswitch_61
    const/4 v8, 0x3

    invoke-virtual {v3, v8}, Landroid/widget/GridView;->setStretchMode(I)V

    goto :goto_3c

    .line 52
    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_57
        :pswitch_5c
        :pswitch_61
    .end packed-switch
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 6
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedGridView;->onScrollListener:Lcom/google/android/youtube/core/ui/PagedView$OnScrollListener;

    if-eqz v0, :cond_9

    .line 94
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedGridView;->onScrollListener:Lcom/google/android/youtube/core/ui/PagedView$OnScrollListener;

    invoke-interface {v0, p0, p2, p3, p4}, Lcom/google/android/youtube/core/ui/PagedView$OnScrollListener;->onScroll(Lcom/google/android/youtube/core/ui/PagedView;III)V

    .line 96
    :cond_9
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 100
    return-void
.end method

.method public setAdapter(Lcom/google/android/youtube/core/adapter/ArrayListAdapter;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/adapter/ArrayListAdapter",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, adapter:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;,"Lcom/google/android/youtube/core/adapter/ArrayListAdapter<*>;"
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/ui/BasePagedView;->setAdapter(Lcom/google/android/youtube/core/adapter/ArrayListAdapter;)V

    .line 76
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedGridView;->itemsView:Landroid/view/View;

    check-cast v0, Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .registers 3
    .parameter "horizontalSpacing"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedGridView;->itemsView:Landroid/view/View;

    check-cast v0, Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 108
    return-void
.end method

.method public setNumColumns(I)V
    .registers 3
    .parameter "numColumns"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedGridView;->itemsView:Landroid/view/View;

    check-cast v0, Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 104
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/ui/BasePagedView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedGridView;->itemsView:Landroid/view/View;

    check-cast v0, Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 83
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/ui/BasePagedView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedGridView;->itemsView:Landroid/view/View;

    check-cast v0, Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 89
    return-void
.end method

.method public setVerticalSpacing(I)V
    .registers 3
    .parameter "verticalSpacing"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedGridView;->itemsView:Landroid/view/View;

    check-cast v0, Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 112
    return-void
.end method
