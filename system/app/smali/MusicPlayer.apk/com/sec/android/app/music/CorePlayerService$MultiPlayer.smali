.class Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;
.super Ljava/lang/Object;
.source "CorePlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/CorePlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiPlayer"
.end annotation


# instance fields
.field errorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field listener:Landroid/media/MediaPlayer$OnCompletionListener;

.field protected mCurrentState:I

.field private mHandler:Landroid/os/Handler;

.field private mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

.field private final mPlayReadyErrorListener:Landroid/media/MediaPlayer$OnPlayReadyErrorListener;

.field final synthetic this$0:Lcom/sec/android/app/music/CorePlayerService;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/music/CorePlayerService;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 3760
    iput-object p1, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3753
    new-instance v0, Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-direct {v0}, Lcom/sec/android/app/music/framework/SecMediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    .line 3758
    iput v1, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 3990
    new-instance v0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$1;-><init>(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->listener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 4007
    new-instance v0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$2;-><init>(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mPlayReadyErrorListener:Landroid/media/MediaPlayer$OnPlayReadyErrorListener;

    .line 4105
    new-instance v0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;-><init>(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 3761
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 3762
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 3763
    return-void
.end method

.method static synthetic access$3200(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3752
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;)Lcom/sec/android/app/music/framework/SecMediaPlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3752
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;Lcom/sec/android/app/music/framework/SecMediaPlayer;)Lcom/sec/android/app/music/framework/SecMediaPlayer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3752
    iput-object p1, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    return-object p1
.end method

.method private handlingMediaPlayerErrorCase()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 4364
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    iput-boolean v1, v0, Lcom/sec/android/app/music/CorePlayerService;->mResetForUlp:Z

    .line 4365
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 4366
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-static {v0}, Lcom/sec/android/app/music/CorePlayerService;->access$3110(Lcom/sec/android/app/music/CorePlayerService;)I

    .line 4368
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/sec/android/app/music/MusicUtils;->isMusicPlayerTopActivity(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 4369
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mToastHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/music/CorePlayerService;->access$2800(Lcom/sec/android/app/music/CorePlayerService;)Landroid/os/Handler;

    move-result-object v0

    const v1, 0x7f09004b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4371
    :cond_25
    return-void
.end method

.method private handlingUnsuportedFileCase()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 4374
    const/4 v0, 0x0

    .line 4375
    .local v0, bIsTopActivity:Z
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v1}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->release()V

    .line 4376
    iput v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 4377
    new-instance v1, Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-direct {v1}, Lcom/sec/android/app/music/framework/SecMediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    .line 4378
    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 4379
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 4380
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v1}, Lcom/sec/android/app/music/CorePlayerService;->hideNotification()V

    .line 4381
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v1}, Lcom/sec/android/app/music/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/sec/android/app/music/MusicUtils;->isMusicPlayerTopActivity(Landroid/content/Context;Z)Z

    move-result v0

    .line 4383
    if-eqz v0, :cond_38

    .line 4384
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mToastHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/music/CorePlayerService;->access$2800(Lcom/sec/android/app/music/CorePlayerService;)Landroid/os/Handler;

    move-result-object v1

    const v2, 0x7f09004b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4387
    :cond_38
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;
    invoke-static {v1}, Lcom/sec/android/app/music/CorePlayerService;->access$700(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/MusicPlayerController;

    move-result-object v1

    if-eqz v1, :cond_91

    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;
    invoke-static {v1}, Lcom/sec/android/app/music/CorePlayerService;->access$700(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/MusicPlayerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/music/MusicPlayerController;->getItemCount()I

    move-result v1

    if-le v1, v3, :cond_91

    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;
    invoke-static {v1}, Lcom/sec/android/app/music/CorePlayerService;->access$700(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/MusicPlayerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/music/MusicPlayerController;->getRepeatMode()I

    move-result v1

    if-eq v1, v3, :cond_91

    if-eqz v0, :cond_62

    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mUserAction:Z
    invoke-static {v1}, Lcom/sec/android/app/music/CorePlayerService;->access$3400(Lcom/sec/android/app/music/CorePlayerService;)Z

    move-result v1

    if-nez v1, :cond_91

    .line 4390
    :cond_62
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    iget-object v1, v1, Lcom/sec/android/app/music/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mNextPlay:Lcom/sec/android/app/music/CorePlayerService$FindSong;
    invoke-static {v2}, Lcom/sec/android/app/music/CorePlayerService;->access$3500(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$FindSong;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4391
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mNextPlay:Lcom/sec/android/app/music/CorePlayerService$FindSong;
    invoke-static {v1}, Lcom/sec/android/app/music/CorePlayerService;->access$3500(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$FindSong;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mUserAction:Z
    invoke-static {v2}, Lcom/sec/android/app/music/CorePlayerService;->access$3400(Lcom/sec/android/app/music/CorePlayerService;)Z

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mPlayDirection:Z
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService;->access$3600(Lcom/sec/android/app/music/CorePlayerService;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/music/CorePlayerService$FindSong;->setFindSong(ZZ)V

    .line 4392
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    iget-object v1, v1, Lcom/sec/android/app/music/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mNextPlay:Lcom/sec/android/app/music/CorePlayerService$FindSong;
    invoke-static {v2}, Lcom/sec/android/app/music/CorePlayerService;->access$3500(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$FindSong;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4395
    :cond_91
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    const-string v2, "com.android.music.playstatechanged"

    #calls: Lcom/sec/android/app/music/CorePlayerService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sec/android/app/music/CorePlayerService;->access$800(Lcom/sec/android/app/music/CorePlayerService;Ljava/lang/String;)V

    .line 4396
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #setter for: Lcom/sec/android/app/music/CorePlayerService;->IsWmdrmPlayreadyfile:Z
    invoke-static {v1, v4}, Lcom/sec/android/app/music/CorePlayerService;->access$2602(Lcom/sec/android/app/music/CorePlayerService;Z)Z

    .line 4397
    return-void
.end method


# virtual methods
.method public duration()J
    .registers 3

    .prologue
    .line 4334
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getAudioSessionId()I
    .registers 2

    .prologue
    .line 4355
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getSubRealEQdata([I)V
    .registers 7
    .parameter "value"

    .prologue
    .line 4477
    iget-object v4, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    if-eqz v4, :cond_31

    .line 4479
    :try_start_4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4480
    .local v1, eqValue:Landroid/os/Parcel;
    const-string v4, "android.media.IMediaPlayer"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4481
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4482
    .local v2, eqValueReply:Landroid/os/Parcel;
    const v4, 0x15b38

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4484
    array-length v4, p1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4485
    iget-object v4, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v4, v1, v2}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setSoundAlive(Landroid/os/Parcel;Landroid/os/Parcel;)I

    .line 4486
    const/4 v3, 0x0

    .local v3, i:I
    :goto_21
    array-length v4, p1

    if-ge v3, v4, :cond_31

    .line 4487
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, p1, v3
    :try_end_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_2a} :catch_2d
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_2a} :catch_32

    .line 4486
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 4490
    .end local v1           #eqValue:Landroid/os/Parcel;
    .end local v2           #eqValueReply:Landroid/os/Parcel;
    .end local v3           #i:I
    :catch_2d
    move-exception v0

    .line 4491
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 4497
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_31
    :goto_31
    return-void

    .line 4492
    :catch_32
    move-exception v0

    .line 4493
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_31
.end method

.method internalSetEq(I)V
    .registers 6
    .parameter "mode"

    .prologue
    .line 4403
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService;->access$700(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/MusicPlayerController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/music/MusicPlayerController;->getLaunchMode()I

    move-result v3

    if-nez v3, :cond_46

    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    if-eqz v3, :cond_46

    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v3}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 4407
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4408
    .local v1, eqValue:Landroid/os/Parcel;
    const-string v3, "android.media.IMediaPlayer"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4409
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4410
    .local v2, eqValueReply:Landroid/os/Parcel;
    const v3, 0x12fd1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4412
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4413
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4414
    const/high16 v3, 0x80

    and-int/2addr v3, p1

    if-lez v3, :cond_47

    .line 4415
    const/16 v3, 0x13

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4418
    :goto_3c
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v3, v1, v2}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setSoundAlive(Landroid/os/Parcel;Landroid/os/Parcel;)I

    .line 4421
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #calls: Lcom/sec/android/app/music/CorePlayerService;->notifySettingChange()V
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService;->access$3700(Lcom/sec/android/app/music/CorePlayerService;)V

    .line 4431
    .end local v1           #eqValue:Landroid/os/Parcel;
    .end local v2           #eqValueReply:Landroid/os/Parcel;
    :cond_46
    :goto_46
    return-void

    .line 4417
    .restart local v1       #eqValue:Landroid/os/Parcel;
    .restart local v2       #eqValueReply:Landroid/os/Parcel;
    :cond_47
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4b} :catch_4c
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_4b} :catch_51

    goto :goto_3c

    .line 4426
    .end local v1           #eqValue:Landroid/os/Parcel;
    .end local v2           #eqValueReply:Landroid/os/Parcel;
    :catch_4c
    move-exception v0

    .line 4427
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_46

    .line 4428
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_51
    move-exception v0

    .line 4429
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_46
.end method

.method internalSetUserEQ(I[I)V
    .registers 9
    .parameter "mode"
    .parameter "eq"

    .prologue
    const/16 v5, 0x8

    .line 4437
    :try_start_2
    iget-object v4, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;
    invoke-static {v4}, Lcom/sec/android/app/music/CorePlayerService;->access$700(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/MusicPlayerController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/music/MusicPlayerController;->getLaunchMode()I

    move-result v4

    if-nez v4, :cond_57

    iget-object v4, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    if-eqz v4, :cond_57

    iget-object v4, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v4}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_57

    .line 4440
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4441
    .local v1, eqValue:Landroid/os/Parcel;
    const-string v4, "android.media.IMediaPlayer"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4442
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4443
    .local v2, eqValueReply:Landroid/os/Parcel;
    const v4, 0x12fd1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4445
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4446
    and-int/lit16 v4, p1, 0x800

    if-lez v4, :cond_4e

    .line 4448
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4453
    :goto_39
    const/high16 v4, 0x80

    and-int/2addr v4, p1

    if-lez v4, :cond_58

    .line 4454
    const/16 v4, 0x13

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4458
    :goto_43
    const/4 v3, 0x0

    .local v3, i:I
    :goto_44
    if-ge v3, v5, :cond_62

    .line 4459
    aget v4, p2, v3

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4458
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    .line 4450
    .end local v3           #i:I
    :cond_4e
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_52
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_52} :catch_53
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_52} :catch_5d

    goto :goto_39

    .line 4468
    .end local v1           #eqValue:Landroid/os/Parcel;
    .end local v2           #eqValueReply:Landroid/os/Parcel;
    :catch_53
    move-exception v0

    .line 4469
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 4474
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_57
    :goto_57
    return-void

    .line 4456
    .restart local v1       #eqValue:Landroid/os/Parcel;
    .restart local v2       #eqValueReply:Landroid/os/Parcel;
    :cond_58
    const/4 v4, 0x0

    :try_start_59
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_5c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_59 .. :try_end_5c} :catch_53
    .catch Ljava/lang/IllegalStateException; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_43

    .line 4470
    .end local v1           #eqValue:Landroid/os/Parcel;
    .end local v2           #eqValueReply:Landroid/os/Parcel;
    :catch_5d
    move-exception v0

    .line 4471
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_57

    .line 4462
    .end local v0           #e:Ljava/lang/IllegalStateException;
    .restart local v1       #eqValue:Landroid/os/Parcel;
    .restart local v2       #eqValueReply:Landroid/os/Parcel;
    .restart local v3       #i:I
    :cond_62
    :try_start_62
    iget-object v4, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v4, v1, v2}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setSoundAlive(Landroid/os/Parcel;Landroid/os/Parcel;)I

    .line 4465
    iget-object v4, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #calls: Lcom/sec/android/app/music/CorePlayerService;->notifySettingChange()V
    invoke-static {v4}, Lcom/sec/android/app/music/CorePlayerService;->access$3700(Lcom/sec/android/app/music/CorePlayerService;)V
    :try_end_6c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_62 .. :try_end_6c} :catch_53
    .catch Ljava/lang/IllegalStateException; {:try_start_62 .. :try_end_6c} :catch_5d

    goto :goto_57
