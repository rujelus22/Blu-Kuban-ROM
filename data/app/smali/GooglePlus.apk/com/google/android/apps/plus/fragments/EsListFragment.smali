.class abstract Lcom/google/android/apps/plus/fragments/EsListFragment;
.super Lcom/google/android/apps/plus/fragments/EsFragment;
.source "EsListFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "ListViewType:Landroid/widget/AbsListView;",
        "AdapterType:",
        "Lcom/google/android/apps/plus/phone/EsCursorAdapter;",
        ">",
        "Lcom/google/android/apps/plus/fragments/EsFragment;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# instance fields
.field protected mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAdapterType;"
        }
    .end annotation
.end field

.field protected mListView:Landroid/widget/AbsListView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "ListViewType;"
        }
    .end annotation
.end field

.field private mPrevScrollItemCount:I

.field private mPrevScrollPosition:I

.field private mScrollOffset:I

.field private mScrollPos:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .local p0, this:Lcom/google/android/apps/plus/fragments/EsListFragment;,"Lcom/google/android/apps/plus/fragments/EsListFragment<TListViewType;TAdapterType;>;"
    const/4 v0, -0x1

    .line 19
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;-><init>()V

    .line 31
    iput v0, p0, Lcom/google/android/apps/plus/fragments/EsListFragment;->mPrevScrollPosition:I

    .line 32
    iput v0, p0, Lcom/google/android/apps/plus/fragments/EsListFragment;->mPrevScrollItemCount:I

    return-void
.end method


# virtual methods
.method protected isEmpty()Z
    .registers 2

    .prologue
    .line 151
    .local p0, this:Lcom/google/android/apps/plus/fragments/EsListFragment;,"Lcom/google/android/apps/plus/fragments/EsListFragment<TListViewType;TAdapterType;>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .local p0, this:Lcom/google/android/apps/plus/fragments/EsListFragment;,"Lcom/google/android/apps/plus/fragments/EsListFragment<TListViewType;TAdapterType;>;"
    const/4 v0, 0x0

    .line 39
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    if-eqz p1, :cond_17

    .line 42
    const-string v0, "scroll_pos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/fragments/EsListFragment;->mScrollPos:I

    .line 43
    const-string v0, "scroll_off"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/fragments/EsListFragment;->mScrollOffset:I

    .line 48
    :goto_16
    return-void

    .line 45
    :cond_17
    iput v0, p0, Lcom/google/android/apps/plus/fragments/EsListFragment;->mScrollPos:I

    .line 46
    iput v0, p0, Lcom/google/android/apps/plus/fragments/EsListFragment;->mScrollOffset:I

    goto :goto_16
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;
    .registers 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"
    .parameter "layoutResId"

    .prologue
    .line 64
    .local p0, this:Lcom/google/android/apps/plus/fragments/EsListFragment;,"Lcom/google/android/apps/plus/fragments/EsListFragment<TListViewType;TAdapterType;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/fragments/EsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, view:Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/EsListFragment;->mListView:Landroid/widget/AbsListView;

    .line 68
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsListFragment;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v1, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 70
    return-object v0
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    .local p0, this:Lcom/google/android/apps/plus/fragments/EsListFragment;,"Lcom/google/android/apps/plus/fragments/EsListFragment<TListViewType;TAdapterType;>;"
    const/4 v1, 0x0

    .line 78
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->onDestroyView()V

    .line 79
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsListFragment;->mListView:Landroid/widget/AbsListView;

    if-eqz v0, :cond_f

    .line 80
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsListFragment;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 81
    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/EsListFragment;->mListView:Landroid/widget/AbsListView;

    .line 83
    :cond_f
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 90
    .local p0, this:Lcom/google/android/apps/plus/fragments/EsListFragment;,"Lcom/google/android/apps/plus/fragments/EsListFragment<TListViewType;TAdapterType;>;"
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->onPause()V

    .line 92
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 93
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->onPause()V

    .line 95
    :cond_14
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 102
    .local p0, this:Lcom/google/android/apps/plus/fragments/EsListFragment;,"Lcom/google/android/apps/plus/fragments/EsListFragment<TListViewType;TAdapterType;>;"
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->onResume()V

    .line 104
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 105
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->onResume()V

    .line 107
    :cond_14
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 114
    .local p0, this:Lcom/google/android/apps/plus/fragments/EsListFragment;,"Lcom/google/android/apps/plus/fragments/EsListFragment<TListViewType;TAdapterType;>;"
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsListFragment;->mListView:Landroid/widget/AbsListView;

    if-eqz v0, :cond_22

    .line 117
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->saveScrollPosition()V

    .line 118
    const-string v0, "scroll_pos"

    iget v1, p0, Lcom/google/android/apps/plus/fragments/EsListFragment;->mScrollPos:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    const-string v0, "scroll_off"

    iget v1, p0, Lcom/google/android/apps/plus/fragments/EsListFragment;->mScrollOffset:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    :cond_22
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 7
    .parameter "view"
    .parameter "firstCell"
    .parameter "visibleCellCount"
    .parameter "itemCount"

    .prologue
    .line 128
    .local p0, this:Lcom/google/android/apps/plus/fragments/EsListFragment;,"Lcom/google/android/apps/plus/fragments/EsListFragment<TListViewType;TAdapterType;>;"
    if-lez p4, :cond_15

    .line 129
    add-int v0, p2, p3

    .line 130
    .local v0, position:I
    if-lt v0, p4, :cond_11

    iget v1, p0, Lcom/google/android/apps/plus/fragments/EsListFragment;->mPrevScrollPosition:I

    if-ne v0, v1, :cond_e

    iget v1, p0, Lcom/google/android/apps/plus/fragments/EsListFragment;->mPrevScrollItemCount:I

    if-eq p4, v1, :cond_11

    .line 132
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onScrollDown()V

    .line 134
    :cond_11
    iput v0, p0, Lcom/google/android/apps/plus/fragments/EsListFragment;->mPrevScrollPosition:I

    .line 135
    iput p4, p0, Lcom/google/android/apps/plus/fragments/EsListFragment;->mPrevScrollItemCount:I

    .line 137
    .end local v0           #position:I
    :cond_15
    return-void
