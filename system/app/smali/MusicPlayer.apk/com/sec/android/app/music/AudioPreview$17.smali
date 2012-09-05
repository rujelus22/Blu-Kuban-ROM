.class Lcom/sec/android/app/music/AudioPreview$17;
.super Landroid/os/Handler;
.source "AudioPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/AudioPreview;)V
    .registers 2
    .parameter

    .prologue
    .line 2537
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private skipBackword()V
    .registers 5

    .prologue
    const/4 v3, 0x4

    .line 2785
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2786
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-boolean v1, v1, Lcom/sec/android/app/music/AudioPreview;->mIsShownAdditionalBar:Z

    if-nez v1, :cond_16

    .line 2787
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/music/AudioPreview;->showAdditionalPanel(Z)V

    .line 2790
    :cond_16
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget v1, v1, Lcom/sec/android/app/music/AudioPreview;->skipCount:I

    if-ge v3, v1, :cond_20

    .line 2791
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iput v3, v1, Lcom/sec/android/app/music/AudioPreview;->skipCount:I

    .line 2802
    :cond_20
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v1}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->getCurrentPosition()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v2, v2, Lcom/sec/android/app/music/AudioPreview;->SKIP_TIME:[I

    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget v3, v3, Lcom/sec/android/app/music/AudioPreview;->skipCount:I

    aget v2, v2, v3

    sub-int v0, v1, v2

    .line 2805
    .local v0, position:I
    if-gtz v0, :cond_37

    .line 2806
    const/4 v0, 0x0

    .line 2808
    :cond_37
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/music/AudioPreview;->setPosition(I)Z

    .line 2809
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/music/AudioPreview;->refreshPlayStatus(I)V

    .line 2812
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget v2, v1, Lcom/sec/android/app/music/AudioPreview;->skipCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/sec/android/app/music/AudioPreview;->skipCount:I

    .line 2813
    return-void
.end method

.method private skipForward()V
    .registers 5

    .prologue
    const/4 v3, 0x4

    .line 2819
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2820
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-boolean v1, v1, Lcom/sec/android/app/music/AudioPreview;->mIsShownAdditionalBar:Z

    if-nez v1, :cond_16

    .line 2822
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/music/AudioPreview;->showAdditionalPanel(Z)V

    .line 2828
    :cond_16
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget v1, v1, Lcom/sec/android/app/music/AudioPreview;->skipCount:I

    if-ge v3, v1, :cond_20

    .line 2829
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iput v3, v1, Lcom/sec/android/app/music/AudioPreview;->skipCount:I

    .line 2840
    :cond_20
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v1}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->getCurrentPosition()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v2, v2, Lcom/sec/android/app/music/AudioPreview;->SKIP_TIME:[I

    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget v3, v3, Lcom/sec/android/app/music/AudioPreview;->skipCount:I

    aget v2, v2, v3

    add-int v0, v1, v2

    .line 2843
    .local v0, position:I
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget v1, v1, Lcom/sec/android/app/music/AudioPreview;->mMediaDuration:I

    if-gt v1, v0, :cond_3e

    .line 2844
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget v0, v1, Lcom/sec/android/app/music/AudioPreview;->mMediaDuration:I

    .line 2846
    :cond_3e
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget v1, v1, Lcom/sec/android/app/music/AudioPreview;->mMediaDuration:I

    if-lt v1, v0, :cond_4e

    .line 2847
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/music/AudioPreview;->setPosition(I)Z

    .line 2848
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/music/AudioPreview;->refreshPlayStatus(I)V

    .line 2853
    :cond_4e
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget v2, v1, Lcom/sec/android/app/music/AudioPreview;->skipCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/sec/android/app/music/AudioPreview;->skipCount:I

    .line 2854
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .parameter "msg"

    .prologue
    .line 2540
    iget v7, p1, Landroid/os/Message;->what:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_27

    .line 2541
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v7, v7, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mHandler(msg.what= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2542
    :cond_27
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_436

    .line 2778
    :cond_2c
    :goto_2c
    return-void

    .line 2544
    :sswitch_2d
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #calls: Lcom/sec/android/app/music/AudioPreview;->finishMusicPlayer()V
    invoke-static {v7}, Lcom/sec/android/app/music/AudioPreview;->access$2300(Lcom/sec/android/app/music/AudioPreview;)V

    goto :goto_2c

    .line 2547
    :sswitch_33
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v7}, Lcom/sec/android/app/music/AudioPreview;->updatePlayStatus()V

    .line 2548
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const/4 v8, 0x2

    const-wide/16 v9, 0x64

    invoke-virtual {v7, v8, v9, v10}, Lcom/sec/android/app/music/AudioPreview;->queueUpdate(IJ)V

    goto :goto_2c

    .line 2551
    :sswitch_41
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const/4 v8, 0x2

    const-wide/16 v9, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/sec/android/app/music/AudioPreview;->queueUpdate(IJ)V

    .line 2552
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v7}, Lcom/sec/android/app/music/AudioPreview;->updateMediaInfo()V

    goto :goto_2c

    .line 2555
    :sswitch_4f
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const/16 v8, 0xa

    const-wide/16 v9, 0x12c

    invoke-virtual {v7, v8, v9, v10}, Lcom/sec/android/app/music/AudioPreview;->queueUpdate(IJ)V

    .line 2556
    invoke-direct {p0}, Lcom/sec/android/app/music/AudioPreview$17;->skipForward()V

    goto :goto_2c

    .line 2559
    :sswitch_5c
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v7, v7, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 2560
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-boolean v7, v7, Lcom/sec/android/app/music/AudioPreview;->additionalPanelFromAlbumArt:Z

    if-nez v7, :cond_2c

    .line 2561
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v7, v7, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 2562
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v7, v7, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x20

    const-wide/16 v9, 0xbb8

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2c

    .line 2566
    :sswitch_80
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const/16 v8, 0xc

    const-wide/16 v9, 0x12c

    invoke-virtual {v7, v8, v9, v10}, Lcom/sec/android/app/music/AudioPreview;->queueUpdate(IJ)V

    .line 2567
    invoke-direct {p0}, Lcom/sec/android/app/music/AudioPreview$17;->skipBackword()V

    goto :goto_2c

    .line 2570
    :sswitch_8d
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v7, v7, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 2571
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-boolean v7, v7, Lcom/sec/android/app/music/AudioPreview;->additionalPanelFromAlbumArt:Z

    if-nez v7, :cond_2c

    .line 2572
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v7, v7, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 2573
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v7, v7, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x20

    const-wide/16 v9, 0xbb8

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2c

    .line 2577
    :sswitch_b2
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-boolean v7, v7, Lcom/sec/android/app/music/AudioPreview;->mPause:Z

    if-nez v7, :cond_2c

    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mPreparingProgress:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/sec/android/app/music/AudioPreview;->access$2400(Lcom/sec/android/app/music/AudioPreview;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v7

    if-nez v7, :cond_2c

    .line 2578
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mPreparingProgress:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/sec/android/app/music/AudioPreview;->access$2400(Lcom/sec/android/app/music/AudioPreview;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_2c

    .line 2582
    :sswitch_cf
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mPreparingProgress:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/sec/android/app/music/AudioPreview;->access$2400(Lcom/sec/android/app/music/AudioPreview;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2585
    const/16 v7, 0x14

    invoke-virtual {p0, v7}, Lcom/sec/android/app/music/AudioPreview$17;->removeMessages(I)V

    goto/16 :goto_2c

    .line 2588
    :sswitch_df
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v7, v7, Lcom/sec/android/app/music/AudioPreview;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    .line 2589
    .local v5, mProgress:I
    int-to-double v7, v5

    const-wide/high16 v9, 0x4059

    div-double/2addr v7, v9

    iget-object v9, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget v9, v9, Lcom/sec/android/app/music/AudioPreview;->mMediaDuration:I

    int-to-double v9, v9

    mul-double/2addr v7, v9

    double-to-int v4, v7

    .line 2594
    .local v4, mPosition:I
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v7, v4}, Lcom/sec/android/app/music/AudioPreview;->setPosition(I)Z

    .line 2595
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const/4 v8, 0x2

    const-wide/16 v9, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/sec/android/app/music/AudioPreview;->queueUpdate(IJ)V

    .line 2596
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const/16 v8, 0x16

    const-wide/16 v9, 0x7d0

    invoke-virtual {v7, v8, v9, v10}, Lcom/sec/android/app/music/AudioPreview;->queueUpdate(IJ)V

    goto/16 :goto_2c

    .line 2601
    .end local v4           #mPosition:I
    .end local v5           #mProgress:I
    :sswitch_10a
    iget-object v8, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/graphics/Bitmap;

    #setter for: Lcom/sec/android/app/music/AudioPreview;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v8, v7}, Lcom/sec/android/app/music/AudioPreview;->access$2502(Lcom/sec/android/app/music/AudioPreview;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 2603
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/sec/android/app/music/AudioPreview;->access$2500(Lcom/sec/android/app/music/AudioPreview;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_137

    .line 2607
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v7, v7, Lcom/sec/android/app/music/AudioPreview;->mViewAlbumImage:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/sec/android/app/music/AudioPreview;->access$2500(Lcom/sec/android/app/music/AudioPreview;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2609
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v7, v7, Lcom/sec/android/app/music/AudioPreview;->mViewAlbumImage:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2614
    :goto_130
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/sec/android/app/music/AudioPreview;->mMusicPlayerInitDone:Z

    goto/16 :goto_2c

    .line 2611
    :cond_137
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v7, v7, Lcom/sec/android/app/music/AudioPreview;->mViewAlbumImage:Landroid/widget/ImageView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_130

    .line 2617
    :sswitch_140
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v7}, Lcom/sec/android/app/music/AudioPreview;->hideVolumePanel()V

    goto/16 :goto_2c

    .line 2621
    :sswitch_147
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-boolean v7, v7, Lcom/sec/android/app/music/AudioPreview;->mIsShownAdditionalBar:Z

    if-nez v7, :cond_15c

    .line 2622
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2623
    .local v2, fromAlbumArt:Z
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v7, v2}, Lcom/sec/android/app/music/AudioPreview;->showAdditionalPanel(Z)V

    goto/16 :goto_2c

    .line 2625
    .end local v2           #fromAlbumArt:Z
    :cond_15c
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v7}, Lcom/sec/android/app/music/AudioPreview;->hideAdditionalPanel()V

    goto/16 :goto_2c

    .line 2629
    :sswitch_163
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v7}, Lcom/sec/android/app/music/AudioPreview;->hideAdditionalPanel()V

    goto/16 :goto_2c

    .line 2638
    :sswitch_16a
    const/4 v3, 0x0

    .line 2639
    .local v3, jumpTime:I
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v7, v7, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    if-eqz v7, :cond_1c0

    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v7}, Lcom/sec/android/app/music/AudioPreview;->canStartMediaPlayer()Z

    move-result v7

    if-eqz v7, :cond_1c0

    .line 2640
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget v7, v7, Lcom/sec/android/app/music/AudioPreview;->mMediaDuration:I

    if-nez v7, :cond_18a

    .line 2641
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v7, v7, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v8, "\'FF_REW_LONG_PRESSED_EVENT\'is received. But durationTime==0"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c

    .line 2645
    :cond_18a
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v7, v7, Lcom/sec/android/app/music/AudioPreview;->SKIP_TIME:[I

    iget-object v8, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-static {v8}, Lcom/sec/android/app/music/AudioPreview;->access$2608(Lcom/sec/android/app/music/AudioPreview;)I

    move-result v8

    aget v8, v7, v8

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-nez v7, :cond_1e7

    const/4 v7, 0x1

    :goto_19b
    mul-int v3, v8, v7

    .line 2646
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v7, v7, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v7}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->getCurrentPosition()I

    move-result v7

    add-int v0, v7, v3

    .line 2648
    .local v0, currentPosition:I
    if-gez v0, :cond_1e9

    .line 2649
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v7, v7, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->seekTo(I)V

    .line 2655
    :goto_1b1
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->ffRewRepeatTime:I
    invoke-static {v7}, Lcom/sec/android/app/music/AudioPreview;->access$2600(Lcom/sec/android/app/music/AudioPreview;)I

    move-result v7

    const/4 v8, 0x4

    if-lt v7, v8, :cond_1c0

    .line 2656
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const/4 v8, 0x3

    #setter for: Lcom/sec/android/app/music/AudioPreview;->ffRewRepeatTime:I
    invoke-static {v7, v8}, Lcom/sec/android/app/music/AudioPreview;->access$2602(Lcom/sec/android/app/music/AudioPreview;I)I

    .line 2663
    .end local v0           #currentPosition:I
    :cond_1c0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    .line 2664
    .local v6, message:Landroid/os/Message;
    invoke-virtual {v6, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 2665
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v7, v7, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xf

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 2666
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v7, v7, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x12c

    invoke-virtual {v7, v6, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2668
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-boolean v7, v7, Lcom/sec/android/app/music/AudioPreview;->mIsShownAdditionalBar:Z

    if-nez v7, :cond_2c

    .line 2669
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/app/music/AudioPreview;->showAdditionalPanel(Z)V

    goto/16 :goto_2c

    .line 2645
    .end local v6           #message:Landroid/os/Message;
    :cond_1e7
    const/4 v7, -0x1

    goto :goto_19b

    .line 2650
    .restart local v0       #currentPosition:I
    :cond_1e9
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget v7, v7, Lcom/sec/android/app/music/AudioPreview;->mMediaDuration:I

    if-lt v0, v7, :cond_1fb

    .line 2651
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v7, v7, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    iget-object v8, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget v8, v8, Lcom/sec/android/app/music/AudioPreview;->mMediaDuration:I

    invoke-virtual {v7, v8}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->seekTo(I)V

    goto :goto_1b1

    .line 2653
    :cond_1fb
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v7, v7, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v7, v0}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->seekTo(I)V

    goto :goto_1b1

    .line 2675
    .end local v0           #currentPosition:I
    .end local v3           #jumpTime:I
    :sswitch_203
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v7, v7, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v7}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->release()V

    .line 2676
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const/4 v8, 0x1

    iput v8, v7, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    .line 2677
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    new-instance v8, Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-direct {v8}, Lcom/sec/android/app/music/framework/SecMediaPlayer;-><init>()V

    iput-object v8, v7, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    .line 2678
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const/4 v8, 0x2

    iput v8, v7, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    .line 2679
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v7, v7, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    iget-object v8, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v8, v8, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 2681
    const-string v1, "msg.what == STOP_MUSIC_PLAY"

    .line 2682
    .local v1, errorMsg:Ljava/lang/String;
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v7, v7, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    new-instance v7, Ljava/lang/Error;

    invoke-direct {v7, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2691
    .end local v1           #errorMsg:Ljava/lang/String;
    :sswitch_238
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v7, v7, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->seekTo(I)V

    .line 2693
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v7}, Lcom/sec/android/app/music/AudioPreview;->updateMediaInfo()V

    goto/16 :goto_2c

    .line 2698
    :sswitch_247
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v7, v7, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v8, "handler SET_VOLUME_BACK_TO_ONE Called!!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2699
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/app/music/AudioPreview;->muteForPopupNoise(Z)V

    goto/16 :goto_2c

    .line 2707
    :sswitch_258
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mIsStartTrackingProgressBar:Z
    invoke-static {v7}, Lcom/sec/android/app/music/AudioPreview;->access$2700(Lcom/sec/android/app/music/AudioPreview;)Z

    move-result v7

    if-eqz v7, :cond_26d

    .line 2708
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v7, v7, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x34

    const-wide/16 v9, 0xc8

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2c

    .line 2710
    :cond_26d
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v7, v7, Lcom/sec/android/app/music/AudioPreview;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getProgress()I

    move-result v7

    const/16 v8, 0x64

    if-ne v7, v8, :cond_280

    .line 2711
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v7}, Lcom/sec/android/app/music/AudioPreview;->playNext()V

    goto/16 :goto_2c

    .line 2713
    :cond_280
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v7}, Lcom/sec/android/app/music/AudioPreview;->doPlay()V

    goto/16 :goto_2c

    .line 2718
    :sswitch_287
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mWmDrmAcquistionCnt:I
    invoke-static {v7}, Lcom/sec/android/app/music/AudioPreview;->access$2800(Lcom/sec/android/app/music/AudioPreview;)I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_2c

    .line 2719
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v7, v7, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v8, "DrmErrorListener aquiring pop up is dismissed"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2720
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mProgress1:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/sec/android/app/music/AudioPreview;->access$2900(Lcom/sec/android/app/music/AudioPreview;)Landroid/app/ProgressDialog;

    move-result-object v7

    if-eqz v7, :cond_2c

    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mProgress1:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/sec/android/app/music/AudioPreview;->access$2900(Lcom/sec/android/app/music/AudioPreview;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 2721
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mProgress1:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/sec/android/app/music/AudioPreview;->access$2900(Lcom/sec/android/app/music/AudioPreview;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_2c

    .line 2727
    :sswitch_2b8
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const/4 v8, 0x0

    #setter for: Lcom/sec/android/app/music/AudioPreview;->mWmDrmAcquistionCnt:I
    invoke-static {v7, v8}, Lcom/sec/android/app/music/AudioPreview;->access$2802(Lcom/sec/android/app/music/AudioPreview;I)I

    .line 2728
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v7, v7, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Right Ok Action = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mWmDrmPlay:Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;
    invoke-static {v9}, Lcom/sec/android/app/music/AudioPreview;->access$3000(Lcom/sec/android/app/music/AudioPreview;)Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;

    move-result-object v9

    iget v9, v9, Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;->mCompleteAction:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Play = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mWmDrmPlay:Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;
    invoke-static {v9}, Lcom/sec/android/app/music/AudioPreview;->access$3000(Lcom/sec/android/app/music/AudioPreview;)Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;

    move-result-object v9

    iget-boolean v9, v9, Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;->mPlay:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2731
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mWmDrmPlay:Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;
    invoke-static {v7}, Lcom/sec/android/app/music/AudioPreview;->access$3000(Lcom/sec/android/app/music/AudioPreview;)Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;

    move-result-object v7

    iget v7, v7, Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;->mCompleteAction:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_344

    .line 2732
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v8, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mWmDrmPlay:Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;
    invoke-static {v8}, Lcom/sec/android/app/music/AudioPreview;->access$3000(Lcom/sec/android/app/music/AudioPreview;)Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;

    move-result-object v8

    iget-boolean v8, v8, Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;->mPlay:Z

    invoke-virtual {v7, v8}, Lcom/sec/android/app/music/AudioPreview;->doPrepare(Z)V

    .line 2737
    :cond_30a
    :goto_30a
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v7, v7, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v8, "DrmEventListener aquiring pop up is dismissed"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2738
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mProgress1:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/sec/android/app/music/AudioPreview;->access$2900(Lcom/sec/android/app/music/AudioPreview;)Landroid/app/ProgressDialog;

    move-result-object v7

    if-eqz v7, :cond_330

    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mProgress1:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/sec/android/app/music/AudioPreview;->access$2900(Lcom/sec/android/app/music/AudioPreview;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_330

    .line 2739
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mProgress1:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/sec/android/app/music/AudioPreview;->access$2900(Lcom/sec/android/app/music/AudioPreview;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2742
    :cond_330
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mWmDrmPlay:Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;
    invoke-static {v7}, Lcom/sec/android/app/music/AudioPreview;->access$3000(Lcom/sec/android/app/music/AudioPreview;)Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;

    move-result-object v7

    const/4 v8, 0x0

    iput v8, v7, Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;->mCompleteAction:I

    .line 2743
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mWmDrmPlay:Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;
    invoke-static {v7}, Lcom/sec/android/app/music/AudioPreview;->access$3000(Lcom/sec/android/app/music/AudioPreview;)Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;

    move-result-object v7

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;->mPlay:Z

    goto/16 :goto_2c

    .line 2733
    :cond_344
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mWmDrmPlay:Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;
    invoke-static {v7}, Lcom/sec/android/app/music/AudioPreview;->access$3000(Lcom/sec/android/app/music/AudioPreview;)Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;

    move-result-object v7

    iget v7, v7, Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;->mCompleteAction:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_30a

    .line 2734
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v7}, Lcom/sec/android/app/music/AudioPreview;->startPlay()V

    goto :goto_30a

    .line 2747
    :sswitch_355
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mWmDrmAcquistionCnt:I
    invoke-static {v7}, Lcom/sec/android/app/music/AudioPreview;->access$2800(Lcom/sec/android/app/music/AudioPreview;)I

    move-result v7

    const/4 v8, 0x2

    if-gt v7, v8, :cond_3d6

    .line 2748
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v7, v7, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Right Failed Action = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mWmDrmPlay:Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;
    invoke-static {v9}, Lcom/sec/android/app/music/AudioPreview;->access$3000(Lcom/sec/android/app/music/AudioPreview;)Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;

    move-result-object v9

    iget v9, v9, Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;->mCompleteAction:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Play = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mWmDrmPlay:Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;
    invoke-static {v9}, Lcom/sec/android/app/music/AudioPreview;->access$3000(Lcom/sec/android/app/music/AudioPreview;)Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;

    move-result-object v9

    iget-boolean v9, v9, Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;->mPlay:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2751
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v8, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mWmDrmPlay:Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;
    invoke-static {v8}, Lcom/sec/android/app/music/AudioPreview;->access$3000(Lcom/sec/android/app/music/AudioPreview;)Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;

    move-result-object v8

    iget v8, v8, Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;->mCompleteAction:I

    iget-object v9, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mWmDrmPlay:Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;
    invoke-static {v9}, Lcom/sec/android/app/music/AudioPreview;->access$3000(Lcom/sec/android/app/music/AudioPreview;)Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;

    move-result-object v9

    iget-boolean v9, v9, Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;->mPlay:Z

    #calls: Lcom/sec/android/app/music/AudioPreview;->checkDrmRight(IZ)I
    invoke-static {v7, v8, v9}, Lcom/sec/android/app/music/AudioPreview;->access$3100(Lcom/sec/android/app/music/AudioPreview;IZ)I

    move-result v7

    if-nez v7, :cond_2c

    .line 2752
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mWmDrmPlay:Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;
    invoke-static {v7}, Lcom/sec/android/app/music/AudioPreview;->access$3000(Lcom/sec/android/app/music/AudioPreview;)Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;

    move-result-object v7

    iget v7, v7, Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;->mCompleteAction:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3c4

    .line 2753
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v8, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mWmDrmPlay:Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;
    invoke-static {v8}, Lcom/sec/android/app/music/AudioPreview;->access$3000(Lcom/sec/android/app/music/AudioPreview;)Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;

    move-result-object v8

    iget-boolean v8, v8, Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;->mPlay:Z

    invoke-virtual {v7, v8}, Lcom/sec/android/app/music/AudioPreview;->doPrepare(Z)V

    goto/16 :goto_2c

    .line 2754
    :cond_3c4
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mWmDrmPlay:Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;
    invoke-static {v7}, Lcom/sec/android/app/music/AudioPreview;->access$3000(Lcom/sec/android/app/music/AudioPreview;)Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;

    move-result-object v7

    iget v7, v7, Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;->mCompleteAction:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2c

    .line 2755
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v7}, Lcom/sec/android/app/music/AudioPreview;->startPlay()V

    goto/16 :goto_2c

    .line 2759
    :cond_3d6
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const/4 v8, 0x0

    #setter for: Lcom/sec/android/app/music/AudioPreview;->mWmDrmAcquistionCnt:I
    invoke-static {v7, v8}, Lcom/sec/android/app/music/AudioPreview;->access$2802(Lcom/sec/android/app/music/AudioPreview;I)I

    .line 2760
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mWmDrmPlay:Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;
    invoke-static {v7}, Lcom/sec/android/app/music/AudioPreview;->access$3000(Lcom/sec/android/app/music/AudioPreview;)Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;

    move-result-object v7

    const/4 v8, 0x0

    iput v8, v7, Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;->mCompleteAction:I

    .line 2761
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mWmDrmPlay:Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;
    invoke-static {v7}, Lcom/sec/android/app/music/AudioPreview;->access$3000(Lcom/sec/android/app/music/AudioPreview;)Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;

    move-result-object v7

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;->mPlay:Z

    .line 2763
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v7, v7, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v8, "ACQUIRE_RIGHT_FAIL"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2764
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mSoundPlayerToast:Landroid/widget/Toast;
    invoke-static {v7}, Lcom/sec/android/app/music/AudioPreview;->access$3200(Lcom/sec/android/app/music/AudioPreview;)Landroid/widget/Toast;

    move-result-object v7

    if-eqz v7, :cond_41b

    .line 2765
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mSoundPlayerToast:Landroid/widget/Toast;
    invoke-static {v7}, Lcom/sec/android/app/music/AudioPreview;->access$3200(Lcom/sec/android/app/music/AudioPreview;)Landroid/widget/Toast;

    move-result-object v7

    const v8, 0x7f0900e9

    invoke-virtual {v7, v8}, Landroid/widget/Toast;->setText(I)V

    .line 2771
    :goto_40b
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mSoundPlayerToast:Landroid/widget/Toast;
    invoke-static {v7}, Lcom/sec/android/app/music/AudioPreview;->access$3200(Lcom/sec/android/app/music/AudioPreview;)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 2772
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #calls: Lcom/sec/android/app/music/AudioPreview;->finishMusicPlayer()V
    invoke-static {v7}, Lcom/sec/android/app/music/AudioPreview;->access$2300(Lcom/sec/android/app/music/AudioPreview;)V

    goto/16 :goto_2c

    .line 2767
    :cond_41b
    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v8, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v8, v8, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/sec/android/app/music/AudioPreview$17;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v9, v9, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    const v10, 0x7f0900e9

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    #setter for: Lcom/sec/android/app/music/AudioPreview;->mSoundPlayerToast:Landroid/widget/Toast;
    invoke-static {v7, v8}, Lcom/sec/android/app/music/AudioPreview;->access$3202(Lcom/sec/android/app/music/AudioPreview;Landroid/widget/Toast;)Landroid/widget/Toast;

    goto :goto_40b

    .line 2542
    nop

    :sswitch_data_436
    .sparse-switch
        0x1 -> :sswitch_2d
        0x2 -> :sswitch_33
        0x3 -> :sswitch_41
        0x8 -> :sswitch_10a
        0xa -> :sswitch_4f
        0xb -> :sswitch_5c
        0xc -> :sswitch_80
        0xd -> :sswitch_8d
        0xf -> :sswitch_16a
        0x14 -> :sswitch_b2
        0x15 -> :sswitch_cf
        0x16 -> :sswitch_df
        0x1f -> :sswitch_140
        0x20 -> :sswitch_163
        0x21 -> :sswitch_147
        0x28 -> :sswitch_287
        0x29 -> :sswitch_2b8
        0x2a -> :sswitch_355
        0x32 -> :sswitch_238
        0x33 -> :sswitch_247
        0x34 -> :sswitch_258
        0x384 -> :sswitch_203
    .end sparse-switch
.end method
