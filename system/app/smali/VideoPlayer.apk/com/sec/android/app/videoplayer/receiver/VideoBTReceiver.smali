.class public Lcom/sec/android/app/videoplayer/receiver/VideoBTReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VideoBTReceiver.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "VideoBTReceiver"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 21
    .local v1, intentAction:Ljava/lang/String;
    const-string v4, "VideoBTReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive() - Action : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-nez v4, :cond_28

    .line 24
    const-string v4, "VideoBTReceiver"

    const-string v5, "onReceive() - MoviePlaybackService is null. DO NOT process command."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_27
    :goto_27
    return-void

    .line 28
    :cond_28
    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    if-nez v4, :cond_34

    .line 29
    const-string v4, "VideoBTReceiver"

    const-string v5, "onReceive() - VideoServiceUtil.mVideoCtrlUtil is null. DO NOT process command."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 33
    :cond_34
    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v3

    .line 35
    .local v3, videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    if-nez v3, :cond_44

    .line 36
    const-string v4, "VideoBTReceiver"

    const-string v5, "onReceive() - videoView is null. DO NOT process command."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 40
    :cond_44
    const-string v4, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 41
    const-string v4, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 42
    .local v0, event:Landroid/view/KeyEvent;
    if-eqz v0, :cond_27

    .line 46
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 48
    .local v2, keycode:I
    sparse-switch v2, :sswitch_data_9e

    goto :goto_27

    .line 53
    :sswitch_5e
    const-string v4, "VideoBTReceiver"

    const-string v5, "KEYCODE_MEDIA_PLAY_PAUSE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 50
    :sswitch_66
    const-string v4, "VideoBTReceiver"

    const-string v5, "KEYCODE_MEDIA_STOP"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 56
    :sswitch_6e
    const-string v4, "VideoBTReceiver"

    const-string v5, "KEYCODE_MEDIA_PLAY"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 59
    :sswitch_76
    const-string v4, "VideoBTReceiver"

    const-string v5, "KEYCODE_MEDIA_PAUSE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 62
    :sswitch_7e
    const-string v4, "VideoBTReceiver"

    const-string v5, "KEYCODE_MEDIA_NEXT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 65
    :sswitch_86
    const-string v4, "VideoBTReceiver"

    const-string v5, "KEYCODE_MEDIA_PREVIOUS"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 68
    :sswitch_8e
    const-string v4, "VideoBTReceiver"

    const-string v5, "KEYCODE_MEDIA_REWIND"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 71
    :sswitch_96
    const-string v4, "VideoBTReceiver"

    const-string v5, "KEYCODE_MEDIA_FAST_FORWARD"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 48
    :sswitch_data_9e
    .sparse-switch
        0x55 -> :sswitch_5e
        0x56 -> :sswitch_66
        0x57 -> :sswitch_7e
        0x58 -> :sswitch_86
        0x59 -> :sswitch_8e
        0x5a -> :sswitch_96
        0x7e -> :sswitch_6e
        0x7f -> :sswitch_76
    .end sparse-switch
.end method
