.class public Lcom/google/android/music/lockscreen/WaveLockActivity;
.super Landroid/app/Activity;
.source "WaveLockActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/lockscreen/WaveLockActivity$AlphaTextColor;
    }
.end annotation


# static fields
.field private static sPrevScreenTimeout:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sPrevScreenTimeoutReferenceCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mAlbum:Lcom/google/android/music/AsyncAlbumArtImageView;

.field private mApplicationContext:Landroid/content/Context;

.field private mArtistName:Landroid/widget/TextView;

.field private mArtistTextAlphaAnimator:Lcom/google/android/music/lockscreen/WaveLockActivity$AlphaTextColor;

.field private mBackground:Lcom/google/android/music/lockscreen/LockBackground;

.field private mCurrentAlbumId:J

.field private final mHandler:Landroid/os/Handler;

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mNextButton:Landroid/widget/ImageButton;

.field private final mOnTriggerListener:Lcom/google/android/music/lockscreen/WaveScene$OnTriggerListener;

.field private mPauseButton:Lcom/google/android/music/PlayPauseButton;

.field private mPrevButton:Landroid/widget/ImageButton;

.field private mService:Lcom/google/android/music/IMusicPlaybackService;

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field private mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

.field private mTrackName:Landroid/widget/TextView;

.field private mTrackTextAlphaAnimator:Lcom/google/android/music/lockscreen/WaveLockActivity$AlphaTextColor;

.field private osc:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/android/music/lockscreen/WaveLockActivity;->sPrevScreenTimeoutReferenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/android/music/lockscreen/WaveLockActivity;->sPrevScreenTimeout:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    iput-object v1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mApplicationContext:Landroid/content/Context;

    .line 67
    iput-object v1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    .line 76
    new-instance v0, Lcom/google/android/music/lockscreen/WaveLockActivity$AlphaTextColor;

    invoke-direct {v0, v1}, Lcom/google/android/music/lockscreen/WaveLockActivity$AlphaTextColor;-><init>(Lcom/google/android/music/lockscreen/WaveLockActivity$1;)V

    iput-object v0, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mArtistTextAlphaAnimator:Lcom/google/android/music/lockscreen/WaveLockActivity$AlphaTextColor;

    .line 77
    new-instance v0, Lcom/google/android/music/lockscreen/WaveLockActivity$AlphaTextColor;

    invoke-direct {v0, v1}, Lcom/google/android/music/lockscreen/WaveLockActivity$AlphaTextColor;-><init>(Lcom/google/android/music/lockscreen/WaveLockActivity$1;)V

    iput-object v0, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mTrackTextAlphaAnimator:Lcom/google/android/music/lockscreen/WaveLockActivity$AlphaTextColor;

    .line 79
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mCurrentAlbumId:J

    .line 130
    new-instance v0, Lcom/google/android/music/lockscreen/WaveLockActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/lockscreen/WaveLockActivity$1;-><init>(Lcom/google/android/music/lockscreen/WaveLockActivity;)V

    iput-object v0, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mOnTriggerListener:Lcom/google/android/music/lockscreen/WaveScene$OnTriggerListener;

    .line 157
    new-instance v0, Lcom/google/android/music/lockscreen/WaveLockActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/lockscreen/WaveLockActivity$2;-><init>(Lcom/google/android/music/lockscreen/WaveLockActivity;)V

    iput-object v0, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->osc:Landroid/content/ServiceConnection;

    .line 175
    new-instance v0, Lcom/google/android/music/lockscreen/WaveLockActivity$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/lockscreen/WaveLockActivity$3;-><init>(Lcom/google/android/music/lockscreen/WaveLockActivity;)V

    iput-object v0, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 248
    new-instance v0, Lcom/google/android/music/lockscreen/WaveLockActivity$5;

    invoke-direct {v0, p0}, Lcom/google/android/music/lockscreen/WaveLockActivity$5;-><init>(Lcom/google/android/music/lockscreen/WaveLockActivity;)V

    iput-object v0, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mHandler:Landroid/os/Handler;

    .line 301
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/music/lockscreen/WaveLockActivity;Landroid/content/ContentResolver;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/music/lockscreen/WaveLockActivity;->restoreScreenTimeout(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/music/lockscreen/WaveLockActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mTrackName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/lockscreen/WaveLockActivity;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/music/lockscreen/WaveLockActivity;->updateLayout(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/music/lockscreen/WaveLockActivity;)Lcom/google/android/music/IMusicPlaybackService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/music/lockscreen/WaveLockActivity;Lcom/google/android/music/IMusicPlaybackService;)Lcom/google/android/music/IMusicPlaybackService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/music/lockscreen/WaveLockActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/android/music/lockscreen/WaveLockActivity;->setPauseButtonImage()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/music/lockscreen/WaveLockActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/android/music/lockscreen/WaveLockActivity;->updateTrackInfo()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/music/lockscreen/WaveLockActivity;)Lcom/google/android/music/jumper/MusicPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/music/lockscreen/WaveLockActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/android/music/lockscreen/WaveLockActivity;->updateTrackInfoImpl()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/music/lockscreen/WaveLockActivity;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/music/lockscreen/WaveLockActivity;->updateLayoutImpl(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/music/lockscreen/WaveLockActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mArtistName:Landroid/widget/TextView;

    return-object v0
.end method

.method private doPauseResume()V
    .registers 4

    .prologue
    .line 269
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v1, :cond_14

    .line 271
    :try_start_4
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->isPreparing()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 272
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->stop()V

    .line 278
    :goto_11
    invoke-direct {p0}, Lcom/google/android/music/lockscreen/WaveLockActivity;->setPauseButtonImage()V

    .line 283
    :cond_14
    :goto_14
    return-void

    .line 273
    :cond_15
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 274
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->pause()V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_22} :catch_23

    goto :goto_11

    .line 279
    :catch_23
    move-exception v0

    .line 280
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WaveLockActivity"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    .line 276
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2e
    :try_start_2e
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->play()V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_33} :catch_23

    goto :goto_11
