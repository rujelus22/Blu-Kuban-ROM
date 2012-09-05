.class public final Lcom/cooliris/media/MediaFeed;
.super Ljava/lang/Object;
.source "MediaFeed.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cooliris/media/MediaFeed$Listener;
    }
.end annotation


# instance fields
.field private isFeedRunningFlag:Z

.field private mAlbumSourceThread:Ljava/lang/Thread;

.field private final mBufferedRange:Lcom/cooliris/media/IndexRange;

.field private final mClusterSets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/cooliris/media/MediaSet;",
            "Lcom/cooliris/media/MediaClustering;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/database/ContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDataSource:Lcom/cooliris/media/DataSource;

.field private mDataSourceThread:Ljava/lang/Thread;

.field private mExpandedMediaSetIndex:I

.field private mInClusteringMode:Z

.field private volatile mIsShutdown:Z

.field private mListener:Lcom/cooliris/media/MediaFeed$Listener;

.field private mListenerNeedsLayout:Z

.field private mListenerNeedsUpdate:Z

.field private mLoading:Z

.field private mMediaFeedNeedsToRun:Z

.field private mMediaFilter:Lcom/cooliris/media/MediaFilter;

.field private mMediaFilteredSet:Lcom/cooliris/media/MediaSet;

.field private final mMediaSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/media/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestedRefresh:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSingleImageMode:Z

.field private final mVisibleRange:Lcom/cooliris/media/IndexRange;

.field private mWaitingForMediaScanner:Z

.field public mWaitingForRotation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cooliris/media/DataSource;Lcom/cooliris/media/MediaFeed$Listener;)V
    .registers 8
    .parameter "context"
    .parameter "dataSource"
    .parameter "listener"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 109
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/cooliris/media/IndexRange;

    invoke-direct {v0}, Lcom/cooliris/media/IndexRange;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/MediaFeed;->mVisibleRange:Lcom/cooliris/media/IndexRange;

    .line 54
    new-instance v0, Lcom/cooliris/media/IndexRange;

    invoke-direct {v0}, Lcom/cooliris/media/IndexRange;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/MediaFeed;->mBufferedRange:Lcom/cooliris/media/IndexRange;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    .line 62
    iput-boolean v2, p0, Lcom/cooliris/media/MediaFeed;->mListenerNeedsUpdate:Z

    .line 64
    iput-boolean v2, p0, Lcom/cooliris/media/MediaFeed;->mMediaFeedNeedsToRun:Z

    .line 68
    iput-boolean v2, p0, Lcom/cooliris/media/MediaFeed;->mInClusteringMode:Z

    .line 70
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/cooliris/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/cooliris/media/MediaFeed;->mExpandedMediaSetIndex:I

    .line 81
    iput-object v3, p0, Lcom/cooliris/media/MediaFeed;->mDataSourceThread:Ljava/lang/Thread;

    .line 83
    iput-object v3, p0, Lcom/cooliris/media/MediaFeed;->mAlbumSourceThread:Ljava/lang/Thread;

    .line 89
    iput-boolean v2, p0, Lcom/cooliris/media/MediaFeed;->mWaitingForRotation:Z

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/MediaFeed;->mContentObservers:Ljava/util/HashMap;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/MediaFeed;->mRequestedRefresh:Ljava/util/ArrayList;

    .line 99
    iput-boolean v2, p0, Lcom/cooliris/media/MediaFeed;->mIsShutdown:Z

    .line 101
    iput-boolean v2, p0, Lcom/cooliris/media/MediaFeed;->isFeedRunningFlag:Z

    .line 110
    iput-object p1, p0, Lcom/cooliris/media/MediaFeed;->mContext:Landroid/content/Context;

    .line 111
    iput-object p3, p0, Lcom/cooliris/media/MediaFeed;->mListener:Lcom/cooliris/media/MediaFeed$Listener;

    .line 112
    iput-object p2, p0, Lcom/cooliris/media/MediaFeed;->mDataSource:Lcom/cooliris/media/DataSource;

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cooliris/media/MediaFeed;->mLoading:Z

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/cooliris/media/MediaFeed;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cooliris/media/MediaFeed;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cooliris/media/MediaFeed;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cooliris/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cooliris/media/MediaFeed;Lcom/cooliris/media/MediaItem;Lcom/cooliris/media/MediaSet;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/cooliris/media/MediaFeed;->removeItemFromMediaSet(Lcom/cooliris/media/MediaItem;Lcom/cooliris/media/MediaSet;)V

    return-void
.end method

.method static synthetic access$300(Lcom/cooliris/media/MediaFeed;)Lcom/cooliris/media/DataSource;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cooliris/media/MediaFeed;->mDataSource:Lcom/cooliris/media/DataSource;

    return-object v0
.end method

