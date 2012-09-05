.class Lcom/google/android/music/MusicPlaybackService$18;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MusicPlaybackService;->play()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MusicPlaybackService;


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicPlaybackService;)V
    .registers 2
    .parameter

    .prologue
    .line 1850
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$18;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const-wide/16 v8, 0x7d0

    const-wide/16 v6, -0x1

    const/4 v5, 0x1

    .line 1854
    :try_start_5
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$18;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;
    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$2600(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->length()I

    move-result v2

    if-gtz v2, :cond_30

    .line 1858
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$18;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;
    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$2600(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    move-result-object v2

    new-instance v3, Lcom/google/android/music/medialist/AllSongsList;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/music/medialist/AllSongsList;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->setMediaList(Lcom/google/android/music/medialist/SongList;)V

    .line 1859
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$18;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/music/MusicPlaybackService;->next(Z)V
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_ac

    .line 1882
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$18;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$2400(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1884
    :goto_2f
    return-void

    .line 1862
    :cond_30
    :try_start_30
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$18;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/AsyncMediaPlayer;
    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$1400(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/AsyncMediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/AsyncMediaPlayer;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_63

    .line 1865
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$18;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const/4 v3, 0x1

    const/4 v4, 0x0

    #calls: Lcom/google/android/music/MusicPlaybackService;->openCurrent(ZZ)V
    invoke-static {v2, v3, v4}, Lcom/google/android/music/MusicPlaybackService;->access$1200(Lcom/google/android/music/MusicPlaybackService;ZZ)V

    .line 1867
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$18;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mReloadedQueueSeekPos:J
    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$3500(Lcom/google/android/music/MusicPlaybackService;)J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_63

    .line 1868
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$18;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/AsyncMediaPlayer;
    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$1400(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/AsyncMediaPlayer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$18;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mReloadedQueueSeekPos:J
    invoke-static {v3}, Lcom/google/android/music/MusicPlaybackService;->access$3500(Lcom/google/android/music/MusicPlaybackService;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/music/AsyncMediaPlayer;->seek(J)J

    .line 1869
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$18;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const-wide/16 v3, -0x1

    #setter for: Lcom/google/android/music/MusicPlaybackService;->mReloadedQueueSeekPos:J
    invoke-static {v2, v3, v4}, Lcom/google/android/music/MusicPlaybackService;->access$3502(Lcom/google/android/music/MusicPlaybackService;J)J

    .line 1874
    :cond_63
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$18;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/AsyncMediaPlayer;
    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$1400(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/AsyncMediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/AsyncMediaPlayer;->duration()J

    move-result-wide v0

    .line 1875
    .local v0, duration:J
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$18;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mRepeatMode:I
    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$1600(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v2

    if-eq v2, v5, :cond_8f

    cmp-long v2, v0, v8

    if-lez v2, :cond_8f

    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$18;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/AsyncMediaPlayer;
    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$1400(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/AsyncMediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/AsyncMediaPlayer;->position()J

    move-result-wide v2

    sub-long v4, v0, v8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_8f

    .line 1877
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$18;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/music/MusicPlaybackService;->next(Z)V

    .line 1879
    :cond_8f
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$18;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mPlayer:Lcom/google/android/music/AsyncMediaPlayer;
    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$1400(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/AsyncMediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/AsyncMediaPlayer;->start()V

    .line 1880
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$18;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mNotificationCanceller:Landroid/os/Handler;
    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$4300(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_a2
    .catchall {:try_start_30 .. :try_end_a2} :catchall_ac

    .line 1882
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$18;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$2400(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_2f

    .end local v0           #duration:J
    :catchall_ac
    move-exception v2

    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$18;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/google/android/music/MusicPlaybackService;->access$2400(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2
.end method
