.class public final Lcom/google/android/feeds/core/app/FeedScrollListener;
.super Ljava/lang/Object;
.source "FeedScrollListener.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private final mCursor:Landroid/database/Cursor;


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 6
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 52
    add-int v0, p2, p3

    if-lt v0, p4, :cond_19

    .line 53
    iget-object v0, p0, Lcom/google/android/feeds/core/app/FeedScrollListener;->mCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/google/android/feeds/core/provider/Feed;->isLoaded(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 54
    iget-object v0, p0, Lcom/google/android/feeds/core/app/FeedScrollListener;->mCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/google/android/feeds/core/provider/Feed;->hasMore(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 55
    iget-object v0, p0, Lcom/google/android/feeds/core/app/FeedScrollListener;->mCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/google/android/feeds/core/provider/FeedCommand;->moreAsync(Landroid/database/Cursor;)V

    .line 59
    :cond_19
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 66
    return-void
.end method
