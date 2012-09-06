.class public Lcom/google/android/apps/plus/views/SearchViewAdapter;
.super Ljava/lang/Object;
.source "SearchViewAdapter.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/SearchViewAdapter$OnQueryChangeListener;
    }
.end annotation


# instance fields
.field protected final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/views/SearchViewAdapter$OnQueryChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mRequestFocus:Z

.field private mSearchView:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/SearchViewAdapter;->mRequestFocus:Z

    .line 60
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/SearchViewAdapter;->mListeners:Ljava/util/ArrayList;

    .line 64
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/views/SearchViewAdapter;->mSearchView:Landroid/widget/TextView;

    .line 65
    iget-object v2, p0, Lcom/google/android/apps/plus/views/SearchViewAdapter;->mSearchView:Landroid/widget/TextView;

    if-eqz v2, :cond_35

    .line 66
    iget-object v2, p0, Lcom/google/android/apps/plus/views/SearchViewAdapter;->mSearchView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 67
    iget-object v2, p0, Lcom/google/android/apps/plus/views/SearchViewAdapter;->mSearchView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 68
    .local v1, parent:Landroid/view/View;
    if-eqz v1, :cond_35

    .line 69
    const v2, 0x7f09004d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 70
    .local v0, button:Landroid/view/View;
    if-eqz v0, :cond_35

    .line 71
    new-instance v2, Lcom/google/android/apps/plus/views/SearchViewAdapter$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/plus/views/SearchViewAdapter$1;-><init>(Lcom/google/android/apps/plus/views/SearchViewAdapter;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    .end local v0           #button:Landroid/view/View;
    .end local v1           #parent:Landroid/view/View;
    :cond_35
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/views/SearchViewAdapter;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SearchViewAdapter;->mSearchView:Landroid/widget/TextView;

    return-object v0
.end method

.method public static createInstance(Landroid/view/View;)Lcom/google/android/apps/plus/views/SearchViewAdapter;
    .registers 3
    .parameter "view"

    .prologue
    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_c

    .line 49
    new-instance v0, Lcom/google/android/apps/plus/views/SearchViewAdapterV12;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/views/SearchViewAdapterV12;-><init>(Landroid/view/View;)V

    .line 53
    :goto_b
    return-object v0

    .line 50
    :cond_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_18

    .line 51
    new-instance v0, Lcom/google/android/apps/plus/views/SearchViewAdapterV11;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/views/SearchViewAdapterV11;-><init>(Landroid/view/View;)V

    goto :goto_b

    .line 53
    :cond_18
    new-instance v0, Lcom/google/android/apps/plus/views/SearchViewAdapter;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/views/SearchViewAdapter;-><init>(Landroid/view/View;)V

    goto :goto_b
.end method


# virtual methods
.method public addOnChangeListener(Lcom/google/android/apps/plus/views/SearchViewAdapter$OnQueryChangeListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SearchViewAdapter;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 129
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 136
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .registers 5
    .parameter "newText"

    .prologue
    .line 103
    iget-object v2, p0, Lcom/google/android/apps/plus/views/SearchViewAdapter;->mListeners:Ljava/util/ArrayList;

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

    .line 104
    .local v1, listener:Lcom/google/android/apps/plus/views/SearchViewAdapter$OnQueryChangeListener;
    invoke-interface {v1, p1}, Lcom/google/android/apps/plus/views/SearchViewAdapter$OnQueryChangeListener;->onQueryTextChanged(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 106
    .end local v1           #listener:Lcom/google/android/apps/plus/views/SearchViewAdapter$OnQueryChangeListener;
    :cond_16
    const/4 v2, 0x0

    return v2
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .registers 5
    .parameter "query"

    .prologue
    .line 110
    iget-object v2, p0, Lcom/google/android/apps/plus/views/SearchViewAdapter;->mListeners:Ljava/util/ArrayList;

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

    .line 111
    .local v1, listener:Lcom/google/android/apps/plus/views/SearchViewAdapter$OnQueryChangeListener;
    invoke-interface {v1, p1}, Lcom/google/android/apps/plus/views/SearchViewAdapter$OnQueryChangeListener;->onQueryTextSubmitted(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 113
    .end local v1           #listener:Lcom/google/android/apps/plus/views/SearchViewAdapter$OnQueryChangeListener;
    :cond_16
    const/4 v2, 0x0

    return v2
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .parameter "query"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 121
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/SearchViewAdapter;->onQueryTextChange(Ljava/lang/String;)Z

    .line 122
    return-void
.end method

.method public requestFocus(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/SearchViewAdapter;->mRequestFocus:Z

    .line 85
    return-void
.end method

.method public setQueryHint(I)V
    .registers 3
    .parameter "hintResId"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SearchViewAdapter;->mSearchView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(I)V

    .line 89
    return-void
.end method

.method public setQueryText(Ljava/lang/String;)V
    .registers 3
    .parameter "queryText"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SearchViewAdapter;->mSearchView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/SearchViewAdapter;->mRequestFocus:Z

    if-eqz v0, :cond_e

    .line 94
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SearchViewAdapter;->mSearchView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 96
    :cond_e
    return-void
.end method

.method public setVisible(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SearchViewAdapter;->mSearchView:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/plus/views/SearchViewAdapter;->setVisible(ZLandroid/view/View;)V

    .line 140
    return-void
.end method

.method protected setVisible(ZLandroid/view/View;)V
    .registers 4
    .parameter "flag"
    .parameter "searchView"

    .prologue
    .line 143
    if-eqz p2, :cond_17

    .line 144
    if-eqz p1, :cond_18

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 145
    if-nez p1, :cond_17

    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 147
    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 150
    :cond_17
    return-void

    .line 144
    :cond_18
    const/16 v0, 0x8

    goto :goto_5
.end method
