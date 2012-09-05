.class Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$4;
.super Ljava/lang/Object;
.source "MoviePlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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
    .line 1471
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$4;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 7
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v2, 0x0

    .line 1474
    sparse-switch p2, :sswitch_data_4e

    .line 1503
    :cond_4
    :goto_4
    return v2

    .line 1476
    :sswitch_5
    const-string v0, "MoviePlaybackService"

    const-string v1, ">>>>>>>>MEDIA_INFO_BAD_INTERLEAVING<<<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1480
    :sswitch_d
    const-string v0, "MoviePlaybackService"

    const-string v1, ">>>>>>>>MEDIA_INFO_NOT_SEEKABLE<<<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1484
    :sswitch_15
    const-string v0, "MoviePlaybackService"

    const-string v1, ">>>>>>>>MEDIA_INFO_VIDEO_TRACK_LAGGING<<<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1488
    :sswitch_1d
    const-string v0, "MoviePlaybackService"

    const-string v1, ">>>>>>>>MEDIA_INFO_UNKNOWN<<<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    const/16 v0, 0x2c

    if-ne p3, v0, :cond_4

    .line 1490
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->isCurrentPlayerState(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1491
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setUpdate()V

    .line 1492
    const-string v0, "MoviePlaybackService"

    const-string v1, "update buttons of controller after seek"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$4;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1494
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setPlayerState(I)V

    goto :goto_4

    .line 1474
    nop

    :sswitch_data_4e
    .sparse-switch
        0x1 -> :sswitch_1d
        0x2bc -> :sswitch_15
        0x320 -> :sswitch_5
        0x321 -> :sswitch_d
    .end sparse-switch
.end method
