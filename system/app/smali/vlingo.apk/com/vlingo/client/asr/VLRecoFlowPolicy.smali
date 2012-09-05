.class Lcom/vlingo/client/asr/VLRecoFlowPolicy;
.super Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;
.source "VLRecoFlowPolicy.java"


# direct methods
.method public constructor <init>(Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;)V
    .registers 2
    .parameter "flowActor"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;-><init>(Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;)V

    .line 26
    invoke-virtual {p0}, Lcom/vlingo/client/asr/VLRecoFlowPolicy;->getTonePlayer()Lcom/vlingo/client/android/core/audio/TonePlayer;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/asr/VLRecoFlowPolicy;Lcom/vlingo/client/core/audio/AudioCallback;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/vlingo/client/asr/VLRecoFlowPolicy;->handleAudioFinished(Lcom/vlingo/client/core/audio/AudioCallback;)V

    return-void
.end method

.method private declared-synchronized handleAudioFinished(Lcom/vlingo/client/core/audio/AudioCallback;)V
    .registers 4
    .parameter "audioCallback"

    .prologue
    .line 60
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/vlingo/client/asr/VLRecoFlowPolicy;->curState:I

    const/16 v1, 0x104

    if-ne v0, v1, :cond_b

    .line 61
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/vlingo/client/core/audio/AudioCallback;->audioDone(Z)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 63
    :cond_b
    monitor-exit p0

    return-void

    .line 60
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 1

    .prologue
    .line 30
    return-void
.end method

.method getTonePlayer()Lcom/vlingo/client/android/core/audio/TonePlayer;
    .registers 2

    .prologue
    .line 41
    invoke-static {}, Lcom/vlingo/client/core/audio/AudioPlayer;->useSCOStream()Z

    move-result v0

    invoke-static {v0}, Lcom/vlingo/client/android/core/audio/TonePlayer;->get(Z)Lcom/vlingo/client/android/core/audio/TonePlayer;

    move-result-object v0

    return-object v0
.end method

.method protected handleAudioFocus()Z
    .registers 2

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method protected handleSafeReader()Z
    .registers 2

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public playStartRecordSound(Lcom/vlingo/client/core/audio/AudioCallback;)V
    .registers 4
    .parameter "audioCallback"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/vlingo/client/asr/VLRecoFlowPolicy;->getTonePlayer()Lcom/vlingo/client/android/core/audio/TonePlayer;

    move-result-object v0

    new-instance v1, Lcom/vlingo/client/asr/VLRecoFlowPolicy$1;

    invoke-direct {v1, p0, p1}, Lcom/vlingo/client/asr/VLRecoFlowPolicy$1;-><init>(Lcom/vlingo/client/asr/VLRecoFlowPolicy;Lcom/vlingo/client/core/audio/AudioCallback;)V

    invoke-virtual {v0, v1}, Lcom/vlingo/client/android/core/audio/TonePlayer;->playStartTone(Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$TonePlayerListener;)V

    .line 55
    return-void
.end method

.method public playStopRecordSound()V
    .registers 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/vlingo/client/asr/VLRecoFlowPolicy;->getTonePlayer()Lcom/vlingo/client/android/core/audio/TonePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/android/core/audio/TonePlayer;->playStopTone()V

    .line 70
    return-void
.end method
