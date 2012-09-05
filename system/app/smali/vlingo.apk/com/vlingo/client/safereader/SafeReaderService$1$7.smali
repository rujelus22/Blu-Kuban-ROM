.class Lcom/vlingo/client/safereader/SafeReaderService$1$7;
.super Ljava/lang/Object;
.source "SafeReaderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/safereader/SafeReaderService$1;->speakCompoundRequests([Lcom/vlingo/client/core/tts/TTSDemand;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;

.field final synthetic val$demands:[Lcom/vlingo/client/core/tts/TTSDemand;


# direct methods
.method constructor <init>(Lcom/vlingo/client/safereader/SafeReaderService$1;[Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$7;->this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;

    iput-object p2, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$7;->val$demands:[Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 173
    invoke-static {}, Lcom/vlingo/client/core/audio/AudioPlayer;->getInstance()Lcom/vlingo/client/core/audio/AudioPlayer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vlingo/client/core/audio/AudioPlayer;->silenced()Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 174
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$7;->val$demands:[Lcom/vlingo/client/core/tts/TTSDemand;

    .local v0, arr$:[Lcom/vlingo/client/core/tts/TTSDemand;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_e
    if-ge v2, v4, :cond_5c

    aget-object v1, v0, v2

    .line 175
    .local v1, demand:Lcom/vlingo/client/core/tts/TTSDemand;
    invoke-static {}, Lcom/vlingo/client/core/tts/TTSEngine;->getInstance()Lcom/vlingo/client/core/tts/TTSEngine;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/vlingo/client/core/tts/TTSEngine;->processIgnoredTTS(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 174
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 179
    .end local v0           #arr$:[Lcom/vlingo/client/core/tts/TTSDemand;
    .end local v1           #demand:Lcom/vlingo/client/core/tts/TTSDemand;
    .end local v2           #i$:I
    .end local v4           #len$:I
    :cond_1c
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 180
    .local v7, requests:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/tts/TTSRequest2;>;"
    const/4 v3, 0x0

    .line 181
    .local v3, lastR:Lcom/vlingo/client/core/tts/TTSRequest2;
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$7;->val$demands:[Lcom/vlingo/client/core/tts/TTSDemand;

    .restart local v0       #arr$:[Lcom/vlingo/client/core/tts/TTSDemand;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_26
    if-ge v2, v4, :cond_42

    aget-object v1, v0, v2

    .line 182
    .restart local v1       #demand:Lcom/vlingo/client/core/tts/TTSDemand;
    if-nez v1, :cond_2f

    .line 181
    :goto_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 185
    :cond_2f
    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSRequest2;->genRequest(Lcom/vlingo/client/core/tts/TTSDemand;)Lcom/vlingo/client/core/tts/TTSRequest2;

    move-result-object v5

    .line 186
    .local v5, r:Lcom/vlingo/client/core/tts/TTSRequest2;
    if-eqz v3, :cond_3d

    .line 187
    new-instance v8, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;

    invoke-direct {v8, v3, v5}, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;-><init>(Lcom/vlingo/client/core/tts/TTSRequest2;Lcom/vlingo/client/core/tts/TTSRequest2;)V

    invoke-virtual {v8}, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;->init()V

    .line 189
    :cond_3d
    move-object v3, v5

    .line 190
    invoke-virtual {v7, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 194
    .end local v1           #demand:Lcom/vlingo/client/core/tts/TTSDemand;
    .end local v5           #r:Lcom/vlingo/client/core/tts/TTSRequest2;
    :cond_42
    invoke-virtual {v7}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_46
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vlingo/client/core/tts/TTSRequest2;

    .line 195
    .local v6, request:Lcom/vlingo/client/core/tts/TTSRequest2;
    iget-object v8, p0, Lcom/vlingo/client/safereader/SafeReaderService$1$7;->this$1:Lcom/vlingo/client/safereader/SafeReaderService$1;

    iget-object v8, v8, Lcom/vlingo/client/safereader/SafeReaderService$1;->this$0:Lcom/vlingo/client/safereader/SafeReaderService;

    iget-object v8, v8, Lcom/vlingo/client/safereader/SafeReaderService;->messageReadbackListener:Lcom/vlingo/client/safereader/MessageReadbackListener;

    invoke-virtual {v8, v6}, Lcom/vlingo/client/safereader/MessageReadbackListener;->processTTSRequest(Lcom/vlingo/client/core/tts/TTSRequest2;)V

    goto :goto_46

    .line 197
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #lastR:Lcom/vlingo/client/core/tts/TTSRequest2;
    .end local v6           #request:Lcom/vlingo/client/core/tts/TTSRequest2;
    .end local v7           #requests:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/tts/TTSRequest2;>;"
    :cond_5c
    return-void
.end method
