.class public Lcom/samsung/dmp/layout/VideoSurfaceView;
.super Landroid/view/SurfaceView;
.source "VideoSurfaceView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/MediaController$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/dmp/layout/VideoSurfaceView$MediaChangeListener;
    }
.end annotation


# instance fields
.field private bufferPercent:I

.field private duration:I

.field holder:Landroid/view/SurfaceHolder;

.field private isBufferingOn:Z

.field private isInitializationNeeded:Z

.field private isPaused:Z

.field private isPrepared:Z

.field private isSeeking:Z

.field private listener:Lcom/samsung/dmp/layout/VideoSurfaceView$MediaChangeListener;

.field private mCurrentPosition:I

.field private mErrorFlag:Z

.field public mIsR2VS:Z

.field mediaController:Landroid/widget/MediaController;

.field mediaPlayer:Landroid/media/MediaPlayer;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 77
    iput-boolean v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mIsR2VS:Z

    .line 134
    iget-object v0, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_34

    .line 135
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 136
    iget-object v0, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 137
    iget-object v0, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 138
    iget-object v0, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 139
    iget-object v0, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 140
    iget-object v0, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 141
    iget-object v0, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 142
    iput-boolean v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->isPrepared:Z

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->duration:I

    .line 145
    :cond_34
    new-instance v0, Landroid/widget/MediaController;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaController:Landroid/widget/MediaController;

    .line 146
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/VideoSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->holder:Landroid/view/SurfaceHolder;

    .line 147
    iget-object v0, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->holder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 148
    iget-object v0, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 149
    const-string v0, "DLNA"

    const-string v1, "******  Create VideoSurfaceView *******"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "set"

    .prologue
    .line 153
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mIsR2VS:Z

    .line 154
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/VideoSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->holder:Landroid/view/SurfaceHolder;

    .line 155
    iget-object v0, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->holder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 156
    iget-object v0, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 157
    new-instance v0, Landroid/widget/MediaController;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaController:Landroid/widget/MediaController;

    .line 159
    return-void
.end method


# virtual methods
.method public canPause()Z
    .registers 2

    .prologue
    .line 565
    const/4 v0, 0x0

    return v0
.end method

.method public canSeekBackward()Z
    .registers 2

    .prologue
    .line 569
    const/4 v0, 0x0

    return v0
.end method

.method public canSeekForward()Z
    .registers 2

    .prologue
    .line 573
    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .registers 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_7

    .line 419
    iget v0, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->bufferPercent:I

    .line 421
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getCurrentPosition()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 280
    :try_start_1
    iget-object v2, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_10

    iget-boolean v2, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->isPrepared:Z

    if-eqz v2, :cond_10

    .line 282
    iget-object v2, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    .line 294
    :goto_f
    return v1

    .line 285
    :cond_10
    const-string v2, "DLNA"

    const-string v3, "i don\'t get the CurrnetPosition"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_17} :catch_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_21

    goto :goto_f

    .line 287
    :catch_18
    move-exception v0

    .line 288
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "DLNA"

    const-string v3, "getCurrentPosition - IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 290
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_21
    move-exception v0

    .line 291
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DLNA"

    const-string v3, "getCurrentPosition - IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public getDuration()I
    .registers 4

    .prologue
    .line 298
    const-string v1, "DLNA"

    const-string v2, "getDuration - called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :try_start_7
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_21

    iget-boolean v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->isPrepared:Z

    if-eqz v1, :cond_21

    .line 302
    iget v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->duration:I

    if-lez v1, :cond_16

    .line 303
    iget v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->duration:I

    .line 316
    :goto_15
    return v1

    .line 305
    :cond_16
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    iput v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->duration:I

    .line 306
    iget v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->duration:I

    goto :goto_15

    .line 308
    :cond_21
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->duration:I
    :try_end_24
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_24} :catch_27
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_24} :catch_30

    .line 316
    :goto_24
    iget v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->duration:I

    goto :goto_15

    .line 310
    :catch_27
    move-exception v0

    .line 311
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "DLNA"

    const-string v2, "getDuration - IllegalStateException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 312
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_30
    move-exception v0

    .line 313
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 314
    const-string v1, "DLNA"

    const-string v2, "getDuration - Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method