.end method

.method private restoreScreenTimeout(Landroid/content/ContentResolver;)V
    .registers 5
    .parameter "contentResolver"

    .prologue
    const/4 v2, -0x1

    .line 233
    sget-object v1, Lcom/google/android/music/lockscreen/WaveLockActivity;->sPrevScreenTimeout:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v1

    .line 234
    :try_start_4
    sget-object v0, Lcom/google/android/music/lockscreen/WaveLockActivity;->sPrevScreenTimeoutReferenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_25

    .line 235
    sget-object v0, Lcom/google/android/music/lockscreen/WaveLockActivity;->sPrevScreenTimeout:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq v0, v2, :cond_25

    .line 240
    const-string v0, "screen_off_timeout"

    sget-object v2, Lcom/google/android/music/lockscreen/WaveLockActivity;->sPrevScreenTimeout:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 242
    sget-object v0, Lcom/google/android/music/lockscreen/WaveLockActivity;->sPrevScreenTimeout:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 245
    :cond_25
    monitor-exit v1

    .line 246
    return-void

    .line 245
    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_27

    throw v0
.end method

.method private saveAndOverrideScreenTimeout(Landroid/content/ContentResolver;)V
    .registers 9
    .parameter "contentResolver"

    .prologue
    const/16 v6, 0x1388

    const/4 v5, 0x1

    .line 208
    sget-object v3, Lcom/google/android/music/lockscreen/WaveLockActivity;->sPrevScreenTimeout:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v3

    .line 209
    :try_start_6
    sget-object v2, Lcom/google/android/music/lockscreen/WaveLockActivity;->sPrevScreenTimeoutReferenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_47

    move-result v2

    if-ne v2, v5, :cond_35

    .line 211
    :try_start_f
    invoke-virtual {p0}, Lcom/google/android/music/lockscreen/WaveLockActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "screen_off_timeout"

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 213
    .local v0, currentScreenTimeout:I
    if-eq v0, v6, :cond_35

    .line 214
    sget-object v2, Lcom/google/android/music/lockscreen/WaveLockActivity;->sPrevScreenTimeout:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 215
    invoke-virtual {p0}, Lcom/google/android/music/lockscreen/WaveLockActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "screen_off_timeout"

    const/16 v5, 0x1388

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 218
    iget-object v2, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    new-instance v4, Lcom/google/android/music/lockscreen/WaveLockActivity$4;

    invoke-direct {v4, p0, v0}, Lcom/google/android/music/lockscreen/WaveLockActivity$4;-><init>(Lcom/google/android/music/lockscreen/WaveLockActivity;I)V

    invoke-virtual {v2, v4}, Lcom/google/android/music/jumper/MusicPreferences;->runWithPreferenceService(Ljava/lang/Runnable;)V
    :try_end_35
    .catchall {:try_start_f .. :try_end_35} :catchall_47
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_f .. :try_end_35} :catch_37

    .line 229
    .end local v0           #currentScreenTimeout:I
    :cond_35
    :goto_35
    :try_start_35
    monitor-exit v3

    .line 230
    return-void

    .line 224
    :catch_37
    move-exception v1

    .line 225
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "WaveLockActivity"

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    sget-object v2, Lcom/google/android/music/lockscreen/WaveLockActivity;->sPrevScreenTimeoutReferenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_35

    .line 229
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :catchall_47
    move-exception v2

    monitor-exit v3
    :try_end_49
    .catchall {:try_start_35 .. :try_end_49} :catchall_47

    throw v2
