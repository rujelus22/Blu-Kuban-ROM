.class Lcom/samsung/dmp/layout/DMPAudioActivity$1;
.super Landroid/os/Handler;
.source "DMPAudioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dmp/layout/DMPAudioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter

    .prologue
    const/16 v6, 0x457

    const/4 v5, -0x1

    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 250
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_3f0

    .line 453
    :cond_b
    :goto_b
    :sswitch_b
    return-void

    .line 252
    :sswitch_c
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$000(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->isShowVolume:Z
    invoke-static {v0, v3}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$102(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)Z

    goto :goto_b

    .line 257
    :sswitch_1c
    const-string v0, "DLNA"

    const-string v1, "DMPAudioActivity.SETUPSEEKBAR"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlViewDMP;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$300(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/sec/android/app/dlna/view/MediaControlViewDMP;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mCurrentPosition:I
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$200(Lcom/samsung/dmp/layout/DMPAudioActivity;)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getDuration()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->initProgressBar(II)V

    goto :goto_b

    .line 264
    :sswitch_41
    const-string v0, "DLNA"

    const-string v1, "DMPAudioActivity.SETUPSEEKBAR_WITHOUT_RESET"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlViewDMP;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$300(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/sec/android/app/dlna/view/MediaControlViewDMP;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getDuration()I

    move-result v1

    invoke-virtual {v0, v3, v1, v3}, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->initProgressBar(IIZ)V

    goto :goto_b

    .line 270
    :sswitch_5e
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlViewDMP;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$300(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/sec/android/app/dlna/view/MediaControlViewDMP;

    move-result-object v0

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsStopped:Z
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$400(Lcom/samsung/dmp/layout/DMPAudioActivity;)Z

    move-result v0

    if-nez v0, :cond_7f

    .line 271
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlViewDMP;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$300(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/sec/android/app/dlna/view/MediaControlViewDMP;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mCurrentPosition:I
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$200(Lcom/samsung/dmp/layout/DMPAudioActivity;)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->updateProgressBar(I)V

    .line 272
    :cond_7f
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mOldPosition:I
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$500(Lcom/samsung/dmp/layout/DMPAudioActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mCurrentPosition:I
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$200(Lcom/samsung/dmp/layout/DMPAudioActivity;)I

    move-result v1

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mPaused:Z
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$600(Lcom/samsung/dmp/layout/DMPAudioActivity;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsStopped:Z
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$400(Lcom/samsung/dmp/layout/DMPAudioActivity;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 273
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mCurrentPosition:I
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$200(Lcom/samsung/dmp/layout/DMPAudioActivity;)I

    move-result v1

    #setter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mOldPosition:I
    invoke-static {v0, v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$502(Lcom/samsung/dmp/layout/DMPAudioActivity;I)I

    .line 274
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mBufferingStatus:I
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$800(Lcom/samsung/dmp/layout/DMPAudioActivity;)I

    move-result v1

    #setter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mOldBufferingStatus:I
    invoke-static {v0, v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$702(Lcom/samsung/dmp/layout/DMPAudioActivity;I)I

    .line 275
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$900(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x474

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 276
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$900(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x474

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->POSITON_TIMEOUT_TIME:I
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1000(Lcom/samsung/dmp/layout/DMPAudioActivity;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_b

    .line 280
    :sswitch_d2
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1100(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/VideoSurfaceView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 281
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlViewDMP;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$300(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/sec/android/app/dlna/view/MediaControlViewDMP;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlViewDMP;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$300(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/sec/android/app/dlna/view/MediaControlViewDMP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->getSeekBar()Lcom/sec/android/touchwiz/widget/TwSeekBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->setStartTime(I)V

    goto/16 :goto_b

    .line 285
    :sswitch_f7
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mBufferingView:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1200(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_b

    .line 288
    :sswitch_104
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mBufferingView:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1200(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_b

    .line 294
    :sswitch_10f
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1100(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v0

    if-eqz v0, :cond_124

    .line 295
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/dmp/layout/DMPAudioActivity$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPAudioActivity$1$1;-><init>(Lcom/samsung/dmp/layout/DMPAudioActivity$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 302
    :cond_124
    :try_start_124
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    const/16 v1, 0x472

    invoke-virtual {v0, v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->showDialog(I)V
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_12b} :catch_12d

    goto/16 :goto_b

    .line 303
    :catch_12d
    move-exception v0

    .line 304
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_b

    .line 308
    :sswitch_133
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #calls: Lcom/samsung/dmp/layout/DMPAudioActivity;->toggleButtonState(Z)V
    invoke-static {v0, v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1300(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)V

    goto/16 :goto_b

    .line 311
    :sswitch_13a
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #calls: Lcom/samsung/dmp/layout/DMPAudioActivity;->toggleButtonState(Z)V
    invoke-static {v0, v3}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1300(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)V

    goto/16 :goto_b

    .line 317
    :sswitch_141
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mBufferingStatus:I
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$800(Lcom/samsung/dmp/layout/DMPAudioActivity;)I

    move-result v0

    const/16 v1, 0x61

    if-ge v0, v1, :cond_b

    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1100(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/VideoSurfaceView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->showThePopup:Z
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1400(Lcom/samsung/dmp/layout/DMPAudioActivity;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 318
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$900(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 319
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$900(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1b58

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 320
    const-string v0, "DLNA"

    const-string v1, "this is CHECK_BUFFERING ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsStopped:Z
    invoke-static {v0, v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$402(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)Z

    goto/16 :goto_b

    .line 325
    :sswitch_181
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mForceStopped:Z
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1500(Lcom/samsung/dmp/layout/DMPAudioActivity;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 326
    const-string v0, "DLNA"

    const-string v1, "Media complete playing......."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlViewDMP;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$300(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/sec/android/app/dlna/view/MediaControlViewDMP;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1100(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 328
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1100(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/VideoSurfaceView;->stop()V

    .line 329
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mCurrentPosition:I
    invoke-static {v0, v3}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$202(Lcom/samsung/dmp/layout/DMPAudioActivity;I)I

    .line 330
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlViewDMP;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$300(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/sec/android/app/dlna/view/MediaControlViewDMP;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1100(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/dmp/layout/VideoSurfaceView;->getDuration()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->initProgressBar(II)V

    .line 331
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsStopped:Z
    invoke-static {v0, v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$402(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)Z

    .line 332
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->handleNext()V

    goto/16 :goto_b

    .line 337
    :sswitch_1cf
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/dmp/layout/DMPAudioActivity$1$2;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPAudioActivity$1$2;-><init>(Lcom/samsung/dmp/layout/DMPAudioActivity$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 348
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->play()V

    goto/16 :goto_b

    .line 351
    :sswitch_1e3
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mNoContentImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1600(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 352
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mNoContentImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1600(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1700(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_b

    .line 355
    :sswitch_1fc
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mNoContentImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1600(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 356
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mNoContentImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1600(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020097

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_b

    .line 360
    :sswitch_212
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mNoContentImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1600(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 361
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mNoContentImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1600(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020008

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_b

    .line 366
    :sswitch_228
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->play()V

    goto/16 :goto_b

    .line 369
    :sswitch_22f
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mForceStopped:Z
    invoke-static {v0, v3}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1502(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)Z

    .line 370
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->currItem:Lcom/sec/android/app/dlna/model/PlaylistItem;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1800(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    if-eqz v0, :cond_263

    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->currItem:Lcom/sec/android/app/dlna/model/PlaylistItem;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1800(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/model/PlaylistItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_263

    .line 373
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1100(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mCurrentPosition:I
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$200(Lcom/samsung/dmp/layout/DMPAudioActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setCurrentPosition(I)V

    .line 374
    :cond_263
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1100(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 375
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mStopClicked:Z
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1900(Lcom/samsung/dmp/layout/DMPAudioActivity;)Z

    move-result v0

    if-nez v0, :cond_2aa

    .line 376
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsStopped:Z
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$400(Lcom/samsung/dmp/layout/DMPAudioActivity;)Z

    move-result v0

    if-eqz v0, :cond_289

    .line 378
    :try_start_27b
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1100(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setMediaOptions()V
    :try_end_284
    .catch Ljava/io/IOException; {:try_start_27b .. :try_end_284} :catch_2a5

    .line 382
    :goto_284
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsStopped:Z
    invoke-static {v0, v3}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$402(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)Z

    .line 384
    :cond_289
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1100(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->selectedItemUri:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$2000(Lcom/samsung/dmp/layout/DMPAudioActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->type:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$2100(Lcom/samsung/dmp/layout/DMPAudioActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->play()V

    goto/16 :goto_b

    .line 379
    :catch_2a5
    move-exception v0

    .line 380
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_284

    .line 388
    :cond_2aa
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #calls: Lcom/samsung/dmp/layout/DMPAudioActivity;->toggleButtonState(Z)V
    invoke-static {v0, v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1300(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)V

    goto/16 :goto_b

    .line 393
    :sswitch_2b1
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mPaused:Z
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$600(Lcom/samsung/dmp/layout/DMPAudioActivity;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsStopped:Z
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$400(Lcom/samsung/dmp/layout/DMPAudioActivity;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mOldBufferingStatus:I
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$700(Lcom/samsung/dmp/layout/DMPAudioActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mBufferingStatus:I
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$800(Lcom/samsung/dmp/layout/DMPAudioActivity;)I

    move-result v1

    if-eq v0, v1, :cond_2d7

    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mOldBufferingStatus:I
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$700(Lcom/samsung/dmp/layout/DMPAudioActivity;)I

    move-result v0

    if-nez v0, :cond_b

    :cond_2d7
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->showThePopup:Z
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1400(Lcom/samsung/dmp/layout/DMPAudioActivity;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 397
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$900(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 398
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$900(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1b58

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 399
    const-string v0, "DLNA"

    const-string v1, "this is POSITION_TIMEOUT ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsStopped:Z
    invoke-static {v0, v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$402(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)Z

    goto/16 :goto_b

    .line 405
    :sswitch_301
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->toRestart:Z
    invoke-static {v0, v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$2202(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)Z

    goto/16 :goto_b

    .line 408
    :sswitch_308
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_3ab

    .line 409
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mBackKeyTimer:I
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$2300(Lcom/samsung/dmp/layout/DMPAudioActivity;)I

    move-result v0

    if-gez v0, :cond_33e

    .line 410
    const-string v0, "DLNA"

    const-string v1, "mHandler - init and start timer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    const/16 v1, 0x640

    #setter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mBackKeyTimer:I
    invoke-static {v0, v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$2302(Lcom/samsung/dmp/layout/DMPAudioActivity;I)I

    .line 413
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mBackKeyToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$2400(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_333

    .line 415
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mBackKeyToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$2400(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 417
    :cond_333
    invoke-virtual {p0, v4, v3, v3}, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_b

    .line 419
    :cond_33e
    const-string v0, "DLNA"

    const-string v1, "mHandler - exit player by H/W back key"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mBackKeyTimer:I
    invoke-static {v0, v5}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$2302(Lcom/samsung/dmp/layout/DMPAudioActivity;I)I

    .line 422
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mBackKeyToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$2400(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_361

    .line 423
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mBackKeyToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$2400(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 424
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    const/4 v1, 0x0

    #setter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mBackKeyToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$2402(Lcom/samsung/dmp/layout/DMPAudioActivity;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 426
    :cond_361
    invoke-virtual {p0, v4}, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->removeMessages(I)V

    .line 428
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsStopped:Z
    invoke-static {v0, v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$402(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)Z

    .line 429
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->handleStop()V

    .line 430
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->resetPlayer()V

    .line 431
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPlaylist()Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v0

    .line 433
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->clear()V

    .line 434
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    if-nez v0, :cond_3a4

    .line 435
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    const-class v3, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_b

    .line 439
    :cond_3a4
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->finish()V

    goto/16 :goto_b

    .line 442
    :cond_3ab
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHandler - update timer for expiring. current timer ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mBackKeyTimer:I
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$2300(Lcom/samsung/dmp/layout/DMPAudioActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mBackKeyTimer:I
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$2300(Lcom/samsung/dmp/layout/DMPAudioActivity;)I

    move-result v0

    if-lez v0, :cond_3e9

    .line 445
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mBackKeyTimer:I
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$2300(Lcom/samsung/dmp/layout/DMPAudioActivity;)I

    move-result v1

    add-int/lit16 v1, v1, -0xc8

    #setter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mBackKeyTimer:I
    invoke-static {v0, v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$2302(Lcom/samsung/dmp/layout/DMPAudioActivity;I)I

    .line 446
    invoke-virtual {p0, v4, v3, v3}, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_b

    .line 448
    :cond_3e9
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mBackKeyTimer:I
    invoke-static {v0, v5}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$2302(Lcom/samsung/dmp/layout/DMPAudioActivity;I)I

    goto/16 :goto_b

    .line 250
    :sswitch_data_3f0
    .sparse-switch
        0x3 -> :sswitch_308
        0x3ed -> :sswitch_1c
        0x3ee -> :sswitch_5e
        0x456 -> :sswitch_d2
        0x457 -> :sswitch_10f
        0x460 -> :sswitch_41
        0x46d -> :sswitch_181
        0x471 -> :sswitch_228
        0x473 -> :sswitch_22f
        0x474 -> :sswitch_2b1
        0x475 -> :sswitch_301
        0x521 -> :sswitch_1cf
        0x578 -> :sswitch_c
        0x76c -> :sswitch_13a
        0x76d -> :sswitch_133
        0x76e -> :sswitch_b
        0x76f -> :sswitch_141
        0x7d5 -> :sswitch_1e3
        0x7d6 -> :sswitch_1fc
        0x7d7 -> :sswitch_212
        0x1b58 -> :sswitch_f7
        0x1f40 -> :sswitch_104
        0x2328 -> :sswitch_b
    .end sparse-switch
.end method
