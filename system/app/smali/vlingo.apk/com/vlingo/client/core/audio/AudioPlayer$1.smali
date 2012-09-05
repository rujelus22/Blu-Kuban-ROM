.class Lcom/vlingo/client/core/audio/AudioPlayer$1;
.super Landroid/os/Handler;
.source "AudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/audio/AudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/core/audio/AudioPlayer;


# direct methods
.method constructor <init>(Lcom/vlingo/client/core/audio/AudioPlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/vlingo/client/core/audio/AudioPlayer$1;->this$0:Lcom/vlingo/client/core/audio/AudioPlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 63
    monitor-enter p0

    :try_start_1
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/vlingo/client/core/audio/AudioPlayer$1;->removeMessages(I)V

    .line 64
    iget-object v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer$1;->this$0:Lcom/vlingo/client/core/audio/AudioPlayer;

    #getter for: Lcom/vlingo/client/core/audio/AudioPlayer;->m_AudioQ:Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;
    invoke-static {v0}, Lcom/vlingo/client/core/audio/AudioPlayer;->access$000(Lcom/vlingo/client/core/audio/AudioPlayer;)Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/audio/AudioPlayer$AudioQueue;->resume(I)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 65
    monitor-exit p0

    return-void

    .line 63
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method
