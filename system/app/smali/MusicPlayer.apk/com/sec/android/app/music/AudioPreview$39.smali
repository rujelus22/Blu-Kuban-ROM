.class Lcom/sec/android/app/music/AudioPreview$39;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 5396
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 7
    .parameter "player"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5400
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepared() mediaUri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v2, v2, Lcom/sec/android/app/music/AudioPreview;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5402
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mProgress1:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/music/AudioPreview;->access$2900(Lcom/sec/android/app/music/AudioPreview;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mProgress1:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/music/AudioPreview;->access$2900(Lcom/sec/android/app/music/AudioPreview;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 5403
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "onPreparedListener here aquiring pop up is dismissed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5404
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mProgress1:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/music/AudioPreview;->access$2900(Lcom/sec/android/app/music/AudioPreview;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 5407
    :cond_46
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "checkdrmright_calledsecondtime is made true onPreparedlistener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5410
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->InfoModechanged:Z
    invoke-static {v0}, Lcom/sec/android/app/music/AudioPreview;->access$4600(Lcom/sec/android/app/music/AudioPreview;)Z

    move-result v0

    if-ne v0, v4, :cond_60

    .line 5411
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iput-boolean v4, v0, Lcom/sec/android/app/music/AudioPreview;->isInfoMode:Z

    .line 5412
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #setter for: Lcom/sec/android/app/music/AudioPreview;->InfoModechanged:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/music/AudioPreview;->access$4602(Lcom/sec/android/app/music/AudioPreview;Z)Z

    .line 5415
    :cond_60
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #setter for: Lcom/sec/android/app/music/AudioPreview;->pyv_wmdrm_file:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/music/AudioPreview;->access$4502(Lcom/sec/android/app/music/AudioPreview;Z)Z

    .line 5416
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "pyv_wmdrm_file is made false onPreparedListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5419
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x384

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5420
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5421
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #setter for: Lcom/sec/android/app/music/AudioPreview;->bDrmPopupShown:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/music/AudioPreview;->access$4902(Lcom/sec/android/app/music/AudioPreview;Z)Z

    .line 5423
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iput-boolean v3, v0, Lcom/sec/android/app/music/AudioPreview;->mIsPrepareRequested:Z

    .line 5424
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-boolean v0, v0, Lcom/sec/android/app/music/AudioPreview;->mIsStopRequested:Z

    if-ne v0, v4, :cond_a2

    .line 5425
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "mIsStopRequested == true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5426
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v0}, Lcom/sec/android/app/music/AudioPreview;->stopPlay()V

    .line 5427
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iput-boolean v3, v0, Lcom/sec/android/app/music/AudioPreview;->mIsStopRequested:Z

    .line 5478
    :cond_a1
    :goto_a1
    return-void

    .line 5431
    :cond_a2
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->mCurrentUri:Landroid/net/Uri;

    if-eqz v0, :cond_a1

    .line 5434
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const v1, 0x11010

    iput v1, v0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    .line 5437
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mResetForUlp:Z
    invoke-static {v0}, Lcom/sec/android/app/music/AudioPreview;->access$5200(Lcom/sec/android/app/music/AudioPreview;)Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 5438
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mPlayedTimeForUlp:J
    invoke-static {v1}, Lcom/sec/android/app/music/AudioPreview;->access$5300(Lcom/sec/android/app/music/AudioPreview;)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->seekTo(I)V

    .line 5439
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->start()V

    .line 5440
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const v1, 0x11020

    iput v1, v0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    .line 5441
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mWasPlayed:Z
    invoke-static {v0}, Lcom/sec/android/app/music/AudioPreview;->access$5400(Lcom/sec/android/app/music/AudioPreview;)Z

    move-result v0

    if-nez v0, :cond_16b

    .line 5442
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v0}, Lcom/sec/android/app/music/AudioPreview;->pausePlay()V

    .line 5443
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "reset for ULP - was not played -> pause music"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5452
    :goto_e9
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #setter for: Lcom/sec/android/app/music/AudioPreview;->mResetForUlp:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/music/AudioPreview;->access$5202(Lcom/sec/android/app/music/AudioPreview;Z)Z

    .line 5453
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #setter for: Lcom/sec/android/app/music/AudioPreview;->mWasPlayed:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/music/AudioPreview;->access$5402(Lcom/sec/android/app/music/AudioPreview;Z)Z

    .line 5454
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #setter for: Lcom/sec/android/app/music/AudioPreview;->mNeedToPause:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/music/AudioPreview;->access$5502(Lcom/sec/android/app/music/AudioPreview;Z)Z

    .line 5455
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const-wide/16 v1, 0x0

    #setter for: Lcom/sec/android/app/music/AudioPreview;->mPlayedTimeForUlp:J
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/music/AudioPreview;->access$5302(Lcom/sec/android/app/music/AudioPreview;J)J

    .line 5458
    :cond_ff
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v1}, Lcom/sec/android/app/music/AudioPreview;->getDuration()I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/music/AudioPreview;->mMediaDuration:I

    .line 5459
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v0}, Lcom/sec/android/app/music/AudioPreview;->updateMediaInfo()V

    .line 5460
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget v0, v0, Lcom/sec/android/app/music/AudioPreview;->mLaunchMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_12d

    .line 5461
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    if-eqz v0, :cond_12d

    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mMimeType:Ljava/lang/String;

    if-eqz v0, :cond_12d

    .line 5462
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    iget-object v1, v1, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mMimeType:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/android/app/music/AudioPreview;->intentStreamMimeType:Ljava/lang/String;

    .line 5465
    :cond_12d
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->bPlay:Z
    invoke-static {v0}, Lcom/sec/android/app/music/AudioPreview;->access$5000(Lcom/sec/android/app/music/AudioPreview;)Z

    move-result v0

    if-eqz v0, :cond_13a

    .line 5466
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v0}, Lcom/sec/android/app/music/AudioPreview;->startPlay()V

    .line 5468
    :cond_13a
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget v0, v0, Lcom/sec/android/app/music/AudioPreview;->mMediaDuration:I

    if-gtz v0, :cond_18e

    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_160

    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sshttp://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18e

    .line 5471
    :cond_160
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iput-boolean v4, v0, Lcom/sec/android/app/music/AudioPreview;->mIsLiveStreamMode:Z

    .line 5472
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/music/AudioPreview;->setLiveStreamMode(Z)V

    goto/16 :goto_a1

    .line 5444
    :cond_16b
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mNeedToPause:Z
    invoke-static {v0}, Lcom/sec/android/app/music/AudioPreview;->access$5500(Lcom/sec/android/app/music/AudioPreview;)Z

    move-result v0

    if-eqz v0, :cond_183

    .line 5445
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v0}, Lcom/sec/android/app/music/AudioPreview;->pausePlay()V

    .line 5446
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "reset for ULP - was played and BT disconnected -> pause music"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e9

    .line 5449
    :cond_183
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "reset for ULP - was played -> resume music"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e9

    .line 5474
    :cond_18e
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iput-boolean v3, v0, Lcom/sec/android/app/music/AudioPreview;->mIsLiveStreamMode:Z

    .line 5475
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$39;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/music/AudioPreview;->setLiveStreamMode(Z)V

    goto/16 :goto_a1
.end method
