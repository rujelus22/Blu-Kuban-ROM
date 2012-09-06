.class Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;
.super Ljava/lang/Object;
.source "LocalDevicePlayback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/LocalDevicePlayback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaListWrapper"
.end annotation


# instance fields
.field mColListItemIdx:I

.field mColMusicIdx:I

.field mContext:Landroid/content/Context;

.field mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

.field private mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private mCursorSongList:Lcom/google/android/music/medialist/SongList;

.field mDomain:Lcom/google/android/music/dl/ContentIdentifier$Domain;

.field private mPlaylistLoading:Z

.field private mRadiusToSearch:I

.field private final mRefreshContentObserver:Landroid/database/ContentObserver;

.field final synthetic this$0:Lcom/google/android/music/LocalDevicePlayback;


# direct methods
.method public constructor <init>(Lcom/google/android/music/LocalDevicePlayback;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "context"

    .prologue
    const/4 v0, -0x1

    .line 603
    iput-object p1, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 587
    iput v0, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mColMusicIdx:I

    .line 588
    iput v0, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mColListItemIdx:I

    .line 590
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mPlaylistLoading:Z

    .line 591
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursorSongList:Lcom/google/android/music/medialist/SongList;

    .line 593
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 921
    new-instance v0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper$1;

    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper$1;-><init>(Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mRefreshContentObserver:Landroid/database/ContentObserver;

    .line 604
    iput-object p2, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mContext:Landroid/content/Context;

    .line 605
    return-void
.end method

.method static synthetic access$3000(Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 574
    invoke-direct {p0}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->refresh()I

    move-result v0

    return v0
.end method

.method private moveToPositionLocked(ILjava/util/concurrent/locks/Lock;)Z
    .registers 9
    .parameter "index"
    .parameter "lock"

    .prologue
    const/4 v2, 0x0

    .line 756
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mContext:Landroid/content/Context;

    const-string v4, "MediaListWrapper.moveToPositionLocked() on main thread"

    invoke-static {v3, v4}, Lcom/google/android/music/MusicUtils;->checkMainThread(Landroid/content/Context;Ljava/lang/String;)V

    .line 758
    if-gez p1, :cond_49

    .line 759
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->LOGV:Z
    invoke-static {v3}, Lcom/google/android/music/LocalDevicePlayback;->access$2900(Lcom/google/android/music/LocalDevicePlayback;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 761
    const-string v3, "MediaPlaybackService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid position requested: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    invoke-static {v3, v4, v5}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 794
    :cond_2f
    :goto_2f
    return v2

    .line 763
    :cond_30
    const-string v3, "MediaPlaybackService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid position requested: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    .line 768
    :cond_49
    :try_start_49
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    if-eqz v3, :cond_2f

    .line 769
    invoke-virtual {p0}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->length()I

    move-result v1

    .line 770
    .local v1, songListSize:I
    if-lt p1, v1, :cond_78

    .line 771
    const-string v3, "MediaPlaybackService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid position requested: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". List size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    .line 793
    .end local v1           #songListSize:I
    :catch_76
    move-exception v0

    .line 794
    .local v0, ex:Landroid/database/CursorIndexOutOfBoundsException;
    goto :goto_2f

    .line 775
    .end local v0           #ex:Landroid/database/CursorIndexOutOfBoundsException;
    .restart local v1       #songListSize:I
    :cond_78
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v3, p1}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->moveToPosition(I)Z

    move-result v3

    if-nez v3, :cond_99

    .line 776
    const-string v3, "MediaPlaybackService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to move cursor to position: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    .line 780
    :cond_99
    :goto_99
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    iget v4, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mColMusicIdx:I

    invoke-virtual {v3, v4}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_b8

    .line 781
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 782
    const-wide/16 v3, 0xc8

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 783
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 784
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    if-eqz v3, :cond_2f

    .line 785
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v3}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->requery()Z
    :try_end_b7
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_49 .. :try_end_b7} :catch_76

    goto :goto_99

    .line 790
    :cond_b8
    const/4 v2, 0x1

    goto/16 :goto_2f
.end method

.method private refresh()I
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 799
    invoke-direct {p0}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->refreshLastGroupPosition()V

    .line 800
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 802
    :try_start_e
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursorSongList:Lcom/google/android/music/medialist/SongList;

    invoke-direct {p0, v3}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->resetCursorLocked(Lcom/google/android/music/medialist/SongList;)V

    .line 803
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    if-eqz v3, :cond_b1

    .line 804
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I
    invoke-static {v3}, Lcom/google/android/music/LocalDevicePlayback;->access$1600(Lcom/google/android/music/LocalDevicePlayback;)I

    move-result v0

    .line 805
    .local v0, oldPosition:I
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v3}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getCountSync()I

    move-result v3

    if-nez v3, :cond_55

    .line 806
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->close()V

    .line 807
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    .line 808
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    invoke-virtual {v2}, Lcom/google/android/music/LocalDevicePlayback;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 809
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    invoke-virtual {v2}, Lcom/google/android/music/LocalDevicePlayback;->stopSync()V

    .line 811
    :cond_3a
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #calls: Lcom/google/android/music/LocalDevicePlayback;->onQueueChanged()V
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$300(Lcom/google/android/music/LocalDevicePlayback;)V

    .line 812
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #calls: Lcom/google/android/music/LocalDevicePlayback;->onSongChanged()V
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$100(Lcom/google/android/music/LocalDevicePlayback;)V

    .line 813
    const-string v2, "MediaPlaybackService"

    const-string v3, "New list returned an empty list"

    invoke-static {v2, v3}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_e .. :try_end_4b} :catchall_c2

    .line 832
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .end local v0           #oldPosition:I
    :goto_54
    return v1

    .line 816
    .restart local v0       #oldPosition:I
    :cond_55
    const/4 v1, -0x1

    if-eq v0, v1, :cond_a6

    :try_start_58
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mAudioId:Lcom/google/android/music/dl/ContentIdentifier;
    invoke-static {v1}, Lcom/google/android/music/LocalDevicePlayback;->access$2800(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v1

    if-eqz v1, :cond_a6

    .line 818
    invoke-direct {p0}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->updateSongPositionLocked()Z
    :try_end_63
    .catchall {:try_start_58 .. :try_end_63} :catchall_c2

    move-result v1

    if-eqz v1, :cond_71

    .line 832
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v1, v2

    goto :goto_54

    .line 821
    :cond_71
    :try_start_71
    const-string v1, "MediaPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find old file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mAudioId:Lcom/google/android/music/dl/ContentIdentifier;
    invoke-static {v3}, Lcom/google/android/music/LocalDevicePlayback;->access$2800(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in new list with search radius "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mRadiusToSearch:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9b
    .catchall {:try_start_71 .. :try_end_9b} :catchall_c2

    .line 823
    const/4 v1, 0x2

    .line 832
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_54

    :cond_a6
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v1, v2

    goto :goto_54

    .line 828
    .end local v0           #oldPosition:I
    :cond_b1
    :try_start_b1
    const-string v2, "MediaPlaybackService"

    const-string v3, "Could not find old position... mCursor was null"

    invoke-static {v2, v3}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b8
    .catchall {:try_start_b1 .. :try_end_b8} :catchall_c2

    .line 832
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_54

    :catchall_c2
    move-exception v1

    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method private refreshLastGroupPosition()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    .line 837
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mLastPlayQueueGroupId:J
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$1900(Lcom/google/android/music/LocalDevicePlayback;)J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-nez v2, :cond_d

    .line 849
    :goto_c
    return-void

    .line 840
    :cond_d
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    invoke-virtual {v2}, Lcom/google/android/music/LocalDevicePlayback;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v1

    .line 841
    .local v1, store:Lcom/google/android/music/store/Store;
    invoke-virtual {v1}, Lcom/google/android/music/store/Store;->getPlayQueueLastGroupInfo()Landroid/util/Pair;

    move-result-object v0

    .line 842
    .local v0, lastGroupInfo:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mLastPlayQueueGroupId:J
    invoke-static {v4}, Lcom/google/android/music/LocalDevicePlayback;->access$1900(Lcom/google/android/music/LocalDevicePlayback;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_39

    .line 844
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mLastPlayQueueGroupId:J
    invoke-static {v2, v6, v7}, Lcom/google/android/music/LocalDevicePlayback;->access$1902(Lcom/google/android/music/LocalDevicePlayback;J)J

    .line 845
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    const/4 v3, -0x1

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mLastPlayQueueGroupPosition:I
    invoke-static {v2, v3}, Lcom/google/android/music/LocalDevicePlayback;->access$2002(Lcom/google/android/music/LocalDevicePlayback;I)I

    goto :goto_c

    .line 847
    :cond_39
    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mLastPlayQueueGroupPosition:I
    invoke-static {v3, v2}, Lcom/google/android/music/LocalDevicePlayback;->access$2002(Lcom/google/android/music/LocalDevicePlayback;I)I

    goto :goto_c
.end method

.method private resetCursorLocked(Lcom/google/android/music/medialist/SongList;)V
    .registers 8
    .parameter "medialist"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 638
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    if-eqz v1, :cond_15

    .line 639
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mRefreshContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 640
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v1}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->close()V

    .line 641
    iput-object v5, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    .line 643
    :cond_15
    if-nez p1, :cond_18

    .line 660
    :cond_17
    :goto_17
    return-void

    .line 648
    :cond_18
    invoke-virtual {p1}, Lcom/google/android/music/medialist/SongList;->hasUniqueAudioId()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 649
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    .line 650
    .local v0, cols:[Ljava/lang/String;
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mColListItemIdx:I

    .line 655
    :goto_27
    iput v3, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mColMusicIdx:I

    .line 656
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1, v0, v5}, Lcom/google/android/music/medialist/SongList;->getSyncMediaCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    .line 657
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    if-eqz v1, :cond_17

    .line 658
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mRefreshContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_17

    .line 652
    .end local v0           #cols:[Ljava/lang/String;
    :cond_3d
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "audio_id"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    .line 653
    .restart local v0       #cols:[Ljava/lang/String;
    iput v4, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mColListItemIdx:I

    goto :goto_27
.end method

.method private updateSongPositionLocked()Z
    .registers 15

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 858
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mAudioId:Lcom/google/android/music/dl/ContentIdentifier;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$2800(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v0

    if-nez v0, :cond_c

    move v0, v12

    .line 916
    :goto_b
    return v0

    .line 862
    :cond_c
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mAudioId:Lcom/google/android/music/dl/ContentIdentifier;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$2800(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/dl/ContentIdentifier;->getDomain()Lcom/google/android/music/dl/ContentIdentifier$Domain;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mDomain:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    if-eq v0, v1, :cond_1c

    move v0, v12

    .line 863
    goto :goto_b

    .line 866
    :cond_1c
    iget v0, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mColListItemIdx:I

    if-gez v0, :cond_45

    .line 867
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mAudioId:Lcom/google/android/music/dl/ContentIdentifier;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$2800(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$1600(Lcom/google/android/music/LocalDevicePlayback;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    iget v4, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mColMusicIdx:I

    iget v5, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mRadiusToSearch:I

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/utils/DbUtils;->findItemInCursor(JILandroid/database/Cursor;II)I

    move-result v11

    .line 869
    .local v11, newPosition:I
    if-gez v11, :cond_3e

    move v0, v12

    .line 870
    goto :goto_b

    .line 872
    :cond_3e
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I
    invoke-static {v0, v11}, Lcom/google/android/music/LocalDevicePlayback;->access$1602(Lcom/google/android/music/LocalDevicePlayback;I)I

    move v0, v13

    .line 873
    goto :goto_b

    .line 875
    .end local v11           #newPosition:I
    :cond_45
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$1200(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/medialist/SongList;->hasStablePrimaryIds()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 877
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mListItemId:J
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$2200(Lcom/google/android/music/LocalDevicePlayback;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$1600(Lcom/google/android/music/LocalDevicePlayback;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    iget v4, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mColListItemIdx:I

    iget v5, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mRadiusToSearch:I

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/utils/DbUtils;->findItemInCursor(JILandroid/database/Cursor;II)I

    move-result v11

    .line 879
    .restart local v11       #newPosition:I
    if-gez v11, :cond_6b

    move v0, v12

    .line 880
    goto :goto_b

    .line 882
    :cond_6b
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I
    invoke-static {v0, v11}, Lcom/google/android/music/LocalDevicePlayback;->access$1602(Lcom/google/android/music/LocalDevicePlayback;I)I

    move v0, v13

    .line 883
    goto :goto_b

    .line 892
    .end local v11           #newPosition:I
    :cond_72
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mListItemId:J
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$2200(Lcom/google/android/music/LocalDevicePlayback;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mAudioId:Lcom/google/android/music/dl/ContentIdentifier;
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$2800(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I
    invoke-static {v4}, Lcom/google/android/music/LocalDevicePlayback;->access$1600(Lcom/google/android/music/LocalDevicePlayback;)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    iget v6, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mColListItemIdx:I

    iget v7, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mColMusicIdx:I

    iget v8, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mRadiusToSearch:I

    invoke-static/range {v0 .. v8}, Lcom/google/android/music/utils/DbUtils;->findIndirectlyReferencedItem(JJILandroid/database/Cursor;III)I

    move-result v11

    .line 901
    .restart local v11       #newPosition:I
    if-gez v11, :cond_99

    move v0, v12

    .line 902
    goto/16 :goto_b

    .line 904
    :cond_99
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mPlayPos:I
    invoke-static {v0, v11}, Lcom/google/android/music/LocalDevicePlayback;->access$1602(Lcom/google/android/music/LocalDevicePlayback;I)I

    .line 906
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v0, v11}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 907
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    iget v1, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mColListItemIdx:I

    invoke-virtual {v0, v1}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getLong(I)J

    move-result-wide v9

    .line 908
    .local v9, newListItemId:J
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mListItemId:J
    invoke-static {v0}, Lcom/google/android/music/LocalDevicePlayback;->access$2200(Lcom/google/android/music/LocalDevicePlayback;)J

    move-result-wide v0

    cmp-long v0, v9, v0

    if-eqz v0, :cond_f9

    .line 910
    const-string v0, "MediaPlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Now playing song ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mAudioId:Lcom/google/android/music/dl/ContentIdentifier;
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$2800(Lcom/google/android/music/LocalDevicePlayback;)Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") list item id changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #getter for: Lcom/google/android/music/LocalDevicePlayback;->mListItemId:J
    invoke-static {v2}, Lcom/google/android/music/LocalDevicePlayback;->access$2200(Lcom/google/android/music/LocalDevicePlayback;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mListItemId:J
    invoke-static {v0, v9, v10}, Lcom/google/android/music/LocalDevicePlayback;->access$2202(Lcom/google/android/music/LocalDevicePlayback;J)J

    .end local v9           #newListItemId:J
    :cond_f9
    move v0, v13

    .line 916
    goto/16 :goto_b
.end method


# virtual methods
.method public get(I)Lcom/google/android/music/dl/ContentIdentifier;
    .registers 9
    .parameter "index"

    .prologue
    const/4 v3, 0x0

    .line 696
    iget-object v2, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    .line 698
    .local v1, lock:Ljava/util/concurrent/locks/Lock;
    :try_start_7
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 699
    invoke-direct {p0, p1, v1}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->moveToPositionLocked(ILjava/util/concurrent/locks/Lock;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 700
    new-instance v2, Lcom/google/android/music/dl/ContentIdentifier;

    iget-object v4, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    iget v5, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mColMusicIdx:I

    invoke-virtual {v4, v5}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getLong(I)J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mDomain:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    invoke-direct {v2, v4, v5, v6}, Lcom/google/android/music/dl/ContentIdentifier;-><init>(JLcom/google/android/music/dl/ContentIdentifier$Domain;)V
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_2e
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_7 .. :try_end_1f} :catch_28

    .line 707
    :try_start_1f
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_33

    .line 712
    :goto_22
    return-object v2

    .line 707
    :cond_23
    :try_start_23
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_35

    :goto_26
    move-object v2, v3

    .line 712
    goto :goto_22

    .line 703
    :catch_28
    move-exception v0

    .line 707
    .local v0, ex:Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_29
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_37

    :goto_2c
    move-object v2, v3

    .line 712
    goto :goto_22

    .line 706
    .end local v0           #ex:Landroid/database/CursorIndexOutOfBoundsException;
    :catchall_2e
    move-exception v2

    .line 707
    :try_start_2f
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_39

    .line 712
    :goto_32
    throw v2

    .line 708
    :catch_33
    move-exception v3

    goto :goto_22

    :catch_35
    move-exception v2

    goto :goto_26

    .restart local v0       #ex:Landroid/database/CursorIndexOutOfBoundsException;
    :catch_37
    move-exception v2

    goto :goto_2c

    .end local v0           #ex:Landroid/database/CursorIndexOutOfBoundsException;
    :catch_39
    move-exception v3

    goto :goto_32
.end method

.method public getAudioIdAndListItemId(I)Landroid/util/Pair;
    .registers 12
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/music/dl/ContentIdentifier;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 722
    iget-object v6, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    .line 724
    .local v5, lock:Ljava/util/concurrent/locks/Lock;
    :try_start_7
    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 725
    invoke-direct {p0, p1, v5}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->moveToPositionLocked(ILjava/util/concurrent/locks/Lock;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 726
    const-wide/16 v3, 0x0

    .line 727
    .local v3, listItemId:J
    iget v6, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mColListItemIdx:I

    if-ltz v6, :cond_1e

    .line 728
    iget-object v6, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    iget v8, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mColListItemIdx:I

    invoke-virtual {v6, v8}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getLong(I)J

    move-result-wide v3

    .line 730
    :cond_1e
    iget-object v6, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    iget v8, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mColMusicIdx:I

    invoke-virtual {v6, v8}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getLong(I)J

    move-result-wide v0

    .line 731
    .local v0, audioId:J
    new-instance v6, Landroid/util/Pair;

    new-instance v8, Lcom/google/android/music/dl/ContentIdentifier;

    iget-object v9, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mDomain:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    invoke-direct {v8, v0, v1, v9}, Lcom/google/android/music/dl/ContentIdentifier;-><init>(JLcom/google/android/music/dl/ContentIdentifier$Domain;)V

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_45
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_7 .. :try_end_36} :catch_3f

    .line 739
    :try_start_36
    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_4a

    .line 744
    .end local v0           #audioId:J
    .end local v3           #listItemId:J
    :goto_39
    return-object v6

    .line 739
    :cond_3a
    :try_start_3a
    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_4c

    :goto_3d
    move-object v6, v7

    .line 744
    goto :goto_39

    .line 735
    :catch_3f
    move-exception v2

    .line 739
    .local v2, ex:Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_40
    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_4e

    :goto_43
    move-object v6, v7

    .line 744
    goto :goto_39

    .line 738
    .end local v2           #ex:Landroid/database/CursorIndexOutOfBoundsException;
    :catchall_45
    move-exception v6

    .line 739
    :try_start_46
    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_50

    .line 744
    :goto_49
    throw v6

    .line 740
    .restart local v0       #audioId:J
    .restart local v3       #listItemId:J
    :catch_4a
    move-exception v7

    goto :goto_39

    .end local v0           #audioId:J
    .end local v3           #listItemId:J
    :catch_4c
    move-exception v6

    goto :goto_3d

    .restart local v2       #ex:Landroid/database/CursorIndexOutOfBoundsException;
    :catch_4e
    move-exception v6

    goto :goto_43

    .end local v2           #ex:Landroid/database/CursorIndexOutOfBoundsException;
    :catch_50
    move-exception v7

    goto :goto_49
.end method

.method public getDomain()Lcom/google/android/music/dl/ContentIdentifier$Domain;
    .registers 2

    .prologue
    .line 608
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mDomain:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    return-object v0
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 675
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public length()I
    .registers 3

    .prologue
    .line 664
    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 665
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    if-eqz v0, :cond_1d

    .line 666
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v0}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getCountSync()I
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_28

    move-result v0

    .line 670
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1c
    return v0

    .line 668
    :cond_1d
    const/4 v0, 0x0

    .line 670
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1c

    :catchall_28
    move-exception v0

    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public playlistLoading()Z
    .registers 2

    .prologue
    .line 679
    iget-boolean v0, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mPlaylistLoading:Z

    return v0
.end method

.method public setMediaList(Lcom/google/android/music/medialist/SongList;)V
    .registers 6
    .parameter "medialist"

    .prologue
    const/4 v3, 0x0

    .line 613
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mPlaylistLoading:Z

    .line 619
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mAudioId:Lcom/google/android/music/dl/ContentIdentifier;
    invoke-static {v0, v1}, Lcom/google/android/music/LocalDevicePlayback;->access$2802(Lcom/google/android/music/LocalDevicePlayback;Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/ContentIdentifier;

    .line 620
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->this$0:Lcom/google/android/music/LocalDevicePlayback;

    const-wide/16 v1, 0x0

    #setter for: Lcom/google/android/music/LocalDevicePlayback;->mListItemId:J
    invoke-static {v0, v1, v2}, Lcom/google/android/music/LocalDevicePlayback;->access$2202(Lcom/google/android/music/LocalDevicePlayback;J)J

    .line 622
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 623
    iput-object p1, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursorSongList:Lcom/google/android/music/medialist/SongList;

    .line 624
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursorSongList:Lcom/google/android/music/medialist/SongList;

    invoke-direct {p0, v0}, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->resetCursorLocked(Lcom/google/android/music/medialist/SongList;)V

    .line 625
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursorSongList:Lcom/google/android/music/medialist/SongList;

    if-eqz v0, :cond_31

    .line 626
    invoke-virtual {p1}, Lcom/google/android/music/medialist/SongList;->getDomain()Lcom/google/android/music/dl/ContentIdentifier$Domain;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mDomain:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    .line 627
    invoke-virtual {p1}, Lcom/google/android/music/medialist/SongList;->getSuggestedPositionSearchRadius()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mRadiusToSearch:I
    :try_end_31
    .catchall {:try_start_2 .. :try_end_31} :catchall_3d

    .line 631
    :cond_31
    iput-boolean v3, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mPlaylistLoading:Z

    .line 632
    iget-object v0, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 634
    return-void

    .line 631
    :catchall_3d
    move-exception v0

    iput-boolean v3, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mPlaylistLoading:Z

    .line 632
    iget-object v1, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public setPlaylistLoading(Z)V
    .registers 2
    .parameter "playlistLoading"

    .prologue
    .line 683
    iput-boolean p1, p0, Lcom/google/android/music/LocalDevicePlayback$MediaListWrapper;->mPlaylistLoading:Z

    .line 684
    return-void
.end method
