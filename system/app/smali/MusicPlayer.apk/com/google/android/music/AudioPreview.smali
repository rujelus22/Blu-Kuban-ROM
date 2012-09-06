.class public Lcom/google/android/music/AudioPreview;
.super Landroid/app/Activity;
.source "AudioPreview.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/AudioPreview$PreviewPlayer;,
        Lcom/google/android/music/AudioPreview$ProgressRefresher;
    }
.end annotation


# instance fields
.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mDuration:I

.field private mLoadingText:Landroid/widget/TextView;

.field private mMediaId:J

.field private mPausedByTransientLossOfFocus:Z

.field private mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

.field private mProgressRefresher:Landroid/os/Handler;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeeking:Z

.field private mTextLine1:Landroid/widget/TextView;

.field private mTextLine2:Landroid/widget/TextView;

.field private mTracker:Lcom/google/android/music/MusicEventLogger;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/AudioPreview;->mSeeking:Z

    .line 57
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/AudioPreview;->mMediaId:J

    .line 265
    new-instance v0, Lcom/google/android/music/AudioPreview$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/AudioPreview$2;-><init>(Lcom/google/android/music/AudioPreview;)V

    iput-object v0, p0, Lcom/google/android/music/AudioPreview;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 343
    new-instance v0, Lcom/google/android/music/AudioPreview$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/AudioPreview$3;-><init>(Lcom/google/android/music/AudioPreview;)V

    iput-object v0, p0, Lcom/google/android/music/AudioPreview;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 440
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/music/AudioPreview;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/google/android/music/AudioPreview;->mDuration:I

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/music/AudioPreview;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/google/android/music/AudioPreview;->mMediaId:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/google/android/music/AudioPreview;)Landroid/widget/SeekBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/music/AudioPreview;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/AudioPreview;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/music/AudioPreview;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/music/AudioPreview;)Lcom/google/android/music/AudioPreview$PreviewPlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/music/AudioPreview;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/music/AudioPreview;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/google/android/music/AudioPreview;->mPausedByTransientLossOfFocus:Z

    return v0
.end method

