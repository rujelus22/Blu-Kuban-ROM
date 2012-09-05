.class Lcom/sec/android/app/videoplayer/view/VideoListView$14;
.super Ljava/lang/Object;
.source "VideoListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/view/VideoListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mScrollState:I

.field final synthetic this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/VideoListView;)V
    .registers 2
    .parameter

    .prologue
    .line 1379
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$14;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 6
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$14;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mFirstVisibleItem:I
    invoke-static {v0, p2}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$2002(Lcom/sec/android/app/videoplayer/view/VideoListView;I)I

    .line 1403
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$14;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mVisibleItemCount:I
    invoke-static {v0, p3}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$2102(Lcom/sec/android/app/videoplayer/view/VideoListView;I)I

    .line 1405
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 7
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/4 v3, 0x1

    .line 1383
    const-string v0, "VideoListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScrollStateChanged old = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$14;->mScrollState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$14;->mScrollState:I

    if-eqz v0, :cond_6a

    .line 1386
    const/4 v0, 0x2

    if-eq p2, v0, :cond_6d

    .line 1387
    const-string v0, "VideoListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScrollStateChanged - mFirstVisibleItem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$14;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mFirstVisibleItem:I
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$2000(Lcom/sec/android/app/videoplayer/view/VideoListView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mVisibleItemCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$14;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mVisibleItemCount:I
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$2100(Lcom/sec/android/app/videoplayer/view/VideoListView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$14;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mThreadReset:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$2202(Lcom/sec/android/app/videoplayer/view/VideoListView;Z)Z

    .line 1390
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$14;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mPausing:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$2302(Lcom/sec/android/app/videoplayer/view/VideoListView;Z)Z

    .line 1391
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$14;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->startThumbnailCreateThread()V

    .line 1398
    :cond_6a
    :goto_6a
    iput p2, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$14;->mScrollState:I

    .line 1399
    return-void

    .line 1393
    :cond_6d
    const-string v0, "VideoListView"

    const-string v1, "onScrollStateChanged - scrolling!! if thread runs, pause it."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$14;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #setter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mPausing:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$2302(Lcom/sec/android/app/videoplayer/view/VideoListView;Z)Z

    goto :goto_6a
.end method
