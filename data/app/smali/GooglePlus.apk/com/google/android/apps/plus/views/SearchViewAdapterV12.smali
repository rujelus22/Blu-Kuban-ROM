.class public Lcom/google/android/apps/plus/views/SearchViewAdapterV12;
.super Lcom/google/android/apps/plus/views/SearchViewAdapterV11;
.source "SearchViewAdapterV12.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/SearchViewAdapterV11;-><init>(Landroid/view/View;)V

    .line 25
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SearchViewAdapterV12;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 26
    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SearchViewAdapterV12;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/SearchViewAdapterV12;->mRequestFocus:Z

    if-eqz v0, :cond_18

    .line 36
    iget-object v0, p0, Lcom/google/android/apps/plus/views/SearchViewAdapterV12;->mSearchView:Landroid/widget/SearchView;

    new-instance v1, Lcom/google/android/apps/plus/views/SearchViewAdapterV12$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/views/SearchViewAdapterV12$1;-><init>(Lcom/google/android/apps/plus/views/SearchViewAdapterV12;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/SearchView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47
    :cond_18
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 54
    return-void
.end method
