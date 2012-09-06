.class Lcom/google/android/music/LocalDevicePlayback$11;
.super Ljava/lang/Object;
.source "LocalDevicePlayback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/LocalDevicePlayback;->open(Lcom/google/android/music/medialist/SongList;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/LocalDevicePlayback;

.field final synthetic val$currentList:Lcom/google/android/music/medialist/SongList;

.field final synthetic val$currentlyPlayingFromPlayQ:Z

.field final synthetic val$listChanged:Z

.field final synthetic val$medialist:Lcom/google/android/music/medialist/SongList;

.field final synthetic val$play:Z

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/google/android/music/LocalDevicePlayback;Lcom/google/android/music/medialist/SongList;IZLcom/google/android/music/medialist/SongList;ZZ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1432
    iput-object p1, p0, Lcom/google/android/music/LocalDevicePlayback$11;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    iput-object p2, p0, Lcom/google/android/music/LocalDevicePlayback$11;->val$medialist:Lcom/google/android/music/medialist/SongList;

    iput p3, p0, Lcom/google/android/music/LocalDevicePlayback$11;->val$position:I

    iput-boolean p4, p0, Lcom/google/android/music/LocalDevicePlayback$11;->val$currentlyPlayingFromPlayQ:Z

    iput-object p5, p0, Lcom/google/android/music/LocalDevicePlayback$11;->val$currentList:Lcom/google/android/music/medialist/SongList;

    iput-boolean p6, p0, Lcom/google/android/music/LocalDevicePlayback$11;->val$play:Z

    iput-boolean p7, p0, Lcom/google/android/music/LocalDevicePlayback$11;->val$listChanged:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 1439
    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$11;->val$medialist:Lcom/google/android/music/medialist/SongList;

    .line 1440
    .local v0, listToPlay:Lcom/google/android/music/medialist/SongList;
    iget v1, p0, Lcom/google/android/music/LocalDevicePlayback$11;->val$position:I

    .line 1442
    .local v1, positionToPlay:I
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$11;->val$medialist:Lcom/google/android/music/medialist/SongList;

    #calls: Lcom/google/android/music/LocalDevicePlayback;->isPlayQueue(Lcom/google/android/music/medialist/SongList;)Z
    invoke-static {v3}, Lcom/google/android/music/LocalDevicePlayback;->access$3800(Lcom/google/android/music/medialist/SongList;)Z

    move-result v3

    if-nez v3, :cond_d3

    .line 1443
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$11;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    iget-object v4, p0, Lcom/google/android/music/LocalDevicePlayback$11;->val$medialist:Lcom/google/android/music/medialist/SongList;

    iget v5, p0, Lcom/google/android/music/LocalDevicePlayback$11;->val$position:I

    #calls: Lcom/google/android/music/LocalDevicePlayback;->queueAndPlay(Lcom/google/android/music/medialist/SongList;I)Lcom/google/android/music/store/PlayQueueInsertResult;
    invoke-static {v3, v4, v5}, Lcom/google/android/music/LocalDevicePlayback;->access$3900(Lcom/google/android/music/LocalDevicePlayback;Lcom/google/android/music/medialist/SongList;I)Lcom/google/android/music/store/PlayQueueInsertResult;

    move-result-object v2

    .line 1444
    .local v2, result:Lcom/google/android/music/store/PlayQueueInsertResult;
    if-eqz v2, :cond_34

    .line 1445
    iget-boolean v3, p0, Lcom/google/android/music/LocalDevicePlayback$11;->val$currentlyPlayingFromPlayQ:Z

    if-eqz v3, :cond_cb

    .line 1446
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$11;->val$currentList:Lcom/google/android/music/medialist/SongList;

    .line 1450
    :goto_1e
    invoke-virtual {v2}, Lcom/google/android/music/store/PlayQueueInsertResult;->getNewPlayPosition()I

    move-result v1

    .line 1453
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$11;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    invoke-virtual {v2}, Lcom/google/android/music/store/PlayQueueInsertResult;->getGroupId()J

    move-result-wide v4

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mLastPlayQueueGroupId:J
    invoke-static {v3, v4, v5}, Lcom/google/android/music/LocalDevicePlayback;->access$1902(Lcom/google/android/music/LocalDevicePlayback;J)J

    .line 1454
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$11;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    invoke-virtual {v2}, Lcom/google/android/music/store/PlayQueueInsertResult;->getGroupPosition()I

    move-result v4

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mLastPlayQueueGroupPosition:I
    invoke-static {v3, v4}, Lcom/google/android/music/LocalDevicePlayback;->access$2002(Lcom/google/android/music/LocalDevicePlayback;I)I

    .line 1461
    .end local v2           #result:Lcom/google/android/music/store/PlayQueueInsertResult;
    :cond_34
    :goto_34
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$11;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v3, v0}, Lcom/google/android/music/LocalDevicePlayback;->access$1202(Lcom/google/android/music/LocalDevicePlayback;Lcom/google/android/music/medialist/SongList;)Lcom/google/android/music/medialist/SongList;

    .line 1462
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$11;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;
    invoke-static {v3}, Lcom/google/android/music/LocalDevicePlayback;->access$1800(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->setMediaList(Lcom/google/android/music/medialist/SongList;)V

    .line 1463
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$11;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I
    invoke-static {v3, v1}, Lcom/google/android/music/LocalDevicePlayback;->access$1602(Lcom/google/android/music/LocalDevicePlayback;I)I

    .line 1464
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$11;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    const/4 v4, 0x0

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mOpenFailedCounter:I
    invoke-static {v3, v4}, Lcom/google/android/music/LocalDevicePlayback;->access$4102(Lcom/google/android/music/LocalDevicePlayback;I)I

    .line 1465
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$11;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    const-wide/16 v4, -0x1

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mReloadedQueueSeekPos:J
    invoke-static {v3, v4, v5}, Lcom/google/android/music/LocalDevicePlayback;->access$4202(Lcom/google/android/music/LocalDevicePlayback;J)J

    .line 1467
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$11;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mFuture:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/google/android/music/LocalDevicePlayback;->access$4300(Lcom/google/android/music/LocalDevicePlayback;)Ljava/util/LinkedList;

    move-result-object v4

    monitor-enter v4
    :try_end_5b
    .catchall {:try_start_0 .. :try_end_5b} :catchall_e2

    .line 1468
    :try_start_5b
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$11;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mHistory:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/google/android/music/LocalDevicePlayback;->access$4400(Lcom/google/android/music/LocalDevicePlayback;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 1469
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$11;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mFuture:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/google/android/music/LocalDevicePlayback;->access$4300(Lcom/google/android/music/LocalDevicePlayback;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 1470
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$11;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #calls: Lcom/google/android/music/LocalDevicePlayback;->shouldPlayInRandomOrder()Z
    invoke-static {v3}, Lcom/google/android/music/LocalDevicePlayback;->access$4500(Lcom/google/android/music/LocalDevicePlayback;)Z

    move-result v3

    if-eqz v3, :cond_a9

    .line 1471
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$11;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mRand:Lcom/google/android/music/StrictShuffler;
    invoke-static {v3}, Lcom/google/android/music/LocalDevicePlayback;->access$4600(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/StrictShuffler;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/music/LocalDevicePlayback$11;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;
    invoke-static {v5}, Lcom/google/android/music/LocalDevicePlayback;->access$1800(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/android/music/StrictShuffler;->setHistorySize(I)V

    .line 1472
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$11;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I
    invoke-static {v3}, Lcom/google/android/music/LocalDevicePlayback;->access$1600(Lcom/google/android/music/LocalDevicePlayback;)I

    move-result v3

    if-ltz v3, :cond_9f

    .line 1473
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$11;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mRand:Lcom/google/android/music/StrictShuffler;
    invoke-static {v3}, Lcom/google/android/music/LocalDevicePlayback;->access$4600(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/StrictShuffler;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/music/LocalDevicePlayback$11;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I
    invoke-static {v5}, Lcom/google/android/music/LocalDevicePlayback;->access$1600(Lcom/google/android/music/LocalDevicePlayback;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/android/music/StrictShuffler;->injectHistoricalValue(I)V

    .line 1475
    :cond_9f
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$11;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #calls: Lcom/google/android/music/LocalDevicePlayback;->fillShuffleList()V
    invoke-static {v3}, Lcom/google/android/music/LocalDevicePlayback;->access$4700(Lcom/google/android/music/LocalDevicePlayback;)V

    .line 1476
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$11;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #calls: Lcom/google/android/music/LocalDevicePlayback;->dumpPastPresentAndFuture()V
    invoke-static {v3}, Lcom/google/android/music/LocalDevicePlayback;->access$4800(Lcom/google/android/music/LocalDevicePlayback;)V

    .line 1478
    :cond_a9
    monitor-exit v4
    :try_end_aa
    .catchall {:try_start_5b .. :try_end_aa} :catchall_ed

    .line 1480
    :try_start_aa
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$11;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #calls: Lcom/google/android/music/LocalDevicePlayback;->saveBookmarkIfNeeded()V
    invoke-static {v3}, Lcom/google/android/music/LocalDevicePlayback;->access$4900(Lcom/google/android/music/LocalDevicePlayback;)V

    .line 1481
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$11;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/google/android/music/LocalDevicePlayback$11;->val$play:Z

    #calls: Lcom/google/android/music/LocalDevicePlayback;->openCurrentAndPrepareToPlaySync(ZZZ)V
    invoke-static {v3, v4, v5, v6}, Lcom/google/android/music/LocalDevicePlayback;->access$5000(Lcom/google/android/music/LocalDevicePlayback;ZZZ)V

    .line 1482
    iget-boolean v3, p0, Lcom/google/android/music/LocalDevicePlayback$11;->val$listChanged:Z

    if-eqz v3, :cond_c1

    .line 1483
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$11;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #calls: Lcom/google/android/music/LocalDevicePlayback;->onQueueChanged()V
    invoke-static {v3}, Lcom/google/android/music/LocalDevicePlayback;->access$300(Lcom/google/android/music/LocalDevicePlayback;)V
    :try_end_c1
    .catchall {:try_start_aa .. :try_end_c1} :catchall_e2

    .line 1486
    :cond_c1
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$11;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/google/android/music/LocalDevicePlayback;->access$3200(Lcom/google/android/music/LocalDevicePlayback;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1488
    return-void

    .line 1448
    .restart local v2       #result:Lcom/google/android/music/store/PlayQueueInsertResult;
    :cond_cb
    :try_start_cb
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$11;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #calls: Lcom/google/android/music/LocalDevicePlayback;->createPlayQueueSongList()Lcom/google/android/music/medialist/SongList;
    invoke-static {v3}, Lcom/google/android/music/LocalDevicePlayback;->access$4000(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    goto/16 :goto_1e

    .line 1457
    .end local v2           #result:Lcom/google/android/music/store/PlayQueueInsertResult;
    :cond_d3
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$11;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    const-wide/16 v4, 0x0

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mLastPlayQueueGroupId:J
    invoke-static {v3, v4, v5}, Lcom/google/android/music/LocalDevicePlayback;->access$1902(Lcom/google/android/music/LocalDevicePlayback;J)J

    .line 1458
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$11;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    const/4 v4, -0x1

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mLastPlayQueueGroupPosition:I
    invoke-static {v3, v4}, Lcom/google/android/music/LocalDevicePlayback;->access$2002(Lcom/google/android/music/LocalDevicePlayback;I)I
    :try_end_e0
    .catchall {:try_start_cb .. :try_end_e0} :catchall_e2

    goto/16 :goto_34

    .line 1486
    .end local v0           #listToPlay:Lcom/google/android/music/medialist/SongList;
    .end local v1           #positionToPlay:I
    :catchall_e2
    move-exception v3

    iget-object v4, p0, Lcom/google/android/music/LocalDevicePlayback$11;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/google/android/music/LocalDevicePlayback;->access$3200(Lcom/google/android/music/LocalDevicePlayback;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v3

    .line 1478
    .restart local v0       #listToPlay:Lcom/google/android/music/medialist/SongList;
    .restart local v1       #positionToPlay:I
    :catchall_ed
    move-exception v3

    :try_start_ee
    monitor-exit v4
    :try_end_ef
    .catchall {:try_start_ee .. :try_end_ef} :catchall_ed

    :try_start_ef
    throw v3
    :try_end_f0
    .catchall {:try_start_ef .. :try_end_f0} :catchall_e2
.end method
