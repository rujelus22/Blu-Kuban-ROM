.class Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$1;
.super Ljava/lang/Object;
.source "MoviePlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 1383
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$1;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 6
    .parameter "mp"

    .prologue
    .line 1385
    const-string v0, "MoviePlaybackService"

    const-string v1, "TouchPlayer :: onCompletionListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$1;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v1, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_DISMISS_ACQUIRING_POPUP"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    .line 1388
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$1;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->broadcastPausedPosition(Landroid/content/Context;)V

    .line 1390
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setCurPlayingPath(Ljava/lang/String;)V

    .line 1392
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    if-eqz v0, :cond_28

    .line 1393
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->resumeTvOut()V

    .line 1395
    :cond_28
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$1;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->access$1800(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1396
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$1;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->access$1800(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$1;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->access$1800(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1397
    return-void
.end method
