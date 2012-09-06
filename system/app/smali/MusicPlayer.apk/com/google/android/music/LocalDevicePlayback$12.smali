.class Lcom/google/android/music/LocalDevicePlayback$12;
.super Ljava/lang/Object;
.source "LocalDevicePlayback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/LocalDevicePlayback;->openAndQueue(Lcom/google/android/music/medialist/SongList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/LocalDevicePlayback;

.field final synthetic val$medialist:Lcom/google/android/music/medialist/SongList;


# direct methods
.method constructor <init>(Lcom/google/android/music/LocalDevicePlayback;Lcom/google/android/music/medialist/SongList;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1495
    iput-object p1, p0, Lcom/google/android/music/LocalDevicePlayback$12;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    iput-object p2, p0, Lcom/google/android/music/LocalDevicePlayback$12;->val$medialist:Lcom/google/android/music/medialist/SongList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1499
    :try_start_2
    iget-object v6, p0, Lcom/google/android/music/LocalDevicePlayback$12;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    const-wide/16 v7, 0x0

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mLastPlayQueueGroupId:J
    invoke-static {v6, v7, v8}, Lcom/google/android/music/LocalDevicePlayback;->access$1902(Lcom/google/android/music/LocalDevicePlayback;J)J

    .line 1500
    iget-object v6, p0, Lcom/google/android/music/LocalDevicePlayback$12;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    const/4 v7, -0x1

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mLastPlayQueueGroupPosition:I
    invoke-static {v6, v7}, Lcom/google/android/music/LocalDevicePlayback;->access$2002(Lcom/google/android/music/LocalDevicePlayback;I)I

    .line 1505
    const/4 v2, 0x0

    .line 1506
    .local v2, reload:Z
    const-wide/16 v0, 0x0

    .line 1507
    .local v0, currentlListItemId:J
    iget-object v6, p0, Lcom/google/android/music/LocalDevicePlayback$12;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #calls: Lcom/google/android/music/LocalDevicePlayback;->isUsingPlayQueue()Z
    invoke-static {v6}, Lcom/google/android/music/LocalDevicePlayback;->access$5100(Lcom/google/android/music/LocalDevicePlayback;)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 1508
    iget-object v6, p0, Lcom/google/android/music/LocalDevicePlayback$12;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mListItemId:J
    invoke-static {v6}, Lcom/google/android/music/LocalDevicePlayback;->access$2200(Lcom/google/android/music/LocalDevicePlayback;)J

    move-result-wide v0

    .line 1509
    iget-object v6, p0, Lcom/google/android/music/LocalDevicePlayback$12;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;
    invoke-static {v6}, Lcom/google/android/music/LocalDevicePlayback;->access$1800(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    move-result-object v6

    if-eqz v6, :cond_50

    iget-object v6, p0, Lcom/google/android/music/LocalDevicePlayback$12;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;
    invoke-static {v6}, Lcom/google/android/music/LocalDevicePlayback;->access$1800(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->length()I

    move-result v6

    if-nez v6, :cond_50

    move v2, v4

    .line 1512
    :cond_35
    :goto_35
    iget-object v4, p0, Lcom/google/android/music/LocalDevicePlayback$12;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    iget-object v5, p0, Lcom/google/android/music/LocalDevicePlayback$12;->val$medialist:Lcom/google/android/music/medialist/SongList;

    #calls: Lcom/google/android/music/LocalDevicePlayback;->queue(Lcom/google/android/music/medialist/SongList;J)Lcom/google/android/music/store/PlayQueueAddResult;
    invoke-static {v4, v5, v0, v1}, Lcom/google/android/music/LocalDevicePlayback;->access$5200(Lcom/google/android/music/LocalDevicePlayback;Lcom/google/android/music/medialist/SongList;J)Lcom/google/android/music/store/PlayQueueAddResult;

    move-result-object v3

    .line 1513
    .local v3, result:Lcom/google/android/music/store/PlayQueueAddResult;
    if-nez v3, :cond_52

    .line 1514
    const-string v4, "MediaPlaybackService"

    const-string v5, "Cannot add non-default domain to the queue"

    invoke-static {v4, v5}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_2 .. :try_end_46} :catchall_8e

    .line 1529
    :goto_46
    iget-object v4, p0, Lcom/google/android/music/LocalDevicePlayback$12;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/google/android/music/LocalDevicePlayback;->access$3200(Lcom/google/android/music/LocalDevicePlayback;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1531
    return-void

    .end local v3           #result:Lcom/google/android/music/store/PlayQueueAddResult;
    :cond_50
    move v2, v5

    .line 1509
    goto :goto_35

    .line 1515
    .restart local v3       #result:Lcom/google/android/music/store/PlayQueueAddResult;
    :cond_52
    :try_start_52
    iget-object v4, p0, Lcom/google/android/music/LocalDevicePlayback$12;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v4}, Lcom/google/android/music/LocalDevicePlayback;->access$1200(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/medialist/SongList;

    move-result-object v4

    if-nez v4, :cond_99

    invoke-virtual {v3}, Lcom/google/android/music/store/PlayQueueAddResult;->getAddedSize()I

    move-result v4

    if-lez v4, :cond_99

    .line 1517
    iget-object v4, p0, Lcom/google/android/music/LocalDevicePlayback$12;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    iget-object v5, p0, Lcom/google/android/music/LocalDevicePlayback$12;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #calls: Lcom/google/android/music/LocalDevicePlayback;->createPlayQueueSongList()Lcom/google/android/music/medialist/SongList;
    invoke-static {v5}, Lcom/google/android/music/LocalDevicePlayback;->access$4000(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/medialist/SongList;

    move-result-object v5

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v4, v5}, Lcom/google/android/music/LocalDevicePlayback;->access$1202(Lcom/google/android/music/LocalDevicePlayback;Lcom/google/android/music/medialist/SongList;)Lcom/google/android/music/medialist/SongList;

    .line 1518
    iget-object v4, p0, Lcom/google/android/music/LocalDevicePlayback$12;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayList:Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;
    invoke-static {v4}, Lcom/google/android/music/LocalDevicePlayback;->access$1800(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/LocalDevicePlayback$12;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v5}, Lcom/google/android/music/LocalDevicePlayback;->access$1200(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/medialist/SongList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->setMediaList(Lcom/google/android/music/medialist/SongList;)V

    .line 1519
    iget-object v4, p0, Lcom/google/android/music/LocalDevicePlayback$12;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    const/4 v5, 0x0

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I
    invoke-static {v4, v5}, Lcom/google/android/music/LocalDevicePlayback;->access$1602(Lcom/google/android/music/LocalDevicePlayback;I)I

    .line 1520
    iget-object v4, p0, Lcom/google/android/music/LocalDevicePlayback$12;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #calls: Lcom/google/android/music/LocalDevicePlayback;->onQueueChanged()V
    invoke-static {v4}, Lcom/google/android/music/LocalDevicePlayback;->access$300(Lcom/google/android/music/LocalDevicePlayback;)V

    .line 1521
    iget-object v4, p0, Lcom/google/android/music/LocalDevicePlayback$12;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    #calls: Lcom/google/android/music/LocalDevicePlayback;->openCurrentAndNext(ZZZ)V
    invoke-static {v4, v5, v6, v7}, Lcom/google/android/music/LocalDevicePlayback;->access$1500(Lcom/google/android/music/LocalDevicePlayback;ZZZ)V
    :try_end_8d
    .catchall {:try_start_52 .. :try_end_8d} :catchall_8e

    goto :goto_46

    .line 1529
    .end local v0           #currentlListItemId:J
    .end local v2           #reload:Z
    .end local v3           #result:Lcom/google/android/music/store/PlayQueueAddResult;
    :catchall_8e
    move-exception v4

    iget-object v5, p0, Lcom/google/android/music/LocalDevicePlayback$12;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mAsyncWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v5}, Lcom/google/android/music/LocalDevicePlayback;->access$3200(Lcom/google/android/music/LocalDevicePlayback;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v4

    .line 1522
    .restart local v0       #currentlListItemId:J
    .restart local v2       #reload:Z
    .restart local v3       #result:Lcom/google/android/music/store/PlayQueueAddResult;
    :cond_99
    if-eqz v2, :cond_aa

    .line 1523
    :try_start_9b
    iget-object v4, p0, Lcom/google/android/music/LocalDevicePlayback$12;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    const/4 v5, 0x0

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I
    invoke-static {v4, v5}, Lcom/google/android/music/LocalDevicePlayback;->access$1602(Lcom/google/android/music/LocalDevicePlayback;I)I

    .line 1524
    iget-object v4, p0, Lcom/google/android/music/LocalDevicePlayback$12;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    #calls: Lcom/google/android/music/LocalDevicePlayback;->openCurrentAndNext(ZZZ)V
    invoke-static {v4, v5, v6, v7}, Lcom/google/android/music/LocalDevicePlayback;->access$1500(Lcom/google/android/music/LocalDevicePlayback;ZZZ)V

    goto :goto_46

    .line 1526
    :cond_aa
    const-string v4, "MediaPlaybackService"

    const-string v5, "Not playing queue"

    invoke-static {v4, v5}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b1
    .catchall {:try_start_9b .. :try_end_b1} :catchall_8e

    goto :goto_46
.end method
