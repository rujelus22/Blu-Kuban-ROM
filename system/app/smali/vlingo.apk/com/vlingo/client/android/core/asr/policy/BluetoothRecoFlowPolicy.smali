.class public Lcom/vlingo/client/android/core/asr/policy/BluetoothRecoFlowPolicy;
.super Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;
.source "BluetoothRecoFlowPolicy.java"


# instance fields
.field private res:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;)V
    .registers 3
    .parameter "flowActor"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;-><init>(Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;)V

    .line 24
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/android/core/asr/policy/BluetoothRecoFlowPolicy;->res:Landroid/content/res/Resources;

    .line 31
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/asr/policy/BluetoothRecoFlowPolicy;->getTonePlayer()Lcom/vlingo/client/android/core/audio/TonePlayer;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/android/core/asr/policy/BluetoothRecoFlowPolicy;Lcom/vlingo/client/core/audio/AudioCallback;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/vlingo/client/android/core/asr/policy/BluetoothRecoFlowPolicy;->handleAudioFinished(Lcom/vlingo/client/core/audio/AudioCallback;)V

    return-void
.end method

.method private declared-synchronized handleAudioFinished(Lcom/vlingo/client/core/audio/AudioCallback;)V
    .registers 4
    .parameter "audioCallback"

    .prologue
    .line 67
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/vlingo/client/android/core/asr/policy/BluetoothRecoFlowPolicy;->curState:I

    const/16 v1, 0x104

    if-ne v0, v1, :cond_b

    .line 68
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/vlingo/client/core/audio/AudioCallback;->audioDone(Z)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 70
    :cond_b
    monitor-exit p0

    return-void

    .line 67
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getListeningMessage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vlingo/client/android/core/asr/policy/BluetoothRecoFlowPolicy;->res:Landroid/content/res/Resources;

    const v1, 0x7f0901ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getTonePlayer()Lcom/vlingo/client/android/core/audio/TonePlayer;
    .registers 2

    .prologue
    .line 35
    invoke-static {}, Lcom/vlingo/client/core/audio/AudioPlayer;->useSCOStream()Z

    move-result v0

    invoke-static {v0}, Lcom/vlingo/client/android/core/audio/TonePlayer;->get(Z)Lcom/vlingo/client/android/core/audio/TonePlayer;

    move-result-object v0

    return-object v0
.end method

.method public getWarmupMessage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vlingo/client/android/core/asr/policy/BluetoothRecoFlowPolicy;->res:Landroid/content/res/Resources;

    const v1, 0x7f09032f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBluetooth()Z
    .registers 2

    .prologue
    .line 81
    invoke-static {}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->isBluetoothAudioOn()Z

    move-result v0

    return v0
.end method

.method protected declared-synchronized onRecoStopped()V
    .registers 2

    .prologue
    .line 52
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;->onRecoStopped()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 53
    monitor-exit p0

    return-void

    .line 52
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public playStartRecordSound(Lcom/vlingo/client/core/audio/AudioCallback;)V
    .registers 4
    .parameter "audioCallback"

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/asr/policy/BluetoothRecoFlowPolicy;->getTonePlayer()Lcom/vlingo/client/android/core/audio/TonePlayer;

    move-result-object v0

    new-instance v1, Lcom/vlingo/client/android/core/asr/policy/BluetoothRecoFlowPolicy$1;

    invoke-direct {v1, p0, p1}, Lcom/vlingo/client/android/core/asr/policy/BluetoothRecoFlowPolicy$1;-><init>(Lcom/vlingo/client/android/core/asr/policy/BluetoothRecoFlowPolicy;Lcom/vlingo/client/core/audio/AudioCallback;)V

    invoke-virtual {v0, v1}, Lcom/vlingo/client/android/core/audio/TonePlayer;->playStartTone(Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$TonePlayerListener;)V

    .line 64
    return-void
.end method

.method public playStopRecordSound()V
    .registers 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/asr/policy/BluetoothRecoFlowPolicy;->getTonePlayer()Lcom/vlingo/client/android/core/audio/TonePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/android/core/audio/TonePlayer;->playStopTone()V

    .line 77
    return-void
.end method
