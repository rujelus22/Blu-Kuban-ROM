.class Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;
.super Landroid/os/Handler;
.source "MoviePlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)V
    .registers 2
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const-wide/16 v6, 0x14

    const/4 v5, 0x3

    const/high16 v4, 0x3f80

    .line 209
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_11c

    .line 286
    :cond_a
    :goto_a
    :pswitch_a
    return-void

    .line 211
    :pswitch_b
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 212
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    iget v1, v1, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCurrentVolume:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_2a

    .line 213
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const/4 v2, 0x0

    iput v2, v1, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCurrentVolume:F

    .line 214
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$000(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_a

    .line 216
    :cond_2a
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    iget v2, v1, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCurrentVolume:F

    const v3, 0x3c23d70a

    add-float/2addr v2, v3

    iput v2, v1, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCurrentVolume:F

    .line 218
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    iget v1, v1, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCurrentVolume:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_53

    .line 219
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$000(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 223
    :goto_45
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$100(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    iget v2, v2, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCurrentVolume:F

    invoke-virtual {v1, v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->setVolume(F)V

    goto :goto_a

    .line 221
    :cond_53
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    iput v4, v1, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCurrentVolume:F

    goto :goto_45

    .line 229
    :pswitch_58
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v2, "videoplayer.service.MoviePlaybackService.PLAYBACK_COMPLETE"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    goto :goto_a

    .line 233
    :pswitch_60
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$300(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 234
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$300(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_a

    .line 238
    :pswitch_76
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->isPlayCheck()V
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$400(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)V

    goto :goto_a

    .line 242
    :pswitch_7c
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->isPauseCheck()V
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$500(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)V

    goto :goto_a

    .line 246
    :pswitch_82
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->isStopCheck()V
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$600(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)V

    goto :goto_a

    .line 249
    :pswitch_88
    const-string v1, "MoviePlaybackService"

    const-string v2, "Printing the name of current thread in player handler"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v2, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_DISMISS_ACQUIRING_POPUP"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    .line 253
    :try_start_96
    const-string v1, "MoviePlaybackService"

    const-string v2, "Hitting event listener::Before Calling setDataSourcePrepare "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$100(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    #getter for: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->drm_uri:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$700(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->setDataSourcePrepare(Ljava/lang/String;)V

    .line 255
    const-string v1, "MoviePlaybackService"

    const-string v2, "Hitting event listener::After Calling setDataSourcePrepare "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_b3} :catch_b5

    goto/16 :goto_a

    .line 256
    :catch_b5
    move-exception v0

    .line 257
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 258
    const-string v1, "MoviePlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException occured  1 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 264
    .end local v0           #e:Ljava/io/IOException;
    :pswitch_d7
    const-string v1, "MoviePlaybackService"

    const-string v2, "DrmLicenseExpired in handler"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v2, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_LICENSE_EXPIRED"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 268
    :pswitch_e7
    const-string v1, "MoviePlaybackService"

    const-string v2, "DrmLicenseNotFound in handler"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const-string v1, "MoviePlaybackService"

    const-string v2, "mVideoPlayerHandler - Before calling acquiring pop-up dismiss"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v2, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_DISMISS_ACQUIRING_POPUP"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v2, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_LICENSE_NOT_FOUND"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 278
    :pswitch_105
    const-string v1, "MoviePlaybackService"

    const-string v2, "ErrDrmRightsAcquisitionFailed in handler"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v2, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_DISMISS_ACQUIRING_POPUP"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    .line 280
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v2, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_LICENSE_ACQUISITION_FAILED"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 209
    :pswitch_data_11c
    .packed-switch 0x1
        :pswitch_58
        :pswitch_60
        :pswitch_b
        :pswitch_76
        :pswitch_7c
        :pswitch_82
        :pswitch_d7
        :pswitch_e7
        :pswitch_a
        :pswitch_105
        :pswitch_88
    .end packed-switch
.end method
