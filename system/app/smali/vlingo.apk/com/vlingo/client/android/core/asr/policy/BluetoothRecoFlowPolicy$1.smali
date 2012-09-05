.class Lcom/vlingo/client/android/core/asr/policy/BluetoothRecoFlowPolicy$1;
.super Ljava/lang/Object;
.source "BluetoothRecoFlowPolicy.java"

# interfaces
.implements Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$TonePlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/android/core/asr/policy/BluetoothRecoFlowPolicy;->playStartRecordSound(Lcom/vlingo/client/core/audio/AudioCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/android/core/asr/policy/BluetoothRecoFlowPolicy;

.field final synthetic val$audioCallback:Lcom/vlingo/client/core/audio/AudioCallback;


# direct methods
.method constructor <init>(Lcom/vlingo/client/android/core/asr/policy/BluetoothRecoFlowPolicy;Lcom/vlingo/client/core/audio/AudioCallback;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/vlingo/client/android/core/asr/policy/BluetoothRecoFlowPolicy$1;->this$0:Lcom/vlingo/client/android/core/asr/policy/BluetoothRecoFlowPolicy;

    iput-object p2, p0, Lcom/vlingo/client/android/core/asr/policy/BluetoothRecoFlowPolicy$1;->val$audioCallback:Lcom/vlingo/client/core/audio/AudioCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onToneComplete()V
    .registers 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vlingo/client/android/core/asr/policy/BluetoothRecoFlowPolicy$1;->this$0:Lcom/vlingo/client/android/core/asr/policy/BluetoothRecoFlowPolicy;

    iget-object v1, p0, Lcom/vlingo/client/android/core/asr/policy/BluetoothRecoFlowPolicy$1;->val$audioCallback:Lcom/vlingo/client/core/audio/AudioCallback;

    #calls: Lcom/vlingo/client/android/core/asr/policy/BluetoothRecoFlowPolicy;->handleAudioFinished(Lcom/vlingo/client/core/audio/AudioCallback;)V
    invoke-static {v0, v1}, Lcom/vlingo/client/android/core/asr/policy/BluetoothRecoFlowPolicy;->access$000(Lcom/vlingo/client/android/core/asr/policy/BluetoothRecoFlowPolicy;Lcom/vlingo/client/core/audio/AudioCallback;)V

    .line 62
    return-void
.end method
