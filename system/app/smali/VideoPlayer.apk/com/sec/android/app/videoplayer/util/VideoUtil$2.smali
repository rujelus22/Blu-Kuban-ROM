.class final Lcom/sec/android/app/videoplayer/util/VideoUtil$2;
.super Landroid/os/Handler;
.source "VideoUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/util/VideoUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1229
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 1231
    const-string v1, "VideoUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHandler start : msg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_29

    .line 1234
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->access$000()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1235
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->startPlayback()V

    .line 1245
    :cond_28
    :goto_28
    return-void

    .line 1237
    :cond_29
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v5, :cond_38

    .line 1238
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->access$000()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1239
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->resumePlayback()V

    goto :goto_28

    .line 1241
    :cond_38
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_28

    .line 1242
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v0

    .line 1243
    .local v0, videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->setTitleName()V

    goto :goto_28
.end method
