.class Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;
.super Ljava/lang/Object;
.source "AudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/audio/AudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioQueue"
.end annotation


# instance fields
.field private m_MsgQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/vlingo/client/core/audio/AudioPlayer$Audio;",
            ">;"
        }
    .end annotation
.end field

.field private m_Paused:I

.field private m_Sound_Queue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/vlingo/client/core/audio/AudioPlayer$Audio;",
            ">;"
        }
    .end annotation
.end field

.field private m_TTS_Queue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/vlingo/client/core/audio/AudioPlayer$Audio;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/vlingo/client/core/audio/AudioPlayer;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/core/audio/AudioPlayer;)V
    .registers 3
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;->this$0:Lcom/vlingo/client/core/audio/AudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;->m_Sound_Queue:Ljava/util/LinkedList;

    .line 163
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;->m_TTS_Queue:Ljava/util/LinkedList;

    .line 164
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;->m_MsgQueue:Ljava/util/LinkedList;

    .line 170
    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/core/audio/AudioPlayer;Lcom/vlingo/client/core/audio/AudioPlayer$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;-><init>(Lcom/vlingo/client/core/audio/AudioPlayer;)V

    return-void
.end method

.method static synthetic access$400(Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;)Ljava/util/LinkedList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;->m_MsgQueue:Ljava/util/LinkedList;

    return-object v0
.end method


# virtual methods
.method declared-synchronized add(Lcom/vlingo/client/core/audio/AudioPlayer$Audio;)V
    .registers 3
    .parameter "audio"

    .prologue
    .line 173
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;->this$0:Lcom/vlingo/client/core/audio/AudioPlayer;

    invoke-virtual {v0}, Lcom/vlingo/client/core/audio/AudioPlayer;->silenced()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1a

    move-result v0

    if-eqz v0, :cond_b

    .line 187
    :goto_9
    monitor-exit p0

    return-void

    .line 177
    :cond_b
    :try_start_b
    invoke-virtual {p1}, Lcom/vlingo/client/core/audio/AudioPlayer$Audio;->isSound()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 178
    iget-object v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;->m_Sound_Queue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 186
    :goto_16
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_1a

    goto :goto_9

    .line 173
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 180
    :cond_1d
    :try_start_1d
    invoke-virtual {p1}, Lcom/vlingo/client/core/audio/AudioPlayer$Audio;->isTTS()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 181
    iget-object v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;->m_TTS_Queue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 184
    :cond_29
    iget-object v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;->m_MsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catchall {:try_start_1d .. :try_end_2e} :catchall_1a

    goto :goto_16
.end method

.method declared-synchronized clear()V
    .registers 2

    .prologue
    .line 218
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;->m_Sound_Queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 219
    iget-object v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;->m_TTS_Queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 220
    iget-object v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;->m_MsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 221
    monitor-exit p0

    return-void

    .line 218
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isEmpty()Z
    .registers 2

    .prologue
    .line 224
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;->m_Sound_Queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;->m_TTS_Queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    iget v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;->m_Paused:I

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;->m_MsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_22

    move-result v0

    if-eqz v0, :cond_20

    :cond_1d
    const/4 v0, 0x1

    :goto_1e
    monitor-exit p0

    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1e

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized pause(I)V
    .registers 3
    .parameter "pause"

    .prologue
    .line 192
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;->m_Paused:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;->m_Paused:I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 193
    monitor-exit p0

    return-void

    .line 192
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized poll()Lcom/vlingo/client/core/audio/AudioPlayer$Audio;
    .registers 3

    .prologue
    .line 204
    monitor-enter p0

    const/4 v0, 0x0

    .line 205
    .local v0, audio:Lcom/vlingo/client/core/audio/AudioPlayer$Audio;
    :try_start_2
    iget-object v1, p0, Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;->m_Sound_Queue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    .line 206
    iget-object v1, p0, Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;->m_Sound_Queue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #audio:Lcom/vlingo/client/core/audio/AudioPlayer$Audio;
    check-cast v0, Lcom/vlingo/client/core/audio/AudioPlayer$Audio;
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_3c

    .line 214
    .restart local v0       #audio:Lcom/vlingo/client/core/audio/AudioPlayer$Audio;
    :cond_12
    :goto_12
    monitor-exit p0

    return-object v0

    .line 208
    :cond_14
    :try_start_14
    iget-object v1, p0, Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;->m_TTS_Queue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_25

    .line 209
    iget-object v1, p0, Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;->m_TTS_Queue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #audio:Lcom/vlingo/client/core/audio/AudioPlayer$Audio;
    check-cast v0, Lcom/vlingo/client/core/audio/AudioPlayer$Audio;

    .restart local v0       #audio:Lcom/vlingo/client/core/audio/AudioPlayer$Audio;
    goto :goto_12

    .line 211
    :cond_25
    iget v1, p0, Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;->m_Paused:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;->m_MsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    .line 212
    iget-object v1, p0, Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;->m_MsgQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #audio:Lcom/vlingo/client/core/audio/AudioPlayer$Audio;
    check-cast v0, Lcom/vlingo/client/core/audio/AudioPlayer$Audio;
    :try_end_3b
    .catchall {:try_start_14 .. :try_end_3b} :catchall_3c

    .restart local v0       #audio:Lcom/vlingo/client/core/audio/AudioPlayer$Audio;
    goto :goto_12

    .line 204
    .end local v0           #audio:Lcom/vlingo/client/core/audio/AudioPlayer$Audio;
    :catchall_3c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized push(Lcom/vlingo/client/core/audio/AudioPlayer$Audio;)V
    .registers 4
    .parameter "audio"

    .prologue
    .line 230
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;->this$0:Lcom/vlingo/client/core/audio/AudioPlayer;

    invoke-virtual {v0}, Lcom/vlingo/client/core/audio/AudioPlayer;->silenced()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_12

    move-result v0

    if-eqz v0, :cond_b

    .line 236
    :goto_9
    monitor-exit p0

    return-void

    .line 234
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;->m_MsgQueue:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_12

    goto :goto_9

    .line 230
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized resume(I)V
    .registers 4
    .parameter "pause"

    .prologue
    .line 198
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;->m_Paused:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;->m_Paused:I

    .line 199
    iget v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;->m_Paused:I

    if-nez v0, :cond_f

    .line 200
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 201
    :cond_f
    monitor-exit p0

    return-void

    .line 198
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method
