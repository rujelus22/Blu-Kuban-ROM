.class Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaListWrapper"
.end annotation


# instance fields
.field mColIdx:I

.field mContext:Landroid/content/Context;

.field mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

.field private mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field mDomain:Lcom/google/android/music/dl/ContentIdentifier$Domain;

.field private final mRefreshContentObserver:Landroid/database/ContentObserver;

.field final synthetic this$0:Lcom/google/android/music/MusicPlaybackService;


# direct methods
.method public constructor <init>(Lcom/google/android/music/MusicPlaybackService;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "context"

    .prologue
    .line 423
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mColIdx:I

    .line 421
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 658
    new-instance v0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper$1;

    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper$1;-><init>(Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mRefreshContentObserver:Landroid/database/ContentObserver;

    .line 424
    iput-object p2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mContext:Landroid/content/Context;

    .line 425
    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 397
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->refresh()I

    move-result v0

    return v0
.end method

.method private getColIdx()V
    .registers 4

    .prologue
    .line 485
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 486
    iget v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mColIdx:I
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_2e

    const/4 v2, -0x1

    if-ne v1, v2, :cond_18

    .line 488
    :try_start_e
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    const-string v2, "audio_id"

    invoke-virtual {v1, v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mColIdx:I
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_18} :catch_22

    .line 494
    :cond_18
    :goto_18
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 496
    return-void

    .line 489
    :catch_22
    move-exception v0

    .line 490
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    :try_start_23
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mColIdx:I
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_2e

    goto :goto_18

    .line 494
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catchall_2e
    move-exception v1

    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method private performSearchForOldIdLocked(Landroid/database/Cursor;ILcom/google/android/music/dl/ContentIdentifier;)I
    .registers 14
    .parameter "cursor"
    .parameter "oldPosition"
    .parameter "oldId"

    .prologue
    const/4 v5, -0x1

    .line 602
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 603
    .local v3, newCount:I
    const/4 v6, 0x1

    if-ge v3, v6, :cond_a

    move v4, v5

    .line 655
    :cond_9
    :goto_9
    return v4

    .line 607
    :cond_a
    invoke-virtual {p3}, Lcom/google/android/music/dl/ContentIdentifier;->getDomain()Lcom/google/android/music/dl/ContentIdentifier$Domain;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mDomain:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    if-eq v6, v7, :cond_14

    move v4, v5

    .line 608
    goto :goto_9

    .line 611
    :cond_14
    move v4, p2

    .line 612
    .local v4, position:I
    const/4 v1, 0x1

    .line 613
    .local v1, forwardSearch:Z
    const/4 v0, 0x1

    .line 616
    .local v0, backwardSearch:Z
    if-gt v3, p2, :cond_1c

    .line 617
    const/4 v1, 0x0

    .line 618
    add-int/lit8 v4, v3, -0x1

    .line 622
    :cond_1c
    iget-object v6, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v6, v4}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_34

    iget-object v6, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    iget v7, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mColIdx:I

    invoke-virtual {v6, v7}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {p3}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_9

    .line 627
    :cond_34
    const/4 v2, 0x1

    .local v2, i:I
    :goto_35
    const/16 v6, 0xfa

    if-ge v2, v6, :cond_82

    .line 628
    if-eqz v1, :cond_5c

    .line 629
    iget-object v6, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    add-int v7, v4, v2

    invoke-virtual {v6, v7}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_57

    .line 630
    iget-object v6, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    iget v7, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mColIdx:I

    invoke-virtual {v6, v7}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {p3}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_5c

    .line 631
    add-int/2addr v4, v2

    goto :goto_9

    .line 634
    :cond_57
    const/4 v1, 0x0

    .line 635
    if-nez v0, :cond_5c

    move v4, v5

    .line 636
    goto :goto_9

    .line 641
    :cond_5c
    if-eqz v0, :cond_7f

    .line 642
    iget-object v6, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    sub-int v7, v4, v2

    invoke-virtual {v6, v7}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_7a

    .line 643
    iget-object v6, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    iget v7, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mColIdx:I

    invoke-virtual {v6, v7}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {p3}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_7f

    .line 644
    sub-int/2addr v4, v2

    goto :goto_9

    .line 647
    :cond_7a
    const/4 v0, 0x0

    .line 648
    if-nez v1, :cond_7f

    move v4, v5

    .line 649
    goto :goto_9

    .line 627
    :cond_7f
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_82
    move v4, v5

    .line 655
    goto :goto_9
.end method

.method private refresh()I
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 563
    iget-object v4, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 565
    :try_start_c
    iget-object v4, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    if-eqz v4, :cond_ba

    .line 566
    iget-object v4, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I
    invoke-static {v4}, Lcom/google/android/music/MusicPlaybackService;->access$1000(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v1

    .line 567
    .local v1, oldPosition:I
    iget-object v4, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v4}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->requery()Z

    move-result v4

    if-eqz v4, :cond_26

    iget-object v4, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v4}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getCountSync()I

    move-result v4

    if-nez v4, :cond_54

    .line 568
    :cond_26
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->close()V

    .line 569
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    .line 570
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v2}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 571
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v2}, Lcom/google/android/music/MusicPlaybackService;->stop()V

    .line 572
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const-string v4, "com.android.music.metachanged"

    #calls: Lcom/google/android/music/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/google/android/music/MusicPlaybackService;->access$200(Lcom/google/android/music/MusicPlaybackService;Ljava/lang/String;)V

    .line 574
    :cond_42
    const-string v2, "MediaPlaybackService"

    const-string v4, "New list failed to query or returned an empty list"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_c .. :try_end_49} :catchall_cc

    .line 595
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v2, v3

    .end local v1           #oldPosition:I
    :goto_53
    return v2

    .line 578
    .restart local v1       #oldPosition:I
    :cond_54
    if-eq v1, v6, :cond_b0

    :try_start_56
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mAudioId:Lcom/google/android/music/dl/ContentIdentifier;
    invoke-static {v3}, Lcom/google/android/music/MusicPlaybackService;->access$800(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v3

    if-eqz v3, :cond_b0

    .line 580
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    iget-object v4, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I
    invoke-static {v4}, Lcom/google/android/music/MusicPlaybackService;->access$1000(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mAudioId:Lcom/google/android/music/dl/ContentIdentifier;
    invoke-static {v5}, Lcom/google/android/music/MusicPlaybackService;->access$800(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->performSearchForOldIdLocked(Landroid/database/Cursor;ILcom/google/android/music/dl/ContentIdentifier;)I

    move-result v0

    .line 581
    .local v0, newPos:I
    if-eq v0, v6, :cond_81

    .line 582
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #setter for: Lcom/google/android/music/MusicPlaybackService;->mPlayPos:I
    invoke-static {v3, v0}, Lcom/google/android/music/MusicPlaybackService;->access$1002(Lcom/google/android/music/MusicPlaybackService;I)I
    :try_end_77
    .catchall {:try_start_56 .. :try_end_77} :catchall_cc

    .line 595
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_53

    .line 585
    :cond_81
    :try_start_81
    const-string v2, "MediaPlaybackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find old file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mAudioId:Lcom/google/android/music/dl/ContentIdentifier;
    invoke-static {v4}, Lcom/google/android/music/MusicPlaybackService;->access$800(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in new list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catchall {:try_start_81 .. :try_end_a5} :catchall_cc

    .line 586
    const/4 v2, 0x2

    .line 595
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_53

    .end local v0           #newPos:I
    :cond_b0
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_53

    .line 591
    .end local v1           #oldPosition:I
    :cond_ba
    :try_start_ba
    const-string v2, "MediaPlaybackService"

    const-string v4, "Could not find old position... mCursor was null"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c1
    .catchall {:try_start_ba .. :try_end_c1} :catchall_cc

    .line 595
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v2, v3

    goto :goto_53

    :catchall_cc
    move-exception v2

    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method


# virtual methods
.method public get(I)Lcom/google/android/music/dl/ContentIdentifier;
    .registers 9
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 507
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mContext:Landroid/content/Context;

    const-string v4, "MediaListWrapper.get() on main thread"

    invoke-static {v3, v4}, Lcom/google/android/music/MusicUtils;->checkMainThread(Landroid/content/Context;Ljava/lang/String;)V

    .line 509
    if-gez p1, :cond_47

    .line 510
    invoke-static {}, Lcom/google/android/music/MusicPlaybackService;->access$900()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 512
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

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 558
    :goto_2d
    return-object v2

    .line 514
    :cond_2e
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

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 518
    :cond_47
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    .line 520
    .local v1, lock:Ljava/util/concurrent/locks/Lock;
    :try_start_4d
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 521
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    if-eqz v3, :cond_c8

    .line 522
    invoke-direct {p0}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->getColIdx()V

    .line 523
    :cond_57
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v3, p1}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->moveToPosition(I)Z

    move-result v3

    if-nez v3, :cond_85

    .line 524
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 525
    const-wide/16 v3, 0xc8

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 526
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 527
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    if-eqz v3, :cond_7f

    .line 528
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v3}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->requery()Z

    .line 529
    invoke-virtual {p0}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->length()I
    :try_end_76
    .catchall {:try_start_4d .. :try_end_76} :catchall_d0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_4d .. :try_end_76} :catch_a4

    move-result v3

    if-lt p1, v3, :cond_57

    .line 553
    :try_start_79
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7c} :catch_7d

    goto :goto_2d

    .line 554
    :catch_7d
    move-exception v3

    goto :goto_2d

    .line 553
    :cond_7f
    :try_start_7f
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_82} :catch_83

    goto :goto_2d

    .line 554
    :catch_83
    move-exception v3

    goto :goto_2d

    .line 536
    :cond_85
    :goto_85
    :try_start_85
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    iget v4, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mColIdx:I

    invoke-virtual {v3, v4}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 537
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 538
    const-wide/16 v3, 0xc8

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 539
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 540
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    if-eqz v3, :cond_ab

    .line 541
    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v3}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->requery()Z
    :try_end_a3
    .catchall {:try_start_85 .. :try_end_a3} :catchall_d0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_85 .. :try_end_a3} :catch_a4

    goto :goto_85

    .line 549
    :catch_a4
    move-exception v0

    .line 553
    .local v0, ex:Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_a5
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_a8} :catch_a9

    goto :goto_2d

    .line 554
    :catch_a9
    move-exception v3

    goto :goto_2d

    .line 553
    .end local v0           #ex:Landroid/database/CursorIndexOutOfBoundsException;
    :cond_ab
    :try_start_ab
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_ae} :catch_b0

    goto/16 :goto_2d

    .line 554
    :catch_b0
    move-exception v3

    goto/16 :goto_2d

    .line 546
    :cond_b3
    :try_start_b3
    new-instance v3, Lcom/google/android/music/dl/ContentIdentifier;

    iget-object v4, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    iget v5, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mColIdx:I

    invoke-virtual {v4, v5}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getLong(I)J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mDomain:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/music/dl/ContentIdentifier;-><init>(JLcom/google/android/music/dl/ContentIdentifier$Domain;)V
    :try_end_c2
    .catchall {:try_start_b3 .. :try_end_c2} :catchall_d0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_b3 .. :try_end_c2} :catch_a4

    .line 553
    :try_start_c2
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_c5} :catch_d5

    :goto_c5
    move-object v2, v3

    .line 558
    goto/16 :goto_2d

    .line 553
    :cond_c8
    :try_start_c8
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_cb} :catch_cd

    goto/16 :goto_2d

    .line 554
    :catch_cd
    move-exception v3

    goto/16 :goto_2d

    .line 552
    :catchall_d0
    move-exception v2

    .line 553
    :try_start_d1
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_d4} :catch_d7

    .line 558
    :goto_d4
    throw v2

    .line 554
    :catch_d5
    move-exception v2

    goto :goto_c5

    :catch_d7
    move-exception v3

    goto :goto_d4
