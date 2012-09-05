.class Lcom/vlingo/client/core/tts/TTSEngine$AudioListenerImpl;
.super Ljava/lang/Object;
.source "TTSEngine.java"

# interfaces
.implements Lcom/vlingo/client/core/audio/AudioListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/tts/TTSEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/core/tts/TTSEngine;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/core/tts/TTSEngine;)V
    .registers 2
    .parameter

    .prologue
    .line 626
    iput-object p1, p0, Lcom/vlingo/client/core/tts/TTSEngine$AudioListenerImpl;->this$0:Lcom/vlingo/client/core/tts/TTSEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/core/tts/TTSEngine;Lcom/vlingo/client/core/tts/TTSEngine$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 626
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/tts/TTSEngine$AudioListenerImpl;-><init>(Lcom/vlingo/client/core/tts/TTSEngine;)V

    return-void
.end method


# virtual methods
.method public onStart(Lcom/vlingo/client/core/audio/AudioContext;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 628
    invoke-virtual {p1}, Lcom/vlingo/client/core/audio/AudioContext;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/tts/TTSRequest2;

    .line 629
    .local v0, source:Lcom/vlingo/client/core/tts/TTSRequest2;
    iget-object v1, p0, Lcom/vlingo/client/core/tts/TTSEngine$AudioListenerImpl;->this$0:Lcom/vlingo/client/core/tts/TTSEngine;

    invoke-virtual {v0}, Lcom/vlingo/client/core/tts/TTSRequest2;->getDemand()Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v2

    #calls: Lcom/vlingo/client/core/tts/TTSEngine;->notifyOnStart(Lcom/vlingo/client/core/tts/TTSDemand;)V
    invoke-static {v1, v2}, Lcom/vlingo/client/core/tts/TTSEngine;->access$400(Lcom/vlingo/client/core/tts/TTSEngine;Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 630
    iget-object v1, p0, Lcom/vlingo/client/core/tts/TTSEngine$AudioListenerImpl;->this$0:Lcom/vlingo/client/core/tts/TTSEngine;

    #setter for: Lcom/vlingo/client/core/tts/TTSEngine;->playingRequest:Lcom/vlingo/client/core/tts/TTSRequest2;
    invoke-static {v1, v0}, Lcom/vlingo/client/core/tts/TTSEngine;->access$502(Lcom/vlingo/client/core/tts/TTSEngine;Lcom/vlingo/client/core/tts/TTSRequest2;)Lcom/vlingo/client/core/tts/TTSRequest2;

    .line 631
    return-void
.end method

.method public onStop(Lcom/vlingo/client/core/audio/AudioContext;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 634
    invoke-virtual {p1}, Lcom/vlingo/client/core/audio/AudioContext;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/tts/TTSRequest2;

    .line 635
    .local v0, source:Lcom/vlingo/client/core/tts/TTSRequest2;
    iget-object v1, p0, Lcom/vlingo/client/core/tts/TTSEngine$AudioListenerImpl;->this$0:Lcom/vlingo/client/core/tts/TTSEngine;

    invoke-virtual {v0}, Lcom/vlingo/client/core/tts/TTSRequest2;->getDemand()Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v2

    #calls: Lcom/vlingo/client/core/tts/TTSEngine;->notifyOnStop(Lcom/vlingo/client/core/tts/TTSDemand;)V
    invoke-static {v1, v2}, Lcom/vlingo/client/core/tts/TTSEngine;->access$600(Lcom/vlingo/client/core/tts/TTSEngine;Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 636
    iget-object v1, p0, Lcom/vlingo/client/core/tts/TTSEngine$AudioListenerImpl;->this$0:Lcom/vlingo/client/core/tts/TTSEngine;

    #getter for: Lcom/vlingo/client/core/tts/TTSEngine;->playingRequest:Lcom/vlingo/client/core/tts/TTSRequest2;
    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSEngine;->access$500(Lcom/vlingo/client/core/tts/TTSEngine;)Lcom/vlingo/client/core/tts/TTSRequest2;

    move-result-object v1

    if-ne v1, v0, :cond_1d

    .line 637
    iget-object v1, p0, Lcom/vlingo/client/core/tts/TTSEngine$AudioListenerImpl;->this$0:Lcom/vlingo/client/core/tts/TTSEngine;

    const/4 v2, 0x0

    #setter for: Lcom/vlingo/client/core/tts/TTSEngine;->playingRequest:Lcom/vlingo/client/core/tts/TTSRequest2;
    invoke-static {v1, v2}, Lcom/vlingo/client/core/tts/TTSEngine;->access$502(Lcom/vlingo/client/core/tts/TTSEngine;Lcom/vlingo/client/core/tts/TTSRequest2;)Lcom/vlingo/client/core/tts/TTSRequest2;

    .line 638
    :cond_1d
    return-void
.end method
