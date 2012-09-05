.class Lcom/sec/android/app/videoplayer/view/VideoSurface$2;
.super Landroid/os/Handler;
.source "VideoSurface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/view/VideoSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/VideoSurface;)V
    .registers 2
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 369
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_26

    .line 390
    :cond_5
    :goto_5
    :pswitch_5
    return-void

    .line 371
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->hideVolumeBar()V

    goto :goto_5

    .line 375
    :pswitch_c
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 376
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->hideControls()V

    goto :goto_5

    .line 380
    :pswitch_1a
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->hideControls()V

    goto :goto_5

    .line 384
    :pswitch_20
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSurface$2;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->hideTitleControls()V

    goto :goto_5

    .line 369
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_c
        :pswitch_20
        :pswitch_6
        :pswitch_5
        :pswitch_1a
    .end packed-switch
.end method