.method public isLowLevelDMP()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 86
    :try_start_1
    const-string v2, "Halo"

    const-string v3, "SPH-D710"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    const-string v2, "SAMSUNG GT-I5800"

    const-string v3, "SPH-D710"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 88
    :cond_15
    const-string v2, "DLNA"

    const-string v3, "this device is LowLevelDMP"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_1e

    .line 89
    const/4 v1, 0x1

    .line 94
    :cond_1d
    :goto_1d
    return v1

    .line 92
    :catch_1e
    move-exception v0

    .line 93
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "DLNA"

    const-string v3, "don\'t get the DMP_SSHTTP_SUPPORT feature"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method public isPlaying()Z
    .registers 4

    .prologue
    .line 321
    :try_start_0
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_17

    iget-boolean v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->isPrepared:Z

    if-eqz v1, :cond_17

    .line 322
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_d} :catch_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_19

    move-result v1

    .line 329
    :goto_e
    return v1

    .line 324
    :catch_f
    move-exception v0

    .line 325
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "DLNA"

    const-string v2, "isPlaying - IllegalStateException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :cond_17
    :goto_17
    const/4 v1, 0x0

    goto :goto_e

    .line 326
    :catch_19
    move-exception v0

    .line 327
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DLNA"

    const-string v2, "isPlaying - Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method public isPrepared()Z
    .registers 2

    .prologue
    .line 484
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->isPrepared:Z

    return v0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 4
    .parameter "mp"
    .parameter "percent"

    .prologue
    .line 412
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->isBufferingOn:Z

    if-eqz v0, :cond_9

    .line 413
    iget-object v0, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->listener:Lcom/samsung/dmp/layout/VideoSurfaceView$MediaChangeListener;

    invoke-interface {v0, p2}, Lcom/samsung/dmp/layout/VideoSurfaceView$MediaChangeListener;->bufferUpdate(I)V

    .line 415
    :cond_9
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 5
    .parameter "mp"

    .prologue
    .line 269
    :try_start_0
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result v1

    if-nez v1, :cond_e

    .line 270
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->listener:Lcom/samsung/dmp/layout/VideoSurfaceView$MediaChangeListener;

    invoke-interface {v1}, Lcom/samsung/dmp/layout/VideoSurfaceView$MediaChangeListener;->mediaCompleted()V

    .line 276
    :goto_d
    return-void

    .line 272
    :cond_e
    const-string v1, "DLNA"

    const-string v2, "onCompletion but looping is true"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_d

    .line 273
    :catch_16
    move-exception v0

    .line 274
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_d
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 9
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 494
    const-string v2, "DLNA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>>>>>MEDIA_ERROR = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<<<<<<<<<<<<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v2, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->listener:Lcom/samsung/dmp/layout/VideoSurfaceView$MediaChangeListener;

    if-nez v2, :cond_25

    .line 558
    :goto_24
    return v0

    .line 497
    :cond_25
    sparse-switch p2, :sswitch_data_cc

    .line 553
    invoke-virtual {p0, v1}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setErrorFlag(Z)V

    .line 554
    const-string v1, "DLNA"

    const-string v2, ">>>>>>>>PLAYBACK_UNKNOWNERROR<<<<<<<<<<<<"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->listener:Lcom/samsung/dmp/layout/VideoSurfaceView$MediaChangeListener;

    invoke-interface {v1}, Lcom/samsung/dmp/layout/VideoSurfaceView$MediaChangeListener;->mediaPlayFailed()V

    goto :goto_24

    .line 499
    :sswitch_38
    const-string v1, "DLNA"

    const-string v2, "!!!!! MEDIA_ERROR_UNKNOWN !!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->listener:Lcom/samsung/dmp/layout/VideoSurfaceView$MediaChangeListener;

    invoke-interface {v1}, Lcom/samsung/dmp/layout/VideoSurfaceView$MediaChangeListener;->mediaPlayFailed()V

    goto :goto_24

    .line 504
    :sswitch_45
    const-string v0, "DLNA"

    const-string v2, ">>>>>>>>MEDIA_ERROR_SERVER_DIED<<<<<<<<<<<<"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v0, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 506
    iget-object v0, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 507
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 508
    iget-object v0, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->listener:Lcom/samsung/dmp/layout/VideoSurfaceView$MediaChangeListener;

    invoke-interface {v0}, Lcom/samsung/dmp/layout/VideoSurfaceView$MediaChangeListener;->mediaPlayFailed()V

    move v0, v1

    .line 509
    goto :goto_24

    .line 512
    :sswitch_64
    const-string v1, "DLNA"

    const-string v2, ">>>>>>>>MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK<<<<<<<<<<<<"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->listener:Lcom/samsung/dmp/layout/VideoSurfaceView$MediaChangeListener;

    invoke-interface {v1}, Lcom/samsung/dmp/layout/VideoSurfaceView$MediaChangeListener;->mediaPlayFailed()V

    goto :goto_24

    .line 517
    :sswitch_71
    const-string v0, "DLNA"

    const-string v2, "MediaPlayer.MEDIA_ErrDrmLicenseExpired"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v0, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->listener:Lcom/samsung/dmp/layout/VideoSurfaceView$MediaChangeListener;

    invoke-interface {v0}, Lcom/samsung/dmp/layout/VideoSurfaceView$MediaChangeListener;->mediaPlayFailed()V

    move v0, v1

    .line 519
    goto :goto_24

    .line 522
    :sswitch_7f
    const-string v0, "DLNA"

    const-string v2, "MediaPlayer.MEDIA_ErrDrmLicenseNotFound"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v0, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->listener:Lcom/samsung/dmp/layout/VideoSurfaceView$MediaChangeListener;

    invoke-interface {v0}, Lcom/samsung/dmp/layout/VideoSurfaceView$MediaChangeListener;->mediaPlayFailed()V

    move v0, v1

    .line 524
    goto :goto_24

    .line 527
    :sswitch_8d
    const-string v0, "DLNA"

    const-string v2, "MediaPlayer.MEDIA_ErrDrmLicenseNotValidYet"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v0, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->listener:Lcom/samsung/dmp/layout/VideoSurfaceView$MediaChangeListener;

    invoke-interface {v0}, Lcom/samsung/dmp/layout/VideoSurfaceView$MediaChangeListener;->mediaPlayFailed()V

    move v0, v1

    .line 529
    goto :goto_24

    .line 532
    :sswitch_9b
    invoke-virtual {p0, v1}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setErrorFlag(Z)V

    .line 533
    const-string v1, "DLNA"

    const-string v2, ">>>>>>>>MEDIA_ERROR_NOTSUPPORT<<<<<<<<<<<<"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->listener:Lcom/samsung/dmp/layout/VideoSurfaceView$MediaChangeListener;

    invoke-interface {v1}, Lcom/samsung/dmp/layout/VideoSurfaceView$MediaChangeListener;->mediaPlayFailed()V

    goto/16 :goto_24

    .line 538
    :sswitch_ac
    const-string v1, "DLNA"

    const-string v2, ">>>>>>>>MEDIA_ERROR_CURRUPT<<<<<<<<<<<<"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24

    .line 543
    :sswitch_b5
    const-string v1, "DLNA"

    const-string v2, ">>>>>>>>MEDIA_ERROR_DIVX_NOTAUTHORIZED<<<<<<<<<<<<"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->listener:Lcom/samsung/dmp/layout/VideoSurfaceView$MediaChangeListener;

    invoke-interface {v1}, Lcom/samsung/dmp/layout/VideoSurfaceView$MediaChangeListener;->mediaPlayFailed()V

    goto/16 :goto_24

    .line 548
    :sswitch_c3
    const-string v1, "DLNA"

    const-string v2, ">>>>>>>>MEDIA_ERROR_EXPIRED_RENTALCOUNT<<<<<<<<<<<<"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24

    .line 497
    :sswitch_data_cc
    .sparse-switch
        -0x63 -> :sswitch_c3
        -0x62 -> :sswitch_b5
        -0xa -> :sswitch_ac
        -0x4 -> :sswitch_9b
        0x1 -> :sswitch_38
        0x64 -> :sswitch_45
        0xc8 -> :sswitch_64
        0x12c -> :sswitch_7f
        0x12d -> :sswitch_71
        0x12e -> :sswitch_8d
    .end sparse-switch
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 6
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 589
    sparse-switch p2, :sswitch_data_3e

    .line 614
    :goto_3
    const/4 v0, 0x0

    return v0

    .line 591
    :sswitch_5
    const-string v0, "DLNA"

    const-string v1, ">>>>>>>>MEDIA_INFO_BAD_INTERLEAVING<<<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 594
    :sswitch_d
    const-string v0, "DLNA"

    const-string v1, ">>>>>>>>MEDIA_INFO_BUFFERING_END<<<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 597
    :sswitch_15
    const-string v0, "DLNA"

    const-string v1, ">>>>>>>>MEDIA_INFO_BUFFERING_START<<<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 600
    :sswitch_1d
    const-string v0, "DLNA"

    const-string v1, ">>>>>>>>MEDIA_INFO_METADATA_UPDATE<<<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 603
    :sswitch_25
    const-string v0, "DLNA"

    const-string v1, ">>>>>>>>MEDIA_INFO_NOT_SEEKABLE<<<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 606
    :sswitch_2d
    const-string v0, "DLNA"

    const-string v1, ">>>>>>>>MEDIA_INFO_VIDEO_TRACK_LAGGING<<<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 609
    :sswitch_35
    const-string v0, "DLNA"

    const-string v1, ">>>>>>>>MEDIA_INFO_UNKNOWN<<<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 589
    nop

    :sswitch_data_3e
    .sparse-switch
        0x1 -> :sswitch_35
        0x2bc -> :sswitch_2d
        0x2bd -> :sswitch_15
        0x2be -> :sswitch_d
        0x320 -> :sswitch_5
        0x321 -> :sswitch_25
        0x322 -> :sswitch_1d
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .registers 20
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 685
    const/4 v11, 0x1

    .line 686
    .local v11, surfaceWidth:I
    const/4 v10, 0x1

    .line 688
    .local v10, surfaceHeight:I
    const/4 v13, 0x0

    .line 689
    .local v13, videoWidth:I
    const/4 v12, 0x0

    .line 691
    .local v12, videoHeight:I
    sget v3, Lcom/samsung/dmp/layout/DMPVideoActivity;->fitToSCR:I

    .line 694
    .local v3, fitToScr:I
    if-eqz p0, :cond_11c

    .line 696
    :try_start_8
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v14

    if-eqz v14, :cond_60

    .line 697
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v4

    .line 698
    .local v4, media:Lcom/samsung/api/ContentItem;
    invoke-virtual {v4}, Lcom/samsung/api/ContentItem;->getContentType()I

    move-result v14

    const/4 v15, 0x4

    if-eq v14, v15, :cond_33

    .line 700
    move-object/from16 v0, p0

    invoke-super {v0, v11, v10}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    .line 781
    .end local v4           #media:Lcom/samsung/api/ContentItem;
    :goto_32
    return-void

    .line 703
    .restart local v4       #media:Lcom/samsung/api/ContentItem;
    :cond_33
    invoke-virtual {v4}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v9

    .line 704
    .local v9, resource:Lcom/samsung/api/ContentResource;
    invoke-virtual {v9}, Lcom/samsung/api/ContentResource;->getResolutionInfo()Ljava/lang/String;

    move-result-object v8

    .line 705
    .local v8, resolution:Ljava/lang/String;
    const/4 v5, -0x1

    .line 706
    .local v5, num:I
    const-string v14, ""

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_60

    .line 707
    const/16 v14, 0x78

    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(I)I
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_49} :catch_b7

    move-result v5

    .line 709
    const/4 v14, -0x1

    if-le v5, v14, :cond_60

    .line 710
    const/4 v14, 0x0

    :try_start_4e
    invoke-virtual {v8, v14, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 711
    .local v6, resX:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 712
    add-int/lit8 v14, v5, 0x1

    invoke-virtual {v8, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 713
    .local v7, resY:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_5f} :catch_79

    move-result v12

    .line 726
    .end local v4           #media:Lcom/samsung/api/ContentItem;
    .end local v5           #num:I
    .end local v6           #resX:Ljava/lang/String;
    .end local v7           #resY:Ljava/lang/String;
    .end local v8           #resolution:Ljava/lang/String;
    .end local v9           #resource:Lcom/samsung/api/ContentResource;
    :cond_60
    :goto_60
    :try_start_60
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v13, v1}, Lcom/samsung/dmp/layout/VideoSurfaceView;->resolveAdjustedSize(II)I

    move-result v11

    .line 727
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v12, v1}, Lcom/samsung/dmp/layout/VideoSurfaceView;->resolveAdjustedSize(II)I
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_6f} :catch_b7

    move-result v10

    .line 735
    packed-switch v3, :pswitch_data_12a

    .line 780
    :cond_73
    :goto_73
    move-object/from16 v0, p0

    invoke-super {v0, v11, v10}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    goto :goto_32

    .line 715
    .restart local v4       #media:Lcom/samsung/api/ContentItem;
    .restart local v5       #num:I
    .restart local v8       #resolution:Ljava/lang/String;
    .restart local v9       #resource:Lcom/samsung/api/ContentResource;
    :catch_79
    move-exception v2

    .line 716
    .local v2, e:Ljava/lang/Exception;
    :try_start_7a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v14, :cond_9a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v14}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v14

    if-eqz v14, :cond_9a

    .line 717
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v14}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v13

    .line 718
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v14}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v12

    .line 720
    :cond_9a
    const-string v14, "DLNA"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "====== "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_b6} :catch_b7

    goto :goto_60

    .line 729
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #media:Lcom/samsung/api/ContentItem;
    .end local v5           #num:I
    .end local v8           #resolution:Ljava/lang/String;
    .end local v9           #resource:Lcom/samsung/api/ContentResource;
    :catch_b7
    move-exception v2

    .line 730
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 731
    const-string v14, "DLNA"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "RemoteException occured  1 :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    .line 737
    .end local v2           #e:Ljava/lang/Exception;
    :pswitch_d9
    if-lez v13, :cond_73

    if-lez v12, :cond_73

    .line 738
    if-gt v13, v11, :cond_e1

    if-le v12, v10, :cond_f1

    .line 739
    :cond_e1
    mul-int v14, v13, v10

    mul-int v15, v12, v11

    if-lt v14, v15, :cond_ec

    .line 740
    mul-int v14, v11, v12

    div-int v10, v14, v13

    goto :goto_73

    .line 742
    :cond_ec
    mul-int v14, v10, v13

    div-int v11, v14, v12

    goto :goto_73

    .line 745
    :cond_f1
    move v11, v13

    .line 746
    move v10, v12

    goto :goto_73

    .line 753
    :pswitch_f4
    if-lez v13, :cond_73

    if-lez v12, :cond_73

    .line 754
    mul-int v14, v13, v10

    mul-int v15, v12, v11

    if-lt v14, v15, :cond_104

    .line 755
    mul-int v14, v11, v12

    div-int v10, v14, v13

    goto/16 :goto_73

    .line 757
    :cond_104
    mul-int v14, v10, v13

    div-int v11, v14, v12

    goto/16 :goto_73

    .line 768
    :pswitch_10a
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v13, v1}, Lcom/samsung/dmp/layout/VideoSurfaceView;->resolveAdjustedSize(II)I

    move-result v11

    .line 769
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v12, v1}, Lcom/samsung/dmp/layout/VideoSurfaceView;->resolveAdjustedSize(II)I

    move-result v10

    .line 771
    goto/16 :goto_73

    .line 777
    :cond_11c
    move/from16 v0, p1

    invoke-static {v13, v0}, Lcom/samsung/dmp/layout/VideoSurfaceView;->getDefaultSize(II)I

    move-result v11

    .line 778
    move/from16 v0, p2

    invoke-static {v12, v0}, Lcom/samsung/dmp/layout/VideoSurfaceView;->getDefaultSize(II)I

    move-result v10

    goto/16 :goto_73

    .line 735
    :pswitch_data_12a
    .packed-switch 0x0
        :pswitch_d9
        :pswitch_f4
        :pswitch_10a
    .end packed-switch
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 4
    .parameter "mp"

    .prologue
    .line 488
    const-string v0, "DLNA"

    const-string v1, "onPrepare is called......"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->isPrepared:Z

    .line 490
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/VideoSurfaceView;->start()V

    .line 491
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .registers 4
    .parameter "mp"

    .prologue
    .line 425
    const-string v0, "DLNA"

    const-string v1, "SEEK COMPLETE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v0, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->listener:Lcom/samsung/dmp/layout/VideoSurfaceView$MediaChangeListener;

    invoke-interface {v0}, Lcom/samsung/dmp/layout/VideoSurfaceView$MediaChangeListener;->seekComplete()V

    .line 427
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->isSeeking:Z

    .line 428
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 7
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 810
    const-string v0, "DLNA"

    const-string v1, "in onSizeChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "v"
    .parameter "event"

    .prologue
    .line 435
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 439
    const/4 v0, 0x0

    return v0
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 4
    .parameter "mp"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 562
    return-void