.end method

.method protected onScrollDown()V
    .registers 1

    .prologue
    .line 158
    .local p0, this:Lcom/google/android/apps/plus/fragments/EsListFragment;,"Lcom/google/android/apps/plus/fragments/EsListFragment<TListViewType;TAdapterType;>;"
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 144
    .local p0, this:Lcom/google/android/apps/plus/fragments/EsListFragment;,"Lcom/google/android/apps/plus/fragments/EsListFragment<TListViewType;TAdapterType;>;"
    return-void
.end method

.method protected restoreScrollPosition()V
    .registers 5

    .prologue
    .local p0, this:Lcom/google/android/apps/plus/fragments/EsListFragment;,"Lcom/google/android/apps/plus/fragments/EsListFragment<TListViewType;TAdapterType;>;"
    const/4 v3, 0x0

    .line 188
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsListFragment;->mListView:Landroid/widget/AbsListView;

    if-nez v0, :cond_6

    .line 199
    :cond_5
    :goto_5
    return-void

    .line 192
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsListFragment;->mListView:Landroid/widget/AbsListView;

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/google/android/apps/plus/fragments/EsListFragment;->mScrollOffset:I

    if-nez v0, :cond_14

    iget v0, p0, Lcom/google/android/apps/plus/fragments/EsListFragment;->mScrollPos:I

    if-eqz v0, :cond_5

    .line 193
    :cond_14
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    iget v1, p0, Lcom/google/android/apps/plus/fragments/EsListFragment;->mScrollPos:I

    iget v2, p0, Lcom/google/android/apps/plus/fragments/EsListFragment;->mScrollOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 196
    iput v3, p0, Lcom/google/android/apps/plus/fragments/EsListFragment;->mScrollPos:I

    .line 197
    iput v3, p0, Lcom/google/android/apps/plus/fragments/EsListFragment;->mScrollOffset:I

    goto :goto_5
.end method

.method protected saveScrollPosition()V
    .registers 4

    .prologue
    .local p0, this:Lcom/google/android/apps/plus/fragments/EsListFragment;,"Lcom/google/android/apps/plus/fragments/EsListFragment<TListViewType;TAdapterType;>;"
    const/4 v2, 0x0

    .line 161
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsListFragment;->mListView:Landroid/widget/AbsListView;

    if-nez v1, :cond_6

    .line 180
    :goto_5
    return-void

    .line 169
    :cond_6
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsListFragment;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/fragments/EsListFragment;->mScrollPos:I

    .line 170
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    if-eqz v1, :cond_24

    .line 171
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsListFragment;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 172
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_21

    .line 173
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/fragments/EsListFragment;->mScrollOffset:I

    goto :goto_5

    .line 175
    :cond_21
    iput v2, p0, Lcom/google/android/apps/plus/fragments/EsListFragment;->mScrollOffset:I

    goto :goto_5

    .line 178
    .end local v0           #v:Landroid/view/View;
    :cond_24
    iput v2, p0, Lcom/google/android/apps/plus/fragments/EsListFragment;->mScrollOffset:I

    goto :goto_5
.end method
