.class Lcom/samsung/app/video/editor/external/NativeInterface$EventHandler;
.super Landroid/os/Handler;
.source "NativeInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/app/video/editor/external/NativeInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private listener:Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;

.field private previewPlayer:Lcom/samsung/app/video/editor/external/NativeInterface;

.field final synthetic this$0:Lcom/samsung/app/video/editor/external/NativeInterface;


# direct methods
.method public constructor <init>(Lcom/samsung/app/video/editor/external/NativeInterface;Lcom/samsung/app/video/editor/external/NativeInterface;Landroid/os/Looper;)V
    .registers 5
    .parameter
    .parameter "vt"
    .parameter "looper"

    .prologue
    .line 598
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/NativeInterface$EventHandler;->this$0:Lcom/samsung/app/video/editor/external/NativeInterface;

    .line 595
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 596
    iput-object p2, p0, Lcom/samsung/app/video/editor/external/NativeInterface$EventHandler;->previewPlayer:Lcom/samsung/app/video/editor/external/NativeInterface;

    .line 597
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/NativeInterface$EventHandler;->previewPlayer:Lcom/samsung/app/video/editor/external/NativeInterface;

    iget-object v0, v0, Lcom/samsung/app/video/editor/external/NativeInterface;->mStackStateListener:Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/NativeInterface$EventHandler;->listener:Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 601
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/app/video/editor/external/NativeInterface;

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/NativeInterface$EventHandler;->previewPlayer:Lcom/samsung/app/video/editor/external/NativeInterface;

    .line 602
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/NativeInterface$EventHandler;->previewPlayer:Lcom/samsung/app/video/editor/external/NativeInterface;

    iget-object v0, v0, Lcom/samsung/app/video/editor/external/NativeInterface;->mStackStateListener:Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;

    iput-object v0, p0, Lcom/samsung/app/video/editor/external/NativeInterface$EventHandler;->listener:Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;

    .line 603
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/NativeInterface$EventHandler;->listener:Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;

    if-eqz v0, :cond_15

    .line 604
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_7e

    .line 669
    :cond_15
    :goto_15
    :pswitch_15
    return-void

    .line 607
    :pswitch_16
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/NativeInterface$EventHandler;->listener:Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;

    sget-object v1, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_CREATED:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    invoke-interface {v0, v1}, Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;->onStateChanged(Lcom/samsung/app/video/editor/external/NativeInterface$playerState;)V

    goto :goto_15

    .line 611
    :pswitch_1e
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/NativeInterface$EventHandler;->listener:Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;

    sget-object v1, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_PLAYING:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    invoke-interface {v0, v1}, Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;->onStateChanged(Lcom/samsung/app/video/editor/external/NativeInterface$playerState;)V

    goto :goto_15

    .line 615
    :pswitch_26
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/NativeInterface$EventHandler;->listener:Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;

    sget-object v1, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_PLAYBACK_COMPLETE:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    invoke-interface {v0, v1}, Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;->onStateChanged(Lcom/samsung/app/video/editor/external/NativeInterface$playerState;)V

    goto :goto_15

    .line 619
    :pswitch_2e
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/NativeInterface$EventHandler;->listener:Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;

    sget-object v1, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_STOPED:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    invoke-interface {v0, v1}, Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;->onStateChanged(Lcom/samsung/app/video/editor/external/NativeInterface$playerState;)V

    goto :goto_15

    .line 623
    :pswitch_36
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/NativeInterface$EventHandler;->listener:Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;

    sget-object v1, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_CLOSED:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    invoke-interface {v0, v1}, Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;->onStateChanged(Lcom/samsung/app/video/editor/external/NativeInterface$playerState;)V

    goto :goto_15

    .line 627
    :pswitch_3e
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/NativeInterface$EventHandler;->listener:Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;

    sget-object v1, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_PAUSED:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    invoke-interface {v0, v1}, Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;->onStateChanged(Lcom/samsung/app/video/editor/external/NativeInterface$playerState;)V

    goto :goto_15

    .line 631
    :pswitch_46
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/NativeInterface$EventHandler;->listener:Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;

    sget-object v1, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_RESUMED:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    invoke-interface {v0, v1}, Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;->onStateChanged(Lcom/samsung/app/video/editor/external/NativeInterface$playerState;)V

    goto :goto_15

    .line 635
    :pswitch_4e
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/NativeInterface$EventHandler;->listener:Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;

    sget-object v1, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_STOPED_ON_ERROR:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    invoke-interface {v0, v1}, Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;->onStateChanged(Lcom/samsung/app/video/editor/external/NativeInterface$playerState;)V

    goto :goto_15

    .line 641
    :pswitch_56
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/NativeInterface$EventHandler;->listener:Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;

    sget-object v1, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_VIDEO_DECODE_FAIL:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    invoke-interface {v0, v1}, Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;->onStateChanged(Lcom/samsung/app/video/editor/external/NativeInterface$playerState;)V

    goto :goto_15

    .line 646
    :pswitch_5e
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/NativeInterface$EventHandler;->listener:Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;

    sget-object v1, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_AUDIO_DECODE_FAIL:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    invoke-interface {v0, v1}, Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;->onStateChanged(Lcom/samsung/app/video/editor/external/NativeInterface$playerState;)V

    goto :goto_15

    .line 651
    :pswitch_66
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/NativeInterface$EventHandler;->listener:Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;

    sget-object v1, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_FILE_OPEN_FAIL:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    invoke-interface {v0, v1}, Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;->onStateChanged(Lcom/samsung/app/video/editor/external/NativeInterface$playerState;)V

    goto :goto_15

    .line 656
    :pswitch_6e
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/NativeInterface$EventHandler;->listener:Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;

    sget-object v1, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_DAM_CONFIGURE:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    invoke-interface {v0, v1}, Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;->onStateChanged(Lcom/samsung/app/video/editor/external/NativeInterface$playerState;)V

    goto :goto_15

    .line 661
    :pswitch_76
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/NativeInterface$EventHandler;->listener:Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;

    sget-object v1, Lcom/samsung/app/video/editor/external/NativeInterface$playerState;->VT_PREVIEW_PLAYER_DAM_UNREGISTER:Lcom/samsung/app/video/editor/external/NativeInterface$playerState;

    invoke-interface {v0, v1}, Lcom/samsung/app/video/editor/external/NativeInterface$previewPlayerStateListener;->onStateChanged(Lcom/samsung/app/video/editor/external/NativeInterface$playerState;)V

    goto :goto_15

    .line 604
    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_16
        :pswitch_1e
        :pswitch_26
        :pswitch_2e
        :pswitch_36
        :pswitch_3e
        :pswitch_46
        :pswitch_4e
        :pswitch_56
        :pswitch_5e
        :pswitch_66
        :pswitch_6e
        :pswitch_15
        :pswitch_76
    .end packed-switch
.end method