.method static synthetic access$602(Lcom/google/android/music/AudioPreview;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/google/android/music/AudioPreview;->mPausedByTransientLossOfFocus:Z

    return p1
.end method

.method static synthetic access$700(Lcom/google/android/music/AudioPreview;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/music/AudioPreview;->start()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/music/AudioPreview;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/music/AudioPreview;->updatePlayPause()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/music/AudioPreview;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/google/android/music/AudioPreview;->mSeeking:Z

    return v0
.end method

.method static synthetic access$902(Lcom/google/android/music/AudioPreview;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/google/android/music/AudioPreview;->mSeeking:Z

    return p1
.end method

.method private showPostPrepareUI()V
    .registers 9

    .prologue
    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 242
    const v4, 0x7f100039

    invoke-virtual {p0, v4}, Lcom/google/android/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 243
    .local v0, pb:Landroid/widget/ProgressBar;
    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 244
    iget-object v4, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v4}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->getDuration()I

    move-result v4

    iput v4, p0, Lcom/google/android/music/AudioPreview;->mDuration:I

    .line 245
    iget v4, p0, Lcom/google/android/music/AudioPreview;->mDuration:I

    if-eqz v4, :cond_28

    .line 246
    iget-object v4, p0, Lcom/google/android/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    iget v5, p0, Lcom/google/android/music/AudioPreview;->mDuration:I

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 247
    iget-object v4, p0, Lcom/google/android/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 249
    :cond_28
    iget-object v4, p0, Lcom/google/android/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v5, p0, Lcom/google/android/music/AudioPreview;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 250
    iget-object v4, p0, Lcom/google/android/music/AudioPreview;->mLoadingText:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    const v4, 0x7f10003c

    invoke-virtual {p0, v4}, Lcom/google/android/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 252
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 253
    iget-object v4, p0, Lcom/google/android/music/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    iget-object v5, p0, Lcom/google/android/music/AudioPreview;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v6, 0x3

    const/4 v7, 0x2

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v4

    if-ne v1, v4, :cond_6a

    .line 256
    .local v1, recievedAudioFocus:Z
    :goto_4a
    if-nez v1, :cond_5a

    .line 257
    const-string v4, "AudioPreview"

    const-string v5, "showPostPrepareUI did not obtain audio focus"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iput-boolean v3, p0, Lcom/google/android/music/AudioPreview;->mPausedByTransientLossOfFocus:Z

    .line 259
    iget-object v3, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v3}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->pause()V

    .line 261
    :cond_5a
    iget-object v3, p0, Lcom/google/android/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/music/AudioPreview$ProgressRefresher;

    invoke-direct {v4, p0}, Lcom/google/android/music/AudioPreview$ProgressRefresher;-><init>(Lcom/google/android/music/AudioPreview;)V

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 262
    invoke-direct {p0}, Lcom/google/android/music/AudioPreview;->updatePlayPause()V

    .line 263
    return-void

    .end local v1           #recievedAudioFocus:Z
    :cond_6a
    move v1, v3

    .line 253
    goto :goto_4a
.end method

.method private start()V
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 297
    iget-object v1, p0, Lcom/google/android/music/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/google/android/music/AudioPreview;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    if-ne v0, v1, :cond_17

    .line 300
    .local v0, recievedAudioFocus:Z
    :goto_d
    if-nez v0, :cond_19

    .line 301
    const-string v1, "AudioPreview"

    const-string v2, "start did not obtain audio focus"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :goto_16
    return-void

    .line 297
    .end local v0           #recievedAudioFocus:Z
    :cond_17
    const/4 v0, 0x0

    goto :goto_d

    .line 304
    .restart local v0       #recievedAudioFocus:Z
    :cond_19
    iget-object v1, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v1}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->start()V

    .line 305
    iget-object v1, p0, Lcom/google/android/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/music/AudioPreview$ProgressRefresher;

    invoke-direct {v2, p0}, Lcom/google/android/music/AudioPreview$ProgressRefresher;-><init>(Lcom/google/android/music/AudioPreview;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_16
.end method

.method private stopPlayback()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 216
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    if-eqz v0, :cond_a

    .line 217
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 219
    :cond_a
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    if-eqz v0, :cond_1c

    .line 220
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->release()V

    .line 221
    iput-object v1, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    .line 222
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/google/android/music/AudioPreview;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 224
    :cond_1c
    return-void
.end method

.method private updatePlayPause()V
    .registers 4

    .prologue
    .line 332
    const v1, 0x7f10003f

    invoke-virtual {p0, v1}, Lcom/google/android/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 333
    .local v0, b:Landroid/widget/ImageButton;
    if-eqz v0, :cond_19

    .line 334
    iget-object v1, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v1}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 335
    const v1, 0x7f02006e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 341
    :cond_19
    :goto_19
    return-void

    .line 337
    :cond_1a
    const v1, 0x7f02006f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 338
    iget-object v1, p0, Lcom/google/android/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_19
.end method


