.class Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor$SafeReaderMsgQ;
.super Ljava/lang/Object;
.source "MessageReadbackListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SafeReaderMsgQ"
.end annotation


# instance fields
.field private m_Msg_Queue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/core/tts/TTSRequest2;",
            ">;"
        }
    .end annotation
.end field

.field private m_TTS_Queue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/core/tts/TTSRequest2;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;)V
    .registers 3
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor$SafeReaderMsgQ;->this$1:Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor$SafeReaderMsgQ;->m_TTS_Queue:Ljava/util/Vector;

    .line 260
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor$SafeReaderMsgQ;->m_Msg_Queue:Ljava/util/Vector;

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;Lcom/vlingo/client/safereader/MessageReadbackListener$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor$SafeReaderMsgQ;-><init>(Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;)V

    return-void
.end method

.method private selectiveMsgDelete()V
    .registers 5

    .prologue
    .line 303
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 304
    .local v2, tmpMsgQueue:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/tts/TTSRequest2;>;"
    iget-object v3, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor$SafeReaderMsgQ;->m_Msg_Queue:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/core/tts/TTSRequest2;

    .line 305
    .local v1, req:Lcom/vlingo/client/core/tts/TTSRequest2;
    invoke-virtual {v1}, Lcom/vlingo/client/core/tts/TTSRequest2;->isMessageReadback()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 308
    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 311
    .end local v1           #req:Lcom/vlingo/client/core/tts/TTSRequest2;
    :cond_21
    iput-object v2, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor$SafeReaderMsgQ;->m_Msg_Queue:Ljava/util/Vector;

    .line 312
    return-void
.end method

.method private selectiveTTSDelete()V
    .registers 5

    .prologue
    .line 291
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 292
    .local v2, tmpTTSQueue:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/tts/TTSRequest2;>;"
    iget-object v3, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor$SafeReaderMsgQ;->m_TTS_Queue:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/core/tts/TTSRequest2;

    .line 293
    .local v1, req:Lcom/vlingo/client/core/tts/TTSRequest2;
    invoke-virtual {v1}, Lcom/vlingo/client/core/tts/TTSRequest2;->isTTSReadback()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 296
    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 299
    .end local v1           #req:Lcom/vlingo/client/core/tts/TTSRequest2;
    :cond_21
    iput-object v2, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor$SafeReaderMsgQ;->m_TTS_Queue:Ljava/util/Vector;

    .line 300
    return-void
.end method


# virtual methods
.method Add(Lcom/vlingo/client/core/tts/TTSRequest2;)V
    .registers 3
    .parameter "request"

    .prologue
    .line 330
    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSRequest2;->isMessageReadback()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 333
    iget-object v0, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor$SafeReaderMsgQ;->m_Msg_Queue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 340
    :goto_b
    return-void

    .line 338
    :cond_c
    iget-object v0, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor$SafeReaderMsgQ;->m_TTS_Queue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_b
.end method

.method Empty()Z
    .registers 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor$SafeReaderMsgQ;->m_TTS_Queue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor$SafeReaderMsgQ;->this$1:Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;

    #getter for: Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;->paused:Z
    invoke-static {v0}, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;->access$300(Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor$SafeReaderMsgQ;->m_Msg_Queue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method Pop()Lcom/vlingo/client/core/tts/TTSRequest2;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 344
    iget-object v0, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor$SafeReaderMsgQ;->m_TTS_Queue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 345
    iget-object v0, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor$SafeReaderMsgQ;->m_TTS_Queue:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/tts/TTSRequest2;

    .line 348
    :goto_11
    return-object v0

    .line 346
    :cond_12
    iget-object v0, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor$SafeReaderMsgQ;->this$1:Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;

    #getter for: Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;->paused:Z
    invoke-static {v0}, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;->access$300(Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 347
    const/4 v0, 0x0

    goto :goto_11

    .line 348
    :cond_1c
    iget-object v0, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor$SafeReaderMsgQ;->m_Msg_Queue:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/tts/TTSRequest2;

    goto :goto_11
.end method

.method Purge()V
    .registers 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor$SafeReaderMsgQ;->m_TTS_Queue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 326
    iget-object v0, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor$SafeReaderMsgQ;->m_Msg_Queue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 327
    return-void
.end method

.method Push(Lcom/vlingo/client/core/tts/TTSRequest2;)V
    .registers 4
    .parameter "request"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor$SafeReaderMsgQ;->m_Msg_Queue:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 353
    return-void
.end method

.method SelectivePurge()V
    .registers 1

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor$SafeReaderMsgQ;->selectiveTTSDelete()V

    .line 318
    invoke-direct {p0}, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor$SafeReaderMsgQ;->selectiveMsgDelete()V

    .line 319
    return-void
.end method

.method public msgQueueContents()Ljava/lang/String;
    .registers 6

    .prologue
    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, contents:Ljava/lang/String;
    iget-object v3, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor$SafeReaderMsgQ;->m_TTS_Queue:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_56

    .line 269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TTS Queue has "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor$SafeReaderMsgQ;->m_TTS_Queue:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " elements.\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    iget-object v3, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor$SafeReaderMsgQ;->m_TTS_Queue:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vlingo/client/core/tts/TTSRequest2;

    .line 271
    .local v2, req:Lcom/vlingo/client/core/tts/TTSRequest2;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/vlingo/client/core/tts/TTSRequest2;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    .line 274
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #req:Lcom/vlingo/client/core/tts/TTSRequest2;
    :cond_56
    iget-object v3, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor$SafeReaderMsgQ;->m_Msg_Queue:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d1

    .line 275
    if-nez v0, :cond_ad

    .line 276
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG Queue has "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor$SafeReaderMsgQ;->m_Msg_Queue:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " elements.\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    :goto_7f
    iget-object v3, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor$SafeReaderMsgQ;->m_Msg_Queue:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_85
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vlingo/client/core/tts/TTSRequest2;

    .line 281
    .restart local v2       #req:Lcom/vlingo/client/core/tts/TTSRequest2;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/vlingo/client/core/tts/TTSRequest2;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_85

    .line 278
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #req:Lcom/vlingo/client/core/tts/TTSRequest2;
    :cond_ad
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "MSG Queue has "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor$SafeReaderMsgQ;->m_Msg_Queue:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " elements.\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7f

    .line 284
    :cond_d1
    if-nez v0, :cond_d5

    .line 285
    const-string v0, "TTS Queue is empty"

    .line 287
    :cond_d5
    return-object v0
.end method