.end method

.method public pause()V
    .registers 4

    .prologue
    .line 334
    :try_start_0
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_18

    iget-boolean v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->isPrepared:Z

    if-eqz v1, :cond_18

    .line 335
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 336
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 337
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->isPaused:Z
    :try_end_18
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_18} :catch_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_22

    .line 345
    :cond_18
    :goto_18
    return-void

    .line 340
    :catch_19
    move-exception v0

    .line 341
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "DLNA"

    const-string v2, "pause - IllegalStateException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 342
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_22
    move-exception v0

    .line 343
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DLNA"

    const-string v2, "pause - Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public release()V
    .registers 3

    .prologue
    .line 362
    iget-object v0, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_13

    .line 363
    iget-object v0, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 364
    const-string v0, "DLNA"

    const-string v1, "mediaPlayer::release() - mMediaPlayer.release."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 367
    :cond_13
    return-void
.end method

.method public resetSeekFlag()V
    .registers 2

    .prologue
    .line 647
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->isSeeking:Z

    .line 648
    return-void
.end method

.method public resolveAdjustedSize(II)I
    .registers 6
    .parameter "desiredSize"
    .parameter "measureSpec"

    .prologue
    .line 784
    move v0, p1

    .line 786
    .local v0, result:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 787
    .local v1, specMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 789
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_16

    .line 806
    :goto_c
    return v0

    .line 791
    :sswitch_d
    move v0, p1

    .line 792
    goto :goto_c

    .line 795
    :sswitch_f
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 796
    goto :goto_c

    .line 799
    :sswitch_14
    move v0, v2

    .line 800
    goto :goto_c

    .line 789
    :sswitch_data_16
    .sparse-switch
        -0x80000000 -> :sswitch_f
        0x0 -> :sswitch_d
        0x40000000 -> :sswitch_14
    .end sparse-switch
