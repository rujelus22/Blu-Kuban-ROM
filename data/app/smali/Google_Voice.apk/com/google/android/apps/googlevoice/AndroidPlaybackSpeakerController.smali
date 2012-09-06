.class public Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;
.super Ljava/lang/Object;
.source "AndroidPlaybackSpeakerController.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/PlaybackSpeakerController;


# static fields
.field private static final RESET_AUDIO_MODE_DELAY_MS:J = 0x1f4L


# instance fields
.field private activeMediaPlayer:Lcom/google/android/apps/googlevoice/MediaPlayer;

.field private buildIsDonutOrEarlier:Z

.field private final context:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;

.field private isPreviousAudioStateValid:Z

.field private previousAudioMode:I

.field private previousSpeakerphoneOn:Z

.field private final resetAudioRoutingRunnable:Ljava/lang/Runnable;

.field private speakerEnabled:Z

.field private final voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/VoicePreferences;Landroid/os/Handler;Z)V
    .registers 6
    .parameter "context"
    .parameter "preferences"
    .parameter "handler"
    .parameter "buildIsDonutOrEarlier"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController$1;-><init>(Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;->resetAudioRoutingRunnable:Ljava/lang/Runnable;

    .line 57
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;->context:Landroid/content/Context;

    .line 58
    iput-object p3, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;->handler:Landroid/os/Handler;

    .line 59
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    .line 60
    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getVoicemailPlaybackViaSpeaker()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;->speakerEnabled:Z

    .line 61
    iput-boolean p4, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;->buildIsDonutOrEarlier:Z

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;->resetAudioRouting()V

    return-void
.end method

.method private declared-synchronized resetAudioRouting()V
    .registers 4

    .prologue
    .line 134
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;->context:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 136
    .local v0, audioManager:Landroid/media/AudioManager;
    iget-boolean v1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;->buildIsDonutOrEarlier:Z

    if-eqz v1, :cond_19

    .line 137
    iget v1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;->previousAudioMode:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 145
    :goto_14
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;->isPreviousAudioStateValid:Z
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_3b

    .line 146
    monitor-exit p0

    return-void

    .line 139
    :cond_19
    :try_start_19
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_35

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlaybackSpeakerController.resetAudioRouting(): restoring speakerphone to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;->previousSpeakerphoneOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 143
    :cond_35
    iget-boolean v1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;->previousSpeakerphoneOn:Z

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V
    :try_end_3a
    .catchall {:try_start_19 .. :try_end_3a} :catchall_3b

    goto :goto_14

    .line 134
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :catchall_3b
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized configureAudioRouting()V
    .registers 4

    .prologue
    .line 92
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;->resetAudioRoutingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 93
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;->context:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 96
    .local v0, audioManager:Landroid/media/AudioManager;
    iget-boolean v1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;->buildIsDonutOrEarlier:Z

    if-eqz v1, :cond_2f

    .line 97
    iget-boolean v1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;->isPreviousAudioStateValid:Z

    if-nez v1, :cond_23

    .line 98
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;->isPreviousAudioStateValid:Z

    .line 99
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;->previousAudioMode:I

    .line 101
    :cond_23
    iget-boolean v1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;->speakerEnabled:Z

    if-eqz v1, :cond_2d

    const/4 v1, 0x0

    :goto_28
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_7a

    .line 117
    :goto_2b
    monitor-exit p0

    return-void

    .line 101
    :cond_2d
    const/4 v1, 0x2

    goto :goto_28

    .line 103
    :cond_2f
    :try_start_2f
    iget-boolean v1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;->isPreviousAudioStateValid:Z

    if-nez v1, :cond_58

    .line 104
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;->isPreviousAudioStateValid:Z

    .line 105
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;->previousSpeakerphoneOn:Z

    .line 106
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_58

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlaybackSpeakerController.configureAudioRouting(): previous speakerphone is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;->previousSpeakerphoneOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 111
    :cond_58
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_74

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlaybackSpeakerController.configureAudioRouting(): setting speakerphone to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;->speakerEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 115
    :cond_74
    iget-boolean v1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;->speakerEnabled:Z

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V
    :try_end_79
    .catchall {:try_start_2f .. :try_end_79} :catchall_7a

    goto :goto_2b

    .line 92
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :catchall_7a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isSpeakerEnabled()Z
    .registers 2

    .prologue
    .line 86
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;->speakerEnabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadDefaultSettings()V
    .registers 2

    .prologue
    .line 66
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getVoicemailPlaybackViaSpeaker()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;->speakerEnabled:Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 67
    monitor-exit p0

    return-void

    .line 66
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queueResetAudioRouting()V
    .registers 5

    .prologue
    .line 121
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;->resetAudioRoutingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 122
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;->buildIsDonutOrEarlier:Z

    if-eqz v0, :cond_17

    .line 123
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;->resetAudioRoutingRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1b

    .line 128
    :goto_15
    monitor-exit p0

    return-void

    .line 126
    :cond_17
    :try_start_17
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;->resetAudioRouting()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_15

    .line 121
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setActiveMediaPlayer(Lcom/google/android/apps/googlevoice/MediaPlayer;)V
    .registers 3
    .parameter "mediaPlayer"

    .prologue
    .line 71
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;->activeMediaPlayer:Lcom/google/android/apps/googlevoice/MediaPlayer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 72
    monitor-exit p0

    return-void

    .line 71
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSpeakerEnabled(Z)V
    .registers 3
    .parameter "speakerEnabled"

    .prologue
    .line 76
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;->speakerEnabled:Z

    .line 77
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;->activeMediaPlayer:Lcom/google/android/apps/googlevoice/MediaPlayer;

    if-eqz v0, :cond_12

    .line 78
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;->activeMediaPlayer:Lcom/google/android/apps/googlevoice/MediaPlayer;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 79
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidPlaybackSpeakerController;->configureAudioRouting()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 82
    :cond_12
    monitor-exit p0

    return-void

    .line 76
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method
