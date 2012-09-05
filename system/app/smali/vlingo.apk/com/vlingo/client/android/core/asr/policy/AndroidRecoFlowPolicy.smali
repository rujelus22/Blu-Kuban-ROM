.class public Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;
.super Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;
.source "AndroidRecoFlowPolicy.java"


# instance fields
.field audioFocusManager:Lcom/vlingo/client/core/audio/AudioFocusManager;

.field private res:Landroid/content/res/Resources;

.field private setMute:Z

.field private turnedOffSafeReader:Z


# direct methods
.method public constructor <init>(Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;)V
    .registers 4
    .parameter "flowActor"

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;-><init>(Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;)V

    .line 23
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;->res:Landroid/content/res/Resources;

    .line 25
    iput-boolean v1, p0, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;->setMute:Z

    .line 27
    iput-boolean v1, p0, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;->turnedOffSafeReader:Z

    .line 35
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/vlingo/client/core/audio/AudioFocusManager;->getInstance(Landroid/content/Context;)Lcom/vlingo/client/core/audio/AudioFocusManager;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;->audioFocusManager:Lcom/vlingo/client/core/audio/AudioFocusManager;

    .line 36
    return-void
.end method


# virtual methods
.method protected audioTooShort()V
    .registers 3

    .prologue
    .line 243
    iget-object v0, p0, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;->res:Landroid/content/res/Resources;

    const v1, 0x7f0901aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;->failureMessage:Ljava/lang/String;

    .line 244
    const/4 v0, 0x3

    iput v0, p0, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;->failureMessageType:I

    .line 245
    const/16 v0, 0x6d

    iput v0, p0, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;->failureMessageCode:I

    .line 248
    const/16 v0, -0x10a

    invoke-virtual {p0, v0}, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;->setCurrentState(I)V

    .line 249
    return-void
.end method

.method public connectBluetooth()V
    .registers 2

    .prologue
    .line 239
    const/16 v0, 0xf0c

    invoke-virtual {p0, v0}, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;->processEvent(I)Z

    .line 240
    return-void
.end method

.method public getListeningMessage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;->res:Landroid/content/res/Resources;

    const v1, 0x7f0901ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWarmupMessage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;->res:Landroid/content/res/Resources;

    const v1, 0x7f09032f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleAudioFocus()Z
    .registers 2

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method protected handleSafeReader()Z
    .registers 2

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method protected onRecoStarted()V
    .registers 4

    .prologue
    .line 67
    invoke-super {p0}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->onRecoStopped()V

    .line 68
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;->handleSafeReader()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isSafeReaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 69
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/safereader/SafeReaderAPI;->stopPlayback()V

    .line 70
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vlingo/client/safereader/SafeReaderAPI;->stop(Z)V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;->turnedOffSafeReader:Z

    .line 73
    :cond_21
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;->handleAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 74
    iget-object v0, p0, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;->audioFocusManager:Lcom/vlingo/client/core/audio/AudioFocusManager;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/vlingo/client/core/audio/AudioFocusManager;->requestAudioFocus(II)V

    .line 76
    :cond_2e
    return-void
.end method

.method protected onRecoStopped()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-super {p0}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->onRecoStopped()V

    .line 81
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;->handleAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 82
    iget-object v0, p0, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;->audioFocusManager:Lcom/vlingo/client/core/audio/AudioFocusManager;

    invoke-virtual {v0}, Lcom/vlingo/client/core/audio/AudioFocusManager;->abandonAudioFocus()V

    .line 84
    :cond_f
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;->handleSafeReader()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;->turnedOffSafeReader:Z

    if-eqz v0, :cond_22

    .line 85
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/vlingo/client/safereader/SafeReaderAPI;->start(Z)V

    .line 86
    iput-boolean v1, p0, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;->turnedOffSafeReader:Z

    .line 88
    :cond_22
    const-string v0, "Vlingo"

    const-string v1, "TEST_PLATFORM: VOICE_SEARCH_COMPLETE"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method

.method public playStartRecordSound(Lcom/vlingo/client/core/audio/AudioCallback;)V
    .registers 3
    .parameter "audioCallback"

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/vlingo/client/core/audio/AudioCallback;->audioDone(Z)V

    .line 59
    return-void
.end method

.method public playStopRecordSound()V
    .registers 1

    .prologue
    .line 63
    return-void
.end method

