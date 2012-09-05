.class Lcom/vlingo/client/car/asr/CarRecoFlowPolicy$1;
.super Ljava/lang/Object;
.source "CarRecoFlowPolicy.java"

# interfaces
.implements Lcom/vlingo/client/android/core/audio/MediaPlayerTonePlayer$TonePlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/asr/CarRecoFlowPolicy;->playStartRecordSound(Lcom/vlingo/client/core/audio/AudioCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/asr/CarRecoFlowPolicy;

.field final synthetic val$audioCallback:Lcom/vlingo/client/core/audio/AudioCallback;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/asr/CarRecoFlowPolicy;Lcom/vlingo/client/core/audio/AudioCallback;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/vlingo/client/car/asr/CarRecoFlowPolicy$1;->this$0:Lcom/vlingo/client/car/asr/CarRecoFlowPolicy;

    iput-object p2, p0, Lcom/vlingo/client/car/asr/CarRecoFlowPolicy$1;->val$audioCallback:Lcom/vlingo/client/core/audio/AudioCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onToneComplete()V
    .registers 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vlingo/client/car/asr/CarRecoFlowPolicy$1;->this$0:Lcom/vlingo/client/car/asr/CarRecoFlowPolicy;

    iget-object v1, p0, Lcom/vlingo/client/car/asr/CarRecoFlowPolicy$1;->val$audioCallback:Lcom/vlingo/client/core/audio/AudioCallback;

    #calls: Lcom/vlingo/client/car/asr/CarRecoFlowPolicy;->handleAudioFinished(Lcom/vlingo/client/core/audio/AudioCallback;)V
    invoke-static {v0, v1}, Lcom/vlingo/client/car/asr/CarRecoFlowPolicy;->access$000(Lcom/vlingo/client/car/asr/CarRecoFlowPolicy;Lcom/vlingo/client/core/audio/AudioCallback;)V

    .line 54
    return-void
.end method
