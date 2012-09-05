.class Lcom/vlingo/client/core/audio/PlayerItem;
.super Ljava/lang/Object;
.source "PlayerItem.java"


# instance fields
.field private final callback:Lcom/vlingo/client/core/audio/AudioCallback;

.field private final listener:Ljavax/microedition/media/PlayerListener;

.field private final player:Ljavax/microedition/media/Player;


# direct methods
.method constructor <init>(Ljavax/microedition/media/Player;Ljavax/microedition/media/PlayerListener;Lcom/vlingo/client/core/audio/AudioCallback;)V
    .registers 4
    .parameter "player"
    .parameter "listener"
    .parameter "callback"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/vlingo/client/core/audio/PlayerItem;->player:Ljavax/microedition/media/Player;

    .line 29
    iput-object p2, p0, Lcom/vlingo/client/core/audio/PlayerItem;->listener:Ljavax/microedition/media/PlayerListener;

    .line 30
    iput-object p3, p0, Lcom/vlingo/client/core/audio/PlayerItem;->callback:Lcom/vlingo/client/core/audio/AudioCallback;

    .line 31
    return-void
.end method


# virtual methods
.method cleanup()V
    .registers 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vlingo/client/core/audio/PlayerItem;->listener:Ljavax/microedition/media/PlayerListener;

    if-eqz v0, :cond_b

    .line 47
    iget-object v0, p0, Lcom/vlingo/client/core/audio/PlayerItem;->player:Ljavax/microedition/media/Player;

    iget-object v1, p0, Lcom/vlingo/client/core/audio/PlayerItem;->listener:Ljavax/microedition/media/PlayerListener;

    invoke-virtual {v0, v1}, Ljavax/microedition/media/Player;->removePlayerListener(Ljavax/microedition/media/PlayerListener;)V

    .line 48
    :cond_b
    iget-object v0, p0, Lcom/vlingo/client/core/audio/PlayerItem;->player:Ljavax/microedition/media/Player;

    invoke-virtual {v0}, Ljavax/microedition/media/Player;->close()V

    .line 49
    return-void
.end method

.method cleanupWithNotification()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-virtual {p0}, Lcom/vlingo/client/core/audio/PlayerItem;->cleanup()V

    .line 54
    iget-object v0, p0, Lcom/vlingo/client/core/audio/PlayerItem;->callback:Lcom/vlingo/client/core/audio/AudioCallback;

    if-eqz v0, :cond_12

    .line 55
    iget-object v0, p0, Lcom/vlingo/client/core/audio/PlayerItem;->callback:Lcom/vlingo/client/core/audio/AudioCallback;

    invoke-interface {v0, v1}, Lcom/vlingo/client/core/audio/AudioCallback;->audioStart(Z)V

    .line 56
    iget-object v0, p0, Lcom/vlingo/client/core/audio/PlayerItem;->callback:Lcom/vlingo/client/core/audio/AudioCallback;

    invoke-interface {v0, v1}, Lcom/vlingo/client/core/audio/AudioCallback;->audioDone(Z)V

    .line 58
    :cond_12
    return-void
.end method

.method getPlayer()Ljavax/microedition/media/Player;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vlingo/client/core/audio/PlayerItem;->player:Ljavax/microedition/media/Player;

    return-object v0
.end method

.method declared-synchronized startPlayer()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/media/MediaException;
        }
    .end annotation

    .prologue
    .line 34
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/audio/PlayerItem;->player:Ljavax/microedition/media/Player;

    invoke-virtual {v0}, Ljavax/microedition/media/Player;->realize()V

    .line 35
    iget-object v0, p0, Lcom/vlingo/client/core/audio/PlayerItem;->listener:Ljavax/microedition/media/PlayerListener;

    if-eqz v0, :cond_11

    .line 36
    iget-object v0, p0, Lcom/vlingo/client/core/audio/PlayerItem;->player:Ljavax/microedition/media/Player;

    iget-object v1, p0, Lcom/vlingo/client/core/audio/PlayerItem;->listener:Ljavax/microedition/media/PlayerListener;

    invoke-virtual {v0, v1}, Ljavax/microedition/media/Player;->addPlayerListener(Ljavax/microedition/media/PlayerListener;)V

    .line 37
    :cond_11
    iget-object v0, p0, Lcom/vlingo/client/core/audio/PlayerItem;->player:Ljavax/microedition/media/Player;

    invoke-virtual {v0}, Ljavax/microedition/media/Player;->prefetch()V

    .line 38
    iget-object v0, p0, Lcom/vlingo/client/core/audio/PlayerItem;->player:Ljavax/microedition/media/Player;

    invoke-virtual {v0}, Ljavax/microedition/media/Player;->start()V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 39
    monitor-exit p0

    return-void

    .line 34
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized stopPlayer()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/media/MediaException;
        }
    .end annotation

    .prologue
    .line 42
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/audio/PlayerItem;->player:Ljavax/microedition/media/Player;

    invoke-virtual {v0}, Ljavax/microedition/media/Player;->stop()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 43
    monitor-exit p0

    return-void

    .line 42
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