.end method

.method private setPauseButtonImage()V
    .registers 4

    .prologue
    .line 372
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v1, :cond_1a

    .line 374
    :try_start_4
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->isPreparing()Z

    move-result v1

    if-eqz v1, :cond_1b

    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->isStreaming()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 375
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mPauseButton:Lcom/google/android/music/PlayPauseButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/music/PlayPauseButton;->setCurrentPlayState(I)V

    .line 385
    :cond_1a
    :goto_1a
    return-void

    .line 376
    :cond_1b
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 377
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mPauseButton:Lcom/google/android/music/PlayPauseButton;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/music/PlayPauseButton;->setCurrentPlayState(I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_29} :catch_2a

    goto :goto_1a

    .line 381
    :catch_2a
    move-exception v0

    .line 382
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WaveLockActivity"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    .line 379
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_35
    :try_start_35
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mPauseButton:Lcom/google/android/music/PlayPauseButton;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/android/music/PlayPauseButton;->setCurrentPlayState(I)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3b} :catch_2a

    goto :goto_1a
.end method

.method private updateLayout(Z)V
    .registers 8
    .parameter "dimmed"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 320
    if-eqz p1, :cond_1c

    move v1, v2

    .line 321
    .local v1, what:I
    :goto_5
    iget-object v4, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 322
    .local v0, numsg:Landroid/os/Message;
    iget-object v4, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 323
    iget-object v2, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 324
    iget-object v2, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 325
    return-void

    .end local v0           #numsg:Landroid/os/Message;
    .end local v1           #what:I
    :cond_1c
    move v1, v3

    .line 320
    goto :goto_5
.end method

