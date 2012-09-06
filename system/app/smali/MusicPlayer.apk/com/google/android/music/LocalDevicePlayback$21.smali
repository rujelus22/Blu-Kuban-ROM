.class Lcom/google/android/music/LocalDevicePlayback$21;
.super Ljava/lang/Object;
.source "LocalDevicePlayback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/LocalDevicePlayback;->prev()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/LocalDevicePlayback;


# direct methods
.method constructor <init>(Lcom/google/android/music/LocalDevicePlayback;)V
    .registers 2
    .parameter

    .prologue
    .line 2236
    iput-object p1, p0, Lcom/google/android/music/LocalDevicePlayback$21;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    .line 2240
    :try_start_2
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$21;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$1200(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/medialist/SongList;

    move-result-object v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$21;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$1200(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/medialist/SongList;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/google/android/music/medialist/SongList;->isFlagSet(I)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 2243
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$21;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    invoke-virtual {v2}, Lcom/google/android/music/LocalDevicePlayback;->position()J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-lez v2, :cond_35

    .line 2244
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$21;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/music/LocalDevicePlayback;->seek(J)J
    :try_end_2b
    .catchall {:try_start_2 .. :try_end_2b} :catchall_fd

    .line 2293
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$21;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$3200(Lcom/google/android/music/LocalDevicePlayback;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2295
    :goto_34
    return-void

    .line 2248
    :cond_35
    :try_start_35
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$21;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #calls: Lcom/google/android/music/LocalDevicePlayback;->shouldPlayInRandomOrder()Z
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$4500(Lcom/google/android/music/LocalDevicePlayback;)Z

    move-result v2

    if-eqz v2, :cond_108

    .line 2251
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$21;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mFuture:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$4300(Lcom/google/android/music/LocalDevicePlayback;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3
    :try_end_44
    .catchall {:try_start_35 .. :try_end_44} :catchall_fd

    .line 2252
    :try_start_44
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$21;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mHistory:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$4400(Lcom/google/android/music/LocalDevicePlayback;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 2253
    .local v0, histsize:I
    if-nez v0, :cond_96

    .line 2255
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$21;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #calls: Lcom/google/android/music/LocalDevicePlayback;->fillShuffleList()V
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$4700(Lcom/google/android/music/LocalDevicePlayback;)V

    .line 2256
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$21;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mFuture:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$4300(Lcom/google/android/music/LocalDevicePlayback;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_6c

    .line 2257
    monitor-exit v3
    :try_end_62
    .catchall {:try_start_44 .. :try_end_62} :catchall_fa

    .line 2293
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$21;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$3200(Lcom/google/android/music/LocalDevicePlayback;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_34

    .line 2259
    :cond_6c
    :try_start_6c
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$21;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mHistory:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$4400(Lcom/google/android/music/LocalDevicePlayback;)Ljava/util/LinkedList;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/music/LocalDevicePlayback$21;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mFuture:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/google/android/music/LocalDevicePlayback;->access$4300(Lcom/google/android/music/LocalDevicePlayback;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2260
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$21;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mHistory:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$4400(Lcom/google/android/music/LocalDevicePlayback;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 2261
    if-nez v0, :cond_96

    .line 2262
    monitor-exit v3
    :try_end_8c
    .catchall {:try_start_6c .. :try_end_8c} :catchall_fa

    .line 2293
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$21;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$3200(Lcom/google/android/music/LocalDevicePlayback;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_34

    .line 2265
    :cond_96
    :try_start_96
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$21;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$1600(Lcom/google/android/music/LocalDevicePlayback;)I

    move-result v2

    if-ltz v2, :cond_b2

    .line 2266
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$21;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mFuture:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$4300(Lcom/google/android/music/LocalDevicePlayback;)Ljava/util/LinkedList;

    move-result-object v2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/music/LocalDevicePlayback$21;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I
    invoke-static {v5}, Lcom/google/android/music/LocalDevicePlayback;->access$1600(Lcom/google/android/music/LocalDevicePlayback;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 2268
    :cond_b2
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$21;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mHistory:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$4400(Lcom/google/android/music/LocalDevicePlayback;)Ljava/util/LinkedList;

    move-result-object v2

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2269
    .local v1, pos:I
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$21;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I
    invoke-static {v2, v1}, Lcom/google/android/music/LocalDevicePlayback;->access$1602(Lcom/google/android/music/LocalDevicePlayback;I)I

    .line 2270
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$21;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #calls: Lcom/google/android/music/LocalDevicePlayback;->dumpPastPresentAndFuture()V
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$4800(Lcom/google/android/music/LocalDevicePlayback;)V

    .line 2271
    monitor-exit v3
    :try_end_cf
    .catchall {:try_start_96 .. :try_end_cf} :catchall_fa

    .line 2287
    .end local v0           #histsize:I
    .end local v1           #pos:I
    :goto_cf
    :try_start_cf
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$21;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #calls: Lcom/google/android/music/LocalDevicePlayback;->saveBookmarkIfNeeded()V
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$4900(Lcom/google/android/music/LocalDevicePlayback;)V

    .line 2288
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$21;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    const/4 v3, 0x1

    #calls: Lcom/google/android/music/LocalDevicePlayback;->stop(Z)V
    invoke-static {v2, v3}, Lcom/google/android/music/LocalDevicePlayback;->access$5600(Lcom/google/android/music/LocalDevicePlayback;Z)V

    .line 2289
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$21;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    const/4 v3, 0x0

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mAudioId:Lcom/google/android/music/dl/ContentIdentifier;
    invoke-static {v2, v3}, Lcom/google/android/music/LocalDevicePlayback;->access$2802(Lcom/google/android/music/LocalDevicePlayback;Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/ContentIdentifier;

    .line 2290
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$21;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    const-wide/16 v3, 0x0

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mListItemId:J
    invoke-static {v2, v3, v4}, Lcom/google/android/music/LocalDevicePlayback;->access$2202(Lcom/google/android/music/LocalDevicePlayback;J)J

    .line 2291
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$21;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    #calls: Lcom/google/android/music/LocalDevicePlayback;->openCurrentAndPrepareToPlaySync(ZZZ)V
    invoke-static {v2, v3, v4, v5}, Lcom/google/android/music/LocalDevicePlayback;->access$5000(Lcom/google/android/music/LocalDevicePlayback;ZZZ)V
    :try_end_ef
    .catchall {:try_start_cf .. :try_end_ef} :catchall_fd

    .line 2293
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$21;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$3200(Lcom/google/android/music/LocalDevicePlayback;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_34

    .line 2271
    :catchall_fa
    move-exception v2

    :try_start_fb
    monitor-exit v3
    :try_end_fc
    .catchall {:try_start_fb .. :try_end_fc} :catchall_fa

    :try_start_fc
    throw v2
    :try_end_fd
    .catchall {:try_start_fc .. :try_end_fd} :catchall_fd

    .line 2293
    :catchall_fd
    move-exception v2

    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$21;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/google/android/music/LocalDevicePlayback;->access$3200(Lcom/google/android/music/LocalDevicePlayback;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2

    .line 2272
    :cond_108
    :try_start_108
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$21;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mRepeatMode:I
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$2400(Lcom/google/android/music/LocalDevicePlayback;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_143

    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$21;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mLastPlayQueueGroupId:J
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$1900(Lcom/google/android/music/LocalDevicePlayback;)J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_143

    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$21;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mLastPlayQueueGroupPosition:I
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$2000(Lcom/google/android/music/LocalDevicePlayback;)I

    move-result v2

    if-lez v2, :cond_143

    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$21;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$1600(Lcom/google/android/music/LocalDevicePlayback;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$21;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mLastPlayQueueGroupPosition:I
    invoke-static {v3}, Lcom/google/android/music/LocalDevicePlayback;->access$2000(Lcom/google/android/music/LocalDevicePlayback;)I

    move-result v3

    if-ne v2, v3, :cond_143

    .line 2278
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$21;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$21;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;
    invoke-static {v3}, Lcom/google/android/music/LocalDevicePlayback;->access$1800(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I
    invoke-static {v2, v3}, Lcom/google/android/music/LocalDevicePlayback;->access$1602(Lcom/google/android/music/LocalDevicePlayback;I)I

    goto :goto_cf

    .line 2281
    :cond_143
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$21;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$1600(Lcom/google/android/music/LocalDevicePlayback;)I

    move-result v2

    if-lez v2, :cond_152

    .line 2282
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$21;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$1610(Lcom/google/android/music/LocalDevicePlayback;)I

    goto/16 :goto_cf

    .line 2284
    :cond_152
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$21;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$21;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;
    invoke-static {v3}, Lcom/google/android/music/LocalDevicePlayback;->access$1800(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I
    invoke-static {v2, v3}, Lcom/google/android/music/LocalDevicePlayback;->access$1602(Lcom/google/android/music/LocalDevicePlayback;I)I
    :try_end_163
    .catchall {:try_start_108 .. :try_end_163} :catchall_fd

    goto/16 :goto_cf
.end method