.end method

.method public seekTo(I)V
    .registers 5
    .parameter "pos"

    .prologue
    .line 371
    :try_start_0
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_14

    iget-boolean v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->isPrepared:Z

    if-eqz v1, :cond_14

    iget-boolean v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->isSeeking:Z

    if-nez v1, :cond_14

    .line 372
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->isSeeking:Z

    .line 373
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_14
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_14} :catch_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_1e

    .line 380
    :cond_14
    :goto_14
    return-void

    .line 375
    :catch_15
    move-exception v0

    .line 376
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "DLNA"

    const-string v2, "seekTo - IllegalStateException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 377
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1e
    move-exception v0

    .line 378
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DLNA"

    const-string v2, "seekTo - Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method public setBufferingOn(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 618
    iput-boolean p1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->isBufferingOn:Z

    .line 619
    return-void
.end method

.method public setCurrentPosition(I)V
    .registers 2
    .parameter "position"

    .prologue
    .line 622
    iput p1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mCurrentPosition:I

    .line 623
    return-void
.end method

.method public setErrorFlag(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 626
    iput-boolean p1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mErrorFlag:Z

    .line 627
    return-void
.end method

.method public setInitializationNeeded(Z)V
    .registers 2
    .parameter "value"

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->isInitializationNeeded:Z

    .line 191
    return-void
.end method

.method public setMediaOptions()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_32

    .line 164
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 165
    const-string v1, "DLNA"

    const-string v2, "******  setMediaOptions mediaPlayer.reset() begin *******"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :goto_10
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->holder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 178
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->isPrepared:Z

    .line 179
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->duration:I

    .line 180
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/samsung/dmp/layout/VideoSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->path:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 181
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 187
    :goto_31
    return-void

    .line 167
    :cond_32
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 168
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 169
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 170
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 171
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 172
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 173
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 174
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 175
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V
    :try_end_63
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_63} :catch_64
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_63} :catch_6d

    goto :goto_10

    .line 182
    :catch_64
    move-exception v0

    .line 183
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "DLNA"

    const-string v2, "setMediaOptions - IllegalStateException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 184
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_6d
    move-exception v0

    .line 185
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DLNA"

    const-string v2, "setMediaOptions - Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method

