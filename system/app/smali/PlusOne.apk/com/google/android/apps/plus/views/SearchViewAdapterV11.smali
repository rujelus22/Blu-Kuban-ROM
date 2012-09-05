.class public Lcom/google/android/apps/plus/views/SearchViewAdapterV11;
.super Lcom/google/android/apps/plus/views/SearchViewAdapter;
.source "SearchViewAdapterV11.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;


# instance fields
.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/views/SearchViewAdapter$OnQueryChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSearchView:Landroid/widget/SearchView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 39
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/SearchViewAdapter;-><init>()V

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/SearchViewAdapterV11;->mListeners:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f0f005d

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 42
    .local v0, themeContext:Landroid/view/ContextThemeWrapper;
    new-instance v1, Landroid/widget/SearchView;

    invoke-direct {v1, v0}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/SearchViewAdapterV11;->mSearchView:Landroid/widget/SearchView;

    .line 43
    iget-object v1, p0, Lcom/google/android/apps/plus/views/SearchViewAdapterV11;->mSearchView:Landroid/widget/SearchView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 44
    iget-object v1, p0, Lcom/google/android/apps/plus/views/SearchViewAdapterV11;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v3}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 45
    iget-object v1, p0, Lcom/google/android/apps/plus/views/SearchViewAdapterV11;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, v3}, Landroid/widget/SearchView;->setSubmitButtonEnabled(Z)V

    .line 46
    iget-object v1, p0, Lcom/google/android/apps/plus/views/SearchViewAdapterV11;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 47
    iget-object v1, p0, Lcom/google/android/apps/plus/views/SearchViewAdapterV11;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 48
    iget-object v1, p0, Lcom/google/android/apps/plus/views/SearchViewAdapterV11;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, p0}, Landroid/widget/SearchView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 51
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_4f

    .line 52
    iget-object v1, p0, Lcom/google/android/apps/plus/views/SearchViewAdapterV11;->mSearchView:Landroid/widget/SearchView;

    const v2, 0x10000003

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setImeOptions(I)V

    .line 54
    iget-object v1, p0, Lcom/google/android/apps/plus/views/SearchViewAdapterV11;->mSearchView:Landroid/widget/SearchView;

    const v2, 0x80001

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setInputType(I)V

    .line 57
    :cond_4f
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/views/SearchViewAdapterV11;)Landroid/widget/SearchView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SearchViewAdapterV11;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method


# virtual methods
.method public addOnChangeListener(Lcom/google/android/apps/plus/views/SearchViewAdapter$OnQueryChangeListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SearchViewAdapterV11;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SearchViewAdapterV11;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method public onClose()Z
    .registers 4

    .prologue
    .line 109
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

    .line 110
    .local v1, listener:Lcom/google/android/apps/plus/views/SearchViewAdapter$OnQueryChangeListener;
    invoke-interface {v1}, Lcom/google/android/apps/plus/views/SearchViewAdapter$OnQueryChangeListener;->onQueryClose()V

    goto :goto_6

    .line 112
    .end local v1           #listener:Lcom/google/android/apps/plus/views/SearchViewAdapter$OnQueryChangeListener;
    :cond_16
    const/4 v2, 0x0

    return v2
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .registers 5
    .parameter "newText"

    .prologue
    .line 86
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

    .line 87
    .local v1, listener:Lcom/google/android/apps/plus/views/SearchViewAdapter$OnQueryChangeListener;
    invoke-interface {v1, p1}, Lcom/google/android/apps/plus/views/SearchViewAdapter$OnQueryChangeListener;->onQueryTextChanged(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 89
    .end local v1           #listener:Lcom/google/android/apps/plus/views/SearchViewAdapter$OnQueryChangeListener;
    :cond_16
    const/4 v2, 0x0

    return v2
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .registers 5
    .parameter "query"

    .prologue
    .line 97
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

    .line 98
    .local v1, listener:Lcom/google/android/apps/plus/views/SearchViewAdapter$OnQueryChangeListener;
    invoke-interface {v1, p1}, Lcom/google/android/apps/plus/views/SearchViewAdapter$OnQueryChangeListener;->onQueryTextSubmitted(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 100
    .end local v1           #listener:Lcom/google/android/apps/plus/views/SearchViewAdapter$OnQueryChangeListener;
    :cond_16
    iget-object v2, p0, Lcom/google/android/apps/plus/views/SearchViewAdapterV11;->mSearchView:Landroid/widget/SearchView;

    invoke-static {v2}, Lcom/google/android/apps/plus/util/SoftInput;->hide(Landroid/view/View;)V

    .line 101
    const/4 v2, 0x0

    return v2
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SearchViewAdapterV11;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 123
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SearchViewAdapterV11;->mSearchView:Landroid/widget/SearchView;

    new-instance v1, Lcom/google/android/apps/plus/views/SearchViewAdapterV11$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/views/SearchViewAdapterV11$1;-><init>(Lcom/google/android/apps/plus/views/SearchViewAdapterV11;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/SearchView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 134
    :cond_14
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 141
    return-void
.end method

.method public setQueryText(Ljava/lang/String;)V
    .registers 4
    .parameter "queryText"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SearchViewAdapterV11;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SearchViewAdapterV11;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    .line 71
    return-void
.end method
