.class Lcom/sec/android/app/videoplayer/view/VideoListView$15$1;
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
    .line 1633
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$15$1;->this$1:Lcom/sec/android/app/videoplayer/view/VideoListView$15;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1635
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$15$1;->this$1:Lcom/sec/android/app/videoplayer/view/VideoListView$15;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoListView$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mVideoPlayerListAdapter:Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$2700(Lcom/sec/android/app/videoplayer/view/VideoListView;)Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1636
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$15$1;->this$1:Lcom/sec/android/app/videoplayer/view/VideoListView$15;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoListView$15;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoListView;->mVideoPlayerListAdapter:Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->access$2700(Lcom/sec/android/app/videoplayer/view/VideoListView;)Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->notifyDataSetChanged()V

    .line 1638
    :cond_15
    return-void
.end method