.method public setOnChangeListener(Lcom/samsung/dmp/layout/VideoSurfaceView$MediaChangeListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 431
    iput-object p1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->listener:Lcom/samsung/dmp/layout/VideoSurfaceView$MediaChangeListener;

    .line 432
    return-void
.end method

.method public setParameters(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "path"
    .parameter "type"

    .prologue
    .line 102
    if-nez p1, :cond_6

    .line 103
    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/VideoSurfaceView;->release()V

    .line 130
    :cond_5
    :goto_5
    return-void

    .line 107
    :cond_6
    iget-object v3, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->path:Ljava/lang/String;

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->path:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    .line 111
    :cond_13
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/api/ContentResource;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, ext:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/api/ContentResource;->getMimeType()Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, mimeType:Ljava/lang/String;
    const-string v3, ".mp3"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_53

    const-string v3, "audio/3gpp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 120
    :cond_53
    iput-object p1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->path:Ljava/lang/String;
    :try_end_55
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_55} :catch_56

    goto :goto_5

    .line 126
    .end local v1           #ext:Ljava/lang/String;
    .end local v2           #mimeType:Ljava/lang/String;
    :catch_56
    move-exception v0

    .line 127
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_5

    .line 121
    .end local v0           #e:Ljava/lang/NullPointerException;
    .restart local v1       #ext:Ljava/lang/String;
    .restart local v2       #mimeType:Ljava/lang/String;
    :cond_5b
    :try_start_5b
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/VideoSurfaceView;->isLowLevelDMP()Z

    move-result v3

    if-nez v3, :cond_77

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ss"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->path:Ljava/lang/String;

    goto :goto_5

    .line 124
    :cond_77
    iput-object p1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->path:Ljava/lang/String;
    :try_end_79
    .catch Ljava/lang/NullPointerException; {:try_start_5b .. :try_end_79} :catch_56

    goto :goto_5
.end method

.method public setR2VSMode(Z)V
    .registers 6
    .parameter "mode"

    .prologue
    .line 655
    iget-object v3, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_2a

    .line 657
    :try_start_4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 658
    .local v1, eqValue:Landroid/os/Parcel;
    const-string v3, "android.media.IMediaPlayer"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 659
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 660
    .local v2, eqValueReply:Landroid/os/Parcel;
    const v3, 0x12fd1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 662
    if-eqz p1, :cond_2b

    .line 663
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mIsR2VS:Z

    .line 664
    const/high16 v3, 0x20

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 671
    :goto_21
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 673
    iget-object v3, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v1, v2}, Landroid/media/MediaPlayer;->setSoundAlive(Landroid/os/Parcel;Landroid/os/Parcel;)I

    .line 681
    .end local v1           #eqValue:Landroid/os/Parcel;
    .end local v2           #eqValueReply:Landroid/os/Parcel;
    :cond_2a
    :goto_2a
    return-void

    .line 668
    .restart local v1       #eqValue:Landroid/os/Parcel;
    .restart local v2       #eqValueReply:Landroid/os/Parcel;
    :cond_2b
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mIsR2VS:Z

    .line 669
    const/high16 v3, 0x40

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_33} :catch_34
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_33} :catch_39

    goto :goto_21

    .line 675
    .end local v1           #eqValue:Landroid/os/Parcel;
    .end local v2           #eqValueReply:Landroid/os/Parcel;
    :catch_34
    move-exception v0

    .line 676
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2a

    .line 677
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_39
    move-exception v0

    .line 678
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2a
.end method

