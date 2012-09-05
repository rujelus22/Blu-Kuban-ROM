.class Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$3;
.super Ljava/lang/Object;
.source "MoviePlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 1412
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$3;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 9
    .parameter "mp"

    .prologue
    const/4 v6, 0x0

    .line 1414
    const-string v2, "MoviePlaybackService"

    const-string v3, "@@ TouchPlayer :: OnPreparedListener()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->stopPlayingChecker()V

    .line 1418
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$3;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v3, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_DISMISS_ACQUIRING_POPUP"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    .line 1420
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$3;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoWidth:I
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$1600(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)I

    move-result v2

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$3;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoHeight:I
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$1700(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)I

    move-result v2

    if-eqz v2, :cond_45

    .line 1421
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$3;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$1400(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v1

    .line 1423
    .local v1, videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    if-eqz v1, :cond_9b

    .line 1424
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 1426
    .local v0, sh:Landroid/view/SurfaceHolder;
    if-eqz v0, :cond_95

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->getSurfaceExists()Z

    move-result v2

    if-eqz v2, :cond_95

    .line 1430
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->requestLayout()V

    .line 1442
    .end local v0           #sh:Landroid/view/SurfaceHolder;
    .end local v1           #videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :cond_45
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$3;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    const/4 v3, 0x1

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->setIsInitialized(Z)V
    invoke-static {v2, v3}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->access$1900(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;Z)V

    .line 1443
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$3;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->getDuration()J

    .line 1444
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$3;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->checkPauseEnable()V
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->access$2000(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)V

    .line 1446
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getSRS()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 1447
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$3;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    const/high16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->setInternalEq(I)V

    .line 1449
    :cond_62
    sget-wide v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPositionWhenPaused:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_b0

    .line 1450
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$3;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    sget-wide v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPositionWhenPaused:J

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->seek(J)J

    .line 1452
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getWasPlayingWhenPaused()Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 1453
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$3;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->play()V

    .line 1460
    :goto_7e
    sput-boolean v6, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mReadPosition:Z

    .line 1463
    sget-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHdmiOn:Z

    if-eqz v2, :cond_94

    .line 1464
    const-string v2, "MoviePlaybackService"

    const-string v3, "ACTION_HDMI_START"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$3;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v3, "videoplayer.service.MoviePlaybackService.ACTION_HDMI_START"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    .line 1468
    :cond_94
    :goto_94
    return-void

    .line 1432
    .restart local v0       #sh:Landroid/view/SurfaceHolder;
    .restart local v1       #videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :cond_95
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$3;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->resetPlayer()V

    goto :goto_94

    .line 1436
    .end local v0           #sh:Landroid/view/SurfaceHolder;
    :cond_9b
    const-string v2, "MoviePlaybackService"

    const-string v3, "TouchPlayer :: OnPreparedListener() - VideoSurfaceView is null."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$3;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->resetPlayer()V

    goto :goto_94

    .line 1455
    .end local v1           #videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :cond_a8
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$3;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->setWakeMode(Z)V

    goto :goto_7e

    .line 1458
    :cond_b0
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$3;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->play()V

    goto :goto_7e
.end method
