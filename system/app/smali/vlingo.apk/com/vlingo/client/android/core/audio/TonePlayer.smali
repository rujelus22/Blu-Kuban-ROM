.class public Lcom/vlingo/client/android/core/audio/TonePlayer;
.super Ljava/lang/Object;
.source "TonePlayer.java"


# static fields
.field private static soundPool:Landroid/media/SoundPool;

.field private static thePlayer:Lcom/vlingo/client/android/core/audio/TonePlayer;

.field private static usesSCO:Z


# instance fields
.field am:Landroid/media/AudioManager;

.field private e:Ljava/util/concurrent/ScheduledExecutorService;

.field private final errorToneId:I

.field private final resultToneId:I

.field private final snoreToneId:I

.field private final startToneId:I

.field private final stopToneId:I

.field private final toneFinishedCallbackDelay:I

.field private final wordSpottedToneId:I


# direct methods
.method private constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/vlingo/client/VlingoApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/vlingo/client/android/core/audio/TonePlayer;->am:Landroid/media/AudioManager;

    .line 48
    iput v2, p0, Lcom/vlingo/client/android/core/audio/TonePlayer;->startToneId:I

    .line 49
    iput v2, p0, Lcom/vlingo/client/android/core/audio/TonePlayer;->stopToneId:I

    .line 50
    iput v2, p0, Lcom/vlingo/client/android/core/audio/TonePlayer;->errorToneId:I

    .line 51
    iput v2, p0, Lcom/vlingo/client/android/core/audio/TonePlayer;->resultToneId:I

    .line 52
    iput v2, p0, Lcom/vlingo/client/android/core/audio/TonePlayer;->snoreToneId:I

    .line 53
    iput v2, p0, Lcom/vlingo/client/android/core/audio/TonePlayer;->wordSpottedToneId:I

    .line 54
    iput v2, p0, Lcom/vlingo/client/android/core/audio/TonePlayer;->toneFinishedCallbackDelay:I

    .line 55
    return-void
.end method