.method static synthetic access$400(Lcom/cooliris/media/MediaFeed;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/cooliris/media/MediaFeed;->mMediaFeedNeedsToRun:Z

    return v0
.end method

.method static synthetic access$402(Lcom/cooliris/media/MediaFeed;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/cooliris/media/MediaFeed;->mMediaFeedNeedsToRun:Z

    return p1
.end method

.method static synthetic access$500(Lcom/cooliris/media/MediaFeed;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/cooliris/media/MediaFeed;->loadMediaSets()V

    return-void
.end method

.method static synthetic access$600(Lcom/cooliris/media/MediaFeed;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/cooliris/media/MediaFeed;->mWaitingForMediaScanner:Z

    return v0
.end method

.method static synthetic access$602(Lcom/cooliris/media/MediaFeed;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/cooliris/media/MediaFeed;->mWaitingForMediaScanner:Z

    return p1
.end method

.method static synthetic access$702(Lcom/cooliris/media/MediaFeed;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/cooliris/media/MediaFeed;->mLoading:Z

    return p1
.end method

.method static synthetic access$800(Lcom/cooliris/media/MediaFeed;[Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/cooliris/media/MediaFeed;->refresh([Ljava/lang/String;)V

    return-void
.end method

.method private disableClusteringIfNecessary()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1050
    iget-boolean v2, p0, Lcom/cooliris/media/MediaFeed;->mInClusteringMode:Z

    if-eqz v2, :cond_b

    .line 1052
    iput-boolean v1, p0, Lcom/cooliris/media/MediaFeed;->mInClusteringMode:Z

    .line 1053
    iput-boolean v0, p0, Lcom/cooliris/media/MediaFeed;->mMediaFeedNeedsToRun:Z

    .line 1056
    :goto_a
    return v0

    :cond_b
    move v0, v1

    goto :goto_a
.end method

.method private isShutdown()Z
    .registers 2

    .prologue
    .line 989
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/cooliris/media/MediaFeed;->mIsShutdown:Z

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private loadMediaSets()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 616
    iget-object v6, p0, Lcom/cooliris/media/MediaFeed;->mDataSource:Lcom/cooliris/media/DataSource;

    if-nez v6, :cond_6

    .line 644
    :goto_5
    return-void

    .line 618
    :cond_6
    iget-object v4, p0, Lcom/cooliris/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    .line 619
    .local v4, sets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaSet;>;"
    monitor-enter v4

    .line 620
    :try_start_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 621
    .local v1, numSets:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    if-ge v0, v1, :cond_1c

    .line 622
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cooliris/media/MediaSet;

    .line 623
    .local v3, set:Lcom/cooliris/media/MediaSet;
    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/cooliris/media/MediaSet;->mFlagForDelete:Z

    .line 621
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 626
    .end local v3           #set:Lcom/cooliris/media/MediaSet;
    :cond_1c
    iget-object v6, p0, Lcom/cooliris/media/MediaFeed;->mDataSource:Lcom/cooliris/media/DataSource;

    iget-object v7, p0, Lcom/cooliris/media/MediaFeed;->mDataSource:Lcom/cooliris/media/DataSource;

    invoke-interface {v7}, Lcom/cooliris/media/DataSource;->getDatabaseUris()[Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, p0, v7}, Lcom/cooliris/media/DataSource;->refresh(Lcom/cooliris/media/MediaFeed;[Ljava/lang/String;)V

    .line 628
    iget-object v6, p0, Lcom/cooliris/media/MediaFeed;->mDataSource:Lcom/cooliris/media/DataSource;

    invoke-interface {v6, p0}, Lcom/cooliris/media/DataSource;->loadMediaSets(Lcom/cooliris/media/MediaFeed;)V

    .line 629
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 630
    .local v5, setsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaSet;>;"
    const/4 v0, 0x0

    :goto_32
    if-ge v0, v1, :cond_44

    .line 631
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cooliris/media/MediaSet;

    .line 632
    .restart local v3       #set:Lcom/cooliris/media/MediaSet;
    iget-boolean v6, v3, Lcom/cooliris/media/MediaSet;->mFlagForDelete:Z

    if-eqz v6, :cond_41

    .line 633
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 636
    .end local v3           #set:Lcom/cooliris/media/MediaSet;
    :cond_44
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 637
    .local v2, numSetsToRemove:I
    const/4 v0, 0x0

    :goto_49
    if-ge v0, v2, :cond_55

    .line 638
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 637
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 640
    :cond_55
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 641
    monitor-exit v4
    :try_end_59
    .catchall {:try_start_9 .. :try_end_59} :catchall_5f

    .line 642
    iput-boolean v8, p0, Lcom/cooliris/media/MediaFeed;->mMediaFeedNeedsToRun:Z

    .line 643
    invoke-virtual {p0, v8}, Lcom/cooliris/media/MediaFeed;->updateListener(Z)V

    goto :goto_5

    .line 641
    .end local v0           #i:I
    .end local v1           #numSets:I
    .end local v2           #numSetsToRemove:I
    .end local v5           #setsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaSet;>;"
    :catchall_5f
    move-exception v6

    :try_start_60
    monitor-exit v4
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v6
.end method

.method private refresh([Ljava/lang/String;)V
    .registers 5
    .parameter "databaseUris"

    .prologue
    .line 1190
    iget-object v1, p0, Lcom/cooliris/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1191
    :try_start_3
    iget-object v0, p0, Lcom/cooliris/media/MediaFeed;->mDataSource:Lcom/cooliris/media/DataSource;

    if-eqz v0, :cond_10

    .line 1192
    iget-object v2, p0, Lcom/cooliris/media/MediaFeed;->mRequestedRefresh:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_15

    .line 1193
    :try_start_a
    iget-object v0, p0, Lcom/cooliris/media/MediaFeed;->mRequestedRefresh:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1194
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_12

    .line 1196
    :cond_10
    :try_start_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_15

    .line 1197
    return-void

    .line 1194
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    :try_start_14
    throw v0

    .line 1196
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_15

    throw v0
.end method

.method private removeItemFromMediaSet(Lcom/cooliris/media/MediaItem;Lcom/cooliris/media/MediaSet;)V
    .registers 6
    .parameter "item"
    .parameter "mediaSet"

    .prologue
    .line 440
    invoke-virtual {p2, p1}, Lcom/cooliris/media/MediaSet;->removeItem(Lcom/cooliris/media/MediaItem;)Z

    .line 441
    iget-object v2, p0, Lcom/cooliris/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    monitor-enter v2

    .line 442
    :try_start_6
    iget-object v1, p0, Lcom/cooliris/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/MediaClustering;

    .line 443
    .local v0, clustering:Lcom/cooliris/media/MediaClustering;
    if-eqz v0, :cond_13

    .line 444
    invoke-virtual {v0, p1}, Lcom/cooliris/media/MediaClustering;->removeItemFromClustering(Lcom/cooliris/media/MediaItem;)V

    .line 446
    :cond_13
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_18

    .line 447
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cooliris/media/MediaFeed;->mMediaFeedNeedsToRun:Z

    .line 448
    return-void

    .line 446
    .end local v0           #clustering:Lcom/cooliris/media/MediaClustering;
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private repeatShuttingDownThread(Ljava/lang/Thread;)V
    .registers 7
    .parameter "targetThread"

    .prologue
    .line 154
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/16 v2, 0x1e

    if-ge v1, v2, :cond_3b

    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 155
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 157
    const-wide/16 v2, 0x32

    :try_start_10
    invoke-virtual {p1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_13} :catch_16

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 158
    :catch_16
    move-exception v0

    .line 159
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "MediaFeed"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot stop the thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 168
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_3a
    :goto_3a
    return-void

    .line 165
    :cond_3b
    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 166
    const-string v2, "MediaFeed"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot stop the thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a
.end method


# virtual methods
.method public addItemToMediaSet(Lcom/cooliris/media/MediaItem;Lcom/cooliris/media/MediaSet;)V
    .registers 11
    .parameter "item"
    .parameter "mediaSet"

    .prologue
    const/4 v7, 0x1

    .line 294
    iput-object p2, p1, Lcom/cooliris/media/MediaItem;->mParentMediaSet:Lcom/cooliris/media/MediaSet;

    .line 295
    invoke-virtual {p2, p1}, Lcom/cooliris/media/MediaSet;->addItem(Lcom/cooliris/media/MediaItem;)V

    .line 296
    iget-object v2, p0, Lcom/cooliris/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    monitor-enter v2

    .line 297
    :try_start_9
    iget v1, p1, Lcom/cooliris/media/MediaItem;->mClusteringState:I

    if-nez v1, :cond_37

    .line 298
    iget-object v1, p0, Lcom/cooliris/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/MediaClustering;

    .line 299
    .local v0, clustering:Lcom/cooliris/media/MediaClustering;
    if-nez v0, :cond_25

    .line 300
    new-instance v0, Lcom/cooliris/media/MediaClustering;

    .end local v0           #clustering:Lcom/cooliris/media/MediaClustering;
    invoke-virtual {p2}, Lcom/cooliris/media/MediaSet;->isPicassaAlbum()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/cooliris/media/MediaClustering;-><init>(Z)V

    .line 301
    .restart local v0       #clustering:Lcom/cooliris/media/MediaClustering;
    iget-object v1, p0, Lcom/cooliris/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    :cond_25
    iget-wide v3, p2, Lcom/cooliris/media/MediaSet;->mMaxTimestamp:J

    iget-wide v5, p2, Lcom/cooliris/media/MediaSet;->mMinTimestamp:J

    sub-long/2addr v3, v5

    invoke-virtual {p2}, Lcom/cooliris/media/MediaSet;->getNumExpectedItems()I

    move-result v1

    invoke-virtual {v0, v3, v4, v1}, Lcom/cooliris/media/MediaClustering;->setTimeRange(JI)V

    .line 305
    invoke-virtual {v0, p1}, Lcom/cooliris/media/MediaClustering;->addItemForClustering(Lcom/cooliris/media/MediaItem;)V

    .line 306
    const/4 v1, 0x1

    iput v1, p1, Lcom/cooliris/media/MediaItem;->mClusteringState:I

    .line 308
    .end local v0           #clustering:Lcom/cooliris/media/MediaClustering;
    :cond_37
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_9 .. :try_end_38} :catchall_3b

    .line 309
    iput-boolean v7, p0, Lcom/cooliris/media/MediaFeed;->mMediaFeedNeedsToRun:Z

    .line 310
    return-void

    .line 308
    :catchall_3b
    move-exception v1

    :try_start_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public addMediaSet(JLcom/cooliris/media/DataSource;)Lcom/cooliris/media/MediaSet;
    .registers 10
    .parameter "setId"
    .parameter "dataSource"

    .prologue
    .line 236
    iget-object v4, p0, Lcom/cooliris/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 237
    .local v2, numSets:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-ge v0, v2, :cond_20

    .line 238
    iget-object v4, p0, Lcom/cooliris/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cooliris/media/MediaSet;

    .line 239
    .local v3, set:Lcom/cooliris/media/MediaSet;
    iget-wide v4, v3, Lcom/cooliris/media/MediaSet;->mId:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_47

    iget-object v4, v3, Lcom/cooliris/media/MediaSet;->mDataSource:Lcom/cooliris/media/DataSource;

    if-ne v4, p3, :cond_47

    .line 243
    iget-object v4, p0, Lcom/cooliris/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 248
    .end local v3           #set:Lcom/cooliris/media/MediaSet;
    :cond_20
    new-instance v1, Lcom/cooliris/media/MediaSet;

    invoke-direct {v1, p3}, Lcom/cooliris/media/MediaSet;-><init>(Lcom/cooliris/media/DataSource;)V

    .line 249
    .local v1, mediaSet:Lcom/cooliris/media/MediaSet;
    iput-wide p1, v1, Lcom/cooliris/media/MediaSet;->mId:J

    .line 250
    iget-object v4, p0, Lcom/cooliris/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v4, p0, Lcom/cooliris/media/MediaFeed;->mDataSourceThread:Ljava/lang/Thread;

    if-nez v4, :cond_43

    .line 252
    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v4, p0, Lcom/cooliris/media/MediaFeed;->mDataSourceThread:Ljava/lang/Thread;

    .line 253
    iget-object v4, p0, Lcom/cooliris/media/MediaFeed;->mDataSourceThread:Ljava/lang/Thread;

    const-string v5, "MediaFeed"

    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 254
    iget-object v4, p0, Lcom/cooliris/media/MediaFeed;->mDataSourceThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 256
    :cond_43
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/cooliris/media/MediaFeed;->mMediaFeedNeedsToRun:Z

    .line 257
    return-object v1

    .line 237
    .end local v1           #mediaSet:Lcom/cooliris/media/MediaSet;
    .restart local v3       #set:Lcom/cooliris/media/MediaSet;
    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public canExpandSet(I)Z
    .registers 10
    .parameter "slotIndex"

    .prologue
    const/4 v3, 0x0

    .line 1019
    move v1, p1

    .line 1020
    .local v1, mediaSetIndex:I
    iget-object v4, p0, Lcom/cooliris/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2c

    if-ltz v1, :cond_2c

    .line 1021
    iget-object v4, p0, Lcom/cooliris/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cooliris/media/MediaSet;

    .line 1022
    .local v2, set:Lcom/cooliris/media/MediaSet;
    invoke-virtual {v2}, Lcom/cooliris/media/MediaSet;->getNumItems()I

    move-result v4

    if-lez v4, :cond_2c

    .line 1023
    invoke-virtual {v2}, Lcom/cooliris/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/MediaItem;

    .line 1024
    .local v0, item:Lcom/cooliris/media/MediaItem;
    iget-wide v4, v0, Lcom/cooliris/media/MediaItem;->mId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_2d

    .line 1030
    .end local v0           #item:Lcom/cooliris/media/MediaItem;
    .end local v2           #set:Lcom/cooliris/media/MediaSet;
    :cond_2c
    :goto_2c
    return v3

    .line 1027
    .restart local v0       #item:Lcom/cooliris/media/MediaItem;
    .restart local v2       #set:Lcom/cooliris/media/MediaSet;
    :cond_2d
    const/4 v3, 0x1

    goto :goto_2c
.end method

.method public copySlotStateFrom(Lcom/cooliris/media/MediaFeed;)V
    .registers 3
    .parameter "another"

    .prologue
    .line 479
    iget v0, p1, Lcom/cooliris/media/MediaFeed;->mExpandedMediaSetIndex:I

    iput v0, p0, Lcom/cooliris/media/MediaFeed;->mExpandedMediaSetIndex:I

    .line 480
    iget-boolean v0, p1, Lcom/cooliris/media/MediaFeed;->mInClusteringMode:Z

    iput-boolean v0, p0, Lcom/cooliris/media/MediaFeed;->mInClusteringMode:Z

    .line 481
    return-void
.end method

.method public expandMediaSet(I)V
    .registers 6
    .parameter "mediaSetIndex"

    .prologue
    const/4 v3, 0x1

    .line 994
    iget-object v1, p0, Lcom/cooliris/media/MediaFeed;->mListener:Lcom/cooliris/media/MediaFeed$Listener;

    if-eqz v1, :cond_a

    .line 995
    iget-object v1, p0, Lcom/cooliris/media/MediaFeed;->mListener:Lcom/cooliris/media/MediaFeed$Listener;

    invoke-interface {v1, p0}, Lcom/cooliris/media/MediaFeed$Listener;->onFeedAboutToChange(Lcom/cooliris/media/MediaFeed;)V

    .line 997
    :cond_a
    iget v1, p0, Lcom/cooliris/media/MediaFeed;->mExpandedMediaSetIndex:I

    if-lez v1, :cond_3a

    const/4 v1, -0x1

    if-ne p1, v1, :cond_3a

    .line 999
    iget-object v1, p0, Lcom/cooliris/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_3a

    iget v1, p0, Lcom/cooliris/media/MediaFeed;->mExpandedMediaSetIndex:I

    if-ltz v1, :cond_3a

    iget v1, p0, Lcom/cooliris/media/MediaFeed;->mExpandedMediaSetIndex:I

    iget-object v2, p0, Lcom/cooliris/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3a

    .line 1001
    iget-object v1, p0, Lcom/cooliris/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    iget v2, p0, Lcom/cooliris/media/MediaFeed;->mExpandedMediaSetIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/MediaSet;

    .line 1002
    .local v0, set:Lcom/cooliris/media/MediaSet;
    invoke-virtual {v0}, Lcom/cooliris/media/MediaSet;->getNumItems()I

    move-result v1

    if-nez v1, :cond_3a

    .line 1003
    invoke-virtual {v0}, Lcom/cooliris/media/MediaSet;->clear()V

    .line 1007
    .end local v0           #set:Lcom/cooliris/media/MediaSet;
    :cond_3a
    iput p1, p0, Lcom/cooliris/media/MediaFeed;->mExpandedMediaSetIndex:I

    .line 1014
    invoke-virtual {p0, v3}, Lcom/cooliris/media/MediaFeed;->updateListener(Z)V

    .line 1015
    iput-boolean v3, p0, Lcom/cooliris/media/MediaFeed;->mMediaFeedNeedsToRun:Z

    .line 1016
    return-void
.end method

.method public getClusterSize()I
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/cooliris/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    if-eqz v0, :cond_b

    .line 266
    iget-object v0, p0, Lcom/cooliris/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 268
    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public getCurrentSet()Lcom/cooliris/media/MediaSet;
    .registers 4

    .prologue
    .line 1064
    iget v1, p0, Lcom/cooliris/media/MediaFeed;->mExpandedMediaSetIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1e

    iget v1, p0, Lcom/cooliris/media/MediaFeed;->mExpandedMediaSetIndex:I

    iget-object v2, p0, Lcom/cooliris/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 1066
    :try_start_f
    iget-object v1, p0, Lcom/cooliris/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    iget v2, p0, Lcom/cooliris/media/MediaFeed;->mExpandedMediaSetIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cooliris/media/MediaSet;
    :try_end_19
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_f .. :try_end_19} :catch_1a

    .line 1071
    :goto_19
    return-object v1

    .line 1067
    :catch_1a
    move-exception v0

    .line 1068
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 1071
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_1e
    const/4 v1, 0x0

    goto :goto_19
.end method

.method public getDataSource()Lcom/cooliris/media/DataSource;
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/cooliris/media/MediaFeed;->mDataSource:Lcom/cooliris/media/DataSource;

    return-object v0
.end method

.method public getExpandedMediaSet()Lcom/cooliris/media/MediaSet;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1174
    iget v1, p0, Lcom/cooliris/media/MediaFeed;->mExpandedMediaSetIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    .line 1178
    :cond_6
    :goto_6
    return-object v0

    .line 1176
    :cond_7
    iget v1, p0, Lcom/cooliris/media/MediaFeed;->mExpandedMediaSetIndex:I

    iget-object v2, p0, Lcom/cooliris/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 1178
    iget-object v0, p0, Lcom/cooliris/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    iget v1, p0, Lcom/cooliris/media/MediaFeed;->mExpandedMediaSetIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/MediaSet;

    goto :goto_6
.end method

.method public getFilteredSet()Lcom/cooliris/media/MediaSet;
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/cooliris/media/MediaFeed;->mMediaFilteredSet:Lcom/cooliris/media/MediaSet;

    return-object v0
.end method

.method public getMediaSet(J)Lcom/cooliris/media/MediaSet;
    .registers 10
    .parameter "setId"

    .prologue
    const/4 v4, 0x0

    .line 214
    const-wide/16 v5, -0x1

    cmp-long v5, p1, v5

    if-eqz v5, :cond_28

    .line 216
    :try_start_7
    iget-object v5, p0, Lcom/cooliris/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 217
    .local v2, mMediaSetsSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    if-ge v1, v2, :cond_28

    .line 218
    iget-object v5, p0, Lcom/cooliris/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cooliris/media/MediaSet;

    .line 219
    .local v3, set:Lcom/cooliris/media/MediaSet;
    iget-wide v5, v3, Lcom/cooliris/media/MediaSet;->mId:J

    cmp-long v5, v5, p1

    if-nez v5, :cond_22

    .line 220
    const/4 v5, 0x0

    iput-boolean v5, v3, Lcom/cooliris/media/MediaSet;->mFlagForDelete:Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_21} :catch_25

    .line 228
    .end local v1           #i:I
    .end local v2           #mMediaSetsSize:I
    .end local v3           #set:Lcom/cooliris/media/MediaSet;
    :goto_21
    return-object v3

    .line 217
    .restart local v1       #i:I
    .restart local v2       #mMediaSetsSize:I
    .restart local v3       #set:Lcom/cooliris/media/MediaSet;
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 224
    .end local v1           #i:I
    .end local v2           #mMediaSetsSize:I
    .end local v3           #set:Lcom/cooliris/media/MediaSet;
    :catch_25
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move-object v3, v4

    .line 225
    goto :goto_21

    .end local v0           #e:Ljava/lang/Exception;
    :cond_28
    move-object v3, v4

    .line 228
    goto :goto_21
.end method

.method public getMediaSets()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/media/MediaSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/cooliris/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNumSlots()I
    .registers 9

    .prologue
    const/4 v7, -0x1

    .line 456
    iget v1, p0, Lcom/cooliris/media/MediaFeed;->mExpandedMediaSetIndex:I

    .line 457
    .local v1, currentMediaSetIndex:I
    iget-object v2, p0, Lcom/cooliris/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    .line 458
    .local v2, mediaSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaSet;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 460
    .local v3, mediaSetsSize:I
    iget-boolean v6, p0, Lcom/cooliris/media/MediaFeed;->mInClusteringMode:Z

    if-nez v6, :cond_25

    .line 461
    if-eq v1, v7, :cond_11

    if-lt v1, v3, :cond_12

    .line 475
    .end local v3           #mediaSetsSize:I
    :cond_11
    :goto_11
    return v3

    .line 464
    .restart local v3       #mediaSetsSize:I
    :cond_12
    iget-object v6, p0, Lcom/cooliris/media/MediaFeed;->mMediaFilteredSet:Lcom/cooliris/media/MediaSet;

    if-nez v6, :cond_22

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cooliris/media/MediaSet;

    move-object v5, v6

    .line 466
    .local v5, setToUse:Lcom/cooliris/media/MediaSet;
    :goto_1d
    invoke-virtual {v5}, Lcom/cooliris/media/MediaSet;->getNumExpectedItems()I

    move-result v3

    goto :goto_11

    .line 464
    .end local v5           #setToUse:Lcom/cooliris/media/MediaSet;
    :cond_22
    iget-object v5, p0, Lcom/cooliris/media/MediaFeed;->mMediaFilteredSet:Lcom/cooliris/media/MediaSet;

    goto :goto_1d

    .line 468
    :cond_25
    if-eq v1, v7, :cond_42

    if-ge v1, v3, :cond_42

    .line 469
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cooliris/media/MediaSet;

    .line 470
    .local v4, set:Lcom/cooliris/media/MediaSet;
    iget-object v6, p0, Lcom/cooliris/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/MediaClustering;

    .line 471
    .local v0, clustering:Lcom/cooliris/media/MediaClustering;
    if-eqz v0, :cond_42

    .line 472
    invoke-virtual {v0}, Lcom/cooliris/media/MediaClustering;->getClustersForDisplay()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_11

    .line 475
    .end local v0           #clustering:Lcom/cooliris/media/MediaClustering;
    .end local v4           #set:Lcom/cooliris/media/MediaSet;
    :cond_42
    const/4 v3, 0x0

    goto :goto_11
.end method

.method public getSetForSlot(I)Lcom/cooliris/media/MediaSet;
    .registers 15
    .parameter "slotIndex"

    .prologue
    const/4 v11, -0x1

    const/4 v0, 0x0

    .line 502
    if-gez p1, :cond_6

    move-object v5, v0

    .line 543
    :goto_5
    return-object v5

    .line 506
    :cond_6
    iget-object v6, p0, Lcom/cooliris/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    .line 507
    .local v6, mediaSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaSet;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 508
    .local v7, mediaSetsSize:I
    iget v3, p0, Lcom/cooliris/media/MediaFeed;->mExpandedMediaSetIndex:I

    .line 510
    .local v3, currentMediaSetIndex:I
    iget-boolean v10, p0, Lcom/cooliris/media/MediaFeed;->mInClusteringMode:Z

    if-nez v10, :cond_5f

    .line 511
    if-eq v3, v11, :cond_16

    if-lt v3, v7, :cond_24

    .line 512
    :cond_16
    if-lt p1, v7, :cond_1a

    move-object v5, v0

    .line 513
    goto :goto_5

    .line 515
    :cond_1a
    iget-object v10, p0, Lcom/cooliris/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/cooliris/media/MediaSet;

    move-object v5, v10

    goto :goto_5

    .line 517
    :cond_24
    new-instance v5, Lcom/cooliris/media/MediaSet;

    invoke-direct {v5}, Lcom/cooliris/media/MediaSet;-><init>()V

    .line 518
    .local v5, mSingleWrapper:Lcom/cooliris/media/MediaSet;
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Lcom/cooliris/media/MediaSet;->setNumExpectedItems(I)V

    .line 520
    invoke-virtual {v5}, Lcom/cooliris/media/MediaSet;->getNumItems()I

    move-result v10

    if-nez v10, :cond_36

    .line 521
    invoke-virtual {v5, v0}, Lcom/cooliris/media/MediaSet;->addItem(Lcom/cooliris/media/MediaItem;)V

    .line 523
    :cond_36
    iget-object v10, p0, Lcom/cooliris/media/MediaFeed;->mMediaFilteredSet:Lcom/cooliris/media/MediaSet;

    if-nez v10, :cond_4f

    iget-object v10, p0, Lcom/cooliris/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/cooliris/media/MediaSet;

    move-object v9, v10

    .line 525
    .local v9, setToUse:Lcom/cooliris/media/MediaSet;
    :goto_43
    invoke-virtual {v9}, Lcom/cooliris/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 526
    .local v4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    invoke-virtual {v9}, Lcom/cooliris/media/MediaSet;->getNumItems()I

    move-result v10

    if-lt p1, v10, :cond_52

    move-object v5, v0

    .line 527
    goto :goto_5

    .line 523
    .end local v4           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    .end local v9           #setToUse:Lcom/cooliris/media/MediaSet;
    :cond_4f
    iget-object v9, p0, Lcom/cooliris/media/MediaFeed;->mMediaFilteredSet:Lcom/cooliris/media/MediaSet;

    goto :goto_43

    .line 529
    .restart local v4       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    .restart local v9       #setToUse:Lcom/cooliris/media/MediaSet;
    :cond_52
    invoke-virtual {v5}, Lcom/cooliris/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 531
    .end local v4           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    .end local v5           #mSingleWrapper:Lcom/cooliris/media/MediaSet;
    .end local v9           #setToUse:Lcom/cooliris/media/MediaSet;
    :cond_5f
    if-eq v3, v11, :cond_8f

    if-ge v3, v7, :cond_8f

    .line 532
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cooliris/media/MediaSet;

    .line 533
    .local v8, set:Lcom/cooliris/media/MediaSet;
    iget-object v10, p0, Lcom/cooliris/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cooliris/media/MediaClustering;

    .line 534
    .local v1, clustering:Lcom/cooliris/media/MediaClustering;
    if-eqz v1, :cond_8f

    .line 535
    invoke-virtual {v1}, Lcom/cooliris/media/MediaClustering;->getClustersForDisplay()Ljava/util/ArrayList;

    move-result-object v2

    .line 536
    .local v2, clusters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaClustering$Cluster;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-le v10, p1, :cond_8f

    .line 537
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/MediaClustering$Cluster;

    .line 538
    .local v0, cluster:Lcom/cooliris/media/MediaClustering$Cluster;
    iget-object v10, p0, Lcom/cooliris/media/MediaFeed;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Lcom/cooliris/media/MediaSet;->getNumItems()I

    move-result v11

    invoke-virtual {v0, v10, v11}, Lcom/cooliris/media/MediaClustering$Cluster;->generateCaption(Landroid/content/Context;I)V

    move-object v5, v0

    .line 539
    goto/16 :goto_5

    .end local v0           #cluster:Lcom/cooliris/media/MediaClustering$Cluster;
    .end local v1           #clustering:Lcom/cooliris/media/MediaClustering;
    .end local v2           #clusters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaClustering$Cluster;>;"
    .end local v8           #set:Lcom/cooliris/media/MediaSet;
    :cond_8f
    move-object v5, v0

    .line 543
    goto/16 :goto_5
.end method

.method public getWaitingForMediaScanner()Z
    .registers 2

    .prologue
    .line 547
    iget-boolean v0, p0, Lcom/cooliris/media/MediaFeed;->mWaitingForMediaScanner:Z

    return v0
.end method

.method public hasExpandedMediaSet()Z
    .registers 3

    .prologue
    .line 1034
    iget v0, p0, Lcom/cooliris/media/MediaFeed;->mExpandedMediaSetIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isClustered()Z
    .registers 2

    .prologue
    .line 1060
    iget-boolean v0, p0, Lcom/cooliris/media/MediaFeed;->mInClusteringMode:Z

    return v0
.end method

.method public isFeedRunning()Z
    .registers 2

    .prologue
    .line 1284
    iget-boolean v0, p0, Lcom/cooliris/media/MediaFeed;->isFeedRunningFlag:Z

    return v0
.end method

.method public isLoading()Z
    .registers 2

    .prologue
    .line 551
    iget-boolean v0, p0, Lcom/cooliris/media/MediaFeed;->mLoading:Z

    return v0
.end method

.method public isSingleImageMode()Z
    .registers 2

    .prologue
    .line 1170
    iget-boolean v0, p0, Lcom/cooliris/media/MediaFeed;->mSingleImageMode:Z

    return v0
.end method

.method public moveSetToFront(Lcom/cooliris/media/MediaSet;)V
    .registers 13
    .parameter "mediaSet"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1099
    iget-object v2, p0, Lcom/cooliris/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    .line 1100
    .local v2, mediaSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaSet;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1101
    .local v3, numSets:I
    if-nez v3, :cond_e

    .line 1102
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1128
    :cond_d
    :goto_d
    return-void

    .line 1105
    :cond_e
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cooliris/media/MediaSet;

    .line 1106
    .local v7, setToFind:Lcom/cooliris/media/MediaSet;
    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 1109
    invoke-virtual {v2, v9, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1110
    const/4 v1, -0x1

    .line 1111
    .local v1, indexToSwapTill:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1f
    if-ge v0, v3, :cond_31

    .line 1112
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cooliris/media/MediaSet;

    .line 1113
    .local v4, set:Lcom/cooliris/media/MediaSet;
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_50

    .line 1114
    invoke-virtual {v2, v0, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1115
    move v1, v0

    .line 1119
    .end local v4           #set:Lcom/cooliris/media/MediaSet;
    :cond_31
    const/4 v8, -0x1

    if-eq v1, v8, :cond_53

    .line 1120
    move v0, v1

    :goto_35
    if-le v0, v10, :cond_53

    .line 1121
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cooliris/media/MediaSet;

    .line 1122
    .local v5, setEnd:Lcom/cooliris/media/MediaSet;
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cooliris/media/MediaSet;

    .line 1123
    .local v6, setPrev:Lcom/cooliris/media/MediaSet;
    invoke-virtual {v2, v0, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1124
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v2, v8, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1120
    add-int/lit8 v0, v0, -0x1

    goto :goto_35

    .line 1111
    .end local v5           #setEnd:Lcom/cooliris/media/MediaSet;
    .end local v6           #setPrev:Lcom/cooliris/media/MediaSet;
    .restart local v4       #set:Lcom/cooliris/media/MediaSet;
    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 1127
    .end local v4           #set:Lcom/cooliris/media/MediaSet;
    :cond_53
    iput-boolean v10, p0, Lcom/cooliris/media/MediaFeed;->mMediaFeedNeedsToRun:Z

    goto :goto_d
.end method

.method public onPause()V
    .registers 12

    .prologue
    .line 1200
    const-string v9, "MediaFeed"

    const-string v10, "ContentObserver onPause"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    iget-object v6, p0, Lcom/cooliris/media/MediaFeed;->mContentObservers:Ljava/util/HashMap;

    .line 1202
    .local v6, observers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/database/ContentObserver;>;"
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v3

    .line 1203
    .local v3, numObservers:I
    if-lez v3, :cond_3a

    .line 1204
    new-array v8, v3, [Ljava/lang/String;

    .line 1205
    .local v8, uris:[Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 1206
    .local v2, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_3a

    .line 1207
    invoke-interface {v2, v8}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    .end local v8           #uris:[Ljava/lang/String;
    check-cast v8, [Ljava/lang/String;

    .line 1208
    .restart local v8       #uris:[Ljava/lang/String;
    array-length v4, v8

    .line 1209
    .local v4, numUris:I
    iget-object v9, p0, Lcom/cooliris/media/MediaFeed;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1210
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_25
    if-ge v1, v4, :cond_3a

    .line 1211
    aget-object v7, v8, v1

    .line 1212
    .local v7, uri:Ljava/lang/String;
    if-eqz v7, :cond_37

    .line 1213
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/database/ContentObserver;

    .line 1214
    .local v5, observer:Landroid/database/ContentObserver;
    invoke-virtual {v0, v5}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1215
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    .end local v5           #observer:Landroid/database/ContentObserver;
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 1220
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #i:I
    .end local v2           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4           #numUris:I
    .end local v7           #uri:Ljava/lang/String;
    .end local v8           #uris:[Ljava/lang/String;
    :cond_3a
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 1221
    return-void
.end method

.method public onResume()V
    .registers 14

    .prologue
    .line 1224
    const-string v11, "MediaFeed"

    const-string v12, "ContentObserver onResume"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    iget-object v0, p0, Lcom/cooliris/media/MediaFeed;->mContext:Landroid/content/Context;

    .line 1226
    .local v0, context:Landroid/content/Context;
    iget-object v2, p0, Lcom/cooliris/media/MediaFeed;->mDataSource:Lcom/cooliris/media/DataSource;

    .line 1227
    .local v2, dataSource:Lcom/cooliris/media/DataSource;
    if-eqz v0, :cond_f

    if-nez v2, :cond_10

    .line 1281
    :cond_f
    :goto_f
    return-void

    .line 1230
    :cond_10
    invoke-interface {v2}, Lcom/cooliris/media/DataSource;->getDatabaseUris()[Ljava/lang/String;

    move-result-object v10

    .line 1231
    .local v10, uris:[Ljava/lang/String;
    iget-object v7, p0, Lcom/cooliris/media/MediaFeed;->mContentObservers:Ljava/util/HashMap;

    .line 1232
    .local v7, observers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/database/ContentObserver;>;"
    instance-of v11, v0, Lcom/cooliris/media/Gallery;

    if-eqz v11, :cond_49

    .line 1234
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1235
    .local v1, cr:Landroid/content/ContentResolver;
    if-eqz v10, :cond_49

    .line 1236
    array-length v5, v10

    .line 1237
    .local v5, numUris:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_22
    if-ge v4, v5, :cond_49

    .line 1238
    aget-object v9, v10, v4

    .line 1239
    .local v9, uri:Ljava/lang/String;
    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/database/ContentObserver;

    .line 1240
    .local v8, presentObserver:Landroid/database/ContentObserver;
    if-nez v8, :cond_46

    .line 1241
    invoke-static {v0}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v11

    invoke-virtual {v11}, Lcom/cooliris/app/App;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 1242
    .local v3, handler:Landroid/os/Handler;
    new-instance v6, Lcom/cooliris/media/MediaFeed$3;

    invoke-direct {v6, p0, v3, v9}, Lcom/cooliris/media/MediaFeed$3;-><init>(Lcom/cooliris/media/MediaFeed;Landroid/os/Handler;Ljava/lang/String;)V

    .line 1265
    .local v6, observer:Landroid/database/ContentObserver;
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v1, v11, v12, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1266
    invoke-virtual {v7, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    .end local v3           #handler:Landroid/os/Handler;
    .end local v6           #observer:Landroid/database/ContentObserver;
    :cond_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 1271
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v4           #i:I
    .end local v5           #numUris:I
    .end local v8           #presentObserver:Landroid/database/ContentObserver;
    .end local v9           #uri:Ljava/lang/String;
    :cond_49
    iget-object v11, p0, Lcom/cooliris/media/MediaFeed;->mContext:Landroid/content/Context;

    check-cast v11, Lcom/cooliris/media/Gallery;

    invoke-virtual {v11}, Lcom/cooliris/media/Gallery;->isViewIntent()Z

    move-result v11

    if-nez v11, :cond_f

    .line 1272
    iget-object v11, p0, Lcom/cooliris/media/MediaFeed;->mContext:Landroid/content/Context;

    check-cast v11, Lcom/cooliris/media/Gallery;

    invoke-virtual {v11}, Lcom/cooliris/media/Gallery;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v11

    if-eqz v11, :cond_86

    .line 1274
    iget-object v11, p0, Lcom/cooliris/media/MediaFeed;->mContext:Landroid/content/Context;

    check-cast v11, Lcom/cooliris/media/Gallery;

    invoke-virtual {v11}, Lcom/cooliris/media/Gallery;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v12

    iget-object v11, p0, Lcom/cooliris/media/MediaFeed;->mContext:Landroid/content/Context;

    check-cast v11, Lcom/cooliris/media/Gallery;

    invoke-virtual {v11}, Lcom/cooliris/media/Gallery;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/ProgressDialog;->getMax()I

    move-result v11

    if-lt v12, v11, :cond_86

    .line 1276
    iget-object v11, p0, Lcom/cooliris/media/MediaFeed;->mContext:Landroid/content/Context;

    check-cast v11, Lcom/cooliris/media/Gallery;

    iget-object v12, v11, Lcom/cooliris/media/Gallery;->mDialHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/cooliris/media/MediaFeed;->mContext:Landroid/content/Context;

    check-cast v11, Lcom/cooliris/media/Gallery;

    const/16 v11, 0xa

    invoke-virtual {v12, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1279
    :cond_86
    invoke-virtual {p0}, Lcom/cooliris/media/MediaFeed;->refresh()V

    goto :goto_f
.end method

.method public performClustering()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 1075
    iget-object v3, p0, Lcom/cooliris/media/MediaFeed;->mListener:Lcom/cooliris/media/MediaFeed$Listener;

    if-eqz v3, :cond_a

    .line 1076
    iget-object v3, p0, Lcom/cooliris/media/MediaFeed;->mListener:Lcom/cooliris/media/MediaFeed$Listener;

    invoke-interface {v3, p0}, Lcom/cooliris/media/MediaFeed$Listener;->onFeedAboutToChange(Lcom/cooliris/media/MediaFeed;)V

    .line 1078
    :cond_a
    const/4 v2, 0x0

    .line 1079
    .local v2, setToUse:Lcom/cooliris/media/MediaSet;
    iget v3, p0, Lcom/cooliris/media/MediaFeed;->mExpandedMediaSetIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_24

    iget v3, p0, Lcom/cooliris/media/MediaFeed;->mExpandedMediaSetIndex:I

    iget-object v4, p0, Lcom/cooliris/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_24

    .line 1080
    iget-object v3, p0, Lcom/cooliris/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    iget v4, p0, Lcom/cooliris/media/MediaFeed;->mExpandedMediaSetIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #setToUse:Lcom/cooliris/media/MediaSet;
    check-cast v2, Lcom/cooliris/media/MediaSet;

    .line 1082
    .restart local v2       #setToUse:Lcom/cooliris/media/MediaSet;
    :cond_24
    if-eqz v2, :cond_41

    .line 1083
    const/4 v1, 0x0

    .line 1084
    .local v1, clustering:Lcom/cooliris/media/MediaClustering;
    iget-object v4, p0, Lcom/cooliris/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    monitor-enter v4

    .line 1086
    :try_start_2a
    iget-object v3, p0, Lcom/cooliris/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/cooliris/media/MediaClustering;

    move-object v1, v0

    .line 1087
    if-eqz v1, :cond_42

    .line 1088
    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v5}, Lcom/cooliris/media/MediaClustering;->compute(Lcom/cooliris/media/MediaItem;Z)V

    .line 1092
    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_2a .. :try_end_3c} :catchall_44

    .line 1093
    iput-boolean v6, p0, Lcom/cooliris/media/MediaFeed;->mInClusteringMode:Z

    .line 1094
    invoke-virtual {p0, v6}, Lcom/cooliris/media/MediaFeed;->updateListener(Z)V

    .line 1096
    .end local v1           #clustering:Lcom/cooliris/media/MediaClustering;
    :cond_41
    :goto_41
    return-void

    .line 1090
    .restart local v1       #clustering:Lcom/cooliris/media/MediaClustering;
    :cond_42
    :try_start_42
    monitor-exit v4

    goto :goto_41

    .line 1092
    :catchall_44
    move-exception v3

    monitor-exit v4
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_44

    throw v3
.end method

.method public performOperation(ILjava/util/ArrayList;Ljava/lang/Object;)V
    .registers 13
    .parameter "operation"
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/media/MediaBucket;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 314
    .local p2, mediaBuckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaBucket;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 315
    .local v4, numBuckets:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 316
    .local v2, copyMediaBuckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaBucket;>;"
    iget-object v0, p0, Lcom/cooliris/media/MediaFeed;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/cooliris/media/Gallery;

    invoke-virtual {v0}, Lcom/cooliris/media/Gallery;->getGridLayer()Lcom/cooliris/media/GridLayer;

    move-result-object v5

    .line 317
    .local v5, mGridLayer:Lcom/cooliris/media/GridLayer;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_12
    if-ge v7, v4, :cond_1e

    .line 318
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    .line 320
    :cond_1e
    if-nez p1, :cond_29

    iget-object v0, p0, Lcom/cooliris/media/MediaFeed;->mListener:Lcom/cooliris/media/MediaFeed$Listener;

    if-eqz v0, :cond_29

    .line 321
    iget-object v0, p0, Lcom/cooliris/media/MediaFeed;->mListener:Lcom/cooliris/media/MediaFeed$Listener;

    invoke-interface {v0, p0}, Lcom/cooliris/media/MediaFeed$Listener;->onFeedAboutToChange(Lcom/cooliris/media/MediaFeed;)V

    .line 323
    :cond_29
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/cooliris/media/MediaFeed$1;

    move-object v1, p0

    move v3, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/cooliris/media/MediaFeed$1;-><init>(Lcom/cooliris/media/MediaFeed;Ljava/util/ArrayList;IILcom/cooliris/media/GridLayer;Ljava/lang/Object;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 428
    .local v8, operationThread:Ljava/lang/Thread;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Operation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 430
    return-void
.end method

.method public refresh()V
    .registers 4

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/cooliris/media/MediaFeed;->mDataSource:Lcom/cooliris/media/DataSource;

    if-eqz v0, :cond_13

    .line 1183
    iget-object v1, p0, Lcom/cooliris/media/MediaFeed;->mRequestedRefresh:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1184
    :try_start_7
    iget-object v0, p0, Lcom/cooliris/media/MediaFeed;->mRequestedRefresh:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/cooliris/media/MediaFeed;->mDataSource:Lcom/cooliris/media/DataSource;

    invoke-interface {v2}, Lcom/cooliris/media/DataSource;->getDatabaseUris()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1185
    monitor-exit v1

    .line 1187
    :cond_13
    return-void

    .line 1185
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public removeFilter()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 200
    iput-object v0, p0, Lcom/cooliris/media/MediaFeed;->mMediaFilter:Lcom/cooliris/media/MediaFilter;

    .line 201
    iput-object v0, p0, Lcom/cooliris/media/MediaFeed;->mMediaFilteredSet:Lcom/cooliris/media/MediaSet;

    .line 202
    iget-object v0, p0, Lcom/cooliris/media/MediaFeed;->mListener:Lcom/cooliris/media/MediaFeed$Listener;

    if-eqz v0, :cond_12

    .line 203
    iget-object v0, p0, Lcom/cooliris/media/MediaFeed;->mListener:Lcom/cooliris/media/MediaFeed$Listener;

    invoke-interface {v0, p0}, Lcom/cooliris/media/MediaFeed$Listener;->onFeedAboutToChange(Lcom/cooliris/media/MediaFeed;)V

    .line 204
    invoke-virtual {p0, v1}, Lcom/cooliris/media/MediaFeed;->updateListener(Z)V

    .line 206
    :cond_12
    iput-boolean v1, p0, Lcom/cooliris/media/MediaFeed;->mMediaFeedNeedsToRun:Z

    .line 207
    return-void
.end method

.method public removeMediaSet(Lcom/cooliris/media/MediaSet;)V
    .registers 4
    .parameter "set"

    .prologue
    .line 433
    iget-object v1, p0, Lcom/cooliris/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    monitor-enter v1

    .line 434
    :try_start_3
    iget-object v0, p0, Lcom/cooliris/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 435
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 436
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cooliris/media/MediaFeed;->mMediaFeedNeedsToRun:Z

    .line 437
    return-void

    .line 435
    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method public replaceMediaSet(JLcom/cooliris/media/DataSource;)Lcom/cooliris/media/MediaSet;
    .registers 12
    .parameter "setId"
    .parameter "dataSource"

    .prologue
    .line 1141
    const-string v5, "MediaFeed"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Replacing media set "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    new-instance v1, Lcom/cooliris/media/MediaSet;

    invoke-direct {v1, p3}, Lcom/cooliris/media/MediaSet;-><init>(Lcom/cooliris/media/DataSource;)V

    .line 1148
    .local v1, mediaSet:Lcom/cooliris/media/MediaSet;
    iput-wide p1, v1, Lcom/cooliris/media/MediaSet;->mId:J

    .line 1149
    iget-object v2, p0, Lcom/cooliris/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    .line 1150
    .local v2, mediaSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaSet;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1151
    .local v3, numSets:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_26
    if-ge v0, v3, :cond_43

    .line 1152
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cooliris/media/MediaSet;

    .line 1153
    .local v4, thisSet:Lcom/cooliris/media/MediaSet;
    iget-wide v5, v4, Lcom/cooliris/media/MediaSet;->mId:J

    cmp-long v5, v5, p1

    if-nez v5, :cond_47

    .line 1154
    iget-object v5, v4, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    iput-object v5, v1, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    .line 1155
    iget-boolean v5, v4, Lcom/cooliris/media/MediaSet;->mHasImages:Z

    iput-boolean v5, v1, Lcom/cooliris/media/MediaSet;->mHasImages:Z

    .line 1156
    iget-boolean v5, v4, Lcom/cooliris/media/MediaSet;->mHasVideos:Z

    iput-boolean v5, v1, Lcom/cooliris/media/MediaSet;->mHasVideos:Z

    .line 1157
    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1161
    .end local v4           #thisSet:Lcom/cooliris/media/MediaSet;
    :cond_43
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/cooliris/media/MediaFeed;->mMediaFeedNeedsToRun:Z

    .line 1162
    return-object v1

    .line 1151
    .restart local v4       #thisSet:Lcom/cooliris/media/MediaSet;
    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_26
.end method

.method public restorePreviousClusteringState()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1038
    invoke-direct {p0}, Lcom/cooliris/media/MediaFeed;->disableClusteringIfNecessary()Z

    move-result v0

    .line 1039
    .local v0, retVal:Z
    if-eqz v0, :cond_15

    .line 1040
    iget-object v1, p0, Lcom/cooliris/media/MediaFeed;->mListener:Lcom/cooliris/media/MediaFeed$Listener;

    if-eqz v1, :cond_10

    .line 1041
    iget-object v1, p0, Lcom/cooliris/media/MediaFeed;->mListener:Lcom/cooliris/media/MediaFeed$Listener;

    invoke-interface {v1, p0}, Lcom/cooliris/media/MediaFeed$Listener;->onFeedAboutToChange(Lcom/cooliris/media/MediaFeed;)V

    .line 1043
    :cond_10
    invoke-virtual {p0, v2}, Lcom/cooliris/media/MediaFeed;->updateListener(Z)V

    .line 1044
    iput-boolean v2, p0, Lcom/cooliris/media/MediaFeed;->mMediaFeedNeedsToRun:Z

    .line 1046
    :cond_15
    return v0
.end method

.method public run()V
    .registers 42

    .prologue
    .line 670
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/cooliris/media/MediaFeed;->mDataSource:Lcom/cooliris/media/DataSource;

    .line 671
    .local v8, dataSource:Lcom/cooliris/media/DataSource;
    const/16 v34, 0xa

    .line 672
    .local v34, sleepMs:I
    sget-boolean v38, Lcom/cooliris/media/Utils;->mUseDualCore:Z

    if-eqz v38, :cond_1a

    .line 673
    const/16 v38, -0x2

    invoke-static/range {v38 .. v38}, Landroid/os/Process;->setThreadPriority(I)V

    .line 677
    :goto_f
    if-nez v8, :cond_d9

    .line 678
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/cooliris/media/MediaFeed;->isFeedRunningFlag:Z

    .line 986
    :goto_19
    return-void

    .line 675
    :cond_1a
    const/16 v38, 0xa

    invoke-static/range {v38 .. v38}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_f

    .line 704
    .local v9, databaseUris:[Ljava/lang/String;
    .local v14, i:I
    .local v26, numRequests:I
    .local v29, performRefresh:Z
    .local v36, uris:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_20
    const/16 v38, 0x0

    :try_start_22
    move/from16 v0, v38

    new-array v9, v0, [Ljava/lang/String;

    .line 705
    invoke-virtual/range {v36 .. v36}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-interface {v0, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v38

    move-object/from16 v0, v38

    check-cast v0, [Ljava/lang/String;

    move-object v9, v0

    .line 707
    .end local v14           #i:I
    .end local v26           #numRequests:I
    .end local v36           #uris:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_35
    monitor-exit v39
    :try_end_36
    .catchall {:try_start_22 .. :try_end_36} :catchall_145

    .line 708
    const/16 v33, 0x0

    .line 709
    .local v33, settingFeedAboutToChange:Z
    if-eqz v29, :cond_60

    .line 710
    if-eqz v8, :cond_60

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mListener:Lcom/cooliris/media/MediaFeed$Listener;

    move-object/from16 v38, v0

    if-eqz v38, :cond_53

    .line 712
    const/16 v33, 0x1

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mListener:Lcom/cooliris/media/MediaFeed$Listener;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/cooliris/media/MediaFeed$Listener;->onFeedAboutToChange(Lcom/cooliris/media/MediaFeed;)V

    .line 715
    :cond_53
    move-object/from16 v0, p0

    invoke-interface {v8, v0, v9}, Lcom/cooliris/media/DataSource;->refresh(Lcom/cooliris/media/MediaFeed;[Ljava/lang/String;)V

    .line 716
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/cooliris/media/MediaFeed;->mMediaFeedNeedsToRun:Z

    .line 719
    :cond_60
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cooliris/media/MediaFeed;->mListenerNeedsUpdate:Z

    move/from16 v38, v0

    if-eqz v38, :cond_156

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cooliris/media/MediaFeed;->mMediaFeedNeedsToRun:Z

    move/from16 v38, v0

    if-nez v38, :cond_156

    .line 720
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/cooliris/media/MediaFeed;->mListenerNeedsUpdate:Z

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mListener:Lcom/cooliris/media/MediaFeed$Listener;

    move-object/from16 v38, v0

    if-eqz v38, :cond_9d

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    monitor-enter v39

    .line 723
    :try_start_87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mListener:Lcom/cooliris/media/MediaFeed$Listener;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cooliris/media/MediaFeed;->mListenerNeedsLayout:Z

    move/from16 v40, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lcom/cooliris/media/MediaFeed$Listener;->onFeedChanged(Lcom/cooliris/media/MediaFeed;Z)V

    .line 724
    monitor-exit v39
    :try_end_9d
    .catchall {:try_start_87 .. :try_end_9d} :catchall_148

    .line 726
    :cond_9d
    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v38, v0

    :try_start_a2
    invoke-static/range {v38 .. v39}, Ljava/lang/Thread;->sleep(J)V

    .line 727
    sget-boolean v38, Lcom/cooliris/media/Utils;->mUseDualCore:Z

    if-eqz v38, :cond_cf

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mDataSourceThread:Ljava/lang/Thread;

    move-object/from16 v38, v0

    if-eqz v38, :cond_bc

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mDataSourceThread:Ljava/lang/Thread;

    move-object/from16 v38, v0

    const/16 v39, 0xa

    invoke-virtual/range {v38 .. v39}, Ljava/lang/Thread;->setPriority(I)V

    .line 732
    :cond_bc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mAlbumSourceThread:Ljava/lang/Thread;

    move-object/from16 v38, v0

    if-eqz v38, :cond_cf

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mAlbumSourceThread:Ljava/lang/Thread;

    move-object/from16 v38, v0

    const/16 v39, 0xa

    invoke-virtual/range {v38 .. v39}, Ljava/lang/Thread;->setPriority(I)V
    :try_end_cf
    .catch Ljava/lang/InterruptedException; {:try_start_a2 .. :try_end_cf} :catch_14b

    .line 759
    :cond_cf
    :goto_cf
    const/16 v34, 0x12c

    .line 760
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cooliris/media/MediaFeed;->mMediaFeedNeedsToRun:Z

    move/from16 v38, v0

    if-nez v38, :cond_195

    .line 682
    .end local v9           #databaseUris:[Ljava/lang/String;
    .end local v29           #performRefresh:Z
    .end local v33           #settingFeedAboutToChange:Z
    :cond_d9
    :goto_d9
    invoke-direct/range {p0 .. p0}, Lcom/cooliris/media/MediaFeed;->isShutdown()Z

    move-result v38

    if-nez v38, :cond_626

    .line 683
    const/4 v9, 0x0

    .line 684
    .restart local v9       #databaseUris:[Ljava/lang/String;
    const/16 v29, 0x0

    .line 685
    .restart local v29       #performRefresh:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mRequestedRefresh:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    monitor-enter v39

    .line 686
    :try_start_e9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mRequestedRefresh:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v38

    if-nez v38, :cond_35

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mRequestedRefresh:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->size()I

    move-result v26

    .line 689
    .restart local v26       #numRequests:I
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_100
    move/from16 v0, v26

    if-ge v14, v0, :cond_11b

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mRequestedRefresh:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, [Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-static {v9, v0}, Lcom/cooliris/media/ArrayUtils;->addAll([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 689
    add-int/lit8 v14, v14, 0x1

    goto :goto_100

    .line 692
    :cond_11b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mRequestedRefresh:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->clear()V

    .line 693
    const/16 v29, 0x1

    .line 695
    new-instance v36, Ljava/util/HashMap;

    invoke-direct/range {v36 .. v36}, Ljava/util/HashMap;-><init>()V

    .line 696
    .restart local v36       #uris:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v9, :cond_20

    .line 697
    array-length v0, v9

    move/from16 v28, v0

    .line 698
    .local v28, numUris:I
    const/4 v14, 0x0

    :goto_131
    move/from16 v0, v28

    if-ge v14, v0, :cond_20

    .line 699
    aget-object v35, v9, v14

    .line 700
    .local v35, uri:Ljava/lang/String;
    if-eqz v35, :cond_142

    .line 701
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    :cond_142
    add-int/lit8 v14, v14, 0x1

    goto :goto_131

    .line 707
    .end local v14           #i:I
    .end local v26           #numRequests:I
    .end local v28           #numUris:I
    .end local v35           #uri:Ljava/lang/String;
    .end local v36           #uris:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_145
    move-exception v38

    monitor-exit v39
    :try_end_147
    .catchall {:try_start_e9 .. :try_end_147} :catchall_145

    throw v38

    .line 724
    .restart local v33       #settingFeedAboutToChange:Z
    :catchall_148
    move-exception v38

    :try_start_149
    monitor-exit v39
    :try_end_14a
    .catchall {:try_start_149 .. :try_end_14a} :catchall_148

    throw v38

    .line 737
    :catch_14b
    move-exception v10

    .line 738
    .local v10, e:Ljava/lang/InterruptedException;
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/cooliris/media/MediaFeed;->isFeedRunningFlag:Z

    goto/16 :goto_19

    .line 743
    .end local v10           #e:Ljava/lang/InterruptedException;
    :cond_156
    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v38, v0

    :try_start_15b
    invoke-static/range {v38 .. v39}, Ljava/lang/Thread;->sleep(J)V

    .line 744
    sget-boolean v38, Lcom/cooliris/media/Utils;->mUseDualCore:Z

    if-eqz v38, :cond_cf

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mDataSourceThread:Ljava/lang/Thread;

    move-object/from16 v38, v0

    if-eqz v38, :cond_175

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mDataSourceThread:Ljava/lang/Thread;

    move-object/from16 v38, v0

    const/16 v39, 0xa

    invoke-virtual/range {v38 .. v39}, Ljava/lang/Thread;->setPriority(I)V

    .line 749
    :cond_175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mAlbumSourceThread:Ljava/lang/Thread;

    move-object/from16 v38, v0

    if-eqz v38, :cond_cf

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mAlbumSourceThread:Ljava/lang/Thread;

    move-object/from16 v38, v0

    const/16 v39, 0xa

    invoke-virtual/range {v38 .. v39}, Ljava/lang/Thread;->setPriority(I)V
    :try_end_188
    .catch Ljava/lang/InterruptedException; {:try_start_15b .. :try_end_188} :catch_18a

    goto/16 :goto_cf

    .line 754
    :catch_18a
    move-exception v10

    .line 755
    .restart local v10       #e:Ljava/lang/InterruptedException;
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/cooliris/media/MediaFeed;->isFeedRunningFlag:Z

    goto/16 :goto_19

    .line 763
    .end local v10           #e:Ljava/lang/InterruptedException;
    :cond_195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v4

    .line 764
    .local v4, app:Lcom/cooliris/app/App;
    if-eqz v4, :cond_1a7

    invoke-virtual {v4}, Lcom/cooliris/app/App;->isPaused()Z

    move-result v38

    if-eqz v38, :cond_1b1

    .line 765
    :cond_1a7
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/cooliris/media/MediaFeed;->isFeedRunningFlag:Z

    goto/16 :goto_d9

    .line 768
    :cond_1b1
    if-eqz v33, :cond_1bc

    .line 769
    const/16 v38, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/cooliris/media/MediaFeed;->updateListener(Z)V

    .line 772
    :cond_1bc
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/cooliris/media/MediaFeed;->mMediaFeedNeedsToRun:Z

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    .line 774
    .local v22, mediaSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaSet;>;"
    monitor-enter v22

    .line 775
    :try_start_1cb
    move-object/from16 v0, p0

    iget v11, v0, Lcom/cooliris/media/MediaFeed;->mExpandedMediaSetIndex:I

    .line 776
    .local v11, expandedSetIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->size()I

    move-result v38

    move/from16 v0, v38

    if-lt v11, v0, :cond_1de

    .line 777
    const/4 v11, -0x1

    .line 779
    :cond_1de
    const/16 v38, -0x1

    move/from16 v0, v38

    if-ne v11, v0, :cond_2c4

    .line 781
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v27

    .line 782
    .local v27, numSets:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mVisibleRange:Lcom/cooliris/media/IndexRange;

    move-object/from16 v37, v0

    .line 783
    .local v37, visibleRange:Lcom/cooliris/media/IndexRange;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/MediaFeed;->mBufferedRange:Lcom/cooliris/media/IndexRange;

    .line 784
    .local v5, bufferedRange:Lcom/cooliris/media/IndexRange;
    const/16 v31, 0x1

    .line 785
    .local v31, scanMediaSets:Z
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_1f5
    move/from16 v0, v27

    if-ge v14, v0, :cond_26a

    .line 786
    move-object/from16 v0, v37

    iget v0, v0, Lcom/cooliris/media/IndexRange;->begin:I

    move/from16 v38, v0

    move/from16 v0, v38

    if-lt v14, v0, :cond_38a

    move-object/from16 v0, v37

    iget v0, v0, Lcom/cooliris/media/IndexRange;->end:I

    move/from16 v38, v0

    move/from16 v0, v38

    if-gt v14, v0, :cond_38a

    if-eqz v31, :cond_38a

    .line 787
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/cooliris/media/MediaSet;

    .line 788
    .local v32, set:Lcom/cooliris/media/MediaSet;
    move-object/from16 v0, v32

    iget v0, v0, Lcom/cooliris/media/MediaSet;->mNumItemsLoaded:I

    move/from16 v25, v0

    .line 789
    .local v25, numItemsLoaded:I
    invoke-virtual/range {v32 .. v32}, Lcom/cooliris/media/MediaSet;->getNumExpectedItems()I

    move-result v38

    move/from16 v0, v25

    move/from16 v1, v38

    if-ge v0, v1, :cond_34b

    const/16 v38, 0x8

    move/from16 v0, v25

    move/from16 v1, v38

    if-ge v0, v1, :cond_34b

    .line 790
    monitor-enter v32
    :try_end_230
    .catchall {:try_start_1cb .. :try_end_230} :catchall_249

    .line 797
    :try_start_230
    invoke-direct/range {p0 .. p0}, Lcom/cooliris/media/MediaFeed;->isShutdown()Z

    move-result v38

    if-eqz v38, :cond_24c

    .line 798
    const-string v38, "MediaFeed"

    const-string v39, "MediaFeed is already shutdown"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/cooliris/media/MediaFeed;->isFeedRunningFlag:Z

    .line 800
    monitor-exit v32
    :try_end_246
    .catchall {:try_start_230 .. :try_end_246} :catchall_313

    :try_start_246
    monitor-exit v22

    goto/16 :goto_19

    .line 982
    .end local v5           #bufferedRange:Lcom/cooliris/media/IndexRange;
    .end local v11           #expandedSetIndex:I
    .end local v14           #i:I
    .end local v25           #numItemsLoaded:I
    .end local v27           #numSets:I
    .end local v31           #scanMediaSets:Z
    .end local v32           #set:Lcom/cooliris/media/MediaSet;
    .end local v37           #visibleRange:Lcom/cooliris/media/IndexRange;
    :catchall_249
    move-exception v38

    monitor-exit v22
    :try_end_24b
    .catchall {:try_start_246 .. :try_end_24b} :catchall_249

    throw v38

    .line 802
    .restart local v5       #bufferedRange:Lcom/cooliris/media/IndexRange;
    .restart local v11       #expandedSetIndex:I
    .restart local v14       #i:I
    .restart local v25       #numItemsLoaded:I
    .restart local v27       #numSets:I
    .restart local v31       #scanMediaSets:Z
    .restart local v32       #set:Lcom/cooliris/media/MediaSet;
    .restart local v37       #visibleRange:Lcom/cooliris/media/IndexRange;
    :cond_24c
    const/16 v38, 0x8

    :try_start_24e
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v25

    move/from16 v3, v38

    invoke-interface {v8, v0, v1, v2, v3}, Lcom/cooliris/media/DataSource;->loadItemsForSet(Lcom/cooliris/media/MediaFeed;Lcom/cooliris/media/MediaSet;II)V

    .line 803
    invoke-virtual/range {v32 .. v32}, Lcom/cooliris/media/MediaSet;->checkForDeletedItems()V

    .line 804
    monitor-exit v32
    :try_end_25d
    .catchall {:try_start_24e .. :try_end_25d} :catchall_313

    .line 805
    :try_start_25d
    invoke-virtual/range {v32 .. v32}, Lcom/cooliris/media/MediaSet;->getNumExpectedItems()I

    move-result v38

    if-nez v38, :cond_316

    .line 806
    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 835
    .end local v25           #numItemsLoaded:I
    .end local v32           #set:Lcom/cooliris/media/MediaSet;
    :cond_26a
    :goto_26a
    const/4 v14, 0x0

    :goto_26b
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v38

    move/from16 v0, v38

    if-ge v14, v0, :cond_2c4

    .line 836
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/cooliris/media/MediaSet;

    .line 837
    .restart local v32       #set:Lcom/cooliris/media/MediaSet;
    iget v0, v5, Lcom/cooliris/media/IndexRange;->begin:I

    move/from16 v38, v0

    move/from16 v0, v38

    if-lt v14, v0, :cond_3cd

    iget v0, v5, Lcom/cooliris/media/IndexRange;->end:I

    move/from16 v38, v0

    move/from16 v0, v38

    if-gt v14, v0, :cond_3cd

    .line 838
    if-eqz v31, :cond_3c6

    .line 839
    move-object/from16 v0, v32

    iget v0, v0, Lcom/cooliris/media/MediaSet;->mNumItemsLoaded:I

    move/from16 v25, v0

    .line 840
    .restart local v25       #numItemsLoaded:I
    invoke-virtual/range {v32 .. v32}, Lcom/cooliris/media/MediaSet;->getNumExpectedItems()I

    move-result v38

    move/from16 v0, v25

    move/from16 v1, v38

    if-ge v0, v1, :cond_3c6

    const/16 v38, 0x8

    move/from16 v0, v25

    move/from16 v1, v38

    if-ge v0, v1, :cond_3c6

    .line 842
    monitor-enter v32
    :try_end_2a6
    .catchall {:try_start_25d .. :try_end_2a6} :catchall_249

    .line 844
    const/16 v38, 0x8

    :try_start_2a8
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v25

    move/from16 v3, v38

    invoke-interface {v8, v0, v1, v2, v3}, Lcom/cooliris/media/DataSource;->loadItemsForSet(Lcom/cooliris/media/MediaFeed;Lcom/cooliris/media/MediaSet;II)V

    .line 847
    invoke-virtual/range {v32 .. v32}, Lcom/cooliris/media/MediaSet;->checkForDeletedItems()V

    .line 848
    monitor-exit v32
    :try_end_2b7
    .catchall {:try_start_2a8 .. :try_end_2b7} :catchall_38e

    .line 849
    :try_start_2b7
    invoke-virtual/range {v32 .. v32}, Lcom/cooliris/media/MediaSet;->getNumExpectedItems()I

    move-result v38

    if-nez v38, :cond_391

    .line 850
    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 881
    .end local v5           #bufferedRange:Lcom/cooliris/media/IndexRange;
    .end local v14           #i:I
    .end local v25           #numItemsLoaded:I
    .end local v27           #numSets:I
    .end local v31           #scanMediaSets:Z
    .end local v32           #set:Lcom/cooliris/media/MediaSet;
    .end local v37           #visibleRange:Lcom/cooliris/media/IndexRange;
    :cond_2c4
    const/16 v38, -0x1

    move/from16 v0, v38

    if-eq v11, v0, :cond_5b9

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->size()I

    move-result v27

    .line 883
    .restart local v27       #numSets:I
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_2d5
    move/from16 v0, v27

    if-ge v14, v0, :cond_411

    .line 885
    if-eq v14, v11, :cond_310

    .line 886
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/cooliris/media/MediaSet;

    .line 887
    .restart local v32       #set:Lcom/cooliris/media/MediaSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cooliris/media/MediaClustering;

    .line 888
    .local v6, clustering:Lcom/cooliris/media/MediaClustering;
    if-eqz v6, :cond_305

    .line 889
    invoke-virtual {v6}, Lcom/cooliris/media/MediaClustering;->clear()V

    .line 890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    :cond_305
    move-object/from16 v0, v32

    iget v0, v0, Lcom/cooliris/media/MediaSet;->mNumItemsLoaded:I

    move/from16 v38, v0

    if-eqz v38, :cond_310

    .line 893
    invoke-virtual/range {v32 .. v32}, Lcom/cooliris/media/MediaSet;->clear()V
    :try_end_310
    .catchall {:try_start_2b7 .. :try_end_310} :catchall_249

    .line 883
    .end local v6           #clustering:Lcom/cooliris/media/MediaClustering;
    .end local v32           #set:Lcom/cooliris/media/MediaSet;
    :cond_310
    add-int/lit8 v14, v14, 0x1

    goto :goto_2d5

    .line 804
    .restart local v5       #bufferedRange:Lcom/cooliris/media/IndexRange;
    .restart local v25       #numItemsLoaded:I
    .restart local v31       #scanMediaSets:Z
    .restart local v32       #set:Lcom/cooliris/media/MediaSet;
    .restart local v37       #visibleRange:Lcom/cooliris/media/IndexRange;
    :catchall_313
    move-exception v38

    :try_start_314
    monitor-exit v32
    :try_end_315
    .catchall {:try_start_314 .. :try_end_315} :catchall_313

    :try_start_315
    throw v38

    .line 809
    :cond_316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mListener:Lcom/cooliris/media/MediaFeed$Listener;

    move-object/from16 v38, v0

    if-eqz v38, :cond_343

    .line 810
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/cooliris/media/MediaFeed;->mListenerNeedsUpdate:Z

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mListener:Lcom/cooliris/media/MediaFeed$Listener;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cooliris/media/MediaFeed;->mListenerNeedsLayout:Z

    move/from16 v39, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    move/from16 v2, v39

    invoke-interface {v0, v1, v2}, Lcom/cooliris/media/MediaFeed$Listener;->onFeedChanged(Lcom/cooliris/media/MediaFeed;Z)V

    .line 814
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/cooliris/media/MediaFeed;->mListenerNeedsLayout:Z

    .line 816
    :cond_343
    sget-boolean v38, Lcom/cooliris/media/Utils;->mUseDualCore:Z

    if-eqz v38, :cond_387

    .line 817
    const/16 v34, 0x32

    .line 821
    :goto_349
    const/16 v31, 0x0

    .line 823
    :cond_34b
    invoke-virtual/range {v32 .. v32}, Lcom/cooliris/media/MediaSet;->setContainsValidItems()Z

    move-result v38

    if-nez v38, :cond_38a

    .line 824
    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mListener:Lcom/cooliris/media/MediaFeed$Listener;

    move-object/from16 v38, v0

    if-eqz v38, :cond_26a

    .line 826
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/cooliris/media/MediaFeed;->mListenerNeedsUpdate:Z

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mListener:Lcom/cooliris/media/MediaFeed$Listener;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cooliris/media/MediaFeed;->mListenerNeedsLayout:Z

    move/from16 v39, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    move/from16 v2, v39

    invoke-interface {v0, v1, v2}, Lcom/cooliris/media/MediaFeed$Listener;->onFeedChanged(Lcom/cooliris/media/MediaFeed;Z)V

    .line 828
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/cooliris/media/MediaFeed;->mListenerNeedsLayout:Z
    :try_end_385
    .catchall {:try_start_315 .. :try_end_385} :catchall_249

    goto/16 :goto_26a

    .line 819
    :cond_387
    const/16 v34, 0x64

    goto :goto_349

    .line 785
    .end local v25           #numItemsLoaded:I
    .end local v32           #set:Lcom/cooliris/media/MediaSet;
    :cond_38a
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1f5

    .line 848
    .restart local v25       #numItemsLoaded:I
    .restart local v32       #set:Lcom/cooliris/media/MediaSet;
    :catchall_38e
    move-exception v38

    :try_start_38f
    monitor-exit v32
    :try_end_390
    .catchall {:try_start_38f .. :try_end_390} :catchall_38e

    :try_start_390
    throw v38

    .line 853
    :cond_391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mListener:Lcom/cooliris/media/MediaFeed$Listener;

    move-object/from16 v38, v0

    if-eqz v38, :cond_3be

    .line 854
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/cooliris/media/MediaFeed;->mListenerNeedsUpdate:Z

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mListener:Lcom/cooliris/media/MediaFeed$Listener;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cooliris/media/MediaFeed;->mListenerNeedsLayout:Z

    move/from16 v39, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    move/from16 v2, v39

    invoke-interface {v0, v1, v2}, Lcom/cooliris/media/MediaFeed$Listener;->onFeedChanged(Lcom/cooliris/media/MediaFeed;Z)V

    .line 858
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/cooliris/media/MediaFeed;->mListenerNeedsLayout:Z

    .line 860
    :cond_3be
    sget-boolean v38, Lcom/cooliris/media/Utils;->mUseDualCore:Z

    if-eqz v38, :cond_3ca

    .line 861
    const/16 v34, 0x32

    .line 865
    :goto_3c4
    const/16 v31, 0x0

    .line 835
    .end local v25           #numItemsLoaded:I
    :cond_3c6
    :goto_3c6
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_26b

    .line 863
    .restart local v25       #numItemsLoaded:I
    :cond_3ca
    const/16 v34, 0x64

    goto :goto_3c4

    .line 868
    .end local v25           #numItemsLoaded:I
    :cond_3cd
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cooliris/media/MediaFeed;->mListenerNeedsUpdate:Z

    move/from16 v38, v0

    if-nez v38, :cond_3c6

    iget v0, v5, Lcom/cooliris/media/IndexRange;->begin:I

    move/from16 v38, v0

    move/from16 v0, v38

    if-lt v14, v0, :cond_3e5

    iget v0, v5, Lcom/cooliris/media/IndexRange;->end:I

    move/from16 v38, v0

    move/from16 v0, v38

    if-le v14, v0, :cond_3c6

    .line 871
    :cond_3e5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cooliris/media/MediaClustering;

    .line 872
    .restart local v6       #clustering:Lcom/cooliris/media/MediaClustering;
    if-eqz v6, :cond_407

    .line 873
    invoke-virtual {v6}, Lcom/cooliris/media/MediaClustering;->clear()V

    .line 874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    :cond_407
    invoke-virtual/range {v32 .. v32}, Lcom/cooliris/media/MediaSet;->getNumItems()I

    move-result v38

    if-eqz v38, :cond_3c6

    .line 877
    invoke-virtual/range {v32 .. v32}, Lcom/cooliris/media/MediaSet;->clear()V

    goto :goto_3c6

    .line 897
    .end local v5           #bufferedRange:Lcom/cooliris/media/IndexRange;
    .end local v6           #clustering:Lcom/cooliris/media/MediaClustering;
    .end local v31           #scanMediaSets:Z
    .end local v32           #set:Lcom/cooliris/media/MediaSet;
    .end local v37           #visibleRange:Lcom/cooliris/media/IndexRange;
    :cond_411
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/cooliris/media/MediaSet;

    move-object/from16 v0, v38

    iget v0, v0, Lcom/cooliris/media/MediaSet;->mNumItemsLoaded:I

    move/from16 v25, v0

    .line 898
    .restart local v25       #numItemsLoaded:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mVisibleRange:Lcom/cooliris/media/IndexRange;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/cooliris/media/IndexRange;->end:I

    move/from16 v30, v0

    .line 900
    .local v30, requestedItems:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cooliris/media/MediaFeed;->mInClusteringMode:Z

    move/from16 v38, v0

    if-eqz v38, :cond_46d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    move-object/from16 v38, v0

    if-eqz v38, :cond_46d

    .line 901
    const/16 v30, 0x0

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    move-object/from16 v38, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cooliris/media/MediaClustering;

    .line 904
    .restart local v6       #clustering:Lcom/cooliris/media/MediaClustering;
    if-eqz v6, :cond_46d

    .line 905
    invoke-virtual {v6}, Lcom/cooliris/media/MediaClustering;->getClustersForDisplay()Ljava/util/ArrayList;

    move-result-object v7

    .line 906
    .local v7, clusters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaClustering$Cluster;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 907
    .local v23, numClusters:I
    const/4 v14, 0x0

    :goto_45a
    move/from16 v0, v23

    if-ge v14, v0, :cond_46d

    .line 908
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/cooliris/media/MediaClustering$Cluster;

    invoke-virtual/range {v38 .. v38}, Lcom/cooliris/media/MediaClustering$Cluster;->getNumExpectedItems()I

    move-result v38

    add-int v30, v30, v38

    .line 907
    add-int/lit8 v14, v14, 0x1

    goto :goto_45a

    .line 912
    .end local v6           #clustering:Lcom/cooliris/media/MediaClustering;
    .end local v7           #clusters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaClustering$Cluster;>;"
    .end local v23           #numClusters:I
    :cond_46d
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/cooliris/media/MediaSet;

    .line 913
    .restart local v32       #set:Lcom/cooliris/media/MediaSet;
    const/16 v16, 0x0

    .line 914
    .local v16, isResourceData:Z
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/cooliris/media/MediaSet;->mDataSource:Lcom/cooliris/media/DataSource;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    instance-of v0, v0, Lcom/cooliris/media/LocalDataSource;

    move/from16 v38, v0

    if-eqz v38, :cond_497

    .line 915
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/cooliris/media/MediaSet;->mDataSource:Lcom/cooliris/media/DataSource;

    move-object/from16 v19, v0

    check-cast v19, Lcom/cooliris/media/LocalDataSource;

    .line 916
    .local v19, mDataSource:Lcom/cooliris/media/LocalDataSource;
    invoke-virtual/range {v19 .. v19}, Lcom/cooliris/media/LocalDataSource;->getUri()Ljava/lang/String;

    move-result-object v38

    const-string v39, "android.resource://"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    .line 918
    .end local v19           #mDataSource:Lcom/cooliris/media/LocalDataSource;
    :cond_497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    check-cast v38, Lcom/cooliris/media/Gallery;

    invoke-virtual/range {v38 .. v38}, Lcom/cooliris/media/Gallery;->isViewIntent()Z

    move-result v38

    if-nez v38, :cond_4df

    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/cooliris/media/MediaSet;->mIsLocal:Z

    move/from16 v38, v0

    if-eqz v38, :cond_4df

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/cooliris/media/MediaSet;->mId:J

    move-wide/from16 v39, v0

    invoke-static/range {v38 .. v40}, Lcom/cooliris/cache/CacheService;->checkedCacheSetId(Landroid/content/Context;J)Z

    move-result v38

    if-nez v38, :cond_4df

    if-nez v16, :cond_4df

    .line 921
    const/16 v38, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/cooliris/media/MediaSet;->setNumExpectedItems(I)V

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    check-cast v38, Lcom/cooliris/media/Gallery;

    invoke-virtual/range {v38 .. v38}, Lcom/cooliris/media/Gallery;->getGridLayer()Lcom/cooliris/media/GridLayer;

    move-result-object v20

    .line 923
    .local v20, mGridLayer:Lcom/cooliris/media/GridLayer;
    const/16 v38, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/cooliris/media/GridLayer;->setState(I)V

    .line 925
    .end local v20           #mGridLayer:Lcom/cooliris/media/GridLayer;
    :cond_4df
    invoke-virtual/range {v32 .. v32}, Lcom/cooliris/media/MediaSet;->getNumExpectedItems()I

    move-result v38

    if-eqz v38, :cond_4ef

    invoke-virtual/range {v32 .. v32}, Lcom/cooliris/media/MediaSet;->getNumExpectedItems()I

    move-result v38

    move/from16 v0, v25

    move/from16 v1, v38

    if-ge v0, v1, :cond_5b9

    .line 931
    :cond_4ef
    monitor-enter v32
    :try_end_4f0
    .catchall {:try_start_390 .. :try_end_4f0} :catchall_249

    .line 933
    :try_start_4f0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_4fe
    :goto_4fe
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_513

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/cooliris/media/MediaClustering;

    .line 934
    .local v21, mc:Lcom/cooliris/media/MediaClustering;
    if-eqz v21, :cond_4fe

    .line 935
    invoke-virtual/range {v21 .. v21}, Lcom/cooliris/media/MediaClustering;->clear()V

    goto :goto_4fe

    .line 945
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v21           #mc:Lcom/cooliris/media/MediaClustering;
    :catchall_510
    move-exception v38

    monitor-exit v32
    :try_end_512
    .catchall {:try_start_4f0 .. :try_end_512} :catchall_510

    :try_start_512
    throw v38
    :try_end_513
    .catchall {:try_start_512 .. :try_end_513} :catchall_249

    .line 938
    .restart local v15       #i$:Ljava/util/Iterator;
    :cond_513
    :try_start_513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/HashMap;->clear()V

    .line 940
    div-int/lit8 v38, v30, 0x3c

    mul-int/lit8 v38, v38, 0x3c

    add-int/lit8 v38, v38, 0x3c

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v25

    move/from16 v3, v38

    invoke-interface {v8, v0, v1, v2, v3}, Lcom/cooliris/media/DataSource;->loadItemsForSet(Lcom/cooliris/media/MediaFeed;Lcom/cooliris/media/MediaSet;II)V

    .line 944
    invoke-virtual/range {v32 .. v32}, Lcom/cooliris/media/MediaSet;->checkForDeletedItems()V

    .line 945
    monitor-exit v32
    :try_end_531
    .catchall {:try_start_513 .. :try_end_531} :catchall_510

    .line 947
    :try_start_531
    invoke-virtual/range {v32 .. v32}, Lcom/cooliris/media/MediaSet;->getNumExpectedItems()I

    move-result v38

    if-nez v38, :cond_56b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mListener:Lcom/cooliris/media/MediaFeed$Listener;

    move-object/from16 v38, v0

    if-eqz v38, :cond_56b

    .line 948
    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 949
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/cooliris/media/MediaFeed;->mListenerNeedsUpdate:Z

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mListener:Lcom/cooliris/media/MediaFeed$Listener;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cooliris/media/MediaFeed;->mListenerNeedsLayout:Z

    move/from16 v39, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    move/from16 v2, v39

    invoke-interface {v0, v1, v2}, Lcom/cooliris/media/MediaFeed$Listener;->onFeedChanged(Lcom/cooliris/media/MediaFeed;Z)V

    .line 951
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/cooliris/media/MediaFeed;->mListenerNeedsLayout:Z

    .line 953
    :cond_56b
    move-object/from16 v0, v32

    iget v0, v0, Lcom/cooliris/media/MediaSet;->mNumItemsLoaded:I

    move/from16 v38, v0

    move/from16 v0, v25

    move/from16 v1, v38

    if-eq v0, v1, :cond_5b9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mListener:Lcom/cooliris/media/MediaFeed$Listener;

    move-object/from16 v38, v0

    if-eqz v38, :cond_5b9

    .line 954
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/cooliris/media/MediaFeed;->mListenerNeedsUpdate:Z

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mListener:Lcom/cooliris/media/MediaFeed$Listener;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cooliris/media/MediaFeed;->mListenerNeedsLayout:Z

    move/from16 v39, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    move/from16 v2, v39

    invoke-interface {v0, v1, v2}, Lcom/cooliris/media/MediaFeed$Listener;->onFeedChanged(Lcom/cooliris/media/MediaFeed;Z)V

    .line 956
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/cooliris/media/MediaFeed;->mListenerNeedsLayout:Z

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mListener:Lcom/cooliris/media/MediaFeed$Listener;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cooliris/media/MediaFeed;->mListenerNeedsLayout:Z

    move/from16 v39, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    move/from16 v2, v39

    invoke-interface {v0, v1, v2}, Lcom/cooliris/media/MediaFeed$Listener;->onFeedChanged(Lcom/cooliris/media/MediaFeed;Z)V

    .line 962
    .end local v14           #i:I
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v16           #isResourceData:Z
    .end local v25           #numItemsLoaded:I
    .end local v27           #numSets:I
    .end local v30           #requestedItems:I
    .end local v32           #set:Lcom/cooliris/media/MediaSet;
    :cond_5b9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cooliris/media/MediaFeed;->mMediaFilter:Lcom/cooliris/media/MediaFilter;

    .line 963
    .local v12, filter:Lcom/cooliris/media/MediaFilter;
    if-eqz v12, :cond_61b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaFeed;->mMediaFilteredSet:Lcom/cooliris/media/MediaSet;

    move-object/from16 v38, v0

    if-nez v38, :cond_61b

    .line 964
    const/16 v38, -0x1

    move/from16 v0, v38

    if-eq v11, v0, :cond_612

    .line 965
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/cooliris/media/MediaSet;

    .line 966
    .restart local v32       #set:Lcom/cooliris/media/MediaSet;
    invoke-virtual/range {v32 .. v32}, Lcom/cooliris/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v18

    .line 967
    .local v18, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    invoke-virtual/range {v32 .. v32}, Lcom/cooliris/media/MediaSet;->getNumItems()I

    move-result v24

    .line 968
    .local v24, numItems:I
    new-instance v13, Lcom/cooliris/media/MediaSet;

    invoke-direct {v13}, Lcom/cooliris/media/MediaSet;-><init>()V

    .line 969
    .local v13, filteredSet:Lcom/cooliris/media/MediaSet;
    move/from16 v0, v24

    invoke-virtual {v13, v0}, Lcom/cooliris/media/MediaSet;->setNumExpectedItems(I)V

    .line 970
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/media/MediaFeed;->mMediaFilteredSet:Lcom/cooliris/media/MediaSet;

    .line 971
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_5ec
    move/from16 v0, v24

    if-ge v14, v0, :cond_608

    .line 972
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/cooliris/media/MediaItem;

    .line 973
    .local v17, item:Lcom/cooliris/media/MediaItem;
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/cooliris/media/MediaFilter;->pass(Lcom/cooliris/media/MediaItem;)Z

    move-result v38

    if-eqz v38, :cond_605

    .line 974
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/cooliris/media/MediaSet;->addItem(Lcom/cooliris/media/MediaItem;)V

    .line 971
    :cond_605
    add-int/lit8 v14, v14, 0x1

    goto :goto_5ec

    .line 977
    .end local v17           #item:Lcom/cooliris/media/MediaItem;
    :cond_608
    invoke-virtual {v13}, Lcom/cooliris/media/MediaSet;->updateNumExpectedItems()V

    .line 978
    const/16 v38, 0x1

    move/from16 v0, v38

    invoke-virtual {v13, v0}, Lcom/cooliris/media/MediaSet;->generateTitle(Z)V

    .line 980
    .end local v13           #filteredSet:Lcom/cooliris/media/MediaSet;
    .end local v14           #i:I
    .end local v18           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    .end local v24           #numItems:I
    .end local v32           #set:Lcom/cooliris/media/MediaSet;
    :cond_612
    const/16 v38, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/cooliris/media/MediaFeed;->updateListener(Z)V

    .line 982
    :cond_61b
    monitor-exit v22
    :try_end_61c
    .catchall {:try_start_531 .. :try_end_61c} :catchall_249

    .line 983
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/cooliris/media/MediaFeed;->isFeedRunningFlag:Z

    goto/16 :goto_d9

    .line 985
    .end local v4           #app:Lcom/cooliris/app/App;
    .end local v9           #databaseUris:[Ljava/lang/String;
    .end local v11           #expandedSetIndex:I
    .end local v12           #filter:Lcom/cooliris/media/MediaFilter;
    .end local v22           #mediaSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaSet;>;"
    .end local v29           #performRefresh:Z
    .end local v33           #settingFeedAboutToChange:Z
    :cond_626
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/cooliris/media/MediaFeed;->isFeedRunningFlag:Z

    goto/16 :goto_19
.end method

.method public setFeedRunning()V
    .registers 2

    .prologue
    .line 1288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cooliris/media/MediaFeed;->isFeedRunningFlag:Z

    .line 1289
    return-void
.end method

.method public setFilter(Lcom/cooliris/media/MediaFilter;)V
    .registers 3
    .parameter "filter"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/cooliris/media/MediaFeed;->mMediaFilter:Lcom/cooliris/media/MediaFilter;

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cooliris/media/MediaFeed;->mMediaFilteredSet:Lcom/cooliris/media/MediaSet;

    .line 193
    iget-object v0, p0, Lcom/cooliris/media/MediaFeed;->mListener:Lcom/cooliris/media/MediaFeed$Listener;

    if-eqz v0, :cond_e

    .line 194
    iget-object v0, p0, Lcom/cooliris/media/MediaFeed;->mListener:Lcom/cooliris/media/MediaFeed$Listener;

    invoke-interface {v0, p0}, Lcom/cooliris/media/MediaFeed$Listener;->onFeedAboutToChange(Lcom/cooliris/media/MediaFeed;)V

    .line 196
    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cooliris/media/MediaFeed;->mMediaFeedNeedsToRun:Z

    .line 197
    return-void
.end method

.method public setMediaFeedNeedsToRunFlag()V
    .registers 2

    .prologue
    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cooliris/media/MediaFeed;->mMediaFeedNeedsToRun:Z

    .line 291
    return-void
.end method

.method public setSingleImageMode(Z)V
    .registers 2
    .parameter "singleImageMode"

    .prologue
    .line 1166
    iput-boolean p1, p0, Lcom/cooliris/media/MediaFeed;->mSingleImageMode:Z

    .line 1167
    return-void
.end method

.method public setVisibleRange(III)V
    .registers 6
    .parameter "numSlots"
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/cooliris/media/MediaFeed;->mVisibleRange:Lcom/cooliris/media/IndexRange;

    iget v0, v0, Lcom/cooliris/media/IndexRange;->begin:I

    if-ne p2, v0, :cond_c

    iget-object v0, p0, Lcom/cooliris/media/MediaFeed;->mVisibleRange:Lcom/cooliris/media/IndexRange;

    iget v0, v0, Lcom/cooliris/media/IndexRange;->end:I

    if-eq p3, v0, :cond_20

    .line 173
    :cond_c
    iget-object v0, p0, Lcom/cooliris/media/MediaFeed;->mVisibleRange:Lcom/cooliris/media/IndexRange;

    iput p2, v0, Lcom/cooliris/media/IndexRange;->begin:I

    .line 174
    iget-object v0, p0, Lcom/cooliris/media/MediaFeed;->mVisibleRange:Lcom/cooliris/media/IndexRange;

    iput p3, v0, Lcom/cooliris/media/IndexRange;->end:I

    .line 184
    iget-object v0, p0, Lcom/cooliris/media/MediaFeed;->mBufferedRange:Lcom/cooliris/media/IndexRange;

    const/4 v1, 0x0

    iput v1, v0, Lcom/cooliris/media/IndexRange;->begin:I

    .line 185
    iget-object v0, p0, Lcom/cooliris/media/MediaFeed;->mBufferedRange:Lcom/cooliris/media/IndexRange;

    iput p1, v0, Lcom/cooliris/media/IndexRange;->end:I

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cooliris/media/MediaFeed;->mMediaFeedNeedsToRun:Z

    .line 188
    :cond_20
    return-void
.end method

.method public shutdown()V
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 118
    iput-boolean v6, p0, Lcom/cooliris/media/MediaFeed;->mIsShutdown:Z

    .line 119
    iget-object v5, p0, Lcom/cooliris/media/MediaFeed;->mDataSourceThread:Ljava/lang/Thread;

    if-eqz v5, :cond_18

    .line 120
    iget-object v5, p0, Lcom/cooliris/media/MediaFeed;->mDataSource:Lcom/cooliris/media/DataSource;

    if-eqz v5, :cond_11

    .line 121
    iget-object v5, p0, Lcom/cooliris/media/MediaFeed;->mDataSource:Lcom/cooliris/media/DataSource;

    invoke-interface {v5}, Lcom/cooliris/media/DataSource;->shutdown()V

    .line 123
    :cond_11
    iget-object v5, p0, Lcom/cooliris/media/MediaFeed;->mDataSourceThread:Ljava/lang/Thread;

    invoke-direct {p0, v5}, Lcom/cooliris/media/MediaFeed;->repeatShuttingDownThread(Ljava/lang/Thread;)V

    .line 124
    iput-object v7, p0, Lcom/cooliris/media/MediaFeed;->mDataSourceThread:Ljava/lang/Thread;

    .line 126
    :cond_18
    iget-object v5, p0, Lcom/cooliris/media/MediaFeed;->mAlbumSourceThread:Ljava/lang/Thread;

    if-eqz v5, :cond_23

    .line 127
    iget-object v5, p0, Lcom/cooliris/media/MediaFeed;->mAlbumSourceThread:Ljava/lang/Thread;

    invoke-direct {p0, v5}, Lcom/cooliris/media/MediaFeed;->repeatShuttingDownThread(Ljava/lang/Thread;)V

    .line 128
    iput-object v7, p0, Lcom/cooliris/media/MediaFeed;->mAlbumSourceThread:Ljava/lang/Thread;

    .line 130
    :cond_23
    iget-object v5, p0, Lcom/cooliris/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 131
    .local v3, numSets:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2a
    if-ge v0, v3, :cond_3a

    .line 132
    iget-object v5, p0, Lcom/cooliris/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cooliris/media/MediaSet;

    .line 133
    .local v4, set:Lcom/cooliris/media/MediaSet;
    invoke-virtual {v4}, Lcom/cooliris/media/MediaSet;->clear()V

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 136
    .end local v4           #set:Lcom/cooliris/media/MediaSet;
    :cond_3a
    invoke-static {v6}, Lcom/cooliris/cache/CacheService;->isCacheReady(Z)Z

    move-result v5

    if-nez v5, :cond_43

    .line 137
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 139
    :cond_43
    iget-object v6, p0, Lcom/cooliris/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    monitor-enter v6

    .line 140
    :try_start_46
    iget-object v5, p0, Lcom/cooliris/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 141
    monitor-exit v6
    :try_end_4c
    .catchall {:try_start_46 .. :try_end_4c} :catchall_68

    .line 142
    iget-object v5, p0, Lcom/cooliris/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_56
    :goto_56
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cooliris/media/MediaClustering;

    .line 143
    .local v2, mc:Lcom/cooliris/media/MediaClustering;
    if-eqz v2, :cond_56

    .line 144
    invoke-virtual {v2}, Lcom/cooliris/media/MediaClustering;->clear()V

    goto :goto_56

    .line 141
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #mc:Lcom/cooliris/media/MediaClustering;
    :catchall_68
    move-exception v5

    :try_start_69
    monitor-exit v6
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw v5

    .line 147
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_6b
    iget-object v5, p0, Lcom/cooliris/media/MediaFeed;->mClusterSets:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 148
    iput-object v7, p0, Lcom/cooliris/media/MediaFeed;->mListener:Lcom/cooliris/media/MediaFeed$Listener;

    .line 149
    iput-object v7, p0, Lcom/cooliris/media/MediaFeed;->mDataSource:Lcom/cooliris/media/DataSource;

    .line 151
    return-void
.end method

.method public sortMediaSets()V
    .registers 3

    .prologue
    .line 1132
    :try_start_0
    iget-object v1, p0, Lcom/cooliris/media/MediaFeed;->mMediaSets:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_9

    .line 1137
    :goto_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cooliris/media/MediaFeed;->mMediaFeedNeedsToRun:Z

    .line 1138
    return-void

    .line 1133
    :catch_9
    move-exception v0

    .line 1134
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public start()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 556
    invoke-virtual {p0}, Lcom/cooliris/media/MediaFeed;->onResume()V

    .line 557
    iput-boolean v2, p0, Lcom/cooliris/media/MediaFeed;->mLoading:Z

    .line 558
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cooliris/media/MediaFeed;->mIsShutdown:Z

    .line 559
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cooliris/media/MediaFeed$2;

    invoke-direct {v1, p0}, Lcom/cooliris/media/MediaFeed$2;-><init>(Lcom/cooliris/media/MediaFeed;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/cooliris/media/MediaFeed;->mAlbumSourceThread:Ljava/lang/Thread;

    .line 610
    iget-object v0, p0, Lcom/cooliris/media/MediaFeed;->mAlbumSourceThread:Ljava/lang/Thread;

    const-string v1, "MediaSets"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcom/cooliris/media/MediaFeed;->mAlbumSourceThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 612
    iput-boolean v2, p0, Lcom/cooliris/media/MediaFeed;->isFeedRunningFlag:Z

    .line 613
    return-void
.end method

.method public updateListener(Z)V
    .registers 3
    .parameter "needsLayout"

    .prologue
    .line 451
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cooliris/media/MediaFeed;->mListenerNeedsUpdate:Z

    .line 452
    iput-boolean p1, p0, Lcom/cooliris/media/MediaFeed;->mListenerNeedsLayout:Z

    .line 453
    return-void
.end method
