.class public Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;
.super Landroid/media/MediaPlayer;
.source "MXListPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$OnListPlayErrorListener;,
        Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$OnListPlayCompletionListener;,
        Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$OnListPlayListener;
    }
.end annotation


# static fields
.field private static final _instance:Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;


# instance fields
.field private AUDIO_ESCALATING_SUPPORT:Z

.field private isExecutable:Z

.field private isPreparing:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCompleteFlag:Z

.field private mFileName:Ljava/lang/String;

.field private mFilepath:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mListPlayerHandler:Landroid/os/Handler;

.field private mMonitoring:Ljava/lang/Runnable;

.field private mOnCompletionListener:Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$OnListPlayCompletionListener;

.field private mOnListPlayErrorListener:Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$OnListPlayErrorListener;

.field private mOnListPlayListener:Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$OnListPlayListener;

.field private mPosition:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    new-instance v0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    invoke-direct {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;-><init>()V

    sput-object v0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->_instance:Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->isExecutable:Z

    .line 58
    iput-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 60
    iput-boolean v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->AUDIO_ESCALATING_SUPPORT:Z

    .line 62
    iput-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mOnListPlayListener:Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$OnListPlayListener;

    .line 64
    iput-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mOnCompletionListener:Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$OnListPlayCompletionListener;

    .line 66
    iput-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mOnListPlayErrorListener:Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$OnListPlayErrorListener;

    .line 73
    iput-boolean v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->isPreparing:Z

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mHandler:Landroid/os/Handler;

    .line 78
    new-instance v0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$1;-><init>(Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mMonitoring:Ljava/lang/Runnable;

    .line 362
    new-instance v0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$2;-><init>(Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mListPlayerHandler:Landroid/os/Handler;

    .line 93
    invoke-virtual {p0, p0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 95
    invoke-virtual {p0, p0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->checkListPlayerAndUpdateView()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mCompleteFlag:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mListPlayerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkListPlayerAndUpdateView()V
    .registers 5

    .prologue
    .line 317
    iget-boolean v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->isExecutable:Z

    if-nez v2, :cond_8

    .line 318
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->stop()V

    .line 335
    :cond_7
    :goto_7
    return-void

    .line 322
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 323
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getCurrentPosition()I

    move-result v1

    .line 324
    .local v1, position:I
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getDuration()I

    move-result v0

    .line 326
    .local v0, duration:I
    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mOnListPlayListener:Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$OnListPlayListener;

    if-eqz v2, :cond_7

    .line 327
    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mOnListPlayListener:Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$OnListPlayListener;

    iget-object v3, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mFileName:Ljava/lang/String;

    invoke-interface {v2, v3, v1, v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$OnListPlayListener;->onListPlaying(Ljava/lang/String;II)V

    goto :goto_7

    .line 329
    .end local v0           #duration:I
    .end local v1           #position:I
    :cond_22
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->isComplete()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 331
    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mOnCompletionListener:Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$OnListPlayCompletionListener;

    if-eqz v2, :cond_7

    .line 332
    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mOnCompletionListener:Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$OnListPlayCompletionListener;

    iget-object v3, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mFileName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$OnListPlayCompletionListener;->onCompletion(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public static getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;
    .registers 1

    .prologue
    .line 99
    sget-object v0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->_instance:Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    return-object v0
.end method

.method private setVolume()V
    .registers 2

    .prologue
    const/high16 v0, 0x4040

    .line 354
    invoke-virtual {p0, v0, v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->setVolume(FF)V

    .line 355
    return-void
.end method

.method private startAndFadeIn()V
    .registers 5

    .prologue
    .line 359
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mListPlayerHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 360
    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public isComplete()Z
    .registers 2

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mCompleteFlag:Z

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4
    .parameter "mp"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mOnCompletionListener:Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$OnListPlayCompletionListener;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mFileName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$OnListPlayCompletionListener;->onCompletion(Ljava/lang/String;)V

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mCompleteFlag:Z

    .line 212
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 4
    .parameter "mediaPlayer"

    .prologue
    .line 391
    iget v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mPosition:I

    if-eqz v0, :cond_9

    .line 392
    iget v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mPosition:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->seekTo(I)V

    .line 394
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mFilepath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/myfiles/MediaFile;->getFileTypeInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/MediaFile;->isMIDFileType(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 395
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->setVolume()V

    .line 397
    :cond_18
    iget-boolean v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->AUDIO_ESCALATING_SUPPORT:Z

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 399
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->startAndFadeIn()V

    .line 405
    :goto_2b
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mMonitoring:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 407
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->isPreparing:Z

    .line 408
    return-void

    .line 402
    :cond_36
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->start()V

    goto :goto_2b
.end method

.method public declared-synchronized play(Ljava/lang/String;)I
    .registers 5
    .parameter "filename"

    .prologue
    const/4 v1, 0x1

    .line 216
    monitor-enter p0

    :try_start_2
    iget-boolean v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->isExecutable:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_37

    if-nez v2, :cond_9

    .line 217
    const/4 v1, 0x3

    .line 243
    :cond_7
    :goto_7
    monitor-exit p0

    return v1

    .line 220
    :cond_9
    :try_start_9
    iget-boolean v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->isPreparing:Z

    if-eqz v2, :cond_13

    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_7

    .line 223
    :cond_13
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->isPreparing:Z

    .line 226
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->stop()V
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_37

    .line 228
    const/4 v1, 0x0

    .line 230
    .local v1, result:I
    const/4 v2, 0x0

    :try_start_1b
    invoke-virtual {p0, p1, v2}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->play(Ljava/lang/String;I)I

    move-result v1

    .line 235
    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mOnListPlayErrorListener:Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$OnListPlayErrorListener;

    if-eqz v2, :cond_7

    .line 236
    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mOnListPlayErrorListener:Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$OnListPlayErrorListener;

    invoke-interface {v2, p1}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$OnListPlayErrorListener;->onListPlayError(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_37
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_28} :catch_29

    goto :goto_7

    .line 237
    :catch_29
    move-exception v0

    .line 238
    .local v0, e:Ljava/lang/Exception;
    :try_start_2a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 240
    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mOnListPlayErrorListener:Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$OnListPlayErrorListener;

    if-eqz v2, :cond_7

    .line 241
    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mOnListPlayErrorListener:Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$OnListPlayErrorListener;

    invoke-interface {v2, p1}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$OnListPlayErrorListener;->onListPlayError(Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_2a .. :try_end_36} :catchall_37

    goto :goto_7

    .line 216
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #result:I
    :catchall_37
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public play(Ljava/lang/String;I)I
    .registers 7
    .parameter "filename"
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 131
    iput p2, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mPosition:I

    .line 132
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mFilepath:Ljava/lang/String;

    .line 134
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mFileName:Ljava/lang/String;

    .line 136
    .local v1, stopFile:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->isExecutable:Z

    if-nez v3, :cond_d

    .line 137
    const/4 v2, 0x3

    .line 179
    :cond_c
    :goto_c
    return v2

    .line 156
    :cond_d
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 159
    const/4 v2, 0x2

    goto :goto_c

    .line 162
    :cond_1a
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 163
    iget-object v3, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mFileName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 166
    invoke-virtual {p0, v1}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->stop(Ljava/lang/String;)V

    .line 170
    :cond_2b
    iput-boolean v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mCompleteFlag:Z

    .line 171
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->reset()V

    .line 172
    invoke-virtual {p0, p1}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->setDataSource(Ljava/lang/String;)V

    .line 173
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mFileName:Ljava/lang/String;

    .line 176
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->prepareAsync()V

    goto :goto_c
.end method

.method public setAudioManager(Landroid/media/AudioManager;)V
    .registers 2
    .parameter "audioManager"

    .prologue
    .line 342
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 343
    return-void
.end method

.method public setExecutable(Z)V
    .registers 2
    .parameter "executable"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->isExecutable:Z

    .line 105
    if-nez p1, :cond_7

    .line 106
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->stop()V

    .line 108
    :cond_7
    return-void
.end method

.method public setOnListPlayCompletionListener(Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$OnListPlayCompletionListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 252
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mOnCompletionListener:Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$OnListPlayCompletionListener;

    .line 253
    return-void
.end method

.method public setOnListPlayErrorListener(Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$OnListPlayErrorListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 256
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mOnListPlayErrorListener:Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$OnListPlayErrorListener;

    .line 257
    return-void
.end method

.method public setOnListPlayListener(Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$OnListPlayListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mOnListPlayListener:Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$OnListPlayListener;

    .line 249
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mFileName:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mFileName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->stop(Ljava/lang/String;)V

    .line 193
    :cond_9
    return-void
.end method

.method public stop(Ljava/lang/String;)V
    .registers 3
    .parameter "filename"

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 198
    invoke-super {p0}, Landroid/media/MediaPlayer;->stop()V

    .line 201
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mOnCompletionListener:Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$OnListPlayCompletionListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$OnListPlayCompletionListener;->onCompletion(Ljava/lang/String;)V

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->mCompleteFlag:Z

    .line 203
    return-void
.end method
