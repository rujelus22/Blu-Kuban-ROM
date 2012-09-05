.class Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;
.super Ljava/lang/Object;
.source "MoviePlaybackService.java"

# interfaces
.implements Landroid/drm/DrmManagerClient$OnErrorListener;


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
    .line 451
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/drm/DrmManagerClient;Landroid/drm/DrmErrorEvent;)V
    .registers 7
    .parameter "client"
    .parameter "event"

    .prologue
    .line 453
    const-string v1, "MoviePlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDrmErrorListeneer event.getType(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/drm/DrmErrorEvent;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v2, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_DISMISS_ACQUIRING_POPUP"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    .line 455
    invoke-virtual {p2}, Landroid/drm/DrmErrorEvent;->getType()I

    move-result v1

    sparse-switch v1, :sswitch_data_6e

    .line 474
    const-string v1, "MoviePlaybackService"

    const-string v2, "mDrmErrorListeneer Unknown Error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v2, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_LICENSE_ACQUISITION_FAILED"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    .line 478
    :goto_38
    return-void

    .line 464
    :sswitch_39
    invoke-virtual {p2}, Landroid/drm/DrmErrorEvent;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, url:Ljava/lang/String;
    if-eqz v0, :cond_5f

    .line 466
    const-string v1, "MoviePlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDrmErrorListener. event.getMessage() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v2, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_LICENSE_ACQUISITION_FAILED"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$1200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    .line 469
    :cond_5f
    const-string v1, "MoviePlaybackService"

    const-string v2, "mDrmErrorListener. event.getMessage() : is null "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;->this$0:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    const-string v2, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_LICENSE_ACQUISITION_FAILED"

    #calls: Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->access$200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V

    goto :goto_38

    .line 455
    :sswitch_data_6e
    .sparse-switch
        0x2 -> :sswitch_39
        0x9 -> :sswitch_39
        0x7d1 -> :sswitch_39
        0x7d2 -> :sswitch_39
        0x7d3 -> :sswitch_39
        0x7d4 -> :sswitch_39
        0x7d5 -> :sswitch_39
        0x7d6 -> :sswitch_39
    .end sparse-switch
.end method
