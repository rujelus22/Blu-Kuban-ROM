.class public Lcom/google/android/feeds/core/app/ResourceFeedAdapter;
.super Lcom/google/android/feeds/core/app/BaseFeedAdapter;
.source "ResourceFeedAdapter.java"


# instance fields
.field private final mErrorLayout:I

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mLoadingLayout:I


# virtual methods
.method protected getErrorView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "parent"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/feeds/core/app/ResourceFeedAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/google/android/feeds/core/app/ResourceFeedAdapter;->mErrorLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getLoadingView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "parent"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/feeds/core/app/ResourceFeedAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/google/android/feeds/core/app/ResourceFeedAdapter;->mLoadingLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
