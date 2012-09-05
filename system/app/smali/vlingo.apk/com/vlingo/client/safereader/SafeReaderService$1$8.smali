.class Lcom/vlingo/client/safereader/SafeReaderService$1$8;
.super Ljava/lang/Object;
.source "SafeReaderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/safereader/SafeReaderService$1;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;

.field final synthetic val$demand:Lcom/vlingo/client/core/tts/TTSDemand;


# direct methods
.method constructor <init>(Lcom/vlingo/client/safereader/SafeReaderService$1;Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$8;->this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;

    iput-object p2, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$8;->val$demand:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 206
    invoke-static {}, Lcom/vlingo/client/core/audio/AudioPlayer;->getInstance()Lcom/vlingo/client/core/audio/AudioPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/core/audio/AudioPlayer;->silenced()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 207
    invoke-static {}, Lcom/vlingo/client/core/tts/TTSEngine;->getInstance()Lcom/vlingo/client/core/tts/TTSEngine;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$8;->val$demand:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {v1, v2}, Lcom/vlingo/client/core/tts/TTSEngine;->processIgnoredTTS(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 212
    :goto_13
    return-void

    .line 210
    :cond_14
    iget-object v1, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$8;->val$demand:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSRequest2;->genRequest(Lcom/vlingo/client/core/tts/TTSDemand;)Lcom/vlingo/client/core/tts/TTSRequest2;

    move-result-object v0

    .line 211
    .local v0, r:Lcom/vlingo/client/core/tts/TTSRequest2;
    iget-object v1, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$8;->this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;

    iget-object v1, v1, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    iget-object v1, v1, Lcom/vlingo/client/safereader/SafeReaderService;->messageReadbackListener:Lcom/vlingo/client/safereader/MessageReadbackListener;

    invoke-virtual {v1, v0}, Lcom/vlingo/client/safereader/MessageReadbackListener;->processTTSRequest(Lcom/vlingo/client/core/tts/TTSRequest2;)V

    goto :goto_13
.end method