.end method

.method public getDomain()Lcom/google/android/music/dl/ContentIdentifier$Domain;
    .registers 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mDomain:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    return-object v0
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

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
    .line 469
    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 470
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    if-eqz v0, :cond_1d

    .line 471
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v0}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getCountSync()I
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_28

    move-result v0

    .line 475
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1c
    return v0

    .line 473
    :cond_1d
    const/4 v0, 0x0

    .line 475
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1c

    :catchall_28
    move-exception v0

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public setMediaList(Lcom/google/android/music/medialist/SongList;)V
    .registers 5
    .parameter "medialist"

    .prologue
    .line 438
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/music/MusicPlaybackService;->mAudioId:Lcom/google/android/music/dl/ContentIdentifier;
    invoke-static {v1, v2}, Lcom/google/android/music/MusicPlaybackService;->access$802(Lcom/google/android/music/MusicPlaybackService;Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/ContentIdentifier;

    .line 440
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 441
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    if-eqz v1, :cond_22

    .line 442
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mRefreshContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 443
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v1}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->close()V

    .line 444
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_71

    .line 446
    :cond_22
    if-nez p1, :cond_2e

    .line 463
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 465
    :goto_2d
    return-void

    .line 450
    :cond_2e
    :try_start_2e
    invoke-virtual {p1}, Lcom/google/android/music/medialist/SongList;->getDomain()Lcom/google/android/music/dl/ContentIdentifier$Domain;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mDomain:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    .line 453
    instance-of v1, p1, Lcom/google/android/music/medialist/PlaylistSongList;

    if-eqz v1, :cond_63

    .line 454
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "audio_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "duration"

    aput-object v2, v0, v1

    .line 458
    .local v0, cols:[Ljava/lang/String;
    :goto_45
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Lcom/google/android/music/medialist/SongList;->getCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    .line 459
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    if-eqz v1, :cond_59

    .line 460
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mRefreshContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->registerContentObserver(Landroid/database/ContentObserver;)V
    :try_end_59
    .catchall {:try_start_2e .. :try_end_59} :catchall_71

    .line 463
    :cond_59
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2d

    .line 456
    .end local v0           #cols:[Ljava/lang/String;
    :cond_63
    const/4 v1, 0x2

    :try_start_64
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "duration"

    aput-object v2, v0, v1
    :try_end_70
    .catchall {:try_start_64 .. :try_end_70} :catchall_71

    .restart local v0       #cols:[Ljava/lang/String;
    goto :goto_45

    .line 463
    .end local v0           #cols:[Ljava/lang/String;
    :catchall_71
    move-exception v1

    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->mCursorLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method
