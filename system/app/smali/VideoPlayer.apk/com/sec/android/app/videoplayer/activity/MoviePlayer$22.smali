.class Lcom/sec/android/app/videoplayer/activity/MoviePlayer$22;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/activity/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 3785
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$22;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .registers 8
    .parameter "motionEvent"

    .prologue
    .line 3787
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v1

    .line 3788
    .local v1, motion:I
    const-string v3, "MoviePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@@ motion : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3789
    packed-switch v1, :pswitch_data_4c

    .line 3805
    :cond_1f
    :goto_1f
    return-void

    .line 3791
    :pswitch_20
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v2

    .line 3792
    .local v2, videoSurfaceView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$22;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3793
    .local v0, audioManager:Landroid/media/AudioManager;
    sget-boolean v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPauseEnable:Z

    if-eqz v3, :cond_1f

    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 3798
    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->pause()V

    goto :goto_1f

    .line 3789
    :pswitch_data_4c
    .packed-switch 0xa
        :pswitch_20
    .end packed-switch
.end method
