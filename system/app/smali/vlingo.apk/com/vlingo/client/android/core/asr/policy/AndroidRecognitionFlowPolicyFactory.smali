.class public Lcom/vlingo/client/android/core/asr/policy/AndroidRecognitionFlowPolicyFactory;
.super Ljava/lang/Object;
.source "AndroidRecognitionFlowPolicyFactory.java"

# interfaces
.implements Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicyFactory;


# instance fields
.field private bluetoothFlowPolicy:Lcom/vlingo/client/android/core/asr/policy/BluetoothRecoFlowPolicy;

.field private defaultFlowPolicy:Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;

.field protected final recoManager:Lcom/vlingo/client/core/asr/RecognitionManager;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/core/asr/RecognitionManager;)V
    .registers 3
    .parameter "recoManager"

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/vlingo/client/android/core/asr/policy/AndroidRecognitionFlowPolicyFactory;->defaultFlowPolicy:Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;

    .line 17
    iput-object v0, p0, Lcom/vlingo/client/android/core/asr/policy/AndroidRecognitionFlowPolicyFactory;->bluetoothFlowPolicy:Lcom/vlingo/client/android/core/asr/policy/BluetoothRecoFlowPolicy;

    .line 20
    iput-object p1, p0, Lcom/vlingo/client/android/core/asr/policy/AndroidRecognitionFlowPolicyFactory;->recoManager:Lcom/vlingo/client/core/asr/RecognitionManager;

    .line 21
    return-void
.end method

.method private getBluetoothFlowPolicy()Lcom/vlingo/client/android/core/asr/policy/BluetoothRecoFlowPolicy;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vlingo/client/android/core/asr/policy/AndroidRecognitionFlowPolicyFactory;->bluetoothFlowPolicy:Lcom/vlingo/client/android/core/asr/policy/BluetoothRecoFlowPolicy;

    if-nez v0, :cond_a

    .line 48
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/asr/policy/AndroidRecognitionFlowPolicyFactory;->createBluetoothFlowPolicy()Lcom/vlingo/client/android/core/asr/policy/BluetoothRecoFlowPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/android/core/asr/policy/AndroidRecognitionFlowPolicyFactory;->bluetoothFlowPolicy:Lcom/vlingo/client/android/core/asr/policy/BluetoothRecoFlowPolicy;

    .line 50
    :cond_a
    iget-object v0, p0, Lcom/vlingo/client/android/core/asr/policy/AndroidRecognitionFlowPolicyFactory;->bluetoothFlowPolicy:Lcom/vlingo/client/android/core/asr/policy/BluetoothRecoFlowPolicy;

    return-object v0
.end method

.method private getDefaultFlowPolicy()Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vlingo/client/android/core/asr/policy/AndroidRecognitionFlowPolicyFactory;->defaultFlowPolicy:Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;

    if-nez v0, :cond_a

    .line 41
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/asr/policy/AndroidRecognitionFlowPolicyFactory;->createDefaultFlowPolicy()Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/android/core/asr/policy/AndroidRecognitionFlowPolicyFactory;->defaultFlowPolicy:Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;

    .line 43
    :cond_a
    iget-object v0, p0, Lcom/vlingo/client/android/core/asr/policy/AndroidRecognitionFlowPolicyFactory;->defaultFlowPolicy:Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;

    return-object v0
.end method


# virtual methods
.method protected createBluetoothFlowPolicy()Lcom/vlingo/client/android/core/asr/policy/BluetoothRecoFlowPolicy;
    .registers 3

    .prologue
    .line 36
    new-instance v0, Lcom/vlingo/client/android/core/asr/policy/BluetoothRecoFlowPolicy;

    iget-object v1, p0, Lcom/vlingo/client/android/core/asr/policy/AndroidRecognitionFlowPolicyFactory;->recoManager:Lcom/vlingo/client/core/asr/RecognitionManager;

    invoke-virtual {v1}, Lcom/vlingo/client/core/asr/RecognitionManager;->getDefaultRecognitionFlowActor()Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vlingo/client/android/core/asr/policy/BluetoothRecoFlowPolicy;-><init>(Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;)V

    return-object v0
.end method

.method protected createDefaultFlowPolicy()Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;
    .registers 3

    .prologue
    .line 32
    new-instance v0, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;

    iget-object v1, p0, Lcom/vlingo/client/android/core/asr/policy/AndroidRecognitionFlowPolicyFactory;->recoManager:Lcom/vlingo/client/core/asr/RecognitionManager;

    invoke-virtual {v1}, Lcom/vlingo/client/core/asr/RecognitionManager;->getDefaultRecognitionFlowActor()Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vlingo/client/android/core/asr/policy/AndroidRecoFlowPolicy;-><init>(Lcom/vlingo/client/core/asr/policy/RecognitionFlowActor;)V

    return-object v0
.end method

.method public getFlowPolicy()Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;
    .registers 3

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/vlingo/client/android/core/asr/policy/AndroidRecognitionFlowPolicyFactory;->getBluetoothFlowPolicy()Lcom/vlingo/client/android/core/asr/policy/BluetoothRecoFlowPolicy;

    move-result-object v0

    .line 25
    .local v0, policy:Lcom/vlingo/client/android/core/asr/policy/BluetoothRecoFlowPolicy;
    invoke-virtual {v0}, Lcom/vlingo/client/android/core/asr/policy/BluetoothRecoFlowPolicy;->isBluetooth()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 26
    invoke-direct {p0}, Lcom/vlingo/client/android/core/asr/policy/AndroidRecognitionFlowPolicyFactory;->getBluetoothFlowPolicy()Lcom/vlingo/client/android/core/asr/policy/BluetoothRecoFlowPolicy;

    move-result-object v1

    .line 28
    :goto_e
    return-object v1

    :cond_f
    invoke-direct {p0}, Lcom/vlingo/client/android/core/asr/policy/AndroidRecognitionFlowPolicyFactory;->getDefaultFlowPolicy()Lcom/vlingo/client/core/asr/policy/RecognitionFlowPolicy;

    move-result-object v1

    goto :goto_e
.end method
