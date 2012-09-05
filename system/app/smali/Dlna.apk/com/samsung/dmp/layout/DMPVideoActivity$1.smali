.class Lcom/samsung/dmp/layout/DMPVideoActivity$1;
.super Landroid/os/Handler;
.source "DMPVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dmp/layout/DMPVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter

    .prologue
    const/16 v7, 0x76f

    const/16 v6, 0x3ef

    const/16 v5, 0x473

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 360
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_650

    .line 653
    :cond_d
    :goto_d
    :sswitch_d
    return-void

    .line 362
    :sswitch_e
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #calls: Lcom/samsung/dmp/layout/DMPVideoActivity;->initializeUIForLandscape()V
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$000(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    .line 363
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #calls: Lcom/samsung/dmp/layout/DMPVideoActivity;->constructUI()V
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$100(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    .line 364
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mViewInflated:Z
    invoke-static {v1, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$202(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z

    goto :goto_d

    .line 367
    :sswitch_1e
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mMediaDuration:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    invoke-virtual {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->getCurrentMediaDuration()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    #calls: Lcom/samsung/dmp/layout/DMPVideoActivity;->getTimeString(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$300(Lcom/samsung/dmp/layout/DMPVideoActivity;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 371
    :sswitch_36
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 372
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->currentPosition:I
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$600(Lcom/samsung/dmp/layout/DMPVideoActivity;)I

    move-result v0

    if-lez v0, :cond_d

    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->currentPosition:I
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$600(Lcom/samsung/dmp/layout/DMPVideoActivity;)I

    move-result v0

    const v1, 0x5265c00

    if-ge v0, v1, :cond_d

    .line 373
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mCurrentDuration:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$700(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->currentPosition:I
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$600(Lcom/samsung/dmp/layout/DMPVideoActivity;)I

    move-result v2

    #calls: Lcom/samsung/dmp/layout/DMPVideoActivity;->getTimeString(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$300(Lcom/samsung/dmp/layout/DMPVideoActivity;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 378
    :sswitch_67
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$800(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBar;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    invoke-virtual {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->getCurrentMediaDuration()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setMax(I)V

    .line 379
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$800(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    goto :goto_d

    .line 384
    :sswitch_82
    :try_start_82
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 385
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mOldPosition:I
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$900(Lcom/samsung/dmp/layout/DMPVideoActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->currentPosition:I
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$600(Lcom/samsung/dmp/layout/DMPVideoActivity;)I

    move-result v1

    if-eq v0, v1, :cond_f3

    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mPaused:Z
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1000(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z

    move-result v0

    if-nez v0, :cond_f3

    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsStopped:Z
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1100(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z

    move-result v0

    if-nez v0, :cond_f3

    .line 386
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->currentPosition:I
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$600(Lcom/samsung/dmp/layout/DMPVideoActivity;)I

    move-result v1

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mOldPosition:I
    invoke-static {v0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$902(Lcom/samsung/dmp/layout/DMPVideoActivity;I)I

    .line 387
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mBufferingStatus:I
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1300(Lcom/samsung/dmp/layout/DMPVideoActivity;)I

    move-result v1

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mOldBufferingStatus:I
    invoke-static {v0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1202(Lcom/samsung/dmp/layout/DMPVideoActivity;I)I

    .line 388
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x473

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 389
    const-string v0, ".avi"

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mExtension:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e5

    const-string v0, ".AVI"

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mExtension:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_112

    .line 390
    :cond_e5
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x473

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 397
    :cond_f3
    :goto_f3
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->currentPosition:I
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$600(Lcom/samsung/dmp/layout/DMPVideoActivity;)I

    move-result v0

    if-lez v0, :cond_d

    .line 398
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$800(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->currentPosition:I
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$600(Lcom/samsung/dmp/layout/DMPVideoActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_10a} :catch_10c

    goto/16 :goto_d

    .line 400
    :catch_10c
    move-exception v0

    .line 401
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_d

    .line 393
    :cond_112
    :try_start_112
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x473

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_11f} :catch_10c

    goto :goto_f3

    .line 406
    :sswitch_120
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/VideoSurfaceView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 407
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mCurrentDuration:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$700(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$800(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v2

    #calls: Lcom/samsung/dmp/layout/DMPVideoActivity;->getTimeString(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$300(Lcom/samsung/dmp/layout/DMPVideoActivity;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 412
    :sswitch_147
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mPaused:Z
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1000(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z

    move-result v2

    if-eqz v2, :cond_1cc

    .line 413
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/dmp/layout/VideoSurfaceView;->start()V

    .line 415
    const-string v2, ".avi"

    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mExtension:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_174

    const-string v2, ".AVI"

    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mExtension:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c0

    .line 416
    :cond_174
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v2

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 420
    :goto_180
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mPaused:Z
    invoke-static {v2, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1002(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z

    .line 421
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 422
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 460
    :cond_199
    :goto_199
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->videoResize:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1800(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mPaused:Z
    invoke-static {v3}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1000(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z

    move-result v3

    if-nez v3, :cond_2b7

    :goto_1a7
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 462
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mPaused:Z
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1000(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z

    move-result v0

    if-eqz v0, :cond_2ba

    .line 463
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mPause:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1900(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020103

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_d

    .line 418
    :cond_1c0
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x3a98

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_180

    .line 424
    :cond_1cc
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v2

    if-eqz v2, :cond_264

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/dmp/layout/VideoSurfaceView;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_264

    .line 425
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsStopped:Z
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1100(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z

    move-result v2

    if-eqz v2, :cond_1f6

    .line 427
    :try_start_1e8
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setMediaOptions()V
    :try_end_1f1
    .catch Ljava/io/IOException; {:try_start_1e8 .. :try_end_1f1} :catch_253

    .line 431
    :goto_1f1
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsStopped:Z
    invoke-static {v2, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1102(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z

    .line 433
    :cond_1f6
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->selectedItemUri:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1600(Lcom/samsung/dmp/layout/DMPVideoActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->type:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1700(Lcom/samsung/dmp/layout/DMPVideoActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mPaused:Z
    invoke-static {v2, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1002(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z

    .line 435
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    invoke-virtual {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->play()V

    .line 437
    const-string v2, ".avi"

    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mExtension:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_231

    const-string v2, ".AVI"

    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mExtension:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_258

    .line 438
    :cond_231
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v2

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 442
    :goto_23d
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 443
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_199

    .line 428
    :catch_253
    move-exception v2

    .line 429
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1f1

    .line 440
    :cond_258
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x3a98

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_23d

    .line 444
    :cond_264
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v2

    if-eqz v2, :cond_199

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/dmp/layout/VideoSurfaceView;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_280

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsStopped:Z
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1100(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z

    move-result v2

    if-eqz v2, :cond_199

    .line 445
    :cond_280
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsStopped:Z
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1100(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z

    move-result v2

    if-nez v2, :cond_199

    .line 446
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 447
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 448
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/samsung/dmp/layout/DMPVideoActivity$1$1;

    invoke-direct {v3, p0}, Lcom/samsung/dmp/layout/DMPVideoActivity$1$1;-><init>(Lcom/samsung/dmp/layout/DMPVideoActivity$1;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 454
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mPaused:Z
    invoke-static {v2, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1002(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z

    .line 455
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_199

    :cond_2b7
    move v0, v1

    .line 460
    goto/16 :goto_1a7

    .line 465
    :cond_2ba
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mPause:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1900(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0200fe

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_d

    .line 470
    :sswitch_2c8
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #calls: Lcom/samsung/dmp/layout/DMPVideoActivity;->playAnimation()V
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2000(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    .line 471
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #calls: Lcom/samsung/dmp/layout/DMPVideoActivity;->toggleButtonState(Z)V
    invoke-static {v0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2100(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)V

    .line 472
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #calls: Lcom/samsung/dmp/layout/DMPVideoActivity;->toggleSeekBarState(Z)V
    invoke-static {v0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2200(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)V

    .line 473
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mPlayListButtonView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2300(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_d

    .line 476
    :sswitch_2e4
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setVisibility(I)V

    .line 477
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->isShowVolume:Z
    invoke-static {v0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2502(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z

    goto/16 :goto_d

    .line 480
    :sswitch_2f5
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mBufferingView:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2600(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_d

    .line 483
    :sswitch_302
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mBufferingView:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2600(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_d

    .line 487
    :sswitch_30d
    :try_start_30d
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    const/16 v1, 0x472

    invoke-virtual {v0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->showDialog(I)V
    :try_end_314
    .catch Ljava/lang/Exception; {:try_start_30d .. :try_end_314} :catch_316

    goto/16 :goto_d

    .line 488
    :catch_316
    move-exception v0

    .line 489
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_d

    .line 493
    :sswitch_31c
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mForceStopped:Z
    invoke-static {v2, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2702(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z

    .line 494
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mPaused:Z
    invoke-static {v2, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1002(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z

    .line 496
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->currItem:Lcom/sec/android/app/dlna/model/PlaylistItem;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2800(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    if-eqz v2, :cond_355

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->currItem:Lcom/sec/android/app/dlna/model/PlaylistItem;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2800(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dlna/model/PlaylistItem;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_355

    .line 499
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mCurrentPosition:I
    invoke-static {v3}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2900(Lcom/samsung/dmp/layout/DMPVideoActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setCurrentPosition(I)V

    .line 502
    :cond_355
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 503
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mStopClicked:Z
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$3000(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z

    move-result v2

    if-nez v2, :cond_39c

    .line 504
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsStopped:Z
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1100(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z

    move-result v0

    if-eqz v0, :cond_37b

    .line 506
    :try_start_36d
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setMediaOptions()V
    :try_end_376
    .catch Ljava/io/IOException; {:try_start_36d .. :try_end_376} :catch_397

    .line 510
    :goto_376
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsStopped:Z
    invoke-static {v0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1102(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z

    .line 512
    :cond_37b
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->selectedItemUri:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1600(Lcom/samsung/dmp/layout/DMPVideoActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->type:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1700(Lcom/samsung/dmp/layout/DMPVideoActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->play()V

    goto/16 :goto_d

    .line 507
    :catch_397
    move-exception v0

    .line 508
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_376

    .line 515
    :cond_39c
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #calls: Lcom/samsung/dmp/layout/DMPVideoActivity;->toggleButtonState(Z)V
    invoke-static {v1, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2100(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)V

    goto/16 :goto_d

    .line 520
    :sswitch_3a3
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #calls: Lcom/samsung/dmp/layout/DMPVideoActivity;->toggleButtonState(Z)V
    invoke-static {v1, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2100(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)V

    goto/16 :goto_d

    .line 523
    :sswitch_3aa
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #calls: Lcom/samsung/dmp/layout/DMPVideoActivity;->toggleButtonState(Z)V
    invoke-static {v0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2100(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)V

    goto/16 :goto_d

    .line 526
    :sswitch_3b1
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #calls: Lcom/samsung/dmp/layout/DMPVideoActivity;->toggleSeekBarState(Z)V
    invoke-static {v1, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2200(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)V

    goto/16 :goto_d

    .line 529
    :sswitch_3b8
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #calls: Lcom/samsung/dmp/layout/DMPVideoActivity;->toggleSeekBarState(Z)V
    invoke-static {v0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2200(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)V

    goto/16 :goto_d

    .line 535
    :sswitch_3bf
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$800(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/dmp/layout/VideoSurfaceView;->seekTo(I)V

    .line 536
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 537
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mBufferingStatus:I
    invoke-static {v0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1302(Lcom/samsung/dmp/layout/DMPVideoActivity;I)I

    .line 538
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x76d

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 540
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->isSuspended:Z
    invoke-static {v0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$3102(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z

    .line 541
    const-string v0, ".avi"

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mExtension:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40e

    const-string v0, ".AVI"

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mExtension:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_430

    .line 542
    :cond_40e
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v7, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 546
    :goto_41a
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mutex:Ljava/lang/Object;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$3200(Lcom/samsung/dmp/layout/DMPVideoActivity;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 547
    :try_start_421
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mutex:Ljava/lang/Object;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$3200(Lcom/samsung/dmp/layout/DMPVideoActivity;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 548
    monitor-exit v1

    goto/16 :goto_d

    :catchall_42d
    move-exception v0

    monitor-exit v1
    :try_end_42f
    .catchall {:try_start_421 .. :try_end_42f} :catchall_42d

    throw v0

    .line 544
    :cond_430
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v7, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_41a

    .line 553
    :sswitch_43d
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mBufferingStatus:I
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1300(Lcom/samsung/dmp/layout/DMPVideoActivity;)I

    move-result v1

    const/16 v2, 0x61

    if-ge v1, v2, :cond_d

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->showThePopup:Z
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$3300(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 554
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/dmp/layout/VideoSurfaceView;->stop()V

    .line 555
    const-string v1, "DLNA"

    const-string v2, " this popup is called CHECK_BUFFERING ERROR"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x457

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 557
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1b58

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 558
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsStopped:Z
    invoke-static {v1, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1102(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z

    goto/16 :goto_d

    .line 562
    :sswitch_47c
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mForceStopped:Z
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2700(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 563
    const-string v2, "DLNA"

    const-string v3, "Media complete playing......."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$800(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 565
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mCurrentDuration:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$700(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "00:00"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/dmp/layout/VideoSurfaceView;->stop()V

    .line 567
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsStopped:Z
    invoke-static {v1, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1102(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z

    .line 568
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->handleNext()V

    goto/16 :goto_d

    .line 572
    :sswitch_4b4
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->play()V

    goto/16 :goto_d

    .line 575
    :sswitch_4bb
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mPaused:Z
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1000(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsStopped:Z
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1100(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mOldBufferingStatus:I
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1200(Lcom/samsung/dmp/layout/DMPVideoActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mBufferingStatus:I
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1300(Lcom/samsung/dmp/layout/DMPVideoActivity;)I

    move-result v1

    if-eq v0, v1, :cond_4e1

    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mOldBufferingStatus:I
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1200(Lcom/samsung/dmp/layout/DMPVideoActivity;)I

    move-result v0

    if-nez v0, :cond_d

    :cond_4e1
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->showThePopup:Z
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$3300(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 579
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x457

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 580
    const-string v0, "DLNA"

    const-string v1, "this is POSITION_TIMEOUT ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1b58

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_d

    .line 587
    :sswitch_508
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #calls: Lcom/samsung/dmp/layout/DMPVideoActivity;->startSubtitle()V
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$3400(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    goto/16 :goto_d

    .line 590
    :sswitch_50f
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #calls: Lcom/samsung/dmp/layout/DMPVideoActivity;->stopSubtitle()V
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$3500(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    goto/16 :goto_d

    .line 593
    :sswitch_516
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    iget-object v1, v1, Lcom/samsung/dmp/layout/DMPVideoActivity;->HighBitrateWarningToast:Landroid/widget/Toast;

    if-nez v1, :cond_53c

    .line 594
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    invoke-virtual {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    const v4, 0x7f09002c

    invoke-virtual {v3, v4}, Lcom/samsung/dmp/layout/DMPVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/dmp/layout/DMPVideoActivity;->HighBitrateWarningToast:Landroid/widget/Toast;

    .line 598
    :goto_533
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPVideoActivity;->HighBitrateWarningToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_d

    .line 597
    :cond_53c
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    iget-object v0, v0, Lcom/samsung/dmp/layout/DMPVideoActivity;->HighBitrateWarningToast:Landroid/widget/Toast;

    const v1, 0x7f09002c

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_533

    .line 601
    :sswitch_547
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v0, :cond_608

    .line 602
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mBackKeyTimer:I
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$3600(Lcom/samsung/dmp/layout/DMPVideoActivity;)I

    move-result v2

    if-gez v2, :cond_57e

    .line 603
    const-string v0, "DLNA"

    const-string v2, "mHandler - init and start timer"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    const/16 v2, 0x640

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mBackKeyTimer:I
    invoke-static {v0, v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$3602(Lcom/samsung/dmp/layout/DMPVideoActivity;I)I

    .line 606
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mBackKeyToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$3700(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_572

    .line 608
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mBackKeyToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$3700(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 610
    :cond_572
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_d

    .line 612
    :cond_57e
    const-string v1, "DLNA"

    const-string v2, "mHandler - exit player by H/W back key"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    const/4 v2, -0x1

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mBackKeyTimer:I
    invoke-static {v1, v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$3602(Lcom/samsung/dmp/layout/DMPVideoActivity;I)I

    .line 615
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mBackKeyToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$3700(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/widget/Toast;

    move-result-object v1

    if-eqz v1, :cond_5a2

    .line 616
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mBackKeyToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$3700(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 617
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    const/4 v2, 0x0

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mBackKeyToast:Landroid/widget/Toast;
    invoke-static {v1, v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$3702(Lcom/samsung/dmp/layout/DMPVideoActivity;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 619
    :cond_5a2
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->removeMessages(I)V

    .line 621
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #calls: Lcom/samsung/dmp/layout/DMPVideoActivity;->removeSubtitle()V
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$3800(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    .line 622
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsStopped:Z
    invoke-static {v1, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1102(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z

    .line 624
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ee

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 625
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 626
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->resetPlayer()V

    .line 627
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPlaylist()Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v0

    .line 629
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->clear()V

    .line 631
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #calls: Lcom/samsung/dmp/layout/DMPVideoActivity;->releaseMediaplayer()V
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$3900(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    .line 632
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    if-nez v0, :cond_601

    .line 633
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    const-class v3, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_d

    .line 637
    :cond_601
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->finish()V

    goto/16 :goto_d

    .line 641
    :cond_608
    const-string v0, "DLNA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHandler - update timer for expiring. current timer ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mBackKeyTimer:I
    invoke-static {v3}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$3600(Lcom/samsung/dmp/layout/DMPVideoActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mBackKeyTimer:I
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$3600(Lcom/samsung/dmp/layout/DMPVideoActivity;)I

    move-result v0

    if-lez v0, :cond_647

    .line 644
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mBackKeyTimer:I
    invoke-static {v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$3600(Lcom/samsung/dmp/layout/DMPVideoActivity;)I

    move-result v2

    add-int/lit16 v2, v2, -0xc8

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mBackKeyTimer:I
    invoke-static {v0, v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$3602(Lcom/samsung/dmp/layout/DMPVideoActivity;I)I

    .line 645
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v1, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_d

    .line 647
    :cond_647
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    const/4 v1, -0x1

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mBackKeyTimer:I
    invoke-static {v0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$3602(Lcom/samsung/dmp/layout/DMPVideoActivity;I)I

    goto/16 :goto_d

    .line 360
    nop

    :sswitch_data_650
    .sparse-switch
        0x3 -> :sswitch_547
        0x22b -> :sswitch_e
        0x3e9 -> :sswitch_1e
        0x3ea -> :sswitch_36
        0x3eb -> :sswitch_147
        0x3ed -> :sswitch_67
        0x3ee -> :sswitch_82
        0x3ef -> :sswitch_2c8
        0x456 -> :sswitch_120
        0x457 -> :sswitch_30d
        0x458 -> :sswitch_516
        0x462 -> :sswitch_3bf
        0x46d -> :sswitch_47c
        0x471 -> :sswitch_4b4
        0x473 -> :sswitch_4bb
        0x578 -> :sswitch_2e4
        0x6a4 -> :sswitch_31c
        0x76c -> :sswitch_3aa
        0x76d -> :sswitch_3a3
        0x76e -> :sswitch_d
        0x76f -> :sswitch_43d
        0x771 -> :sswitch_3b1
        0x772 -> :sswitch_3b8
        0x1b58 -> :sswitch_2f5
        0x1f40 -> :sswitch_302
        0x2710 -> :sswitch_508
        0x2711 -> :sswitch_50f
    .end sparse-switch
.end method