.method private constructor <init>(IZ)V
    .registers 9
    .parameter "toneFinishedCallbackDelay"
    .parameter "useSCO"

    .prologue
    const/4 v5, 0x1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Lcom/vlingo/client/VlingoApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/vlingo/client/android/core/audio/TonePlayer;->am:Landroid/media/AudioManager;

    .line 82
    sput-boolean p2, Lcom/vlingo/client/android/core/audio/TonePlayer;->usesSCO:Z

    .line 83
    iput p1, p0, Lcom/vlingo/client/android/core/audio/TonePlayer;->toneFinishedCallbackDelay:I

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 87
    .local v0, startTime:J
    invoke-static {v5}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/vlingo/client/android/core/audio/TonePlayer;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 90
    new-instance v3, Landroid/media/SoundPool;

    if-eqz p2, :cond_aa

    const/4 v2, 0x6

    :goto_25
    const/4 v4, 0x0

    invoke-direct {v3, v5, v2, v4}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v3, Lcom/vlingo/client/android/core/audio/TonePlayer;->soundPool:Landroid/media/SoundPool;

    .line 93
    sget-object v3, Lcom/vlingo/client/android/core/audio/TonePlayer;->soundPool:Landroid/media/SoundPool;

    invoke-static {}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getInstance()Lcom/vlingo/client/core/common/ApplicationAdaptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getApplication()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    const v4, 0x7f060019

    invoke-virtual {v3, v2, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    iput v2, p0, Lcom/vlingo/client/android/core/audio/TonePlayer;->startToneId:I

    .line 96
    sget-object v3, Lcom/vlingo/client/android/core/audio/TonePlayer;->soundPool:Landroid/media/SoundPool;

    invoke-static {}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getInstance()Lcom/vlingo/client/core/common/ApplicationAdaptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getApplication()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    const v4, 0x7f06001a

    invoke-virtual {v3, v2, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    iput v2, p0, Lcom/vlingo/client/android/core/audio/TonePlayer;->stopToneId:I

    .line 99
    sget-object v3, Lcom/vlingo/client/android/core/audio/TonePlayer;->soundPool:Landroid/media/SoundPool;

    invoke-static {}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getInstance()Lcom/vlingo/client/core/common/ApplicationAdaptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getApplication()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    const v4, 0x7f060003

    invoke-virtual {v3, v2, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    iput v2, p0, Lcom/vlingo/client/android/core/audio/TonePlayer;->errorToneId:I

    .line 102
    sget-object v3, Lcom/vlingo/client/android/core/audio/TonePlayer;->soundPool:Landroid/media/SoundPool;

    invoke-static {}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getInstance()Lcom/vlingo/client/core/common/ApplicationAdaptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getApplication()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    const v4, 0x7f060014

    invoke-virtual {v3, v2, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    iput v2, p0, Lcom/vlingo/client/android/core/audio/TonePlayer;->resultToneId:I

    .line 105
    sget-object v3, Lcom/vlingo/client/android/core/audio/TonePlayer;->soundPool:Landroid/media/SoundPool;

    invoke-static {}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getInstance()Lcom/vlingo/client/core/common/ApplicationAdaptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getApplication()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    const v4, 0x7f06001c

    invoke-virtual {v3, v2, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    iput v2, p0, Lcom/vlingo/client/android/core/audio/TonePlayer;->wordSpottedToneId:I

    .line 108
    sget-object v3, Lcom/vlingo/client/android/core/audio/TonePlayer;->soundPool:Landroid/media/SoundPool;

    invoke-static {}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getInstance()Lcom/vlingo/client/core/common/ApplicationAdaptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getApplication()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    const v4, 0x7f060018

    invoke-virtual {v3, v2, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    iput v2, p0, Lcom/vlingo/client/android/core/audio/TonePlayer;->snoreToneId:I

    .line 109
    return-void

    .line 90
    :cond_aa
    const/4 v2, 0x3

    goto/16 :goto_25
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "useSCO"

    .prologue
    .line 78
    const/16 v0, 0x15e

    invoke-direct {p0, v0, p1}, Lcom/vlingo/client/android/core/audio/TonePlayer;-><init>(IZ)V

    .line 79
    return-void
.end method

.method public static declared-synchronized get(IZ)Lcom/vlingo/client/android/core/audio/TonePlayer;
    .registers 4
    .parameter "toneFinishedCallbackDelay"
    .parameter "useSCO"

    .prologue
    .line 68
    const-class v1, Lcom/vlingo/client/android/core/audio/TonePlayer;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/vlingo/client/android/core/audio/TonePlayer;->thePlayer:Lcom/vlingo/client/android/core/audio/TonePlayer;

    if-eqz v0, :cond_b

    sget-boolean v0, Lcom/vlingo/client/android/core/audio/TonePlayer;->usesSCO:Z

    if-eq p1, v0, :cond_19

    .line 69
    :cond_b
    sget-object v0, Lcom/vlingo/client/android/core/audio/TonePlayer;->thePlayer:Lcom/vlingo/client/android/core/audio/TonePlayer;

    if-eqz v0, :cond_12

    .line 70
    invoke-static {}, Lcom/vlingo/client/android/core/audio/TonePlayer;->release()V

    .line 72
    :cond_12
    new-instance v0, Lcom/vlingo/client/android/core/audio/TonePlayer;

    invoke-direct {v0, p0, p1}, Lcom/vlingo/client/android/core/audio/TonePlayer;-><init>(IZ)V

    sput-object v0, Lcom/vlingo/client/android/core/audio/TonePlayer;->thePlayer:Lcom/vlingo/client/android/core/audio/TonePlayer;

    .line 74
    :cond_19
    sget-object v0, Lcom/vlingo/client/android/core/audio/TonePlayer;->thePlayer:Lcom/vlingo/client/android/core/audio/TonePlayer;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1d

    monitor-exit v1

    return-object v0

    .line 68
    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized get(Z)Lcom/vlingo/client/android/core/audio/TonePlayer;
    .registers 3
    .parameter "useSCO"

    .prologue
    .line 58
    const-class v1, Lcom/vlingo/client/android/core/audio/TonePlayer;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/vlingo/client/android/core/audio/TonePlayer;->thePlayer:Lcom/vlingo/client/android/core/audio/TonePlayer;

    if-eqz v0, :cond_b

    sget-boolean v0, Lcom/vlingo/client/android/core/audio/TonePlayer;->usesSCO:Z

    if-eq p0, v0, :cond_19

    .line 59
    :cond_b
    sget-object v0, Lcom/vlingo/client/android/core/audio/TonePlayer;->thePlayer:Lcom/vlingo/client/android/core/audio/TonePlayer;

    if-eqz v0, :cond_12

    .line 60
    invoke-static {}, Lcom/vlingo/client/android/core/audio/TonePlayer;->release()V

    .line 62
    :cond_12
    new-instance v0, Lcom/vlingo/client/android/core/audio/TonePlayer;

    invoke-direct {v0, p0}, Lcom/vlingo/client/android/core/audio/TonePlayer;-><init>(Z)V

    sput-object v0, Lcom/vlingo/client/android/core/audio/TonePlayer;->thePlayer:Lcom/vlingo/client/android/core/audio/TonePlayer;

    .line 64
    :cond_19
    sget-object v0, Lcom/vlingo/client/android/core/audio/TonePlayer;->thePlayer:Lcom/vlingo/client/android/core/audio/TonePlayer;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1d

    monitor-exit v1

    return-object v0

    .line 58
    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private play(I)V
    .registers 3
    .parameter "toneId"

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vlingo/client/android/core/audio/TonePlayer;->play(ILcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$TonePlayerListener;)V

    .line 145
    return-void
.end method

.method private declared-synchronized play(ILcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$TonePlayerListener;)V
    .registers 11
    .parameter "toneId"
    .parameter "listener"

    .prologue
    .line 150
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/vlingo/client/android/core/audio/TonePlayer;->soundPool:Landroid/media/SoundPool;

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 151
    if-eqz p2, :cond_20

    .line 152
    new-instance v7, Lcom/vlingo/client/android/core/audio/TonePlayer$1;

    invoke-direct {v7, p0, p2}, Lcom/vlingo/client/android/core/audio/TonePlayer$1;-><init>(Lcom/vlingo/client/android/core/audio/TonePlayer;Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$TonePlayerListener;)V

    .line 157
    .local v7, callback:Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/vlingo/client/android/core/audio/TonePlayer;->e:Ljava/util/concurrent/ScheduledExecutorService;

    iget v1, p0, Lcom/vlingo/client/android/core/audio/TonePlayer;->toneFinishedCallbackDelay:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v7, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 159
    .end local v7           #callback:Ljava/lang/Runnable;
    :cond_20
    monitor-exit p0

    return-void

    .line 150
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized release()V
    .registers 2

    .prologue
    .line 112
    const-class v1, Lcom/vlingo/client/android/core/audio/TonePlayer;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/vlingo/client/android/core/audio/TonePlayer;->soundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_f

    .line 113
    sget-object v0, Lcom/vlingo/client/android/core/audio/TonePlayer;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 114
    const/4 v0, 0x0

    sput-object v0, Lcom/vlingo/client/android/core/audio/TonePlayer;->soundPool:Landroid/media/SoundPool;

    .line 116
    :cond_f
    const/4 v0, 0x0

    sput-object v0, Lcom/vlingo/client/android/core/audio/TonePlayer;->thePlayer:Lcom/vlingo/client/android/core/audio/TonePlayer;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    .line 117
    monitor-exit v1

    return-void

    .line 112
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public playErrorTone()V
    .registers 2

    .prologue
    .line 132
    iget v0, p0, Lcom/vlingo/client/android/core/audio/TonePlayer;->errorToneId:I

    invoke-direct {p0, v0}, Lcom/vlingo/client/android/core/audio/TonePlayer;->play(I)V

    .line 133
    return-void
.end method

.method public playResultTone()V
    .registers 2

    .prologue
    .line 128
    iget v0, p0, Lcom/vlingo/client/android/core/audio/TonePlayer;->resultToneId:I

    invoke-direct {p0, v0}, Lcom/vlingo/client/android/core/audio/TonePlayer;->play(I)V

    .line 129
    return-void
.end method

.method public playSnoreTone()V
    .registers 2

    .prologue
    .line 136
    iget v0, p0, Lcom/vlingo/client/android/core/audio/TonePlayer;->snoreToneId:I

    invoke-direct {p0, v0}, Lcom/vlingo/client/android/core/audio/TonePlayer;->play(I)V

    .line 137
    return-void
.end method

.method public playStartTone(Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$TonePlayerListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 120
    iget v0, p0, Lcom/vlingo/client/android/core/audio/TonePlayer;->startToneId:I

    invoke-direct {p0, v0, p1}, Lcom/vlingo/client/android/core/audio/TonePlayer;->play(ILcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$TonePlayerListener;)V

    .line 121
    return-void
.end method

.method public playStopTone()V
    .registers 2

    .prologue
    .line 124
    iget v0, p0, Lcom/vlingo/client/android/core/audio/TonePlayer;->stopToneId:I

    invoke-direct {p0, v0}, Lcom/vlingo/client/android/core/audio/TonePlayer;->play(I)V

    .line 125
    return-void
.end method

.method public playWordSpottedTone()V
    .registers 2

    .prologue
    .line 140
    iget v0, p0, Lcom/vlingo/client/android/core/audio/TonePlayer;->wordSpottedToneId:I

    invoke-direct {p0, v0}, Lcom/vlingo/client/android/core/audio/TonePlayer;->play(I)V

    .line 141
    return-void
.end method
