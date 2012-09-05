.class Lcom/vlingo/client/core/audio/AudioPlayer$Server$1;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/core/audio/AudioPlayer$Server;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlingo/client/core/audio/AudioPlayer$Server;

.field final synthetic val$context:Lcom/vlingo/client/core/audio/AudioContext;


# direct methods
.method constructor <init>(Lcom/vlingo/client/core/audio/AudioPlayer$Server;Lcom/vlingo/client/core/audio/AudioContext;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 389
    iput-object p1, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server$1;->this$1:Lcom/vlingo/client/core/audio/AudioPlayer$Server;

    iput-object p2, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server$1;->val$context:Lcom/vlingo/client/core/audio/AudioContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 5
    .parameter "mp"

    .prologue
    .line 391
    iget-object v1, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server$1;->this$1:Lcom/vlingo/client/core/audio/AudioPlayer$Server;

    monitor-enter v1

    .line 392
    :try_start_3
    iget-object v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server$1;->this$1:Lcom/vlingo/client/core/audio/AudioPlayer$Server;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 394
    iget-object v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server$1;->val$context:Lcom/vlingo/client/core/audio/AudioContext;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server$1;->val$context:Lcom/vlingo/client/core/audio/AudioContext;

    invoke-virtual {v0}, Lcom/vlingo/client/core/audio/AudioContext;->getListener()Lcom/vlingo/client/core/audio/AudioListener;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 395
    iget-object v0, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server$1;->val$context:Lcom/vlingo/client/core/audio/AudioContext;

    invoke-virtual {v0}, Lcom/vlingo/client/core/audio/AudioContext;->getListener()Lcom/vlingo/client/core/audio/AudioListener;

    move-result-object v0

    iget-object v2, p0, Lcom/vlingo/client/core/audio/AudioPlayer$Server$1;->val$context:Lcom/vlingo/client/core/audio/AudioContext;

    invoke-interface {v0, v2}, Lcom/vlingo/client/core/audio/AudioListener;->onStop(Lcom/vlingo/client/core/audio/AudioContext;)V

    .line 397
    :cond_1f
    monitor-exit v1

    .line 398
    return-void

    .line 397
    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v0
.end method