.end method

.method public isInitialized()Z
    .registers 4

    .prologue
    .line 3917
    iget v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mCurrentState:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_8

    .line 3918
    const/4 v0, 0x1

    .line 3921
    :goto_7
    return v0

    .line 3920
    :cond_8
    const-string v0, "CorePlayerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPrepared()[false],"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3921
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 4360
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isStop()Z
    .registers 3

    .prologue
    .line 3926
    iget v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mCurrentState:I

    const v1, 0x11020

    if-eq v0, v1, :cond_e

    iget v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mCurrentState:I

    const v1, 0x11040

    if-ne v0, v1, :cond_17

    .line 3927
    :cond_e
    const-string v0, "CorePlayerService"

    const-string v1, "isInternalStop()[false]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3928
    const/4 v0, 0x0

    .line 3931
    :goto_16
    return v0

    .line 3930
    :cond_17
    const-string v0, "CorePlayerService"

    const-string v1, "isInternalStop()[true]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3931
    const/4 v0, 0x1

    goto :goto_16
.end method

.method public offSubRealEQdata()V
    .registers 5

    .prologue
    .line 4501
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    if-eqz v3, :cond_1c

    .line 4503
    :try_start_4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4504
    .local v1, eqValue:Landroid/os/Parcel;
    const-string v3, "android.media.IMediaPlayer"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4505
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4506
    .local v2, eqValueReply:Landroid/os/Parcel;
    const v3, 0x15b39

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4508
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v3, v1, v2}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setSoundAlive(Landroid/os/Parcel;Landroid/os/Parcel;)I
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_1c} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_1c} :catch_22

    .line 4516
    .end local v1           #eqValue:Landroid/os/Parcel;
    .end local v2           #eqValueReply:Landroid/os/Parcel;
    :cond_1c
    :goto_1c
    return-void

    .line 4509
    :catch_1d
    move-exception v0

    .line 4510
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1c

    .line 4511
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_22
    move-exception v0

    .line 4512
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1c
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 3980
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService;->unregisterMotionListener()V

    .line 3982
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->pause()V

    .line 3983
    const v0, 0x11040

    iput v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 3984
    return-void
