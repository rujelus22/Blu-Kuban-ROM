.class public Lcom/google/android/youtube/core/ui/PagedListView;
.super Lcom/google/android/youtube/core/ui/BasePagedView;
.source "PagedListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 24
    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/youtube/core/ui/PagedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/youtube/core/ui/PagedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 32
    const v4, 0x7f04000d

    invoke-direct {p0, v4, p1, p2, p3}, Lcom/google/android/youtube/core/ui/BasePagedView;-><init>(ILandroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    iget-object v3, p0, Lcom/google/android/youtube/core/ui/PagedListView;->itemsView:Landroid/view/View;

    check-cast v3, Landroid/widget/ListView;

    .line 36
    .local v3, listView:Landroid/widget/ListView;
    sget-object v4, Lcom/google/android/youtube/R$styleable;->PagedListView:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 38
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 39
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1b

    .line 41
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 44
    :cond_1b
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 45
    .local v2, index:I
    if-ltz v2, :cond_27

    .line 46
    packed-switch v2, :pswitch_data_38

    .line 49
    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 53
    :cond_27
    :goto_27
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 56
    return-void

    .line 47
    :pswitch_2e
    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_27

    .line 48
    :pswitch_32
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_27

    .line 46
    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_32
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
    .line 78
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedListView;->onScrollListener:Lcom/google/android/youtube/core/ui/PagedView$OnScrollListener;

    if-eqz v0, :cond_9

    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedListView;->onScrollListener:Lcom/google/android/youtube/core/ui/PagedView$OnScrollListener;

    invoke-interface {v0, p0, p2, p3, p4}, Lcom/google/android/youtube/core/ui/PagedView$OnScrollListener;->onScroll(Lcom/google/android/youtube/core/ui/PagedView;III)V

    .line 81
    :cond_9
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 85
    return-void
.end method

.method public resetScrollPosition()V
    .registers 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedListView;->itemsView:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 92
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
    .line 60
    .local p1, adapter:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;,"Lcom/google/android/youtube/core/adapter/ArrayListAdapter<*>;"
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/ui/BasePagedView;->setAdapter(Lcom/google/android/youtube/core/adapter/ArrayListAdapter;)V

    .line 61
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedListView;->itemsView:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 62
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/ui/BasePagedView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedListView;->itemsView:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 68
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/ui/BasePagedView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/PagedListView;->itemsView:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 74
    return-void
.end method
