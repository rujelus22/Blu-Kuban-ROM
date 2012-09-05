.class final Lcom/sec/android/app/videoplayer/view/VideoSplitView$9;
.super Landroid/os/Handler;
.source "VideoSplitView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/view/VideoSplitView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1069
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 1071
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_18

    .line 1072
    const-string v0, "VideoSplitView"

    const-string v1, "mHandler - REFRESH"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    invoke-static {}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->access$100()Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 1074
    invoke-static {}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->access$100()Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerSplitCursorAdapter;->notifyDataSetChanged()V

    .line 1077
    :cond_18
    return-void
.end method