.end method

.method public position()J
    .registers 3

    .prologue
    .line 4338
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public release()V
    .registers 3

    .prologue
    .line 3969
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    const-string v1, "com.android.music.playbackcomplete"

    #calls: Lcom/sec/android/app/music/CorePlayerService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/music/CorePlayerService;->access$800(Lcom/sec/android/app/music/CorePlayerService;Ljava/lang/String;)V

    .line 3973
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->stop()V

    .line 3974
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->release()V

    .line 3975
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 3976
    return-void
.end method

.method public seek(J)J
    .registers 5
    .parameter "whereto"

    .prologue
    .line 4342
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->seekTo(I)V

    .line 4343
    return-wide p1
.end method

.method public setDataSource(Ljava/lang/String;)Z
    .registers 16
    .parameter "path"

    .prologue
    .line 3767
    const-string v0, "CorePlayerService"

    const-string v1, "MP-setDataSource:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3774
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->listener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 3775
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 3779
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mPlayReadyErrorListener:Landroid/media/MediaPlayer$OnPlayReadyErrorListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setOnPlayReadyErrorListener(Landroid/media/MediaPlayer$OnPlayReadyErrorListener;)V

    .line 3782
    :try_start_26
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->reset()V

    .line 3783
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 3784
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 3786
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMusicDB:Lcom/sec/android/app/music/common/data/MusicDB;
    invoke-static {v1}, Lcom/sec/android/app/music/CorePlayerService;->access$3000(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/common/data/MusicDB;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/music/common/data/MusicDB;->getAlbumInfo(Landroid/net/Uri;)Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    move-result-object v1

    #setter for: Lcom/sec/android/app/music/CorePlayerService;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;
    invoke-static {v0, v1}, Lcom/sec/android/app/music/CorePlayerService;->access$1402(Lcom/sec/android/app/music/CorePlayerService;Lcom/sec/android/app/music/common/data/MusicAlbumInfo;)Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    .line 3787
    const-string v0, "content://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_125

    .line 3788
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 3792
    :goto_5a
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 3793
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setAudioStreamType(I)V

    .line 3795
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;
    invoke-static {v0}, Lcom/sec/android/app/music/CorePlayerService;->access$100(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/framework/SecAudioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecAudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-nez v0, :cond_7b

    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;
    invoke-static {v0}, Lcom/sec/android/app/music/CorePlayerService;->access$100(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/framework/SecAudioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecAudioManager;->isExtraSpeakerDockOn()Z

    move-result v0

    if-eqz v0, :cond_17c

    .line 3800
    :cond_7b
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/music/CorePlayerService;->mIsUlpByPass:Z

    .line 3803
    :goto_80
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    iget-boolean v1, v1, Lcom/sec/android/app/music/CorePlayerService;->mIsUlpByPass:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->ulpBypass(Z)V

    .line 3806
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->prepare()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_8e} :catch_12c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_26 .. :try_end_8e} :catch_183
    .catch Ljava/lang/IllegalStateException; {:try_start_26 .. :try_end_8e} :catch_19b

    .line 3866
    new-instance v12, Landroid/content/Intent;

    const-string v0, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3867
    .local v12, i:Landroid/content/Intent;
    const-string v0, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->getAudioSessionId()I

    move-result v1

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3868
    const-string v0, "android.media.extra.PACKAGE_NAME"

    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v1}, Lcom/sec/android/app/music/CorePlayerService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3869
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0, v12}, Lcom/sec/android/app/music/CorePlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3872
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;
    invoke-static {v1}, Lcom/sec/android/app/music/CorePlayerService;->access$700(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/MusicPlayerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/music/MusicPlayerController;->getItemCountFromDB()I

    move-result v1

    #setter for: Lcom/sec/android/app/music/CorePlayerService;->mErrorCount:I
    invoke-static {v0, v1}, Lcom/sec/android/app/music/CorePlayerService;->access$3102(Lcom/sec/android/app/music/CorePlayerService;I)I

    .line 3873
    const v0, 0x11010

    iput v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 3874
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    iget-object v0, v0, Lcom/sec/android/app/music/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3877
    sget-object v0, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-nez v0, :cond_123

    .line 3878
    const/4 v11, 0x1

    .line 3879
    .local v11, genre:I
    const/4 v13, 0x0

    .line 3881
    .local v13, strGenre:Ljava/lang/String;
    const/4 v6, 0x0

    .line 3883
    .local v6, c:Landroid/database/Cursor;
    :try_start_d5
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "genre_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3886
    if-eqz v6, :cond_fe

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_fe

    .line 3887
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3888
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_fd
    .catchall {:try_start_d5 .. :try_end_fd} :catchall_215
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_d5 .. :try_end_fd} :catch_1a9
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_d5 .. :try_end_fd} :catch_1df

    move-result-object v13

    .line 3899
    :cond_fe
    if-eqz v6, :cond_103

    .line 3900
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3905
    :cond_103
    :goto_103
    if-eqz v13, :cond_109

    .line 3906
    invoke-static {v13}, Lcom/sec/android/app/music/common/util/R2vsUtil;->getEqDefined(Ljava/lang/String;)I

    move-result v11

    .line 3908
    :cond_109
    sput v11, Lcom/sec/android/app/music/common/util/R2vsUtil;->autoeq_genre:I

    .line 3910
    const-string v0, "CorePlayerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "R2VS_MODE_AUTO, genre :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3913
    .end local v6           #c:Landroid/database/Cursor;
    .end local v11           #genre:I
    .end local v13           #strGenre:Ljava/lang/String;
    :cond_123
    const/4 v0, 0x1

    .end local v12           #i:Landroid/content/Intent;
    :goto_124
    return v0

    .line 3790
    :cond_125
    :try_start_125
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_12a
    .catch Ljava/io/IOException; {:try_start_125 .. :try_end_12a} :catch_12c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_125 .. :try_end_12a} :catch_183
    .catch Ljava/lang/IllegalStateException; {:try_start_125 .. :try_end_12a} :catch_19b

    goto/16 :goto_5a

    .line 3808
    :catch_12c
    move-exception v9

    .line 3810
    .local v9, ex:Ljava/io/IOException;
    const-string v0, "CorePlayerService"

    const-string v1, "MP-setDataSource:IOException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3813
    const/4 v10, 0x0

    .line 3814
    .local v10, filePath:Ljava/lang/String;
    const/4 v7, 0x0

    .line 3816
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_136
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3819
    if-eqz v7, :cond_165

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_165

    .line 3820
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3821
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_164
    .catchall {:try_start_136 .. :try_end_164} :catchall_190

    move-result-object v10

    .line 3830
    :cond_165
    if-eqz v7, :cond_16a

    .line 3831
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3835
    :cond_16a
    invoke-static {v10}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->isWMdrmFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_197

    .line 3836
    const-string v0, "CorePlayerService"

    const-string v1, "WMDRM/Playready file, ignore IOException, error will be handled in handlingUnsuportedFileCase"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3838
    invoke-direct {p0}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->handlingUnsuportedFileCase()V

    .line 3846
    :goto_17a
    const/4 v0, 0x0

    goto :goto_124

    .line 3802
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #ex:Ljava/io/IOException;
    .end local v10           #filePath:Ljava/lang/String;
    :cond_17c
    :try_start_17c
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/music/CorePlayerService;->mIsUlpByPass:Z
    :try_end_181
    .catch Ljava/io/IOException; {:try_start_17c .. :try_end_181} :catch_12c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17c .. :try_end_181} :catch_183
    .catch Ljava/lang/IllegalStateException; {:try_start_17c .. :try_end_181} :catch_19b

    goto/16 :goto_80

    .line 3847
    :catch_183
    move-exception v9

    .line 3849
    .local v9, ex:Ljava/lang/IllegalArgumentException;
    const-string v0, "CorePlayerService"

    const-string v1, "MP-setDataSource:IllegalArgumentException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3850
    invoke-direct {p0}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->handlingMediaPlayerErrorCase()V

    .line 3851
    const/4 v0, 0x0

    goto :goto_124

    .line 3830
    .restart local v7       #cursor:Landroid/database/Cursor;
    .local v9, ex:Ljava/io/IOException;
    .restart local v10       #filePath:Ljava/lang/String;
    :catchall_190
    move-exception v0

    if-eqz v7, :cond_196

    .line 3831
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_196
    throw v0

    .line 3840
    :cond_197
    invoke-direct {p0}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->handlingMediaPlayerErrorCase()V

    goto :goto_17a

    .line 3852
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #ex:Ljava/io/IOException;
    .end local v10           #filePath:Ljava/lang/String;
    :catch_19b
    move-exception v9

    .line 3854
    .local v9, ex:Ljava/lang/IllegalStateException;
    const-string v0, "CorePlayerService"

    const-string v1, "MP-setDataSource:IllegalArgumentException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3855
    invoke-direct {p0}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->handlingMediaPlayerErrorCase()V

    .line 3856
    const/4 v0, 0x0

    goto/16 :goto_124

    .line 3890
    .end local v9           #ex:Ljava/lang/IllegalStateException;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v11       #genre:I
    .restart local v12       #i:Landroid/content/Intent;
    .restart local v13       #strGenre:Ljava/lang/String;
    :catch_1a9
    move-exception v8

    .line 3891
    .local v8, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_1aa
    const-string v0, "CorePlayerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteFullException preparePlay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3892
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3893
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->forceStopPackage(Landroid/content/Context;)V
    :try_end_1d8
    .catchall {:try_start_1aa .. :try_end_1d8} :catchall_215

    .line 3899
    if-eqz v6, :cond_103

    .line 3900
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_103

    .line 3894
    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1df
    move-exception v8

    .line 3895
    .local v8, e:Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_1e0
    const-string v0, "CorePlayerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteDiskIOException preparePlay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3896
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3897
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->forceStopPackage(Landroid/content/Context;)V
    :try_end_20e
    .catchall {:try_start_1e0 .. :try_end_20e} :catchall_215

    .line 3899
    if-eqz v6, :cond_103

    .line 3900
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_103

    .line 3899
    .end local v8           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catchall_215
    move-exception v0

    if-eqz v6, :cond_21b

    .line 3900
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_21b
    throw v0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 3987
    iput-object p1, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mHandler:Landroid/os/Handler;

    .line 3988
    return-void
.end method

.method public setVolume(F)V
    .registers 3
    .parameter "vol"

    .prologue
    .line 4347
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0, p1, p1}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setVolume(FF)V

    .line 4348
    return-void
.end method

.method public start()V
    .registers 5

    .prologue
    .line 3941
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v1}, Lcom/sec/android/app/music/CorePlayerService;->registerMotionListener()V

    .line 3945
    :try_start_5
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v1}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->start()V

    .line 3946
    const v1, 0x11020

    iput v1, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mCurrentState:I
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_f} :catch_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_f} :catch_31

    .line 3955
    :goto_f
    return-void

    .line 3948
    :catch_10
    move-exception v0

    .line 3949
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "CorePlayerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalStateException occured 11 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3950
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->stop()V

    goto :goto_f

    .line 3951
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_31
    move-exception v0

    .line 3952
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "CorePlayerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException occured 12 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3953
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->stop()V

    goto :goto_f
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 3959
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService;->unregisterMotionListener()V

    .line 3961
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->reset()V

    .line 3962
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 3963
    return-void
.end method
