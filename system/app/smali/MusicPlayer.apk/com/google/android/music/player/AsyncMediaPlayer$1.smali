.class Lcom/google/android/music/player/AsyncMediaPlayer$1;
.super Ljava/lang/Object;
.source "AsyncMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/player/AsyncMediaPlayer;-><init>(Landroid/content/Context;Lcom/google/android/music/LocalDevicePlayback$ServiceHooks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/player/AsyncMediaPlayer;

.field final synthetic val$mediaPlayerCreated:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/android/music/player/AsyncMediaPlayer;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/google/android/music/player/AsyncMediaPlayer$1;->this$0:Lcom/google/android/music/player/AsyncMediaPlayer;

    iput-object p2, p0, Lcom/google/android/music/player/AsyncMediaPlayer$1;->val$mediaPlayerCreated:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer$1;->this$0:Lcom/google/android/music/player/AsyncMediaPlayer;

    new-instance v1, Lcom/google/android/music/player/CompatMediaPlayer;

    invoke-direct {v1}, Lcom/google/android/music/player/CompatMediaPlayer;-><init>()V

    #setter for: Lcom/google/android/music/player/AsyncMediaPlayer;->mMediaPlayer:Lcom/google/android/music/player/CompatMediaPlayer;
    invoke-static {v0, v1}, Lcom/google/android/music/player/AsyncMediaPlayer;->access$002(Lcom/google/android/music/player/AsyncMediaPlayer;Lcom/google/android/music/player/CompatMediaPlayer;)Lcom/google/android/music/player/CompatMediaPlayer;

    .line 144
    iget-object v1, p0, Lcom/google/android/music/player/AsyncMediaPlayer$1;->val$mediaPlayerCreated:Ljava/lang/Object;

    monitor-enter v1

    .line 145
    :try_start_d
    iget-object v0, p0, Lcom/google/android/music/player/AsyncMediaPlayer$1;->val$mediaPlayerCreated:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 146
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_20

    .line 151
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcom/google/android/music/player/AsyncMediaPlayer$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/music/player/AsyncMediaPlayer$1$1;-><init>(Lcom/google/android/music/player/AsyncMediaPlayer$1;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 157
    return-void

    .line 146
    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v0
.end method
