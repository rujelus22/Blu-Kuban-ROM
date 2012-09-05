.class public Lcom/vlingo/client/car/tts/CarTTSManager;
.super Ljava/lang/Object;
.source "CarTTSManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;
    }
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private isAttached:Z

.field private final listeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mBinder:Lcom/vlingo/client/core/tts/ITTSListener$Stub;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/car/tts/CarTTSManager;->isAttached:Z

    .line 98
    new-instance v0, Lcom/vlingo/client/car/tts/CarTTSManager$1;

    invoke-direct {v0, p0}, Lcom/vlingo/client/car/tts/CarTTSManager$1;-><init>(Lcom/vlingo/client/car/tts/CarTTSManager;)V

    iput-object v0, p0, Lcom/vlingo/client/car/tts/CarTTSManager;->mBinder:Lcom/vlingo/client/core/tts/ITTSListener$Stub;

    .line 31
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/car/tts/CarTTSManager;->listeners:Ljava/util/Vector;

    .line 32
    iget-object v0, p0, Lcom/vlingo/client/car/tts/CarTTSManager;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/car/tts/CarTTSManager;->handler:Landroid/os/Handler;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/car/tts/CarTTSManager;)Ljava/util/Vector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vlingo/client/car/tts/CarTTSManager;->listeners:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vlingo/client/car/tts/CarTTSManager;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vlingo/client/car/tts/CarTTSManager;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 51
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/car/tts/CarTTSManager;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 52
    iget-object v0, p0, Lcom/vlingo/client/car/tts/CarTTSManager;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 54
    :cond_e
    monitor-exit p0

    return-void

    .line 51
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized attach()V
    .registers 4

    .prologue
    .line 37
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/vlingo/client/car/tts/CarTTSManager;->isAttached:Z

    if-nez v0, :cond_15

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/car/tts/CarTTSManager;->isAttached:Z

    .line 39
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/car/tts/CarTTSManager;->mBinder:Lcom/vlingo/client/core/tts/ITTSListener$Stub;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vlingo/client/safereader/SafeReaderAPI;->addTTSListener(Lcom/vlingo/client/core/tts/ITTSListener;I)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 41
    :cond_15
    monitor-exit p0

    return-void

    .line 37
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cancel()V
    .registers 3

    .prologue
    .line 73
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/safereader/SafeReaderAPI;->cancel(Z)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 74
    monitor-exit p0

    return-void

    .line 73
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized detach()V
    .registers 3

    .prologue
    .line 44
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/vlingo/client/car/tts/CarTTSManager;->isAttached:Z

    if-eqz v0, :cond_13

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/car/tts/CarTTSManager;->isAttached:Z

    .line 46
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/safereader/SafeReaderAPI;->removeTTSListener(I)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 48
    :cond_13
    monitor-exit p0

    return-void

    .line 44
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isAttached()Z
    .registers 2

    .prologue
    .line 77
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/vlingo/client/car/tts/CarTTSManager;->isAttached:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized playDemand(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 4
    .parameter "demand"

    .prologue
    .line 63
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/safereader/SafeReaderAPI;->cancel(Z)V

    .line 64
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vlingo/client/safereader/SafeReaderAPI;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 65
    monitor-exit p0

    return-void

    .line 63
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized playDemand([Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 4
    .parameter "demand"

    .prologue
    .line 68
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/safereader/SafeReaderAPI;->cancel(Z)V

    .line 69
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vlingo/client/safereader/SafeReaderAPI;->speakCompondRequests([Lcom/vlingo/client/core/tts/TTSDemand;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 70
    monitor-exit p0

    return-void

    .line 68
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeListener(Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 57
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/car/tts/CarTTSManager;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 58
    iget-object v0, p0, Lcom/vlingo/client/car/tts/CarTTSManager;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 60
    :cond_e
    monitor-exit p0

    return-void

    .line 57
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