# virtual methods
.method public getPageUrlForTracking()Ljava/lang/String;
    .registers 2

    .prologue
    .line 199
    const-string v0, "audioPreview"

    return-object v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4
    .parameter "mp"

    .prologue
    .line 365
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/google/android/music/AudioPreview;->mDuration:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 366
    invoke-direct {p0}, Lcom/google/android/music/AudioPreview;->updatePlayPause()V

    .line 367
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 16
    .parameter "icicle"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-static {p0}, Lcom/google/android/music/MusicEventLogger;->getInstance(Landroid/content/Context;)Lcom/google/android/music/MusicEventLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/AudioPreview;->mTracker:Lcom/google/android/music/MusicEventLogger;

    .line 70
    invoke-virtual {p0}, Lcom/google/android/music/AudioPreview;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 71
    .local v9, intent:Landroid/content/Intent;
    if-nez v9, :cond_13

    .line 72
    invoke-virtual {p0}, Lcom/google/android/music/AudioPreview;->finish()V

    .line 189
    :cond_12
    :goto_12
    return-void

    .line 75
    :cond_13
    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    .line 76
    iget-object v1, p0, Lcom/google/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    if-nez v1, :cond_21

    .line 77
    invoke-virtual {p0}, Lcom/google/android/music/AudioPreview;->finish()V

    goto :goto_12

    .line 80
    :cond_21
    iget-object v1, p0, Lcom/google/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v13

    .line 82
    .local v13, scheme:Ljava/lang/String;
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/android/music/AudioPreview;->setVolumeControlStream(I)V

    .line 83
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/music/AudioPreview;->requestWindowFeature(I)Z

    .line 84
    const v1, 0x7f04000c

    invoke-virtual {p0, v1}, Lcom/google/android/music/AudioPreview;->setContentView(I)V

    .line 86
    const v1, 0x7f10003d

    invoke-virtual {p0, v1}, Lcom/google/android/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;

    .line 87
    const v1, 0x7f10003e

    invoke-virtual {p0, v1}, Lcom/google/android/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    .line 88
    const v1, 0x7f10003a

    invoke-virtual {p0, v1}, Lcom/google/android/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/music/AudioPreview;->mLoadingText:Landroid/widget/TextView;

    .line 89
    const-string v1, "http"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e2

    .line 90
    const v1, 0x7f0d009c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/google/android/music/AudioPreview;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 91
    .local v10, msg:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/music/AudioPreview;->mLoadingText:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .end local v10           #msg:Ljava/lang/String;
    :goto_76
    const v1, 0x7f10003b

    invoke-virtual {p0, v1}, Lcom/google/android/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/google/android/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;

    .line 96
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;

    .line 97
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/google/android/music/AudioPreview;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/google/android/music/AudioPreview;->mAudioManager:Landroid/media/AudioManager;

    .line 99
    invoke-virtual {p0}, Lcom/google/android/music/AudioPreview;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/music/AudioPreview$PreviewPlayer;

    .line 100
    .local v12, player:Lcom/google/android/music/AudioPreview$PreviewPlayer;
    if-nez v12, :cond_113

    .line 101
    new-instance v1, Lcom/google/android/music/AudioPreview$PreviewPlayer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/music/AudioPreview$PreviewPlayer;-><init>(Lcom/google/android/music/AudioPreview$1;)V

    iput-object v1, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    .line 102
    iget-object v1, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v1, p0}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->setActivity(Lcom/google/android/music/AudioPreview;)V

    .line 104
    :try_start_a7
    iget-object v1, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    iget-object v2, p0, Lcom/google/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->setDataSourceAndPrepare(Landroid/net/Uri;)V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_ae} :catch_ea

    .line 123
    :cond_ae
    :goto_ae
    new-instance v0, Lcom/google/android/music/AudioPreview$1;

    invoke-virtual {p0}, Lcom/google/android/music/AudioPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/AudioPreview$1;-><init>(Lcom/google/android/music/AudioPreview;Landroid/content/ContentResolver;)V

    .line 162
    .local v0, mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;
    const-string v1, "content"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_133

    .line 163
    iget-object v1, p0, Lcom/google/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "media"

    if-ne v1, v2, :cond_126

    .line 165
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "title"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "artist"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 93
    .end local v0           #mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;
    .end local v12           #player:Lcom/google/android/music/AudioPreview$PreviewPlayer;
    :cond_e2
    iget-object v1, p0, Lcom/google/android/music/AudioPreview;->mLoadingText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_76

    .line 105
    .restart local v12       #player:Lcom/google/android/music/AudioPreview$PreviewPlayer;
    :catch_ea
    move-exception v8

    .line 110
    .local v8, ex:Ljava/lang/Exception;
    const-string v1, "AudioPreview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const v1, 0x7f0d0099

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 112
    invoke-virtual {p0}, Lcom/google/android/music/AudioPreview;->finish()V

    goto/16 :goto_12

    .line 116
    .end local v8           #ex:Ljava/lang/Exception;
    :cond_113
    iput-object v12, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    .line 117
    iget-object v1, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v1, p0}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->setActivity(Lcom/google/android/music/AudioPreview;)V

    .line 118
    iget-object v1, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v1}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->isPrepared()Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 119
    invoke-direct {p0}, Lcom/google/android/music/AudioPreview;->showPostPrepareUI()V

    goto :goto_ae

    .line 172
    .restart local v0       #mAsyncQueryHandler:Landroid/content/AsyncQueryHandler;
    :cond_126
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 174
    :cond_133
    const-string v1, "file"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    .line 177
    iget-object v1, p0, Lcom/google/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    .line 178
    .local v11, path:Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "title"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "artist"

    aput-object v6, v4, v5

    const-string v5, "_data=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v11, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 185
    .end local v11           #path:Ljava/lang/String;
    :cond_165
    iget-object v1, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v1}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->isPrepared()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 186
    invoke-virtual {p0}, Lcom/google/android/music/AudioPreview;->setNames()V

    goto/16 :goto_12
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 380
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 385
    const-string v0, "open in music"

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 386
    return v2
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/google/android/music/AudioPreview;->stopPlayback()V

    .line 212
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 213
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 6
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 359
    const v0, 0x7f0d0099

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 360
    invoke-virtual {p0}, Lcom/google/android/music/AudioPreview;->finish()V

    .line 361
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 402
    sparse-switch p1, :sswitch_data_3e

    .line 433
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_8
    :sswitch_8
    return v0

    .line 405
    :sswitch_9
    iget-object v1, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v1}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 406
    iget-object v1, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v1}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->pause()V

    .line 410
    :goto_16
    invoke-direct {p0}, Lcom/google/android/music/AudioPreview;->updatePlayPause()V

    goto :goto_8

    .line 408
    :cond_1a
    invoke-direct {p0}, Lcom/google/android/music/AudioPreview;->start()V

    goto :goto_16

    .line 413
    :sswitch_1e
    invoke-direct {p0}, Lcom/google/android/music/AudioPreview;->start()V

    .line 414
    invoke-direct {p0}, Lcom/google/android/music/AudioPreview;->updatePlayPause()V

    goto :goto_8

    .line 417
    :sswitch_25
    iget-object v1, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v1}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 418
    iget-object v1, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v1}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->pause()V

    .line 420
    :cond_32
    invoke-direct {p0}, Lcom/google/android/music/AudioPreview;->updatePlayPause()V

    goto :goto_8

    .line 429
    :sswitch_36
    invoke-direct {p0}, Lcom/google/android/music/AudioPreview;->stopPlayback()V

    .line 430
    invoke-virtual {p0}, Lcom/google/android/music/AudioPreview;->finish()V

    goto :goto_8

    .line 402
    nop

    :sswitch_data_3e
    .sparse-switch
        0x4 -> :sswitch_36
        0x4f -> :sswitch_9
        0x55 -> :sswitch_9
        0x56 -> :sswitch_36
        0x57 -> :sswitch_8
        0x58 -> :sswitch_8
        0x59 -> :sswitch_8
        0x5a -> :sswitch_8
        0x7e -> :sswitch_1e
        0x7f -> :sswitch_25
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 9
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 391
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 392
    .local v0, item:Landroid/view/MenuItem;
    iget-wide v3, p0, Lcom/google/android/music/AudioPreview;->mMediaId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_12

    .line 393
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 397
    :goto_11
    return v1

    .line 396
    :cond_12
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move v1, v2

    .line 397
    goto :goto_11
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 3
    .parameter "mp"

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/google/android/music/AudioPreview;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 239
    .end local p1
    :goto_6
    return-void

    .line 235
    .restart local p1
    :cond_7
    check-cast p1, Lcom/google/android/music/AudioPreview$PreviewPlayer;

    .end local p1
    iput-object p1, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    .line 236
    invoke-virtual {p0}, Lcom/google/android/music/AudioPreview;->setNames()V

    .line 237
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->start()V

    .line 238
    invoke-direct {p0}, Lcom/google/android/music/AudioPreview;->showPostPrepareUI()V

    goto :goto_6
