.class public abstract Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;
.super Ljava/lang/Object;
.source "RecognitionFlowPolicy.java"


# static fields
.field public static final FLOW_EVENT_ABORT:I = 0xf03

.field public static final FLOW_EVENT_ASR_ERROR:I = 0xf09

.field public static final FLOW_EVENT_ASR_KEY_DOWN:I = 0xf01

.field public static final FLOW_EVENT_ASR_KEY_UP:I = 0xf02

.field public static final FLOW_EVENT_ASR_RESULTS:I = 0xf0a

.field public static final FLOW_EVENT_ASR_WARNING:I = 0xf0b

.field public static final FLOW_EVENT_BT_CONNECTED:I = 0xf0c

.field public static final FLOW_EVENT_DIALOG_DISPLAYED:I = 0xf04

.field public static final FLOW_EVENT_RECORDED:I = 0xf08

.field public static final FLOW_EVENT_RECORDING_STARTED:I = 0xf07

.field public static final FLOW_EVENT_TONE_PLAYED:I = 0xf06

.field public static final FLOW_STATE_FAIL:I = -0x10a

.field public static final FLOW_STATE_IDLE:I = 0x101

.field public static final FLOW_STATE_INVALID_TRANSITION:I = -0x10b

.field public static final FLOW_STATE_WAITING_FOR_BEGIN_RECORDING:I = 0x105

.field public static final FLOW_STATE_WAITING_FOR_BT_CONNECT:I = 0x115

.field public static final FLOW_STATE_WAITING_FOR_DIALOG:I = 0x102

.field public static final FLOW_STATE_WAITING_FOR_RECORDED:I = 0x137

.field public static final FLOW_STATE_WAITING_FOR_RESULTS:I = 0x108

.field public static final FLOW_STATE_WAITING_FOR_STOP_RECORDING:I = 0x107

.field public static final FLOW_STATE_WAITING_FOR_TONE:I = 0x104

.field public static final FLOW_STATE_WAITING_FOR_VIBRATE:I = 0x114


# instance fields
.field protected volatile curState:I

.field protected failureMessage:Ljava/lang/String;

.field protected failureMessageCode:I

.field protected failureMessageType:I

.field protected final flowActor:Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;


# direct methods
.method protected constructor <init>(Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;)V
    .registers 3
    .parameter "flowActor"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/16 v0, 0x101

    iput v0, p0, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->curState:I

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->failureMessage:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->flowActor:Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;

    .line 60
    return-void
.end method

.method public static getNameOfEvent(I)Ljava/lang/String;
    .registers 3
    .parameter "event"

    .prologue
    .line 134
    packed-switch p0, :pswitch_data_3e

    .line 158
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--INVALID EVENT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    return-object v0

    .line 136
    :pswitch_1d
    const-string v0, "FLOW_EVENT_ASR_KEY_DOWN"

    goto :goto_1c

    .line 138
    :pswitch_20
    const-string v0, "FLOW_EVENT_ASR_KEY_UP"

    goto :goto_1c

    .line 140
    :pswitch_23
    const-string v0, "FLOW_EVENT_ABORT"

    goto :goto_1c

    .line 142
    :pswitch_26
    const-string v0, "FLOW_EVENT_DIALOG_DISPLAYED"

    goto :goto_1c

    .line 144
    :pswitch_29
    const-string v0, "FLOW_EVENT_TONE_PLAYED"

    goto :goto_1c

    .line 146
    :pswitch_2c
    const-string v0, "FLOW_EVENT_BT_CONNECTED"

    goto :goto_1c

    .line 148
    :pswitch_2f
    const-string v0, "FLOW_EVENT_RECORDING_STARTED"

    goto :goto_1c

    .line 150
    :pswitch_32
    const-string v0, "FLOW_EVENT_RECORDED"

    goto :goto_1c

    .line 152
    :pswitch_35
    const-string v0, "FLOW_EVENT_ASR_ERROR"

    goto :goto_1c

    .line 154
    :pswitch_38
    const-string v0, "FLOW_EVENT_ASR_WARNING"

    goto :goto_1c

    .line 156
    :pswitch_3b
    const-string v0, "FLOW_EVENT_ASR_RESULTS"

    goto :goto_1c

    .line 134
    :pswitch_data_3e
    .packed-switch 0xf01
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_3
        :pswitch_29
        :pswitch_2f
        :pswitch_32
        :pswitch_35
        :pswitch_3b
        :pswitch_38
        :pswitch_2c
    .end packed-switch
