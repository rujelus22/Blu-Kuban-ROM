.class Lcom/sec/android/app/videoplayer/view/VideoListView$15$2;
.super Ljava/lang/Object;
.source "VideoListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/view/VideoListView$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/videoplayer/view/VideoListView$15;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/VideoListView$15;)V
    .registers 2
    .parameter

    .prologue
    .line 1643
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$15$2;->this$1:Lcom/sec/android/app/videoplayer/view/VideoListView$15;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1645
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$15$2;->this$1:Lcom/sec/android/app/videoplayer/view/VideoListView$15;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoListView$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mVideoPlayerListAdapter:Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$2700(Lcom/sec/android/app/videoplayer/view/VideoListView;)Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1646
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$15$2;->this$1:Lcom/sec/android/app/videoplayer/view/VideoListView$15;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoListView$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mVideoPlayerListAdapter:Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$2700(Lcom/sec/android/app/videoplayer/view/VideoListView;)Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->notifyDataSetChanged()V

    .line 1648
    :cond_16
    sget-object v0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1649
    sget-object v0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1650
    return-void
.end method
