.class public Lcom/google/android/apps/plus/views/SearchViewAdapterV11;
.super Lcom/google/android/apps/plus/views/SearchViewAdapter;
.source "SearchViewAdapterV11.java"

# interfaces
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;


# instance fields
.field protected final mSearchView:Landroid/widget/SearchView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/views/SearchViewAdapter;-><init>(Landroid/view/View;)V

    .line 26
    check-cast p1, Landroid/widget/SearchView;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/views/SearchViewAdapterV11;->mSearchView:Landroid/widget/SearchView;

    .line 27
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SearchViewAdapterV11;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setSubmitButtonEnabled(Z)V

    .line 28
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SearchViewAdapterV11;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 29
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SearchViewAdapterV11;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 30
    return-void
.end method


# virtual methods
.method public onClose()Z
    .registers 4

    .prologue
    .line 63
    iget-object v2, p0, Lcom/google/android/apps/plus/views/SearchViewAdapterV11;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/SearchViewAdapter$OnQueryChangeListener;

    .line 64
    .local v1, listener:Lcom/google/android/apps/plus/views/SearchViewAdapter$OnQueryChangeListener;
    invoke-interface {v1}, Lcom/google/android/apps/plus/views/SearchViewAdapter$OnQueryChangeListener;->onQueryClose()V

    goto :goto_6

    .line 68
    .end local v1           #listener:Lcom/google/android/apps/plus/views/SearchViewAdapter$OnQueryChangeListener;
    :cond_16
    const/4 v2, 0x1

    return v2
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .registers 3
    .parameter "query"

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/views/SearchViewAdapter;->onQueryTextSubmit(Ljava/lang/String;)Z

    .line 54
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SearchViewAdapterV11;->mSearchView:Landroid/widget/SearchView;

    invoke-static {v0}, Lcom/google/android/apps/plus/util/SoftInput;->hide(Landroid/view/View;)V

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public setQueryHint(I)V
    .registers 4
    .parameter "hintResId"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SearchViewAdapterV11;->mSearchView:Landroid/widget/SearchView;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/SearchViewAdapterV11;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 38
    return-void
.end method

.method public setQueryText(Ljava/lang/String;)V
    .registers 4
    .parameter "queryText"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SearchViewAdapterV11;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 43
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/SearchViewAdapterV11;->mRequestFocus:Z

    if-eqz v0, :cond_f

    .line 44
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SearchViewAdapterV11;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    .line 46
    :cond_f
    return-void
.end method

.method public setVisible(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SearchViewAdapterV11;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/plus/views/SearchViewAdapterV11;->setVisible(ZLandroid/view/View;)V

    .line 74
    return-void
.end method
