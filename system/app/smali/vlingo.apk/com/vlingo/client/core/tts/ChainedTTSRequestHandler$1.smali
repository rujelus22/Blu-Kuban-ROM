.class Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler$1;
.super Ljava/util/TimerTask;
.source "ChainedTTSRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;->onStop(Lcom/vlingo/client/core/tts/TTSDemand;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;


# direct methods
.method constructor <init>(Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler$1;->this$0:Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 114
    iget-object v0, p0, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler$1;->this$0:Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;

    #getter for: Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;->cancelled:Z
    invoke-static {v0}, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;->access$000(Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 128
    :goto_8
    return-void

    .line 117
    :cond_9
    iget-object v0, p0, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler$1;->this$0:Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;

    #getter for: Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;->request:Lcom/vlingo/client/core/tts/TTSRequest2;
    invoke-static {v0}, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;->access$100(Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;)Lcom/vlingo/client/core/tts/TTSRequest2;

    move-result-object v1

    monitor-enter v1

    .line 118
    :try_start_10
    iget-object v0, p0, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler$1;->this$0:Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;

    #getter for: Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;->request:Lcom/vlingo/client/core/tts/TTSRequest2;
    invoke-static {v0}, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;->access$100(Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;)Lcom/vlingo/client/core/tts/TTSRequest2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/core/tts/TTSRequest2;->getState()Lcom/vlingo/client/core/tts/TTSRequest2$State;

    move-result-object v0

    sget-object v2, Lcom/vlingo/client/core/tts/TTSRequest2$State;->BEING_FETCHED:Lcom/vlingo/client/core/tts/TTSRequest2$State;

    if-ne v0, v2, :cond_33

    .line 119
    iget-object v0, p0, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler$1;->this$0:Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;

    #getter for: Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;->request:Lcom/vlingo/client/core/tts/TTSRequest2;
    invoke-static {v0}, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;->access$100(Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;)Lcom/vlingo/client/core/tts/TTSRequest2;

    move-result-object v0

    sget-object v2, Lcom/vlingo/client/core/tts/TTSRequest2$State;->PLAY_TIMEOUT:Lcom/vlingo/client/core/tts/TTSRequest2$State;

    invoke-virtual {v0, v2}, Lcom/vlingo/client/core/tts/TTSRequest2;->setState(Lcom/vlingo/client/core/tts/TTSRequest2$State;)V

    .line 120
    iget-object v0, p0, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler$1;->this$0:Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;

    #getter for: Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;->request:Lcom/vlingo/client/core/tts/TTSRequest2;
    invoke-static {v0}, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;->access$100(Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;)Lcom/vlingo/client/core/tts/TTSRequest2;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/vlingo/client/core/tts/TTSRequest2;->setUseOnboard(Z)V

    .line 122
    :cond_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_10 .. :try_end_34} :catchall_53

    .line 123
    iget-object v0, p0, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler$1;->this$0:Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;

    #getter for: Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;->request:Lcom/vlingo/client/core/tts/TTSRequest2;
    invoke-static {v0}, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;->access$100(Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;)Lcom/vlingo/client/core/tts/TTSRequest2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/core/tts/TTSRequest2;->isUseOnboard()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 124
    invoke-static {}, Lcom/vlingo/client/core/tts/TTSEngine;->getInstance()Lcom/vlingo/client/core/tts/TTSEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler$1;->this$0:Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;

    #getter for: Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;->request:Lcom/vlingo/client/core/tts/TTSRequest2;
    invoke-static {v1}, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;->access$100(Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;)Lcom/vlingo/client/core/tts/TTSRequest2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/tts/TTSEngine;->playRequestUsingOnboard(Lcom/vlingo/client/core/tts/TTSRequest2;)V

    .line 127
    :cond_4d
    iget-object v0, p0, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler$1;->this$0:Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;

    #calls: Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;->unregisterListener()V
    invoke-static {v0}, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;->access$200(Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;)V

    goto :goto_8

    .line 122
    :catchall_53
    move-exception v0

    :try_start_54
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v0
.end method
