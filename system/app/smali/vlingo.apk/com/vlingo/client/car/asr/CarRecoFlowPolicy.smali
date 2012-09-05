.class public Lcom/vlingo/client/car/asr/CarRecoFlowPolicy;
.super Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;
.source "CarRecoFlowPolicy.java"


# direct methods
.method public constructor <init>(Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;)V
    .registers 2
    .parameter "flowActor"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;-><init>(Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;)V

    .line 27
    invoke-virtual {p0}, Lcom/vlingo/client/car/asr/CarRecoFlowPolicy;->getTonePlayer()Lcom/vlingo/client/android/core/audio/TonePlayer;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/car/asr/CarRecoFlowPolicy;Lcom/vlingo/client/core/audio/AudioCallback;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/vlingo/client/car/asr/CarRecoFlowPolicy;->handleAudioFinished(Lcom/vlingo/client/core/audio/AudioCallback;)V

    return-void
.end method

.method private declared-synchronized handleAudioFinished(Lcom/vlingo/client/core/audio/AudioCallback;)V
    .registers 4
    .parameter "audioCallback"

    .prologue
    .line 61
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/vlingo/client/car/asr/CarRecoFlowPolicy;->curState:I

    const/16 v1, 0x104

    if-ne v0, v1, :cond_b

    .line 62
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/vlingo/client/core/audio/AudioCallback;->audioDone(Z)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 64
    :cond_b
    monitor-exit p0

    return-void

    .line 61
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 1

    .prologue
    .line 31
    return-void
.end method

.method getTonePlayer()Lcom/vlingo/client/android/core/audio/TonePlayer;
    .registers 2

    .prologue
    .line 42
    invoke-static {}, Lcom/vlingo/client/core/audio/AudioPlayer;->useSCOStream()Z

    move-result v0

    invoke-static {v0}, Lcom/vlingo/client/android/core/audio/TonePlayer;->get(Z)Lcom/vlingo/client/android/core/audio/TonePlayer;

    move-result-object v0

    return-object v0
.end method

.method protected handleAudioFocus()Z
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method protected handleSafeReader()Z
    .registers 2

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public playStartRecordSound(Lcom/vlingo/client/core/audio/AudioCallback;)V
    .registers 4
    .parameter "audioCallback"

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/vlingo/client/car/asr/CarRecoFlowPolicy;->getTonePlayer()Lcom/vlingo/client/android/core/audio/TonePlayer;

    move-result-object v0

    new-instance v1, Lcom/vlingo/client/car/asr/CarRecoFlowPolicy$1;

    invoke-direct {v1, p0, p1}, Lcom/vlingo/client/car/asr/CarRecoFlowPolicy$1;-><init>(Lcom/vlingo/client/car/asr/CarRecoFlowPolicy;Lcom/vlingo/client/core/audio/AudioCallback;)V

    invoke-virtual {v0, v1}, Lcom/vlingo/client/android/core/audio/TonePlayer;->playStartTone(Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$TonePlayerListener;)V

    .line 56
    return-void
.end method

.method public playStopRecordSound()V
    .registers 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/vlingo/client/car/asr/CarRecoFlowPolicy;->getTonePlayer()Lcom/vlingo/client/android/core/audio/TonePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/android/core/audio/TonePlayer;->playStopTone()V

    .line 71
    return-void
.end method