.end method

.method public static getNameOfState(I)Ljava/lang/String;
    .registers 3
    .parameter "state"

    .prologue
    .line 109
    sparse-switch p0, :sswitch_data_38

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--INVALID STATE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    return-object v0

    .line 111
    :sswitch_1d
    const-string v0, "FLOW_STATE_IDLE"

    goto :goto_1c

    .line 113
    :sswitch_20
    const-string v0, "FLOW_STATE_WAITING_FOR_DIALOG"

    goto :goto_1c

    .line 115
    :sswitch_23
    const-string v0, "FLOW_STATE_WAITING_FOR_TONE"

    goto :goto_1c

    .line 117
    :sswitch_26
    const-string v0, "FLOW_STATE_WAITING_FOR_BEGIN_RECORDING"

    goto :goto_1c

    .line 119
    :sswitch_29
    const-string v0, "FLOW_STATE_WAITING_FOR_STOP_RECORDING"

    goto :goto_1c

    .line 121
    :sswitch_2c
    const-string v0, "FLOW_STATE_WAITING_FOR_RECORDED"

    goto :goto_1c

    .line 123
    :sswitch_2f
    const-string v0, "FLOW_STATE_WAITING_FOR_RESULTS"

    goto :goto_1c

    .line 125
    :sswitch_32
    const-string v0, "FLOW_STATE_FAIL"

    goto :goto_1c

    .line 127
    :sswitch_35
    const-string v0, "FLOW_STATE_INVALID_TRANSITION"

    goto :goto_1c

    .line 109
    :sswitch_data_38
    .sparse-switch
        -0x10b -> :sswitch_35
        -0x10a -> :sswitch_32
        0x101 -> :sswitch_1d
        0x102 -> :sswitch_20
        0x104 -> :sswitch_23
        0x105 -> :sswitch_26
        0x107 -> :sswitch_29
        0x108 -> :sswitch_2f
        0x137 -> :sswitch_2c
    .end sparse-switch
.end method


# virtual methods
.method public abstract connectBluetooth()V
.end method

.method protected enactNewState()V
    .registers 5

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->getCurrentState()I

    move-result v0

    sparse-switch v0, :sswitch_data_5a

    .line 201
    :goto_7
    return-void

    .line 171
    :sswitch_8
    iget-object v0, p0, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->flowActor:Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;

    invoke-interface {v0}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;->hideStatusDialog()V

    .line 172
    iget-object v0, p0, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->flowActor:Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;

    invoke-interface {v0}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;->abortRecognition()V

    goto :goto_7

    .line 175
    :sswitch_13
    invoke-virtual {p0}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->onRecoStarted()V

    .line 176
    iget-object v0, p0, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->flowActor:Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;

    invoke-virtual {p0}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->getWarmupMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;->showStatusDialog(Ljava/lang/String;)V

    goto :goto_7

    .line 179
    :sswitch_20
    iget-object v0, p0, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->flowActor:Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;

    invoke-interface {v0}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;->playStartRecordTone()V

    goto :goto_7

    .line 182
    :sswitch_26
    iget-object v0, p0, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->flowActor:Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;

    invoke-interface {v0}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;->startRecording()V

    goto :goto_7

    .line 185
    :sswitch_2c
    iget-object v0, p0, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->flowActor:Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;

    invoke-interface {v0}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;->displayRecordingStatus()V

    goto :goto_7

    .line 188
    :sswitch_32
    iget-object v0, p0, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->flowActor:Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;

    invoke-interface {v0}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;->stopRecording()V

    goto :goto_7

    .line 191
    :sswitch_38
    iget-object v0, p0, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->flowActor:Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;

    invoke-interface {v0}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;->playStopRecordTone()V

    goto :goto_7

    .line 194
    :sswitch_3e
    iget-object v0, p0, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->flowActor:Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;

    invoke-interface {v0}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;->hideStatusDialog()V

    .line 195
    iget-object v0, p0, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->flowActor:Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;

    invoke-interface {v0}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;->abortRecognition()V

    .line 196
    iget-object v0, p0, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->flowActor:Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;

    invoke-virtual {p0}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->getFailureMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->getFailureMessageCode()I

    move-result v2

    invoke-virtual {p0}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->getFailureMessageType()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;->displayMessage(Ljava/lang/String;II)V

    goto :goto_7

    .line 168
    :sswitch_data_5a
    .sparse-switch
        -0x10b -> :sswitch_8
        -0x10a -> :sswitch_3e
        0x101 -> :sswitch_8
        0x102 -> :sswitch_13
        0x104 -> :sswitch_20
        0x105 -> :sswitch_26
        0x107 -> :sswitch_2c
        0x108 -> :sswitch_38
        0x137 -> :sswitch_32
    .end sparse-switch
