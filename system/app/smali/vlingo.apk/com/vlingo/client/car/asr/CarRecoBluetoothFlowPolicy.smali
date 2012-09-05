.class public Lcom/vlingo/client/car/asr/CarRecoBluetoothFlowPolicy;
.super Lcom/vlingo/client/android/core/asr/policy/BluetoothRecoFlowPolicy;
.source "CarRecoBluetoothFlowPolicy.java"


# direct methods
.method public constructor <init>(Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;)V
    .registers 2
    .parameter "flowActor"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/vlingo/client/android/core/asr/policy/BluetoothRecoFlowPolicy;-><init>(Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected handleAudioFocus()Z
    .registers 2

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method protected handleSafeReader()Z
    .registers 2

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method