.method public start()V
    .registers 4

    .prologue
    .line 383
    const-string v1, "DLNA"

    const-string v2, "****Start media playeraaaa****"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :try_start_7
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_39

    iget-boolean v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->isPrepared:Z

    if-eqz v1, :cond_39

    .line 386
    iget v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mCurrentPosition:I

    if-lez v1, :cond_1d

    .line 387
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget v2, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mCurrentPosition:I

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 388
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mCurrentPosition:I

    .line 390
    :cond_1d
    const-string v1, "DLNA"

    const-string v2, "****Start media player****"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 397
    const-string v1, "DLNA"

    const-string v2, "MediaPlayer started....."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-boolean v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->isPaused:Z

    if-nez v1, :cond_3a

    .line 399
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->listener:Lcom/samsung/dmp/layout/VideoSurfaceView$MediaChangeListener;

    invoke-interface {v1}, Lcom/samsung/dmp/layout/VideoSurfaceView$MediaChangeListener;->onChange()V

    .line 409
    :cond_39
    :goto_39
    return-void

    .line 401
    :cond_3a
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->isPaused:Z
    :try_end_3d
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_3d} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3d} :catch_47

    goto :goto_39

    .line 403
    :catch_3e
    move-exception v0

    .line 404
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "DLNA"

    const-string v2, "start - IllegalStateException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 405
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_47
    move-exception v0

    .line 406
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 407
    const-string v1, "DLNA"

    const-string v2, "start - Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39
