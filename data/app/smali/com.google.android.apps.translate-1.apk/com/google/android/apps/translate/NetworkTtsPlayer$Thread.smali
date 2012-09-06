.class final Lcom/google/android/apps/translate/NetworkTtsPlayer$Thread;
.super Ljava/lang/Thread;
.source "NetworkTtsPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/NetworkTtsPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Thread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/NetworkTtsPlayer;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/NetworkTtsPlayer;)V
    .registers 3
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer$Thread;->this$0:Lcom/google/android/apps/translate/NetworkTtsPlayer;

    .line 209
    const-string v0, "NetworkTtsPlayer"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 210
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 215
    :goto_0
    const/4 v1, 0x0

    .line 217
    .local v1, cmd:Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;
    iget-object v2, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer$Thread;->this$0:Lcom/google/android/apps/translate/NetworkTtsPlayer;

    #getter for: Lcom/google/android/apps/translate/NetworkTtsPlayer;->mCmdQueue:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/google/android/apps/translate/NetworkTtsPlayer;->access$000(Lcom/google/android/apps/translate/NetworkTtsPlayer;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3

    .line 218
    :try_start_8
    const-string v2, "NetworkTtsPlayer"

    const-string v4, "RemoveFirst"

    invoke-static {v2, v4}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v2, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer$Thread;->this$0:Lcom/google/android/apps/translate/NetworkTtsPlayer;

    #getter for: Lcom/google/android/apps/translate/NetworkTtsPlayer;->mCmdQueue:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/google/android/apps/translate/NetworkTtsPlayer;->access$000(Lcom/google/android/apps/translate/NetworkTtsPlayer;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;

    move-object v1, v0

    .line 220
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_43

    .line 222
    iget v2, v1, Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;->code:I

    packed-switch v2, :pswitch_data_9a

    .line 242
    :cond_23
    :goto_23
    iget-object v2, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer$Thread;->this$0:Lcom/google/android/apps/translate/NetworkTtsPlayer;

    #getter for: Lcom/google/android/apps/translate/NetworkTtsPlayer;->mCmdQueue:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/google/android/apps/translate/NetworkTtsPlayer;->access$000(Lcom/google/android/apps/translate/NetworkTtsPlayer;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3

    .line 243
    :try_start_2a
    iget-object v2, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer$Thread;->this$0:Lcom/google/android/apps/translate/NetworkTtsPlayer;

    #getter for: Lcom/google/android/apps/translate/NetworkTtsPlayer;->mCmdQueue:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/google/android/apps/translate/NetworkTtsPlayer;->access$000(Lcom/google/android/apps/translate/NetworkTtsPlayer;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_94

    .line 248
    iget-object v2, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer$Thread;->this$0:Lcom/google/android/apps/translate/NetworkTtsPlayer;

    const/4 v4, 0x0

    #setter for: Lcom/google/android/apps/translate/NetworkTtsPlayer;->mThread:Lcom/google/android/apps/translate/NetworkTtsPlayer$Thread;
    invoke-static {v2, v4}, Lcom/google/android/apps/translate/NetworkTtsPlayer;->access$402(Lcom/google/android/apps/translate/NetworkTtsPlayer;Lcom/google/android/apps/translate/NetworkTtsPlayer$Thread;)Lcom/google/android/apps/translate/NetworkTtsPlayer$Thread;

    .line 249
    iget-object v2, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer$Thread;->this$0:Lcom/google/android/apps/translate/NetworkTtsPlayer;

    #calls: Lcom/google/android/apps/translate/NetworkTtsPlayer;->releaseWakeLock()V
    invoke-static {v2}, Lcom/google/android/apps/translate/NetworkTtsPlayer;->access$500(Lcom/google/android/apps/translate/NetworkTtsPlayer;)V

    .line 250
    monitor-exit v3
    :try_end_42
    .catchall {:try_start_2a .. :try_end_42} :catchall_97

    return-void

    .line 220
    :catchall_43
    move-exception v2

    :try_start_44
    monitor-exit v3
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v2

    .line 224
    :pswitch_46
    const-string v2, "NetworkTtsPlayer"

    const-string v3, "PLAY"

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v2, "internalPlayStart"

    invoke-static {v2}, Lcom/google/android/apps/translate/Logger;->t(Ljava/lang/String;)V

    .line 226
    iget-object v2, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer$Thread;->this$0:Lcom/google/android/apps/translate/NetworkTtsPlayer;

    #calls: Lcom/google/android/apps/translate/NetworkTtsPlayer;->startSound(Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;)V
    invoke-static {v2, v1}, Lcom/google/android/apps/translate/NetworkTtsPlayer;->access$100(Lcom/google/android/apps/translate/NetworkTtsPlayer;Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;)V

    .line 227
    const-string v2, "internalPlayEnd"

    invoke-static {v2}, Lcom/google/android/apps/translate/Logger;->t(Ljava/lang/String;)V

    .line 228
    const-string v2, "playEnd"

    invoke-static {v2}, Lcom/google/android/apps/translate/Logger;->t(Ljava/lang/String;)V

    goto :goto_23

    .line 231
    :pswitch_62
    const-string v2, "NetworkTtsPlayer"

    const-string v3, "STOP"

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v2, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer$Thread;->this$0:Lcom/google/android/apps/translate/NetworkTtsPlayer;

    #getter for: Lcom/google/android/apps/translate/NetworkTtsPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/google/android/apps/translate/NetworkTtsPlayer;->access$200(Lcom/google/android/apps/translate/NetworkTtsPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer$Thread;->this$0:Lcom/google/android/apps/translate/NetworkTtsPlayer;

    #getter for: Lcom/google/android/apps/translate/NetworkTtsPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/google/android/apps/translate/NetworkTtsPlayer;->access$200(Lcom/google/android/apps/translate/NetworkTtsPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 233
    iget-object v2, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer$Thread;->this$0:Lcom/google/android/apps/translate/NetworkTtsPlayer;

    #getter for: Lcom/google/android/apps/translate/NetworkTtsPlayer;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/google/android/apps/translate/NetworkTtsPlayer;->access$200(Lcom/google/android/apps/translate/NetworkTtsPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_23

    .line 237
    :pswitch_87
    const-string v2, "NetworkTtsPlayer"

    const-string v3, "PREFETCH"

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v2, p0, Lcom/google/android/apps/translate/NetworkTtsPlayer$Thread;->this$0:Lcom/google/android/apps/translate/NetworkTtsPlayer;

    #calls: Lcom/google/android/apps/translate/NetworkTtsPlayer;->prefetchSound(Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;)V
    invoke-static {v2, v1}, Lcom/google/android/apps/translate/NetworkTtsPlayer;->access$300(Lcom/google/android/apps/translate/NetworkTtsPlayer;Lcom/google/android/apps/translate/NetworkTtsPlayer$Command;)V

    goto :goto_23

    .line 252
    :cond_94
    :try_start_94
    monitor-exit v3

    goto/16 :goto_0

    :catchall_97
    move-exception v2

    monitor-exit v3
    :try_end_99
    .catchall {:try_start_94 .. :try_end_99} :catchall_97

    throw v2

    .line 222
    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_46
        :pswitch_62
        :pswitch_87
    .end packed-switch
.end method