.method private updateLayoutImpl(Z)V
    .registers 12
    .parameter "dimmed"

    .prologue
    const/16 v1, 0xc8

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/16 v9, 0xff

    const/16 v8, 0x22

    .line 286
    iget-object v7, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mPauseButton:Lcom/google/android/music/PlayPauseButton;

    if-eqz p1, :cond_5a

    move v4, v5

    :goto_e
    invoke-virtual {v7, v4}, Lcom/google/android/music/PlayPauseButton;->setVisibility(I)V

    .line 287
    iget-object v7, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mNextButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_5c

    move v4, v5

    :goto_16
    invoke-virtual {v7, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 288
    iget-object v4, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_5e

    :goto_1d
    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 290
    new-instance v0, Lcom/google/android/music/animator/PropertyAnimator;

    iget-object v2, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mAlbum:Lcom/google/android/music/AsyncAlbumArtImageView;

    const-string v3, "alpha"

    if-eqz p1, :cond_60

    move v4, v9

    :goto_29
    if-eqz p1, :cond_62

    move v5, v8

    :goto_2c
    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/animator/PropertyAnimator;-><init>(ILjava/lang/Object;Ljava/lang/String;II)V

    .line 292
    .local v0, albumFader:Lcom/google/android/music/animator/Animator;
    new-instance v2, Lcom/google/android/music/animator/PropertyAnimator;

    iget-object v4, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mArtistTextAlphaAnimator:Lcom/google/android/music/lockscreen/WaveLockActivity$AlphaTextColor;

    const-string v5, "textAlpha"

    if-eqz p1, :cond_64

    const/16 v6, 0x80

    :goto_39
    if-eqz p1, :cond_67

    const/16 v7, 0x11

    :goto_3d
    move v3, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/music/animator/PropertyAnimator;-><init>(ILjava/lang/Object;Ljava/lang/String;II)V

    .line 294
    .local v2, albumTextFader:Lcom/google/android/music/animator/Animator;
    new-instance v3, Lcom/google/android/music/animator/PropertyAnimator;

    iget-object v5, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mTrackTextAlphaAnimator:Lcom/google/android/music/lockscreen/WaveLockActivity$AlphaTextColor;

    const-string v6, "textAlpha"

    if-eqz p1, :cond_6a

    move v7, v9

    :goto_4a
    if-eqz p1, :cond_6c

    :goto_4c
    move v4, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/music/animator/PropertyAnimator;-><init>(ILjava/lang/Object;Ljava/lang/String;II)V

    .line 296
    .local v3, trackTextFader:Lcom/google/android/music/animator/Animator;
    invoke-virtual {v0}, Lcom/google/android/music/animator/Animator;->start()V

    .line 297
    invoke-virtual {v2}, Lcom/google/android/music/animator/Animator;->start()V

    .line 298
    invoke-virtual {v3}, Lcom/google/android/music/animator/Animator;->start()V

    .line 299
    return-void

    .end local v0           #albumFader:Lcom/google/android/music/animator/Animator;
    .end local v2           #albumTextFader:Lcom/google/android/music/animator/Animator;
    .end local v3           #trackTextFader:Lcom/google/android/music/animator/Animator;
    :cond_5a
    move v4, v6

    .line 286
    goto :goto_e

    :cond_5c
    move v4, v6

    .line 287
    goto :goto_16

    :cond_5e
    move v5, v6

    .line 288
    goto :goto_1d

    :cond_60
    move v4, v8

    .line 290
    goto :goto_29

    :cond_62
    move v5, v9

    goto :goto_2c

    .line 292
    .restart local v0       #albumFader:Lcom/google/android/music/animator/Animator;
    :cond_64
    const/16 v6, 0x11

    goto :goto_39

    :cond_67
    const/16 v7, 0x80

    goto :goto_3d

    .restart local v2       #albumTextFader:Lcom/google/android/music/animator/Animator;
    :cond_6a
    move v7, v8

    .line 294
    goto :goto_4a

    :cond_6c
    move v8, v9

    goto :goto_4c
.end method

.method private updateTrackInfo()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 328
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 329
    .local v0, numsg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 330
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 331
    return-void
.end method

.method private updateTrackInfoImpl()V
    .registers 10

    .prologue
    .line 334
    iget-object v7, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-nez v7, :cond_5

    .line 369
    :cond_4
    :goto_4
    return-void

    .line 338
    :cond_5
    :try_start_5
    iget-object v7, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v7}, Lcom/google/android/music/IMusicPlaybackService;->isCurrentSongLoaded()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 339
    iget-object v7, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v7}, Lcom/google/android/music/IMusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v3

    .line 340
    .local v3, artistName:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 341
    const v7, 0x7f0d0064

    invoke-virtual {p0, v7}, Lcom/google/android/music/lockscreen/WaveLockActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 343
    :cond_20
    move-object v5, v3

    .line 345
    .local v5, finalArtistName:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v7}, Lcom/google/android/music/IMusicPlaybackService;->getAlbumId()J

    move-result-wide v1

    .line 346
    .local v1, albumid:J
    iget-wide v7, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mCurrentAlbumId:J

    cmp-long v7, v7, v1

    if-eqz v7, :cond_4c

    .line 347
    iput-wide v1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mCurrentAlbumId:J

    .line 348
    iget-object v7, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v7}, Lcom/google/android/music/IMusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, albumName:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_42

    .line 350
    const v7, 0x7f0d0065

    invoke-virtual {p0, v7}, Lcom/google/android/music/lockscreen/WaveLockActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 353
    :cond_42
    iget-object v7, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mAlbum:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {v7, v1, v2, v0, v3}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumId(JLjava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v7, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mBackground:Lcom/google/android/music/lockscreen/LockBackground;

    invoke-virtual {v7, v1, v2}, Lcom/google/android/music/lockscreen/LockBackground;->setRepresentativeAlbum(J)V

    .line 356
    .end local v0           #albumName:Ljava/lang/String;
    :cond_4c
    iget-object v7, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v7}, Lcom/google/android/music/IMusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v6

    .line 358
    .local v6, finalTrackName:Ljava/lang/String;
    new-instance v7, Lcom/google/android/music/lockscreen/WaveLockActivity$6;

    invoke-direct {v7, p0, v5, v6}, Lcom/google/android/music/lockscreen/WaveLockActivity$6;-><init>(Lcom/google/android/music/lockscreen/WaveLockActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/google/android/music/lockscreen/WaveLockActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5a} :catch_5b

    goto :goto_4

    .line 366
    .end local v1           #albumid:J
    .end local v3           #artistName:Ljava/lang/String;
    .end local v5           #finalArtistName:Ljava/lang/String;
    .end local v6           #finalTrackName:Ljava/lang/String;
    :catch_5b
    move-exception v4

    .line 367
    .local v4, e:Landroid/os/RemoteException;
    const-string v7, "WaveLockActivity"

    invoke-virtual {v4}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/music/lockscreen/WaveLockActivity;->restoreScreenTimeout(Landroid/content/ContentResolver;)V

    .line 410
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 411
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 389
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mPauseButton:Lcom/google/android/music/PlayPauseButton;

    if-ne p1, v1, :cond_8

    .line 390
    invoke-direct {p0}, Lcom/google/android/music/lockscreen/WaveLockActivity;->doPauseResume()V

    .line 403
    :cond_7
    :goto_7
    return-void

    .line 391
    :cond_8
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mPrevButton:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_21

    .line 392
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v1, :cond_7

    .line 393
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->prev()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_7

    .line 400
    :catch_16
    move-exception v0

    .line 401
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WaveLockActivity"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 394
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_21
    :try_start_21
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mNextButton:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_2f

    .line 395
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v1, :cond_7

    .line 396
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->next()V

    goto :goto_7

    .line 398
    :cond_2f
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown view clicked on: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_48} :catch_16
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/google/android/music/lockscreen/WaveLockActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mApplicationContext:Landroid/content/Context;

    .line 87
    invoke-static {p0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 88
    invoke-virtual {p0}, Lcom/google/android/music/lockscreen/WaveLockActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 89
    invoke-virtual {p0}, Lcom/google/android/music/lockscreen/WaveLockActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 90
    invoke-virtual {p0}, Lcom/google/android/music/lockscreen/WaveLockActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x40

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 93
    invoke-virtual {p0, v5}, Lcom/google/android/music/lockscreen/WaveLockActivity;->requestWindowFeature(I)Z

    .line 95
    invoke-virtual {p0}, Lcom/google/android/music/lockscreen/WaveLockActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 96
    .local v0, currentWindow:Landroid/view/Window;
    if-eqz v0, :cond_3b

    .line 101
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    :cond_3b
    invoke-virtual {p0}, Lcom/google/android/music/lockscreen/WaveLockActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/music/lockscreen/WaveLockActivity;->saveAndOverrideScreenTimeout(Landroid/content/ContentResolver;)V

    .line 107
    const v3, 0x7f04001e

    invoke-virtual {p0, v3}, Lcom/google/android/music/lockscreen/WaveLockActivity;->setContentView(I)V

    .line 108
    const v3, 0x7f100062

    invoke-virtual {p0, v3}, Lcom/google/android/music/lockscreen/WaveLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/lockscreen/WaveView;

    .line 109
    .local v2, view:Lcom/google/android/music/lockscreen/WaveView;
    invoke-virtual {v2}, Lcom/google/android/music/lockscreen/WaveView;->getWaveScene()Lcom/google/android/music/lockscreen/WaveScene;

    move-result-object v1

    .line 110
    .local v1, scene:Lcom/google/android/music/lockscreen/WaveScene;
    iget-object v3, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mOnTriggerListener:Lcom/google/android/music/lockscreen/WaveScene$OnTriggerListener;

    invoke-virtual {v1, v3}, Lcom/google/android/music/lockscreen/WaveScene;->setOnTriggerListener(Lcom/google/android/music/lockscreen/WaveScene$OnTriggerListener;)V

    .line 112
    const v3, 0x7f100018

    invoke-virtual {p0, v3}, Lcom/google/android/music/lockscreen/WaveLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/AsyncAlbumArtImageView;

    iput-object v3, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mAlbum:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 113
    const v3, 0x7f10001f

    invoke-virtual {p0, v3}, Lcom/google/android/music/lockscreen/WaveLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mTrackName:Landroid/widget/TextView;

    .line 114
    const v3, 0x7f100020

    invoke-virtual {p0, v3}, Lcom/google/android/music/lockscreen/WaveLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mArtistName:Landroid/widget/TextView;

    .line 115
    const v3, 0x7f10002c

    invoke-virtual {p0, v3}, Lcom/google/android/music/lockscreen/WaveLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/PlayPauseButton;

    iput-object v3, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mPauseButton:Lcom/google/android/music/PlayPauseButton;

    .line 116
    const v3, 0x7f10002d

    invoke-virtual {p0, v3}, Lcom/google/android/music/lockscreen/WaveLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mNextButton:Landroid/widget/ImageButton;

    .line 117
    const v3, 0x7f10002b

    invoke-virtual {p0, v3}, Lcom/google/android/music/lockscreen/WaveLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mPrevButton:Landroid/widget/ImageButton;

    .line 119
    iget-object v3, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mPauseButton:Lcom/google/android/music/PlayPauseButton;

    invoke-virtual {v3, p0}, Lcom/google/android/music/PlayPauseButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v3, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v3, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v3, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mTrackTextAlphaAnimator:Lcom/google/android/music/lockscreen/WaveLockActivity$AlphaTextColor;

    iget-object v4, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Lcom/google/android/music/lockscreen/WaveLockActivity$AlphaTextColor;->addTextView(Landroid/widget/TextView;)V

    .line 124
    iget-object v3, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mArtistTextAlphaAnimator:Lcom/google/android/music/lockscreen/WaveLockActivity$AlphaTextColor;

    iget-object v4, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mArtistName:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Lcom/google/android/music/lockscreen/WaveLockActivity$AlphaTextColor;->addTextView(Landroid/widget/TextView;)V

    .line 125
    iget-object v3, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mAlbum:Lcom/google/android/music/AsyncAlbumArtImageView;

    sget-object v4, Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;->FOREGROUND:Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;

    invoke-virtual {v3, v4}, Lcom/google/android/music/AsyncAlbumArtImageView;->setLayerMode(Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;)V

    .line 126
    new-instance v3, Lcom/google/android/music/lockscreen/LockBackground;

    invoke-virtual {v1}, Lcom/google/android/music/lockscreen/WaveScene;->getRenderer()Lcom/google/android/music/lockscreen/WaveRenderer;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/google/android/music/lockscreen/LockBackground;-><init>(Landroid/content/Context;Lcom/google/android/music/lockscreen/WaveRenderer;J)V

    iput-object v3, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mBackground:Lcom/google/android/music/lockscreen/LockBackground;

    .line 127
    iget-object v3, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mBackground:Lcom/google/android/music/lockscreen/LockBackground;

    invoke-virtual {v1, v3}, Lcom/google/android/music/lockscreen/WaveScene;->setBackground(Lcom/google/android/music/lockscreen/LockBackground;)V

    .line 128
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 202
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 203
    invoke-virtual {p0}, Lcom/google/android/music/lockscreen/WaveLockActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/music/lockscreen/WaveLockActivity;->restoreScreenTimeout(Landroid/content/ContentResolver;)V

    .line 204
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 205
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 190
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 192
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->osc:Landroid/content/ServiceConnection;

    invoke-static {p0, v1}, Lcom/google/android/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/google/android/music/MusicUtils$ServiceToken;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    .line 193
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 194
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/music/lockscreen/WaveLockActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 197
    invoke-direct {p0}, Lcom/google/android/music/lockscreen/WaveLockActivity;->updateTrackInfo()V

    .line 198
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/music/lockscreen/WaveLockActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 152
    iget-object v0, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->unbindFromService(Lcom/google/android/music/MusicUtils$ServiceToken;)V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/lockscreen/WaveLockActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 155
    return-void
.end method
