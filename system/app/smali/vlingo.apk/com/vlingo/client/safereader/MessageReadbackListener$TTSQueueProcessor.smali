.class Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;
.super Ljava/lang/Object;
.source "MessageReadbackListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/safereader/MessageReadbackListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TTSQueueProcessor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor$SafeReaderMsgQ;
    }
.end annotation


# instance fields
.field private m_Current:Lcom/vlingo/client/core/tts/TTSRequest2;

.field private volatile paused:Z

.field private requestQueue:Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor$SafeReaderMsgQ;

.field private volatile stopped:Z

.field final synthetic this$0:Lcom/vlingo/client/safereader/MessageReadbackListener;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/safereader/MessageReadbackListener;)V
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 151
    iput-object p1, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;->this$0:Lcom/vlingo/client/safereader/MessageReadbackListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-boolean v0, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;->stopped:Z

    .line 154
    iput-boolean v0, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;->paused:Z

    .line 155
    new-instance v0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor$SafeReaderMsgQ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor$SafeReaderMsgQ;-><init>(Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;Lcom/vlingo/client/safereader/MessageReadbackListener$1;)V

    iput-object v0, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;->requestQueue:Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor$SafeReaderMsgQ;

    .line 257
    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/safereader/MessageReadbackListener;Lcom/vlingo/client/safereader/MessageReadbackListener$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;-><init>(Lcom/vlingo/client/safereader/MessageReadbackListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;->paused:Z

    return v0
.end method


# virtual methods
.method declared-synchronized bumpMsg()V
    .registers 3

    .prologue
    .line 251
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;->m_Current:Lcom/vlingo/client/core/tts/TTSRequest2;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;->m_Current:Lcom/vlingo/client/core/tts/TTSRequest2;

    invoke-virtual {v0}, Lcom/vlingo/client/core/tts/TTSRequest2;->isMessageReadback()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 252
    iget-object v0, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;->requestQueue:Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor$SafeReaderMsgQ;

    iget-object v1, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;->m_Current:Lcom/vlingo/client/core/tts/TTSRequest2;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor$SafeReaderMsgQ;->Push(Lcom/vlingo/client/core/tts/TTSRequest2;)V

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;->m_Current:Lcom/vlingo/client/core/tts/TTSRequest2;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 255
    :cond_17
    monitor-exit p0

    return-void

    .line 251
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearQueue()V
    .registers 2

    .prologue
    .line 238
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;->requestQueue:Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor$SafeReaderMsgQ;

    invoke-virtual {v0}, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor$SafeReaderMsgQ;->SelectivePurge()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 239
    monitor-exit p0

    return-void

    .line 238
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enqueue(Lcom/vlingo/client/core/tts/TTSRequest2;)V
    .registers 3
    .parameter "request"

    .prologue
    .line 229
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;->requestQueue:Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor$SafeReaderMsgQ;

    invoke-virtual {v0, p1}, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor$SafeReaderMsgQ;->Add(Lcom/vlingo/client/core/tts/TTSRequest2;)V

    .line 230
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 233
    monitor-exit p0

    return-void

    .line 229
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pause()V
    .registers 2

    .prologue
    .line 242
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;->paused:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 243
    monitor-exit p0

    return-void

    .line 242
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 7

    .prologue
    .line 161
    :goto_0
    iget-boolean v4, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;->stopped:Z

    if-nez v4, :cond_86

    .line 162
    const/4 v3, 0x0

    .line 164
    .local v3, r:Lcom/vlingo/client/core/tts/TTSRequest2;
    monitor-enter p0

    .line 165
    const/4 v4, 0x0

    :try_start_7
    iput-object v4, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;->m_Current:Lcom/vlingo/client/core/tts/TTSRequest2;

    .line 166
    :goto_9
    iget-object v4, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;->requestQueue:Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor$SafeReaderMsgQ;

    invoke-virtual {v4}, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor$SafeReaderMsgQ;->Empty()Z
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_20

    move-result v4

    if-eqz v4, :cond_23

    .line 170
    :try_start_11
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_20
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_9

    .line 171
    :catch_15
    move-exception v0

    .line 172
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_16
    const-string v4, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 192
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_20
    move-exception v4

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_20

    throw v4

    .line 176
    :cond_23
    :try_start_23
    iget-object v4, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;->requestQueue:Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor$SafeReaderMsgQ;

    invoke-virtual {v4}, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor$SafeReaderMsgQ;->Pop()Lcom/vlingo/client/core/tts/TTSRequest2;

    move-result-object v4

    iput-object v4, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;->m_Current:Lcom/vlingo/client/core/tts/TTSRequest2;

    .line 177
    iget-object v4, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;->m_Current:Lcom/vlingo/client/core/tts/TTSRequest2;

    if-nez v4, :cond_31

    .line 178
    monitor-exit p0

    goto :goto_0

    .line 185
    :cond_31
    invoke-static {}, Lcom/vlingo/client/core/tts/TTSEngine;->getInstance()Lcom/vlingo/client/core/tts/TTSEngine;

    move-result-object v4

    iget-object v5, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;->m_Current:Lcom/vlingo/client/core/tts/TTSRequest2;

    invoke-virtual {v4, v5}, Lcom/vlingo/client/core/tts/TTSEngine;->playTTS(Lcom/vlingo/client/core/tts/TTSRequest2;)Z

    move-result v4

    if-nez v4, :cond_3f

    .line 186
    monitor-exit p0

    goto :goto_0

    .line 188
    :cond_3f
    iget-object v3, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;->m_Current:Lcom/vlingo/client/core/tts/TTSRequest2;

    .line 189
    invoke-virtual {v3}, Lcom/vlingo/client/core/tts/TTSRequest2;->getMessageContext()Lcom/vlingo/client/safereader/MessageContext;

    move-result-object v4

    if-eqz v4, :cond_50

    .line 190
    iget-object v4, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;->this$0:Lcom/vlingo/client/safereader/MessageReadbackListener;

    invoke-virtual {v3}, Lcom/vlingo/client/core/tts/TTSRequest2;->getMessageContext()Lcom/vlingo/client/safereader/MessageContext;

    move-result-object v5

    #setter for: Lcom/vlingo/client/safereader/MessageReadbackListener;->currentMessageContext:Lcom/vlingo/client/safereader/MessageContext;
    invoke-static {v4, v5}, Lcom/vlingo/client/safereader/MessageReadbackListener;->access$202(Lcom/vlingo/client/safereader/MessageReadbackListener;Lcom/vlingo/client/safereader/MessageContext;)Lcom/vlingo/client/safereader/MessageContext;

    .line 192
    :cond_50
    monitor-exit p0
    :try_end_51
    .catchall {:try_start_23 .. :try_end_51} :catchall_20

    .line 194
    monitor-enter v3

    .line 195
    :goto_52
    :try_start_52
    invoke-virtual {v3}, Lcom/vlingo/client/core/tts/TTSRequest2;->isPlaying()Z

    move-result v4

    if-nez v4, :cond_5e

    .line 196
    invoke-virtual {v3}, Lcom/vlingo/client/core/tts/TTSRequest2;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_63

    .line 220
    :cond_5e
    monitor-exit v3

    goto :goto_0

    :catchall_60
    move-exception v4

    monitor-exit v3
    :try_end_62
    .catchall {:try_start_52 .. :try_end_62} :catchall_60

    throw v4

    .line 207
    :cond_63
    :try_start_63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 208
    .local v1, now:J
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 209
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;->m_Current:Lcom/vlingo/client/core/tts/TTSRequest2;

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v1, v4, v1

    .line 212
    invoke-static {}, Lcom/vlingo/client/core/audio/AudioPlayer;->getInstance()Lcom/vlingo/client/core/audio/AudioPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/core/audio/AudioPlayer;->speedBump()V
    :try_end_7a
    .catchall {:try_start_63 .. :try_end_7a} :catchall_60
    .catch Ljava/lang/InterruptedException; {:try_start_63 .. :try_end_7a} :catch_7b

    goto :goto_52

    .line 213
    .end local v1           #now:J
    :catch_7b
    move-exception v0

    .line 214
    .restart local v0       #ex:Ljava/lang/InterruptedException;
    :try_start_7c
    const-string v4, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catchall {:try_start_7c .. :try_end_85} :catchall_60

    goto :goto_52

    .line 226
    .end local v0           #ex:Ljava/lang/InterruptedException;
    .end local v3           #r:Lcom/vlingo/client/core/tts/TTSRequest2;
    :cond_86
    return-void
.end method

.method public declared-synchronized unPause()V
    .registers 2

    .prologue
    .line 246
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/vlingo/client/safereader/MessageReadbackListener$TTSQueueProcessor;->paused:Z

    .line 247
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 248
    monitor-exit p0

    return-void

    .line 246
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