.end method

.method public declared-synchronized getCurrentState()I
    .registers 2

    .prologue
    .line 79
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->curState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFailureMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->failureMessage:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFailureMessageCode()I
    .registers 2

    .prologue
    .line 71
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->failureMessageCode:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFailureMessageType()I
    .registers 2

    .prologue
    .line 67
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->failureMessageType:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract getListeningMessage()Ljava/lang/String;
.end method

.method public abstract getWarmupMessage()Ljava/lang/String;
.end method

.method public isBluetooth()Z
    .registers 2

    .prologue
    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method protected isDone()Z
    .registers 3

    .prologue
    .line 210
    iget v0, p0, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->curState:I

    const/16 v1, -0x10a

    if-eq v0, v1, :cond_12

    iget v0, p0, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->curState:I

    const/16 v1, 0x101

    if-eq v0, v1, :cond_12

    iget v0, p0, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->curState:I

    const/16 v1, -0x10b

    if-ne v0, v1, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public declared-synchronized isIdle()Z
    .registers 3

    .prologue
    .line 92
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->curState:I

    const/16 v1, -0x10a

    if-eq v0, v1, :cond_13

    iget v0, p0, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->curState:I

    const/16 v1, 0x101

    if-eq v0, v1, :cond_13

    iget v0, p0, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->curState:I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_18

    const/16 v1, -0x10b

    if-ne v0, v1, :cond_16

    :cond_13
    const/4 v0, 0x1

    :goto_14
    monitor-exit p0

    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_14

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onRecoStarted()V
    .registers 1

    .prologue
    .line 204
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method protected declared-synchronized onRecoStopped()V
    .registers 1

    .prologue
    .line 207
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public abstract playStartRecordSound(Lcom/vlingo/client/core/audio/AudioCallback;)V
.end method

.method public abstract playStopRecordSound()V
.end method

.method public abstract processEvent(I)Z
.end method

.method public declared-synchronized resetFlowState()V
    .registers 2

    .prologue
    .line 101
    monitor-enter p0

    const/16 v0, 0x101

    :try_start_3
    invoke-virtual {p0, v0}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->setCurrentState(I)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    .line 102
    monitor-exit p0

    return-void

    .line 101
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setCurrentState(I)V
    .registers 3
    .parameter "newState"

    .prologue
    .line 85
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->curState:I

    if-eq v0, p1, :cond_c

    const/16 v0, 0x101

    if-ne p1, v0, :cond_c

    .line 86
    invoke-virtual {p0}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->onRecoStopped()V

    .line 88
    :cond_c
    iput p1, p0, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->curState:I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 89
    monitor-exit p0

    return-void

    .line 85
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": curState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->getCurrentState()I

    move-result v1

    invoke-static {v1}, Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;->getNameOfState(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
