.class Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$6;
.super Ljava/lang/Object;
.source "MoviePlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 1555
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$6;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 11
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v1, 0x0

    const-wide/16 v5, 0x1f4

    const/4 v0, 0x1

    .line 1557
    const-string v2, "MoviePlaybackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>>>>>MEDIA_ERROR = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<<<<<<<<<<<<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$6;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->setIsInitialized(Z)V
    invoke-static {v2, v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->access$1900(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;Z)V

    .line 1560
    sparse-switch p2, :sswitch_data_1e6

    .line 1634
    const/16 v0, -0x31

    if-eq p3, v0, :cond_52

    const/16 v0, 0x12d

    if-eq p3, v0, :cond_52

    const/16 v0, 0x12c

    if-eq p3, v0, :cond_52

    const/16 v0, -0x3d

    if-eq p3, v0, :cond_52

    const/16 v0, -0x3c

    if-eq p3, v0, :cond_52

    const/16 v0, -0x3a

    if-eq p3, v0, :cond_52

    const/16 v0, -0x3b

    if-eq p3, v0, :cond_52

    const/16 v0, -0x3e

    if-eq p3, v0, :cond_52

    const/16 v0, -0x3f

    if-eq p3, v0, :cond_52

    const/16 v0, -0x40

    if-ne p3, v0, :cond_1d4

    .line 1644
    :cond_52
    const-string v0, "MoviePlaybackService"

    const-string v2, ">>>>>>>>DRM License Error<<<<<<<<<<<<"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_59
    move v0, v1

    .line 1787
    :goto_5a
    return v0

    .line 1562
    :sswitch_5b
    const-string v1, "MoviePlaybackService"

    const-string v2, ">>>>>>>>MEDIA_ERROR_SERVER_DIED<<<<<<<<<<<<"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$6;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->access$2100(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 1564
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$6;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->access$2100(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 1565
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$6;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    #setter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->access$2102(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 1566
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$6;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->access$2100(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$6;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 1567
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$6;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v1, v1, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v2, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_UNKNOWN"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    goto :goto_5a

    .line 1571
    :sswitch_95
    const-string v0, "MoviePlaybackService"

    const-string v2, ">>>>>>>>MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK<<<<<<<<<<<<"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$6;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v2, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_INVALID"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    goto :goto_59

    .line 1576
    :sswitch_a6
    const-string v1, "MoviePlaybackService"

    const-string v2, "MediaPlayer.MEDIA_ErrDrmLicenseExpired"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$6;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->access$2100(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 1578
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$6;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    #setter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->access$2102(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 1579
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$6;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->access$2100(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$6;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 1580
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$6;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->access$1800(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$6;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->access$1800(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_5a

    .line 1584
    :sswitch_e3
    const-string v1, "MoviePlaybackService"

    const-string v2, "MediaPlayer.MEDIA_ErrDrmLicenseNotFound"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$6;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->access$2100(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 1586
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$6;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v1, v1, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v2, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_DISMISS_ACQUIRING_POPUP"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    .line 1587
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$6;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    #setter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->access$2102(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 1588
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$6;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->access$2100(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$6;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 1589
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$6;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->access$1800(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$6;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->access$1800(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_5a

    .line 1593
    :sswitch_12a
    const-string v0, "MoviePlaybackService"

    const-string v2, ">>>>>>>>MEDIA_ERROR_NOTSUPPORT<<<<<<<<<<<<"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$6;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v2, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_NOTSUPPORT"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    goto/16 :goto_59

    .line 1598
    :sswitch_13c
    const-string v0, "MoviePlaybackService"

    const-string v2, ">>>>>>>>MEDIA_ERROR_CURRUPT<<<<<<<<<<<<"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$6;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v2, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_CURRUPT"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    goto/16 :goto_59

    .line 1603
    :sswitch_14e
    const-string v0, "MoviePlaybackService"

    const-string v2, ">>>>>>>>MEDIA_ERROR_DIVX_NOTAUTHORIZED<<<<<<<<<<<<"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$6;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v2, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_DIVX_NOTAUTHORIZED"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    goto/16 :goto_59

    .line 1608
    :sswitch_160
    const-string v0, "MoviePlaybackService"

    const-string v2, ">>>>>>>>MEDIA_ERROR_EXPIRED_RENTALCOUNT<<<<<<<<<<<<"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$6;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v2, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_EXPIRED_RENTALCOUNT"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    goto/16 :goto_59

    .line 1613
    :sswitch_172
    const-string v1, "MoviePlaybackService"

    const-string v2, "MediaPlayer.MEDIA_ErrDrmRightsAcquisitionFailed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$6;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->access$2100(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 1615
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$6;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v1, v1, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v2, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_DISMISS_ACQUIRING_POPUP"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    .line 1616
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$6;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    #setter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->access$2102(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 1617
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$6;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->access$2100(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$6;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 1618
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$6;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->access$1800(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$6;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->access$1800(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_5a

    .line 1627
    :sswitch_1b9
    const-string v0, "MoviePlaybackService"

    const-string v2, "WHAT switch >>>>>>>>DRM License Error<<<<<<<<<<<<"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_59

    .line 1630
    :sswitch_1c2
    const-string v0, "MoviePlaybackService"

    const-string v2, ">>>>>>>>PLAYBACK_UNKNOWNERROR<<<<<<<<<<<<"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$6;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v2, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_UNKNOWN"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    goto/16 :goto_59

    .line 1647
    :cond_1d4
    const-string v0, "MoviePlaybackService"

    const-string v2, ">>>>>>>>PLAYBACK_UNKNOWNERROR<<<<<<<<<<<<"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$6;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v2, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_UNKNOWN"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    goto/16 :goto_59

    .line 1560
    :sswitch_data_1e6
    .sparse-switch
        -0x63 -> :sswitch_160
        -0x62 -> :sswitch_14e
        -0x40 -> :sswitch_1b9
        -0x3f -> :sswitch_1b9
        -0x3e -> :sswitch_1b9
        -0x3d -> :sswitch_1b9
        -0x3c -> :sswitch_1b9
        -0x3b -> :sswitch_1b9
        -0x3a -> :sswitch_1b9
        -0x31 -> :sswitch_172
        -0xa -> :sswitch_13c
        -0x4 -> :sswitch_12a
        0x1 -> :sswitch_1c2
        0x64 -> :sswitch_5b
        0xc8 -> :sswitch_95
        0x12c -> :sswitch_e3
        0x12d -> :sswitch_a6
    .end sparse-switch
.end method
