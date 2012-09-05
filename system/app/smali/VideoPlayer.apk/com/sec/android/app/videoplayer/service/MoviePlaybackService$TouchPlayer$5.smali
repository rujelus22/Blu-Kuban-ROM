.class Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$5;
.super Ljava/lang/Object;
.source "MoviePlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPlayReadyErrorListener;


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
    .line 1507
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$5;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayReadyError(Landroid/media/MediaPlayer;IILjava/lang/String;)Z
    .registers 8
    .parameter "mp"
    .parameter "what"
    .parameter "extra"
    .parameter "error"

    .prologue
    .line 1511
    sparse-switch p3, :sswitch_data_110

    .line 1551
    :goto_3
    const/4 v0, 0x0

    return v0

    .line 1513
    :sswitch_5
    if-eqz p4, :cond_3f

    .line 1514
    const-string v0, "MoviePlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>>MEDIA_PlayReady Service Specific ERROR = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<<<<<<<<<<<<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$5;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v1, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_DISMISS_ACQUIRING_POPUP"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    .line 1516
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$5;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v1, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_LICENSE_ACQUISITION_FAILED"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p4}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$1200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    const-string v0, "MoviePlaybackService"

    const-string v1, ">>>>>>>>MEDIA_PlayReady Service Specific ERROR 1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1519
    :cond_3f
    const-string v0, "MoviePlaybackService"

    const-string v1, ">>>>>>>>MEDIA_PlayReady Service Specific ERROR 1 is NULL URL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1523
    :sswitch_47
    if-eqz p4, :cond_81

    .line 1524
    const-string v0, "MoviePlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>>MEDIA_PlayReady Service Specific ERROR = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<<<<<<<<<<<<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$5;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v1, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_DISMISS_ACQUIRING_POPUP"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    .line 1526
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$5;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v1, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_DOMAIN_REQUIRED"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p4}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$1200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    const-string v0, "MoviePlaybackService"

    const-string v1, ">>>>>>>>MEDIA_PlayReady Service Specific ERROR 2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1529
    :cond_81
    const-string v0, "MoviePlaybackService"

    const-string v1, ">>>>>>>>MEDIA_PlayReady Service Specific ERROR 2 is NULL URL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1533
    :sswitch_8a
    if-eqz p4, :cond_fe

    .line 1534
    const-string v0, "MoviePlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>>MEDIA_PlayReady Service Specific ERROR = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<<<<<<<<<<<<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$5;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v1, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_DISMISS_ACQUIRING_POPUP"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    .line 1536
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$5;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v1, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_SERVER_NOT_A_MEMBER"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p4}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$1200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    const-string v0, "MoviePlaybackService"

    const-string v1, ">>>>>>>>MEDIA_PlayReady Service Specific ERROR 3"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    :goto_c3
    :sswitch_c3
    if-eqz p4, :cond_106

    .line 1543
    const-string v0, "MoviePlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>>MEDIA_PlayReady Service Specific ERROR = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<<<<<<<<<<<<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$5;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v1, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_DISMISS_ACQUIRING_POPUP"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    .line 1545
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer$5;->this$1:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v1, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_SERVER_DEVICE_LIMIT_REACHED"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p4}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$1200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;Ljava/lang/String;)V

    .line 1546
    const-string v0, "MoviePlaybackService"

    const-string v1, ">>>>>>>>MEDIA_PlayReady Service Specific ERROR 4"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1539
    :cond_fe
    const-string v0, "MoviePlaybackService"

    const-string v1, ">>>>>>>>MEDIA_PlayReady Service Specific ERROR 3 is NULL URL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c3

    .line 1548
    :cond_106
    const-string v0, "MoviePlaybackService"

    const-string v1, ">>>>>>>>MEDIA_PlayReady Service Specific ERROR 4 is NULL URL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1511
    nop

    :sswitch_data_110
    .sparse-switch
        -0x40 -> :sswitch_c3
        -0x3d -> :sswitch_8a
        -0x3c -> :sswitch_47
        -0x31 -> :sswitch_5
    .end sparse-switch
.end method