.method public declared-synchronized processEvent(I)Z
    .registers 7
    .parameter "event"

    .prologue
    const/16 v3, 0xf09

    const/16 v4, 0xf03

    const/4 v1, 0x0

    .line 99
    monitor-enter p0

    :try_start_6
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;->getCurrentState()I

    move-result v0

    .line 100
    .local v0, oldState:I
    if-eq p1, v3, :cond_10

    const/16 v2, 0xf0b

    if-ne p1, v2, :cond_25

    .line 101
    :cond_10
    iget-object v2, p0, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;->flowActor:Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;

    invoke-interface {v2}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;->hideStatusDialog()V

    .line 102
    if-ne p1, v3, :cond_25

    .line 103
    const/16 v2, 0x101

    invoke-virtual {p0, v2}, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;->setCurrentState(I)V

    .line 104
    iget v2, p0, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;->curState:I

    if-eq v0, v2, :cond_23

    .line 105
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;->enactNewState()V
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_43

    .line 235
    :cond_23
    :goto_23
    monitor-exit p0

    return v1

    .line 110
    :cond_25
    if-ne p1, v4, :cond_2c

    .line 111
    :try_start_27
    iget-object v2, p0, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;->flowActor:Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;

    invoke-interface {v2}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;->hideStatusDialog()V

    .line 117
    :cond_2c
    iget v2, p0, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;->curState:I

    sparse-switch v2, :sswitch_data_ba

    .line 225
    :goto_31
    if-ne p1, v4, :cond_38

    .line 226
    const/16 v2, 0x101

    invoke-virtual {p0, v2}, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;->setCurrentState(I)V

    .line 229
    :cond_38
    iget v2, p0, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;->curState:I

    if-eq v0, v2, :cond_3d

    const/4 v1, 0x1

    .line 231
    .local v1, stateChanged:Z
    :cond_3d
    if-eqz v1, :cond_23

    .line 232
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;->enactNewState()V
    :try_end_42
    .catchall {:try_start_27 .. :try_end_42} :catchall_43

    goto :goto_23

    .line 99
    .end local v0           #oldState:I
    .end local v1           #stateChanged:Z
    :catchall_43
    move-exception v2

    monitor-exit p0

    throw v2

    .line 121
    .restart local v0       #oldState:I
    :sswitch_46
    packed-switch p1, :pswitch_data_e0

    goto :goto_31

    .line 123
    :pswitch_4a
    const/16 v2, 0x102

    :try_start_4c
    invoke-virtual {p0, v2}, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;->setCurrentState(I)V

    goto :goto_31

    .line 162
    :sswitch_50
    packed-switch p1, :pswitch_data_e6

    :pswitch_53
    goto :goto_31

    .line 167
    :pswitch_54
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;->audioTooShort()V

    goto :goto_31

    .line 164
    :pswitch_58
    const/16 v2, 0x104

    invoke-virtual {p0, v2}, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;->setCurrentState(I)V

    goto :goto_31

    .line 173
    :sswitch_5e
    sparse-switch p1, :sswitch_data_f0

    goto :goto_31

    .line 178
    :sswitch_62
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;->audioTooShort()V

    goto :goto_31

    .line 175
    :sswitch_66
    const/16 v2, 0x105

    invoke-virtual {p0, v2}, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;->setCurrentState(I)V

    goto :goto_31

    .line 183
    :sswitch_6c
    sparse-switch p1, :sswitch_data_fa

    goto :goto_31

    .line 185
    :sswitch_70
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;->audioTooShort()V

    goto :goto_31

    .line 188
    :sswitch_74
    const-string v2, "Vlingo"

    const-string v3, "TEST_PLATFORM: SPEAK_NOW"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/16 v2, 0x107

    invoke-virtual {p0, v2}, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;->setCurrentState(I)V

    goto :goto_31

    .line 195
    :sswitch_81
    packed-switch p1, :pswitch_data_104

    goto :goto_31

    .line 197
    :pswitch_85
    const/16 v2, 0x137

    invoke-virtual {p0, v2}, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;->setCurrentState(I)V

    goto :goto_31

    .line 203
    :sswitch_8b
    packed-switch p1, :pswitch_data_10a

    goto :goto_31

    .line 205
    :pswitch_8f
    const/16 v2, 0x108

    invoke-virtual {p0, v2}, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;->setCurrentState(I)V

    goto :goto_31

    .line 211
    :sswitch_95
    packed-switch p1, :pswitch_data_110

    goto :goto_31

    .line 218
    :pswitch_99
    const-string v2, "Vlingo"

    const-string v3, "TEST_PLATFORM: ERROR"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :pswitch_a0
    const/16 v2, 0x101

    invoke-virtual {p0, v2}, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;->setCurrentState(I)V

    goto :goto_31

    .line 213
    :pswitch_a6
    const-string v2, "Vlingo"

    const-string v3, "TEST_PLATFORM: RESULTS"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v2, p0, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;->flowActor:Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;

    invoke-interface {v2}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;->hideStatusDialog()V

    .line 215
    const/16 v2, 0x101

    invoke-virtual {p0, v2}, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;->setCurrentState(I)V
    :try_end_b7
    .catchall {:try_start_4c .. :try_end_b7} :catchall_43

    goto/16 :goto_31

    .line 117
    nop

    :sswitch_data_ba
    .sparse-switch
        -0x10b -> :sswitch_46
        -0x10a -> :sswitch_46
        0x101 -> :sswitch_46
        0x102 -> :sswitch_50
        0x104 -> :sswitch_5e
        0x105 -> :sswitch_6c
        0x107 -> :sswitch_81
        0x108 -> :sswitch_95
        0x137 -> :sswitch_8b
    .end sparse-switch

    .line 121
    :pswitch_data_e0
    .packed-switch 0xf01
        :pswitch_4a
    .end packed-switch

    .line 162
    :pswitch_data_e6
    .packed-switch 0xf02
        :pswitch_54
        :pswitch_53
        :pswitch_58
    .end packed-switch

    .line 173
    :sswitch_data_f0
    .sparse-switch
        0xf02 -> :sswitch_62
        0xf06 -> :sswitch_66
    .end sparse-switch

    .line 183
    :sswitch_data_fa
    .sparse-switch
        0xf02 -> :sswitch_70
        0xf07 -> :sswitch_74
    .end sparse-switch

    .line 195
    :pswitch_data_104
    .packed-switch 0xf02
        :pswitch_85
    .end packed-switch

    .line 203
    :pswitch_data_10a
    .packed-switch 0xf08
        :pswitch_8f
    .end packed-switch

    .line 211
    :pswitch_data_110
    .packed-switch 0xf09
        :pswitch_99
        :pswitch_a6
        :pswitch_a0
    .end packed-switch
.end method