.end method

.method public startAutoPlay()V
    .registers 4

    .prologue
    .line 635
    iget-boolean v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->isPrepared:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_11

    .line 637
    :try_start_c
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_11
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_11} :catch_12
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_1b

    .line 644
    :cond_11
    :goto_11
    return-void

    .line 638
    :catch_12
    move-exception v0

    .line 639
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "DLNA"

    const-string v2, "startAutoPlay - IllegalStateException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 640
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1b
    move-exception v0

    .line 641
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DLNA"

    const-string v2, "startAutoPlay - Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public stop()V
    .registers 4

    .prologue
    .line 444
    :try_start_0
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1b

    .line 445
    iget-boolean v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->isPrepared:Z

    if-eqz v1, :cond_10

    .line 446
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 447
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->isPrepared:Z

    .line 449
    :cond_10
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 450
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 451
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->isPaused:Z
    :try_end_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_1b} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_25

    .line 458
    :cond_1b
    :goto_1b
    return-void

    .line 453
    :catch_1c
    move-exception v0

    .line 454
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "DLNA"

    const-string v2, "stop - IllegalStateException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 455
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_25
    move-exception v0

    .line 456
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DLNA"

    const-string v2, "stop - Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 9
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 197
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->isInitializationNeeded:Z

    if-eqz v1, :cond_3d

    .line 198
    const-string v1, "DLNA"

    const-string v2, "VideoSurfaceView:surfaceChanged....."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_3e

    .line 201
    const-string v1, "DLNA"

    const-string v2, "******  surfaceChanged mediaPlayer.reset() begin *******"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :goto_16
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->isPrepared:Z

    .line 215
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->path:Ljava/lang/String;

    if-eqz v1, :cond_3d

    .line 216
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 217
    const-string v1, "DLNA"

    const-string v2, "******  setDataSource call (surfaceChanged)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/samsung/dmp/layout/VideoSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->path:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 219
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 231
    :cond_3d
    :goto_3d
    return-void

    .line 203
    :cond_3e
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 204
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 205
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 206
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 207
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 208
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 209
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 210
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 211
    iget-object v1, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V
    :try_end_6f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_6f} :catch_70
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_6f} :catch_79
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6f} :catch_82

    goto :goto_16

    .line 224
    :catch_70
    move-exception v0

    .line 225
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "DLNA"

    const-string v2, "surfaceChanged - IllegalArgumentException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 226
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_79
    move-exception v0

    .line 227
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "DLNA"

    const-string v2, "surfaceChanged - IllegalStateException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 228
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_82
    move-exception v0

    .line 229
    .local v0, e:Ljava/io/IOException;
    const-string v1, "DLNA"

    const-string v2, "surfaceChanged - IOException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter "holder"

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->isInitializationNeeded:Z

    if-eqz v0, :cond_b

    .line 236
    const-string v0, "DLNA"

    const-string v1, "VideoSurfaceView:surfaceCreated....."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_b
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 6
    .parameter "holder"

    .prologue
    .line 242
    iget-boolean v2, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->isInitializationNeeded:Z

    if-eqz v2, :cond_35

    .line 244
    const-wide/16 v2, 0xc8

    :try_start_6
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_9} :catch_36

    .line 248
    :goto_9
    const-string v2, "DLNA"

    const-string v3, "VideoSurfaceView:surfaceDestroyed....."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 p1, 0x0

    .line 250
    iget-object v2, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_35

    .line 252
    :try_start_15
    const-string v2, "DLNA"

    const-string v3, "VideoSurfaceView:surfaceDestroyed release start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v2, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    .line 254
    iget-object v2, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 255
    iget-object v2, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 256
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 257
    const-string v2, "DLNA"

    const-string v3, "VideoSurfaceView:surfaceDestroyed release end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_35} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_35} :catch_44

    .line 265
    :cond_35
    :goto_35
    return-void

    .line 245
    :catch_36
    move-exception v1

    .line 246
    .local v1, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_9

    .line 258
    .end local v1           #e1:Ljava/lang/InterruptedException;
    :catch_3b
    move-exception v0

    .line 259
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "DLNA"

    const-string v3, "surfaceDestroyed - IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    .line 260
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_44
    move-exception v0

    .line 261
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DLNA"

    const-string v3, "surfaceDestroyed - Exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35
.end method
