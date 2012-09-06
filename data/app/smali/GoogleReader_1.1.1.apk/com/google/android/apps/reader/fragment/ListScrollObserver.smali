.class final Lcom/google/android/apps/reader/fragment/ListScrollObserver;
.super Ljava/lang/Object;
.source "ListScrollObserver.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private final mLoadable:Lcom/google/android/apps/reader/fragment/Loadable;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/reader/fragment/Loadable;)V
    .registers 3
    .parameter "loadable"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    if-nez p1, :cond_b

    .line 31
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33
    :cond_b
    iput-object p1, p0, Lcom/google/android/apps/reader/fragment/ListScrollObserver;->mLoadable:Lcom/google/android/apps/reader/fragment/Loadable;

    .line 34
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    mul-int/lit8 v0, p3, 0x2

    sub-int v0, p4, v0

    if-lt p2, v0, :cond_13

    .line 43
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ListScrollObserver;->mLoadable:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/Loadable;->isReadyToLoadMore()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 44
    iget-object v0, p0, Lcom/google/android/apps/reader/fragment/ListScrollObserver;->mLoadable:Lcom/google/android/apps/reader/fragment/Loadable;

    invoke-virtual {v0, p3}, Lcom/google/android/apps/reader/fragment/Loadable;->loadMore(I)Z

    .line 47
    :cond_13
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 53
    return-void
.end method
