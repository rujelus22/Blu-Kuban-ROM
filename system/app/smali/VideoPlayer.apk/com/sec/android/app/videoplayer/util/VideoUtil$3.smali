.class final Lcom/sec/android/app/videoplayer/util/VideoUtil$3;
.super Ljava/lang/Object;
.source "VideoUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 1283
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const-wide/16 v9, 0x12c

    const/16 v8, 0xbb8

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 1285
    const-string v3, "VideoUtil"

    const-string v4, "mBufferingChecker runs"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getStateView()Lcom/sec/android/app/videoplayer/view/VideoStateView;

    move-result-object v1

    .line 1287
    .local v1, stateView:Lcom/sec/android/app/videoplayer/view/VideoStateView;
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v2

    .line 1288
    .local v2, videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v3, :cond_6d

    if-eqz v1, :cond_6d

    .line 1290
    :try_start_20
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v3}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->getBufferPercentage()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_51

    .line 1291
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->access$000()Landroid/os/Handler;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mBufferingChecker:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_33} :catch_34

    .line 1320
    :goto_33
    return-void

    .line 1294
    :catch_34
    move-exception v0

    .line 1295
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "VideoUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mBufferingChecker - RemoteException occured :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_51
    if-eqz v2, :cond_56

    .line 1299
    invoke-virtual {v2, v8}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->showControls(I)V

    .line 1301
    :cond_56
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getVisibility()I

    move-result v3

    if-ne v3, v7, :cond_69

    .line 1302
    invoke-virtual {v1, v6}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->setVisibility(I)V

    .line 1306
    :goto_5f
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->access$000()Landroid/os/Handler;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mBufferingChecker:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_33

    .line 1304
    :cond_69
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->doRefreshIcon()V

    goto :goto_5f

    .line 1308
    :cond_6d
    if-eqz v2, :cond_72

    .line 1309
    invoke-virtual {v2, v8}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->showControls(I)V

    .line 1311
    :cond_72
    if-eqz v1, :cond_7d

    .line 1312
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getVisibility()I

    move-result v3

    if-ne v3, v7, :cond_87

    .line 1313
    invoke-virtual {v1, v6}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->setVisibility(I)V

    .line 1318
    :cond_7d
    :goto_7d
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->access$000()Landroid/os/Handler;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mBufferingChecker:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_33

    .line 1315
    :cond_87
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->doRefreshIcon()V

    goto :goto_7d
.end method
