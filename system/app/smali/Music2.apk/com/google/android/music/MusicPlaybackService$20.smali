.class Lcom/google/android/music/MusicPlaybackService$20;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MusicPlaybackService;->prev()V
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
    .line 2144
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$20;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 2148
    :try_start_1
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$20;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$3300(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/medialist/SongList;

    move-result-object v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$20;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$3300(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/medialist/SongList;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/google/android/music/medialist/SongList;->isFlagSet(I)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 2150
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$20;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v2}, Lcom/google/android/music/MusicPlaybackService;->position()J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-lez v2, :cond_34

    .line 2151
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$20;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/music/MusicPlaybackService;->seek(J)J
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_cf

    .line 2186
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$20;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$2400(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2188
    :goto_33
    return-void

    .line 2155
    :cond_34
    :try_start_34
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$20;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mShuffleMode:I
    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$3900(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v2

    if-ne v2, v6, :cond_da

    .line 2157
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$20;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mFuture:Ljava/util/Vector;
    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$3600(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;

    move-result-object v3

    monitor-enter v3
    :try_end_43
    .catchall {:try_start_34 .. :try_end_43} :catchall_cf

    .line 2158
    :try_start_43
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$20;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mHistory:Ljava/util/Vector;
    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$3700(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    .line 2159
    .local v0, histsize:I
    if-nez v0, :cond_71

    .line 2161
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$20;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iget-object v4, p0, Lcom/google/android/music/MusicPlaybackService$20;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mHistory:Ljava/util/Vector;
    invoke-static {v4}, Lcom/google/android/music/MusicPlaybackService;->access$3700(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;

    move-result-object v4

    #calls: Lcom/google/android/music/MusicPlaybackService;->fillShuffleList(Ljava/util/Vector;)V
    invoke-static {v2, v4}, Lcom/google/android/music/MusicPlaybackService;->access$4000(Lcom/google/android/music/MusicPlaybackService;Ljava/util/Vector;)V

    .line 2162
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$20;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mHistory:Ljava/util/Vector;
    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$3700(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    .line 2163
    if-nez v0, :cond_71

    .line 2164
    monitor-exit v3
    :try_end_67
    .catchall {:try_start_43 .. :try_end_67} :catchall_cc

    .line 2186
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$20;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$2400(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_33

    .line 2167
    :cond_71
    :try_start_71
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$20;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I
    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$1000(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v2

    if-ltz v2, :cond_8d

    .line 2168
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$20;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mFuture:Ljava/util/Vector;
    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$3600(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;

    move-result-object v2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService$20;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I
    invoke-static {v5}, Lcom/google/android/music/MusicPlaybackService;->access$1000(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 2170
    :cond_8d
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$20;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mHistory:Ljava/util/Vector;
    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$3700(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;

    move-result-object v2

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v2, v4}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2171
    .local v1, pos:I
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$20;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #setter for: Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I
    invoke-static {v2, v1}, Lcom/google/android/music/MusicPlaybackService;->access$1002(Lcom/google/android/music/MusicPlaybackService;I)I

    .line 2172
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$20;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #calls: Lcom/google/android/music/MusicPlaybackService;->dumpPastPresentAndFuture()V
    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$4100(Lcom/google/android/music/MusicPlaybackService;)V

    .line 2173
    monitor-exit v3
    :try_end_aa
    .catchall {:try_start_71 .. :try_end_aa} :catchall_cc

    .line 2181
    .end local v0           #histsize:I
    .end local v1           #pos:I
    :goto_aa
    :try_start_aa
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$20;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #calls: Lcom/google/android/music/MusicPlaybackService;->saveBookmarkIfNeeded()V
    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$3800(Lcom/google/android/music/MusicPlaybackService;)V

    .line 2182
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$20;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const/4 v3, 0x0

    #calls: Lcom/google/android/music/MusicPlaybackService;->stop(Z)V
    invoke-static {v2, v3}, Lcom/google/android/music/MusicPlaybackService;->access$4400(Lcom/google/android/music/MusicPlaybackService;Z)V

    .line 2183
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$20;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const/4 v3, 0x0

    #setter for: Lcom/google/android/music/MusicPlaybackService;->mAudioId:Lcom/google/android/music/dl/ContentIdentifier;
    invoke-static {v2, v3}, Lcom/google/android/music/MusicPlaybackService;->access$802(Lcom/google/android/music/MusicPlaybackService;Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/ContentIdentifier;

    .line 2184
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$20;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const/4 v3, 0x1

    #calls: Lcom/google/android/music/MusicPlaybackService;->openCurrentAndPlay(Z)V
    invoke-static {v2, v3}, Lcom/google/android/music/MusicPlaybackService;->access$1700(Lcom/google/android/music/MusicPlaybackService;Z)V
    :try_end_c1
    .catchall {:try_start_aa .. :try_end_c1} :catchall_cf

    .line 2186
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$20;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$2400(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_33

    .line 2173
    :catchall_cc
    move-exception v2

    :try_start_cd
    monitor-exit v3
    :try_end_ce
    .catchall {:try_start_cd .. :try_end_ce} :catchall_cc

    :try_start_ce
    throw v2
    :try_end_cf
    .catchall {:try_start_ce .. :try_end_cf} :catchall_cf

    .line 2186
    :catchall_cf
    move-exception v2

    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$20;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/google/android/music/MusicPlaybackService;->access$2400(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2

    .line 2175
    :cond_da
    :try_start_da
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$20;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I
    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$1000(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v2

    if-lez v2, :cond_e8

    .line 2176
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$20;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$1010(Lcom/google/android/music/MusicPlaybackService;)I

    goto :goto_aa

    .line 2178
    :cond_e8
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$20;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$20;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mPlayList:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;
    invoke-static {v3}, Lcom/google/android/music/MusicPlaybackService;->access$2600(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    #setter for: Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I
    invoke-static {v2, v3}, Lcom/google/android/music/MusicPlaybackService;->access$1002(Lcom/google/android/music/MusicPlaybackService;I)I
    :try_end_f9
    .catchall {:try_start_da .. :try_end_f9} :catchall_cf

    goto :goto_aa
.end method