.end method

.method protected onResume()V
    .registers 6

    .prologue
    .line 193
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 194
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mTracker:Lcom/google/android/music/MusicEventLogger;

    invoke-virtual {p0}, Lcom/google/android/music/AudioPreview;->getPageUrlForTracking()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "uri"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/music/MusicEventLogger;->trackScreenView(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    .line 205
    .local v0, player:Lcom/google/android/music/AudioPreview$PreviewPlayer;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    .line 206
    return-object v0
.end method

.method public onUserLeaveHint()V
    .registers 1

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/google/android/music/AudioPreview;->stopPlayback()V

    .line 229
    invoke-virtual {p0}, Lcom/google/android/music/AudioPreview;->finish()V

    .line 230
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 231
    return-void
.end method

.method public playPauseClicked(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 371
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mPlayer:Lcom/google/android/music/AudioPreview$PreviewPlayer;

    invoke-virtual {v0}, Lcom/google/android/music/AudioPreview$PreviewPlayer;->pause()V

    .line 375
    :goto_d
    invoke-direct {p0}, Lcom/google/android/music/AudioPreview;->updatePlayPause()V

    .line 376
    return-void

    .line 373
    :cond_11
    invoke-direct {p0}, Lcom/google/android/music/AudioPreview;->start()V

    goto :goto_d
.end method

.method public setNames()V
    .registers 3

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 310
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/music/AudioPreview;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    :cond_17
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 313
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 317
    :goto_2a
    return-void

    .line 315
    :cond_2b
    iget-object v0, p0, Lcom/google/android/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2a
.end method
