.class public Lcom/google/android/music/dl/DownloadManager;
.super Lcom/google/android/music/dl/IDownloadManager$Stub;
.source "DownloadManager.java"

# interfaces
.implements Lcom/google/android/music/dl/DownloadQueueManager$OnEmptyQueueListener;
.implements Lcom/google/android/music/dl/KeepOnDeviceScheduler$KeepOnEnabledStateListener;
.implements Lcom/google/android/music/dl/RingtoneScheduler$RingtoneDownloadEnabledStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;
    }
.end annotation


# static fields
.field private static final sLogFile:Lcom/google/android/music/log/LogFile;


# instance fields
.field private final LOGV:Z

.field private mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

.field private mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;

.field private final mContext:Landroid/app/Service;

.field private final mDoNotDelete:Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;

.field protected volatile mDownloader:Lcom/google/android/music/dl/DownloadQueueManager;

.field private mKeepOnDeviceScheduler:Lcom/google/android/music/dl/KeepOnDeviceScheduler;

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

.field private mOrderHandlerCreator:Lcom/google/android/music/dl/OrderHandlerCreator;

.field private final mPredictiveSongList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/music/dl/DownloadOrder;",
            ">;"
        }
    .end annotation
.end field

.field private mRingtoneScheduler:Lcom/google/android/music/dl/RingtoneScheduler;

.field private volatile mServiceSelfStarted:Z

.field private final mStoreSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

.field private mStoreService:Lcom/google/android/music/store/IStoreService;

.field private final mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

.field private mStreamingEnabled:Z

.field private final mStreamingServer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/music/dl/stream/StreamingHttpServer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const-string v0, "com.google.android.music.pin"

    invoke-static {v0}, Lcom/google/android/music/log/Log;->getLogFile(Ljava/lang/String;)Lcom/google/android/music/log/LogFile;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/dl/DownloadManager;->sLogFile:Lcom/google/android/music/log/LogFile;

    return-void
.end method

.method public constructor <init>(Landroid/app/Service;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Lcom/google/android/music/dl/IDownloadManager$Stub;-><init>()V

    .line 55
    const-string v0, "MusicDL"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/dl/DownloadManager;->LOGV:Z

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingServer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 86
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingEnabled:Z

    .line 100
    iput-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mStoreService:Lcom/google/android/music/store/IStoreService;

    .line 169
    new-instance v0, Lcom/google/android/music/dl/DownloadManager$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/dl/DownloadManager$2;-><init>(Lcom/google/android/music/dl/DownloadManager;)V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mStoreSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    .line 183
    new-instance v0, Lcom/google/android/music/dl/DownloadManager$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/dl/DownloadManager$3;-><init>(Lcom/google/android/music/dl/DownloadManager;)V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    .line 231
    new-instance v0, Lcom/google/android/music/dl/DownloadManager$4;

    invoke-direct {v0, p0}, Lcom/google/android/music/dl/DownloadManager$4;-><init>(Lcom/google/android/music/dl/DownloadManager;)V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDoNotDelete:Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;

    .line 109
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadManager;->mContext:Landroid/app/Service;

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/dl/DownloadManager;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingServer:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/dl/DownloadManager;)Lcom/google/android/music/dl/OrderHandlerCreator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mOrderHandlerCreator:Lcom/google/android/music/dl/OrderHandlerCreator;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/music/dl/DownloadManager;)Lcom/google/android/music/dl/RingtoneScheduler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mRingtoneScheduler:Lcom/google/android/music/dl/RingtoneScheduler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/music/dl/DownloadManager;Lcom/google/android/music/store/IStoreService;)Lcom/google/android/music/store/IStoreService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadManager;->mStoreService:Lcom/google/android/music/store/IStoreService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/music/dl/DownloadManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingEnabled:Z

    return v0
.end method

.method static synthetic access$302(Lcom/google/android/music/dl/DownloadManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingEnabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/music/dl/DownloadManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/android/music/dl/DownloadManager;->startAsyncDownloads()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/music/dl/DownloadManager;)Ljava/util/LinkedList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/music/dl/DownloadManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadManager;->LOGV:Z

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/music/dl/DownloadManager;)Lcom/google/android/music/dl/cache/CacheManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;

    return-object v0
.end method

.method static synthetic access$800()Lcom/google/android/music/log/LogFile;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/google/android/music/dl/DownloadManager;->sLogFile:Lcom/google/android/music/log/LogFile;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/music/dl/DownloadManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/android/music/dl/DownloadManager;->notifyQueueCompleteListenersIfNoDownloads()V

    return-void
.end method

.method private addNewOrderToPredictiveSongList(Lcom/google/android/music/dl/DownloadOrder;)Lcom/google/android/music/dl/DownloadOrder;
    .registers 10
    .parameter "newOrder"

    .prologue
    .line 498
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->hasPlaybackPurpose()Z

    move-result v5

    if-nez v5, :cond_22

    .line 499
    :cond_8
    const-string v5, "MusicDL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid order passed for streaming: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const/4 p1, 0x0

    .line 539
    .end local p1
    :goto_21
    return-object p1

    .line 505
    .restart local p1
    :cond_22
    const/4 v3, 0x0

    .line 506
    .local v3, order:Lcom/google/android/music/dl/DownloadOrder;
    iget-object v6, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    monitor-enter v6

    .line 507
    const/4 v1, 0x0

    .line 508
    .local v1, foundSong:Z
    const/4 v4, 0x0

    .line 509
    .local v4, reusePreviousOrder:Z
    :cond_28
    :goto_28
    :try_start_28
    iget-object v5, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_59

    if-nez v1, :cond_59

    .line 510
    iget-object v5, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/google/android/music/dl/DownloadOrder;

    move-object v3, v0

    .line 511
    invoke-virtual {v3, p1}, Lcom/google/android/music/dl/DownloadOrder;->equals(Lcom/google/android/music/dl/DownloadOrder;)Z

    move-result v5

    if-eqz v5, :cond_65

    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadOrder;->hasPlaybackPurpose()Z

    move-result v5

    if-eqz v5, :cond_65

    .line 512
    const/4 v1, 0x1

    .line 513
    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadOrder;->isReusableForStreaming()Z

    move-result v4

    .line 514
    if-eqz v4, :cond_65

    .line 517
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->hasExplicitPlaybackPurpose()Z

    move-result v5

    if-eqz v5, :cond_59

    .line 518
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/google/android/music/dl/DownloadOrder;->addPurpose(I)V

    .line 535
    :cond_59
    if-nez v4, :cond_8b

    .line 536
    iget-object v5, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    invoke-virtual {v5, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 537
    monitor-exit v6

    goto :goto_21

    .line 541
    :catchall_62
    move-exception v5

    monitor-exit v6
    :try_end_64
    .catchall {:try_start_28 .. :try_end_64} :catchall_62

    throw v5

    .line 524
    :cond_65
    :try_start_65
    iget-object v5, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/google/android/music/dl/DownloadOrder;

    move-object v3, v0

    .line 525
    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadOrder;->getFullPath()Ljava/io/File;

    move-result-object v2

    .line 526
    .local v2, localLocation:Ljava/io/File;
    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadOrder;->shouldSaveLocation()Z

    move-result v5

    if-nez v5, :cond_28

    if-eqz v2, :cond_28

    .line 528
    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v5

    sget-object v7, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->DOWNLOADING:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-eq v5, v7, :cond_28

    .line 529
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 530
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/google/android/music/dl/DownloadOrder;->clearLocalLocation(Z)V

    goto :goto_28

    .line 539
    .end local v2           #localLocation:Ljava/io/File;
    :cond_8b
    monitor-exit v6
    :try_end_8c
    .catchall {:try_start_65 .. :try_end_8c} :catchall_62

    move-object p1, v3

    goto :goto_21
.end method

.method private createOrders([Lcom/google/android/music/dl/ContentIdentifier;I)Ljava/util/List;
    .registers 21
    .parameter "songIds"
    .parameter "purpose"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/music/dl/ContentIdentifier;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/dl/DownloadOrder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 609
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/android/music/dl/DownloadManager;->mStreamingEnabled:Z

    if-nez v15, :cond_8

    .line 610
    const/4 v12, 0x0

    .line 655
    :cond_7
    :goto_7
    return-object v12

    .line 613
    :cond_8
    if-eqz p1, :cond_f

    move-object/from16 v0, p1

    array-length v15, v0

    if-nez v15, :cond_11

    .line 614
    :cond_f
    const/4 v12, 0x0

    goto :goto_7

    .line 617
    :cond_11
    new-instance v11, Ljava/util/HashMap;

    move-object/from16 v0, p1

    array-length v15, v0

    invoke-direct {v11, v15}, Ljava/util/HashMap;-><init>(I)V

    .line 619
    .local v11, playlistOrder:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/google/android/music/dl/ContentIdentifier;Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1a
    move-object/from16 v0, p1

    array-length v15, v0

    if-ge v3, v15, :cond_2d

    .line 620
    aget-object v15, p1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 623
    :cond_2d
    move-object/from16 v9, p1

    .line 625
    .local v9, localPlaylist:[Lcom/google/android/music/dl/ContentIdentifier;
    const/4 v15, 0x0

    aget-object v15, p1, v15

    invoke-virtual {v15}, Lcom/google/android/music/dl/ContentIdentifier;->isDefaultDomain()Z

    move-result v15

    if-eqz v15, :cond_95

    .line 626
    move-object/from16 v0, p1

    array-length v15, v0

    new-array v14, v15, [J

    .line 627
    .local v14, xIds:[J
    const/4 v3, 0x0

    :goto_3e
    move-object/from16 v0, p1

    array-length v15, v0

    if-ge v3, v15, :cond_4e

    .line 628
    aget-object v15, p1, v3

    invoke-virtual {v15}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v15

    aput-wide v15, v14, v3

    .line 627
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 630
    :cond_4e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/music/dl/DownloadManager;->mContext:Landroid/app/Service;

    invoke-static {v15}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/google/android/music/store/Store;->requiresDownloadManager([J)[J

    move-result-object v13

    .line 631
    .local v13, useDLMan:[J
    if-nez v13, :cond_5e

    .line 632
    const/4 v12, 0x0

    goto :goto_7

    .line 635
    :cond_5e
    array-length v15, v14

    new-array v9, v15, [Lcom/google/android/music/dl/ContentIdentifier;

    .line 636
    const/4 v3, 0x0

    :goto_62
    array-length v15, v9

    if-ge v3, v15, :cond_6b

    .line 637
    const/4 v15, 0x0

    aput-object v15, v9, v3

    .line 636
    add-int/lit8 v3, v3, 0x1

    goto :goto_62

    .line 639
    :cond_6b
    move-object v2, v13

    .local v2, arr$:[J
    array-length v7, v2

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_6e
    if-ge v4, v7, :cond_95

    aget-wide v5, v2, v4

    .line 640
    .local v5, id:J
    new-instance v15, Lcom/google/android/music/dl/ContentIdentifier;

    sget-object v16, Lcom/google/android/music/dl/ContentIdentifier$Domain;->DEFAULT:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    move-object/from16 v0, v16

    invoke-direct {v15, v5, v6, v0}, Lcom/google/android/music/dl/ContentIdentifier;-><init>(JLcom/google/android/music/dl/ContentIdentifier$Domain;)V

    invoke-virtual {v11, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    new-instance v16, Lcom/google/android/music/dl/ContentIdentifier;

    sget-object v17, Lcom/google/android/music/dl/ContentIdentifier$Domain;->DEFAULT:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v5, v6, v1}, Lcom/google/android/music/dl/ContentIdentifier;-><init>(JLcom/google/android/music/dl/ContentIdentifier$Domain;)V

    aput-object v16, v9, v15

    .line 639
    add-int/lit8 v4, v4, 0x1

    goto :goto_6e

    .line 644
    .end local v2           #arr$:[J
    .end local v4           #i$:I
    .end local v5           #id:J
    .end local v7           #len$:I
    .end local v13           #useDLMan:[J
    .end local v14           #xIds:[J
    :cond_95
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    array-length v15, v0

    invoke-direct {v12, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 645
    .local v12, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/music/dl/DownloadOrder;>;"
    move-object/from16 v2, p1

    .local v2, arr$:[Lcom/google/android/music/dl/ContentIdentifier;
    array-length v7, v2

    .restart local v7       #len$:I
    const/4 v4, 0x0

    .restart local v4       #i$:I
    :goto_a1
    if-ge v4, v7, :cond_7

    aget-object v8, v2, v4

    .line 646
    .local v8, localId:Lcom/google/android/music/dl/ContentIdentifier;
    if-eqz v8, :cond_b4

    .line 647
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v8, v1}, Lcom/google/android/music/dl/DownloadManager;->makeOrder(Lcom/google/android/music/dl/ContentIdentifier;I)Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v10

    .line 648
    .local v10, order:Lcom/google/android/music/dl/DownloadOrder;
    if-eqz v10, :cond_b7

    .line 649
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    .end local v10           #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_b4
    :goto_b4
    add-int/lit8 v4, v4, 0x1

    goto :goto_a1

    .line 650
    .restart local v10       #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_b7
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/android/music/dl/DownloadManager;->LOGV:Z

    if-eqz v15, :cond_b4

    .line 651
    const-string v15, "MusicDL"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unknown descritor: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b4
.end method

.method private makeOrder(Lcom/google/android/music/dl/ContentIdentifier;I)Lcom/google/android/music/dl/DownloadOrder;
    .registers 7
    .parameter "songId"
    .parameter "purpose"

    .prologue
    .line 280
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/music/dl/DownloadManager;->waitForStoreConnection()V

    .line 281
    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager;->mStoreService:Lcom/google/android/music/store/IStoreService;

    invoke-interface {v2, p1}, Lcom/google/android/music/store/IStoreService;->createDownloadOrder(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v1

    .line 282
    .local v1, order:Lcom/google/android/music/dl/DownloadOrder;
    invoke-virtual {v1, p2}, Lcom/google/android/music/dl/DownloadOrder;->changePurpose(I)V

    .line 283
    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager;->mOrderHandlerCreator:Lcom/google/android/music/dl/OrderHandlerCreator;

    invoke-virtual {v2, v1}, Lcom/google/android/music/dl/OrderHandlerCreator;->createHandler(Lcom/google/android/music/dl/DownloadOrder;)V

    .line 285
    invoke-virtual {v1}, Lcom/google/android/music/dl/DownloadOrder;->getHandler()Lcom/google/android/music/dl/DownloadHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/dl/DownloadManager;->mStoreService:Lcom/google/android/music/store/IStoreService;

    invoke-virtual {v2, v1, v3}, Lcom/google/android/music/dl/DownloadHandler;->setOrder(Lcom/google/android/music/dl/DownloadOrder;Lcom/google/android/music/store/IStoreService;)V

    .line 287
    invoke-virtual {v1}, Lcom/google/android/music/dl/DownloadOrder;->isRingtoneOnly()Z

    move-result v2

    if-nez v2, :cond_39

    .line 288
    invoke-virtual {v1}, Lcom/google/android/music/dl/DownloadOrder;->getFullPath()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 291
    invoke-virtual {v1}, Lcom/google/android/music/dl/DownloadOrder;->hasKeeponPurpose()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-virtual {v1}, Lcom/google/android/music/dl/DownloadOrder;->getLocalCopyType()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_3a

    .line 294
    :cond_34
    sget-object v2, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->COMPLETED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    invoke-virtual {v1, v2}, Lcom/google/android/music/dl/DownloadOrder;->setDownloadStatus(Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;)V

    .line 304
    .end local v1           #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_39
    :goto_39
    return-object v1

    .line 296
    .restart local v1       #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_3a
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/music/dl/DownloadOrder;->clearLocalLocation(Z)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3e} :catch_3f

    goto :goto_39

    .line 302
    .end local v1           #order:Lcom/google/android/music/dl/DownloadOrder;
    :catch_3f
    move-exception v0

    .line 303
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "MusicDL"

    const-string v3, "Remote store error"

    invoke-static {v2, v3}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const/4 v1, 0x0

    goto :goto_39
.end method

.method private notifyQueueCompleteListenersIfNoDownloads()V
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloader:Lcom/google/android/music/dl/DownloadQueueManager;

    invoke-interface {v0}, Lcom/google/android/music/dl/DownloadQueueManager;->isDownloading()Z

    move-result v0

    if-nez v0, :cond_b

    .line 226
    invoke-direct {p0}, Lcom/google/android/music/dl/DownloadManager;->startAsyncDownloads()V

    .line 229
    :cond_b
    return-void
.end method

.method private requestStopService()V
    .registers 4

    .prologue
    .line 864
    sget-object v0, Lcom/google/android/music/dl/DownloadManager;->sLogFile:Lcom/google/android/music/log/LogFile;

    if-eqz v0, :cond_d

    .line 865
    sget-object v0, Lcom/google/android/music/dl/DownloadManager;->sLogFile:Lcom/google/android/music/log/LogFile;

    const-string v1, "MusicDL"

    const-string v2, "requestStopService"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/log/LogFile;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    :cond_d
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mContext:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    .line 868
    return-void
.end method

.method private startAsyncDownloads()V
    .registers 3

    .prologue
    .line 462
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/dl/DownloadManager$5;

    invoke-direct {v1, p0}, Lcom/google/android/music/dl/DownloadManager$5;-><init>(Lcom/google/android/music/dl/DownloadManager;)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 467
    return-void
.end method

.method private streamSongImpl(Lcom/google/android/music/dl/DownloadOrder;Ljava/util/List;)Lcom/google/android/music/dl/DownloadState;
    .registers 19
    .parameter "order"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/music/dl/DownloadOrder;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/dl/DownloadOrder;",
            ">;)",
            "Lcom/google/android/music/dl/DownloadState;"
        }
    .end annotation

    .prologue
    .line 358
    .local p2, prefetchList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/dl/DownloadOrder;>;"
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/music/dl/DownloadManager;->LOGV:Z

    if-eqz v1, :cond_20

    .line 359
    const-string v1, "MusicDL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "streamSongImpl: order="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_20
    if-nez p1, :cond_24

    .line 363
    const/4 v1, 0x0

    .line 454
    :goto_23
    return-object v1

    .line 366
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/music/dl/DownloadManager;->LOGV:Z

    if-eqz v1, :cond_46

    .line 367
    const-string v1, "MusicDL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "streamSongImpl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/dl/DownloadOrder;->toDetailedString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/music/log/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :cond_46
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 372
    .local v12, origIdentity:J
    invoke-direct/range {p0 .. p1}, Lcom/google/android/music/dl/DownloadManager;->addNewOrderToPredictiveSongList(Lcom/google/android/music/dl/DownloadOrder;)Lcom/google/android/music/dl/DownloadOrder;

    move-result-object p1

    .line 375
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/dl/DownloadOrder;->requiresDownload()Z

    move-result v1

    if-eqz v1, :cond_178

    .line 376
    const v1, 0x12110

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/dl/ContentIdentifier;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/dl/DownloadOrder;->getRemoteId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 378
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/music/dl/DownloadManager;->LOGV:Z

    if-eqz v1, :cond_9d

    .line 379
    const-string v1, "MusicDL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Song ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") requires to be downloaded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :cond_9d
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/music/dl/DownloadManager;->mStreamingEnabled:Z

    if-nez v1, :cond_cb

    .line 382
    const-string v1, "MusicDL"

    const-string v2, "Fail download as streaming is not enabled"

    invoke-static {v1, v2}, Lcom/google/android/music/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/google/android/music/dl/DownloadOrder;->markDownloadFailed(I)V

    .line 384
    new-instance v1, Lcom/google/android/music/dl/DownloadState;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/dl/DownloadOrder;->getErrorType()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/dl/DownloadOrder;->getStreamUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/dl/DownloadOrder;->getDuration()J

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lcom/google/android/music/dl/DownloadState;-><init>(Lcom/google/android/music/dl/ContentIdentifier;Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;ILjava/lang/String;J)V

    goto/16 :goto_23

    .line 389
    :cond_cb
    const-wide/16 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/dl/DownloadOrder;->setSeekPoint(J)V

    .line 391
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v14, prefetchRequireDownload:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/dl/DownloadOrder;>;"
    if-eqz p2, :cond_130

    .line 393
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    monitor-enter v2

    .line 394
    :try_start_de
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 395
    .local v10, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/dl/DownloadOrder;>;"
    :cond_e2
    :goto_e2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ff

    .line 396
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/music/dl/DownloadOrder;

    .line 397
    .local v11, o:Lcom/google/android/music/dl/DownloadOrder;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    invoke-virtual {v1, v11}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e2

    .line 398
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_e2

    .line 401
    .end local v10           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/dl/DownloadOrder;>;"
    .end local v11           #o:Lcom/google/android/music/dl/DownloadOrder;
    :catchall_fc
    move-exception v1

    monitor-exit v2
    :try_end_fe
    .catchall {:try_start_de .. :try_end_fe} :catchall_fc

    throw v1

    .restart local v10       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/dl/DownloadOrder;>;"
    :cond_ff
    :try_start_ff
    monitor-exit v2
    :try_end_100
    .catchall {:try_start_ff .. :try_end_100} :catchall_fc

    .line 403
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_130

    .line 404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    monitor-enter v2

    .line 405
    :try_start_10b
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_10f
    :goto_10f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/music/dl/DownloadOrder;

    .line 406
    .restart local v11       #o:Lcom/google/android/music/dl/DownloadOrder;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    invoke-virtual {v1, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 410
    invoke-virtual {v11}, Lcom/google/android/music/dl/DownloadOrder;->requiresDownload()Z

    move-result v1

    if-eqz v1, :cond_10f

    .line 411
    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10f

    .line 415
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v11           #o:Lcom/google/android/music/dl/DownloadOrder;
    :catchall_12c
    move-exception v1

    monitor-exit v2
    :try_end_12e
    .catchall {:try_start_10b .. :try_end_12e} :catchall_12c

    throw v1

    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_12f
    :try_start_12f
    monitor-exit v2
    :try_end_130
    .catchall {:try_start_12f .. :try_end_130} :catchall_12c

    .line 418
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/dl/DownloadOrder;>;"
    :cond_130
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/dl/DownloadManager;->mDownloader:Lcom/google/android/music/dl/DownloadQueueManager;

    move-object/from16 v0, p1

    invoke-interface {v1, v0, v14}, Lcom/google/android/music/dl/DownloadQueueManager;->stream(Lcom/google/android/music/dl/DownloadOrder;Ljava/util/List;)V

    .line 419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/dl/DownloadManager;->mStreamingServer:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v2

    .line 420
    :try_start_13e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/dl/DownloadManager;->startStreamer()V

    .line 421
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/dl/DownloadManager;->mStreamingServer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/dl/stream/StreamingHttpServer;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/google/android/music/dl/stream/StreamingHttpServer;->getUri(Lcom/google/android/music/dl/DownloadOrder;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/google/android/music/dl/DownloadOrder;->setStreamUrl(Ljava/lang/String;)V

    .line 422
    monitor-exit v2
    :try_end_157
    .catchall {:try_start_13e .. :try_end_157} :catchall_175

    .line 452
    .end local v14           #prefetchRequireDownload:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/dl/DownloadOrder;>;"
    :goto_157
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 454
    new-instance v1, Lcom/google/android/music/dl/DownloadState;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/dl/DownloadOrder;->getErrorType()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/dl/DownloadOrder;->getStreamUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/dl/DownloadOrder;->getDuration()J

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lcom/google/android/music/dl/DownloadState;-><init>(Lcom/google/android/music/dl/ContentIdentifier;Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;ILjava/lang/String;J)V

    goto/16 :goto_23

    .line 422
    .restart local v14       #prefetchRequireDownload:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/dl/DownloadOrder;>;"
    :catchall_175
    move-exception v1

    :try_start_176
    monitor-exit v2
    :try_end_177
    .catchall {:try_start_176 .. :try_end_177} :catchall_175

    throw v1

    .line 425
    .end local v14           #prefetchRequireDownload:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/dl/DownloadOrder;>;"
    :cond_178
    const v1, 0x12110

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/dl/ContentIdentifier;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/dl/DownloadOrder;->getRemoteId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 427
    const-string v1, "MusicDL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event logging MUSIC_START_PLAYBACK_REQUESTED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/dl/DownloadOrder;->getRemoteId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": cache hit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/music/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/music/dl/DownloadManager;->LOGV:Z

    if-eqz v1, :cond_1eb

    const-string v1, "MusicDL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Song already downloaded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_1eb
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/dl/DownloadOrder;->getFullPath()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/google/android/music/dl/DownloadOrder;->setStreamUrl(Ljava/lang/String;)V

    .line 433
    const/4 v9, 0x1

    .line 434
    .local v9, isAwaitingStreamingEmpty:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    monitor-enter v2

    .line 435
    :try_start_1fe
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_206
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_219

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/music/dl/DownloadOrder;

    .line 436
    .restart local v11       #o:Lcom/google/android/music/dl/DownloadOrder;
    invoke-virtual {v11}, Lcom/google/android/music/dl/DownloadOrder;->hasPlaybackPurpose()Z

    move-result v1

    if-eqz v1, :cond_206

    .line 437
    const/4 v9, 0x0

    .line 441
    .end local v11           #o:Lcom/google/android/music/dl/DownloadOrder;
    :cond_219
    monitor-exit v2
    :try_end_21a
    .catchall {:try_start_1fe .. :try_end_21a} :catchall_23e

    .line 442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/dl/DownloadManager;->mStreamingServer:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v2

    .line 443
    :try_start_21f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/dl/DownloadManager;->mStreamingServer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/music/dl/stream/StreamingHttpServer;

    .line 444
    .local v15, streamingServer:Lcom/google/android/music/dl/stream/StreamingHttpServer;
    if-eqz v9, :cond_238

    if-eqz v15, :cond_238

    .line 445
    invoke-virtual {v15}, Lcom/google/android/music/dl/stream/StreamingHttpServer;->shutdown()V

    .line 446
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/dl/DownloadManager;->mStreamingServer:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 448
    :cond_238
    monitor-exit v2

    goto/16 :goto_157

    .end local v15           #streamingServer:Lcom/google/android/music/dl/stream/StreamingHttpServer;
    :catchall_23b
    move-exception v1

    monitor-exit v2
    :try_end_23d
    .catchall {:try_start_21f .. :try_end_23d} :catchall_23b

    throw v1

    .line 441
    .end local v8           #i$:Ljava/util/Iterator;
    :catchall_23e
    move-exception v1

    :try_start_23f
    monitor-exit v2
    :try_end_240
    .catchall {:try_start_23f .. :try_end_240} :catchall_23e

    throw v1
.end method

.method private updateDownloaderQueue(Ljava/util/List;)I
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/dl/DownloadOrder;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, orders:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/dl/DownloadOrder;>;"
    const/4 v6, 0x0

    .line 552
    iget-boolean v7, p0, Lcom/google/android/music/dl/DownloadManager;->LOGV:Z

    if-eqz v7, :cond_c

    .line 553
    const-string v7, "MusicDL"

    const-string v8, "updateDownloaderQueue"

    invoke-static {v7, v8}, Lcom/google/android/music/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    :cond_c
    const/4 v3, 0x0

    .line 556
    .local v3, numberOfDownloads:I
    if-eqz p1, :cond_15

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 605
    :cond_15
    :goto_15
    return v6

    .line 559
    :cond_16
    iget-boolean v7, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingEnabled:Z

    if-eqz v7, :cond_15

    .line 563
    iget-object v7, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    monitor-enter v7

    .line 564
    :try_start_1d
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 565
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/dl/DownloadOrder;>;"
    :cond_21
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3c

    .line 566
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/music/dl/DownloadOrder;

    .line 567
    .local v4, order:Lcom/google/android/music/dl/DownloadOrder;
    iget-object v8, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    invoke-virtual {v8, v4}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 568
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_21

    .line 571
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/dl/DownloadOrder;>;"
    .end local v4           #order:Lcom/google/android/music/dl/DownloadOrder;
    :catchall_39
    move-exception v6

    monitor-exit v7
    :try_end_3b
    .catchall {:try_start_1d .. :try_end_3b} :catchall_39

    throw v6

    .restart local v2       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/dl/DownloadOrder;>;"
    :cond_3c
    :try_start_3c
    monitor-exit v7
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_39

    .line 573
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_15

    .line 577
    const/4 v1, 0x1

    .line 578
    .local v1, isAwaitingStreamingEmpty:Z
    iget-object v7, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    monitor-enter v7

    .line 579
    :try_start_47
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_4b
    :goto_4b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/music/dl/DownloadOrder;

    .line 580
    .restart local v4       #order:Lcom/google/android/music/dl/DownloadOrder;
    iget-object v6, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    invoke-virtual {v6, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 584
    invoke-virtual {v4}, Lcom/google/android/music/dl/DownloadOrder;->requiresDownload()Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 585
    iget-object v6, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloader:Lcom/google/android/music/dl/DownloadQueueManager;

    invoke-interface {v6, v4}, Lcom/google/android/music/dl/DownloadQueueManager;->download(Lcom/google/android/music/dl/DownloadOrder;)V

    .line 586
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    .line 589
    .end local v4           #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_6a
    iget-object v6, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_70
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_83

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/music/dl/DownloadOrder;

    .line 590
    .restart local v4       #order:Lcom/google/android/music/dl/DownloadOrder;
    invoke-virtual {v4}, Lcom/google/android/music/dl/DownloadOrder;->hasPlaybackPurpose()Z

    move-result v6

    if-eqz v6, :cond_70

    .line 591
    const/4 v1, 0x0

    .line 595
    .end local v4           #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_83
    monitor-exit v7
    :try_end_84
    .catchall {:try_start_47 .. :try_end_84} :catchall_a0

    .line 597
    iget-object v7, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingServer:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v7

    .line 598
    :try_start_87
    iget-object v6, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingServer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/music/dl/stream/StreamingHttpServer;

    .line 599
    .local v5, streamingServer:Lcom/google/android/music/dl/stream/StreamingHttpServer;
    if-eqz v1, :cond_9c

    if-eqz v5, :cond_9c

    .line 600
    invoke-virtual {v5}, Lcom/google/android/music/dl/stream/StreamingHttpServer;->shutdown()V

    .line 601
    iget-object v6, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingServer:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 603
    :cond_9c
    monitor-exit v7
    :try_end_9d
    .catchall {:try_start_87 .. :try_end_9d} :catchall_a3

    move v6, v3

    .line 605
    goto/16 :goto_15

    .line 595
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v5           #streamingServer:Lcom/google/android/music/dl/stream/StreamingHttpServer;
    :catchall_a0
    move-exception v6

    :try_start_a1
    monitor-exit v7
    :try_end_a2
    .catchall {:try_start_a1 .. :try_end_a2} :catchall_a0

    throw v6

    .line 603
    .restart local v0       #i$:Ljava/util/Iterator;
    :catchall_a3
    move-exception v6

    :try_start_a4
    monitor-exit v7
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a3

    throw v6
.end method

.method private updateQueueForRingtoneOrKeepon()I
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 874
    sget-object v1, Lcom/google/android/music/dl/DownloadManager;->sLogFile:Lcom/google/android/music/log/LogFile;

    if-eqz v1, :cond_e

    .line 875
    sget-object v1, Lcom/google/android/music/dl/DownloadManager;->sLogFile:Lcom/google/android/music/log/LogFile;

    const-string v2, "MusicDL"

    const-string v3, "updateQueueForRingtoneOrKeepon"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/log/LogFile;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    :cond_e
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mRingtoneScheduler:Lcom/google/android/music/dl/RingtoneScheduler;

    invoke-virtual {v1}, Lcom/google/android/music/dl/RingtoneScheduler;->getNextDownload()[Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v1

    .line 880
    if-eqz v1, :cond_24

    array-length v2, v1

    if-lez v2, :cond_24

    .line 881
    const/16 v0, 0x8

    invoke-direct {p0, v1, v0}, Lcom/google/android/music/dl/DownloadManager;->createOrders([Lcom/google/android/music/dl/ContentIdentifier;I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/music/dl/DownloadManager;->updateDownloaderQueue(Ljava/util/List;)I

    move-result v0

    .line 896
    :cond_23
    :goto_23
    return v0

    .line 884
    :cond_24
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mKeepOnDeviceScheduler:Lcom/google/android/music/dl/KeepOnDeviceScheduler;

    invoke-virtual {v1}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->getNextDownload()[Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v1

    .line 885
    if-eqz v1, :cond_2f

    array-length v2, v1

    if-nez v2, :cond_3d

    .line 886
    :cond_2f
    sget-object v1, Lcom/google/android/music/dl/DownloadManager;->sLogFile:Lcom/google/android/music/log/LogFile;

    if-eqz v1, :cond_23

    .line 887
    sget-object v1, Lcom/google/android/music/dl/DownloadManager;->sLogFile:Lcom/google/android/music/log/LogFile;

    const-string v2, "MusicDL"

    const-string v3, "The download queue is empty."

    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/log/LogFile;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    .line 891
    :cond_3d
    sget-object v2, Lcom/google/android/music/dl/DownloadManager;->sLogFile:Lcom/google/android/music/log/LogFile;

    if-eqz v2, :cond_57

    .line 892
    sget-object v2, Lcom/google/android/music/dl/DownloadManager;->sLogFile:Lcom/google/android/music/log/LogFile;

    const-string v3, "MusicDL"

    const-string v4, "updateQueueForRingtoneOrKeepon: Schedule keepon downloads: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/android/music/dl/ContentIdentifier;->idsToString([Lcom/google/android/music/dl/ContentIdentifier;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/music/log/LogFile;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    :cond_57
    const/4 v0, 0x4

    invoke-direct {p0, v1, v0}, Lcom/google/android/music/dl/DownloadManager;->createOrders([Lcom/google/android/music/dl/ContentIdentifier;I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/music/dl/DownloadManager;->updateDownloaderQueue(Ljava/util/List;)I

    move-result v0

    goto :goto_23
.end method

.method private waitForStoreConnection()V
    .registers 4

    .prologue
    .line 197
    monitor-enter p0

    .line 198
    :try_start_1
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mStoreService:Lcom/google/android/music/store/IStoreService;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_16

    if-nez v1, :cond_a

    .line 200
    const-wide/16 v1, 0x2710

    :try_start_7
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_16
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_a} :catch_19

    .line 205
    :cond_a
    :goto_a
    :try_start_a
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mStoreService:Lcom/google/android/music/store/IStoreService;

    if-nez v1, :cond_24

    .line 206
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not connect to store service"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_16

    throw v1

    .line 201
    :catch_19
    move-exception v0

    .line 202
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_1a
    const-string v1, "MusicDL"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 208
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_16

    .line 209
    return-void
.end method


# virtual methods
.method public addDownloadProgressListener(Lcom/google/android/music/dl/ContentIdentifier;Lcom/google/android/music/dl/IDownloadProgressListener;)Z
    .registers 4
    .parameter "songId"
    .parameter "listener"

    .prologue
    .line 811
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/dl/BufferProgress;->addDownloadProgressListener(Lcom/google/android/music/dl/ContentIdentifier;Lcom/google/android/music/dl/IDownloadProgressListener;)Z

    move-result v0

    return v0
.end method

.method public getAvailableFreeSpace()J
    .registers 3

    .prologue
    .line 856
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;

    invoke-virtual {v0}, Lcom/google/android/music/dl/cache/CacheManager;->getFreeSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentDownloads()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/dl/DownloadOrder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 722
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloader:Lcom/google/android/music/dl/DownloadQueueManager;

    invoke-interface {v0}, Lcom/google/android/music/dl/DownloadQueueManager;->getCurrentDownloads()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDebugInfo(Lcom/google/android/music/dl/ContentIdentifier;)Ljava/lang/String;
    .registers 9
    .parameter "songId"

    .prologue
    .line 819
    const/4 v0, 0x0

    .line 821
    .local v0, downloadOrder:Lcom/google/android/music/dl/DownloadOrder;
    if-nez p1, :cond_5

    .line 822
    const/4 v5, 0x0

    .line 852
    :goto_4
    return-object v5

    .line 824
    :cond_5
    iget-object v6, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    monitor-enter v6

    .line 825
    :try_start_8
    iget-object v5, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/dl/DownloadOrder;

    .line 826
    .local v3, order:Lcom/google/android/music/dl/DownloadOrder;
    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/google/android/music/dl/ContentIdentifier;->equals(Lcom/google/android/music/dl/ContentIdentifier;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 827
    move-object v0, v3

    .line 831
    .end local v3           #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_25
    monitor-exit v6
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_39

    .line 833
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Streaming Status\n"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 834
    .local v4, status:Ljava/lang/StringBuilder;
    if-nez v0, :cond_3c

    .line 835
    const-string v5, "Not streaming"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    :cond_34
    :goto_34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 831
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #status:Ljava/lang/StringBuilder;
    :catchall_39
    move-exception v5

    :try_start_3a
    monitor-exit v6
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v5

    .line 836
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #status:Ljava/lang/StringBuilder;
    :cond_3c
    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v5

    sget-object v6, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->NOT_STARTED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne v5, v6, :cond_4a

    .line 837
    const-string v5, "Waiting for download to start"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34

    .line 839
    :cond_4a
    const-string v5, "Req bitrate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    :try_start_4f
    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadOrder;->getRecommendedBitrate()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_56
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4f .. :try_end_56} :catch_69

    .line 845
    :goto_56
    const-string v5, "kbps\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v5

    sget-object v6, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->COMPLETED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne v5, v6, :cond_70

    .line 847
    const-string v5, "Download complete"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34

    .line 842
    :catch_69
    move-exception v1

    .line 843
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "TBD"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_56

    .line 848
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :cond_70
    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v5

    sget-object v6, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne v5, v6, :cond_34

    .line 849
    const-string v5, "Download failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34
.end method

.method public getDownload(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadOrder;
    .registers 4
    .parameter "songId"

    .prologue
    .line 710
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloader:Lcom/google/android/music/dl/DownloadQueueManager;

    invoke-interface {v1, p1}, Lcom/google/android/music/dl/DownloadQueueManager;->getDownload(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v0

    .line 711
    .local v0, order:Lcom/google/android/music/dl/DownloadOrder;
    if-nez v0, :cond_c

    .line 712
    invoke-virtual {p0, p1}, Lcom/google/android/music/dl/DownloadManager;->getStreamingDownload(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v0

    .line 714
    :cond_c
    return-object v0
.end method

.method public getPartialDownload(Lcom/google/android/music/dl/ContentIdentifier;J)Lcom/google/android/music/dl/DownloadOrder;
    .registers 19
    .parameter "songId"
    .parameter "startMs"

    .prologue
    .line 735
    if-eqz p1, :cond_24

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/dl/ContentIdentifier;->isSharedDomain()Z

    move-result v9

    if-eqz v9, :cond_24

    .line 736
    const-string v9, "MusicDL"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Should not seek shared song: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    const/4 v8, 0x0

    .line 792
    :cond_23
    :goto_23
    return-object v8

    .line 740
    :cond_24
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/music/dl/DownloadManager;->getStreamingDownload(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v8

    .line 741
    .local v8, order:Lcom/google/android/music/dl/DownloadOrder;
    if-nez v8, :cond_45

    .line 742
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Should not be requesting a range for a file which never started downloading: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 745
    :cond_45
    invoke-virtual {v8}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v9

    sget-object v10, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->DOWNLOADING:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne v9, v10, :cond_bc

    const/4 v7, 0x1

    .line 753
    .local v7, isDownloading:Z
    :goto_4e
    invoke-static {}, Lcom/google/android/music/dl/NetworkMonitor;->getRecommendedBitrate()I

    move-result v9

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v9, v9

    const-wide/16 v11, 0x5

    mul-long/2addr v9, v11

    const-wide/16 v11, 0x8

    div-long v2, v9, v11

    .line 758
    .local v2, bytesWillDownload:J
    if-eqz v7, :cond_be

    invoke-virtual {v8}, Lcom/google/android/music/dl/DownloadOrder;->getCompleted()J

    move-result-wide v9

    add-long v5, v9, v2

    .line 761
    .local v5, completedRange:J
    :goto_64
    invoke-virtual {v8}, Lcom/google/android/music/dl/DownloadOrder;->getSeekPoint()J

    move-result-wide v9

    long-to-float v9, v9

    long-to-float v10, v5

    invoke-virtual {v8}, Lcom/google/android/music/dl/DownloadOrder;->getDuration()J

    move-result-wide v11

    invoke-virtual {v8}, Lcom/google/android/music/dl/DownloadOrder;->getSeekPoint()J

    move-result-wide v13

    sub-long/2addr v11, v13

    long-to-float v11, v11

    mul-float/2addr v10, v11

    invoke-virtual {v8}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadLength()J

    move-result-wide v11

    long-to-float v11, v11

    div-float/2addr v10, v11

    add-float v4, v9, v10

    .line 766
    .local v4, completedDuration:F
    invoke-virtual {v8}, Lcom/google/android/music/dl/DownloadOrder;->getSeekPoint()J

    move-result-wide v9

    cmp-long v9, p2, v9

    if-ltz v9, :cond_c3

    move-wide/from16 v0, p2

    long-to-float v9, v0

    cmpg-float v9, v9, v4

    if-gez v9, :cond_c3

    .line 767
    iget-boolean v9, p0, Lcom/google/android/music/dl/DownloadManager;->LOGV:Z

    if-eqz v9, :cond_23

    .line 768
    const-string v9, "MusicDL"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Downloaded past requested seek point ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p2

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), not restarting download"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_23

    .line 745
    .end local v2           #bytesWillDownload:J
    .end local v4           #completedDuration:F
    .end local v5           #completedRange:J
    .end local v7           #isDownloading:Z
    :cond_bc
    const/4 v7, 0x0

    goto :goto_4e

    .line 758
    .restart local v2       #bytesWillDownload:J
    .restart local v7       #isDownloading:Z
    :cond_be
    invoke-virtual {v8}, Lcom/google/android/music/dl/DownloadOrder;->getCompleted()J

    move-result-wide v5

    goto :goto_64

    .line 774
    .restart local v4       #completedDuration:F
    .restart local v5       #completedRange:J
    :cond_c3
    iget-object v10, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    monitor-enter v10

    .line 775
    :try_start_c6
    iget-object v9, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v9

    if-eqz v9, :cond_d7

    iget-object v9, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eq v9, v8, :cond_ff

    .line 776
    :cond_d7
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "requesting range download for: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " but the mPredictiveSongList list is: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 788
    :catchall_fc
    move-exception v9

    monitor-exit v10
    :try_end_fe
    .catchall {:try_start_c6 .. :try_end_fe} :catchall_fc

    throw v9

    .line 779
    :cond_ff
    :try_start_ff
    iget-object v9, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 781
    iget-boolean v9, p0, Lcom/google/android/music/dl/DownloadManager;->LOGV:Z

    if-eqz v9, :cond_122

    .line 782
    const-string v9, "MusicDL"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Need to restart download for requested seek: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p2

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    :cond_122
    const/4 v9, 0x1

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v9}, Lcom/google/android/music/dl/DownloadManager;->makeOrder(Lcom/google/android/music/dl/ContentIdentifier;I)Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v8

    .line 784
    if-nez v8, :cond_130

    .line 785
    const/4 v9, 0x0

    monitor-exit v10

    move-object v8, v9

    goto/16 :goto_23

    .line 787
    :cond_130
    iget-object v9, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    invoke-virtual {v9, v8}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 788
    monitor-exit v10
    :try_end_136
    .catchall {:try_start_ff .. :try_end_136} :catchall_fc

    .line 789
    invoke-virtual {v8}, Lcom/google/android/music/dl/DownloadOrder;->clearCompleted()V

    .line 790
    move-wide/from16 v0, p2

    invoke-virtual {v8, v0, v1}, Lcom/google/android/music/dl/DownloadOrder;->setSeekPoint(J)V

    .line 791
    iget-object v9, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloader:Lcom/google/android/music/dl/DownloadQueueManager;

    invoke-interface {v9, v8}, Lcom/google/android/music/dl/DownloadQueueManager;->replaceCurrentStream(Lcom/google/android/music/dl/DownloadOrder;)V

    goto/16 :goto_23
.end method

.method public getStreamingDownload(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadOrder;
    .registers 9
    .parameter "songId"

    .prologue
    const/4 v3, 0x0

    .line 659
    if-nez p1, :cond_5

    move-object v2, v3

    .line 677
    :goto_4
    return-object v2

    .line 662
    :cond_5
    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    monitor-enter v4

    .line 663
    :try_start_8
    iget-object v5, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 664
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/dl/DownloadOrder;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_53

    .line 665
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/dl/DownloadOrder;

    .line 666
    .local v2, order:Lcom/google/android/music/dl/DownloadOrder;
    invoke-virtual {v2}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/google/android/music/dl/ContentIdentifier;->equals(Lcom/google/android/music/dl/ContentIdentifier;)Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-virtual {v2}, Lcom/google/android/music/dl/DownloadOrder;->hasPlaybackPurpose()Z

    move-result v5

    if-eqz v5, :cond_50

    .line 667
    if-eqz v0, :cond_4b

    .line 668
    const-string v3, "MusicDL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DownloadManager.getStreamingDownload("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") did not return the first item from mPredictiveSongList"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    :cond_4b
    monitor-exit v4

    goto :goto_4

    .line 674
    .end local v0           #i:I
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/dl/DownloadOrder;>;"
    .end local v2           #order:Lcom/google/android/music/dl/DownloadOrder;
    :catchall_4d
    move-exception v3

    monitor-exit v4
    :try_end_4f
    .catchall {:try_start_8 .. :try_end_4f} :catchall_4d

    throw v3

    .line 664
    .restart local v0       #i:I
    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/dl/DownloadOrder;>;"
    .restart local v2       #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 674
    .end local v2           #order:Lcom/google/android/music/dl/DownloadOrder;
    :cond_53
    :try_start_53
    monitor-exit v4
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_4d

    .line 675
    const-string v4, "MusicDL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DownloadManager.getStreamingDownload("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") could not find item in mPredictiveSongList"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 677
    goto :goto_4
.end method

.method public getStreamingDownloadState(Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadState;
    .registers 12
    .parameter "xId"

    .prologue
    const/4 v0, 0x0

    .line 681
    if-nez p1, :cond_4

    .line 692
    :goto_3
    return-object v0

    .line 684
    :cond_4
    iget-object v9, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    monitor-enter v9

    .line 685
    :try_start_7
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/music/dl/DownloadOrder;

    .line 686
    .local v8, order:Lcom/google/android/music/dl/DownloadOrder;
    invoke-virtual {v8}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/music/dl/ContentIdentifier;->equals(Lcom/google/android/music/dl/ContentIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 687
    new-instance v0, Lcom/google/android/music/dl/DownloadState;

    invoke-virtual {v8}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v2

    invoke-virtual {v8}, Lcom/google/android/music/dl/DownloadOrder;->getErrorType()I

    move-result v3

    invoke-virtual {v8}, Lcom/google/android/music/dl/DownloadOrder;->getStreamUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/google/android/music/dl/DownloadOrder;->getDuration()J

    move-result-wide v5

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/dl/DownloadState;-><init>(Lcom/google/android/music/dl/ContentIdentifier;Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;ILjava/lang/String;J)V

    monitor-exit v9

    goto :goto_3

    .line 691
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #order:Lcom/google/android/music/dl/DownloadOrder;
    :catchall_3b
    move-exception v0

    monitor-exit v9
    :try_end_3d
    .catchall {:try_start_7 .. :try_end_3d} :catchall_3b

    throw v0

    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_3e
    :try_start_3e
    monitor-exit v9
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3b

    goto :goto_3
.end method

.method public getTotalSpace()J
    .registers 3

    .prologue
    .line 860
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;

    invoke-virtual {v0}, Lcom/google/android/music/dl/cache/CacheManager;->getTotalSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public isDownloading()Z
    .registers 2

    .prologue
    .line 718
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloader:Lcom/google/android/music/dl/DownloadQueueManager;

    invoke-interface {v0}, Lcom/google/android/music/dl/DownloadQueueManager;->isDownloading()Z

    move-result v0

    return v0
.end method

.method public isKeepOnDownloaderOn()Z
    .registers 2

    .prologue
    .line 726
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mKeepOnDeviceScheduler:Lcom/google/android/music/dl/KeepOnDeviceScheduler;

    invoke-virtual {v0}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public logStreamingStatusEvent(Lcom/google/android/music/dl/ContentIdentifier;I)V
    .registers 7
    .parameter "songId"
    .parameter "event"

    .prologue
    .line 697
    if-nez p1, :cond_3

    .line 707
    :goto_2
    return-void

    .line 700
    :cond_3
    iget-object v3, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    monitor-enter v3

    .line 701
    :try_start_6
    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/dl/DownloadOrder;

    .line 702
    .local v1, order:Lcom/google/android/music/dl/DownloadOrder;
    invoke-virtual {v1}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/music/dl/ContentIdentifier;->equals(Lcom/google/android/music/dl/ContentIdentifier;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 703
    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager;->mContext:Landroid/app/Service;

    invoke-virtual {v1, v2, p2}, Lcom/google/android/music/dl/DownloadOrder;->logStatusEvent(Landroid/content/Context;I)V

    goto :goto_c

    .line 706
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #order:Lcom/google/android/music/dl/DownloadOrder;
    :catchall_28
    move-exception v2

    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_28

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2b
    :try_start_2b
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_28

    goto :goto_2
.end method

.method public notifyEnabledStateChanged(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 212
    if-eqz p1, :cond_5

    .line 213
    invoke-direct {p0}, Lcom/google/android/music/dl/DownloadManager;->notifyQueueCompleteListenersIfNoDownloads()V

    .line 215
    :cond_5
    return-void
.end method

.method public notifyQueueComplete()V
    .registers 4

    .prologue
    .line 901
    sget-object v0, Lcom/google/android/music/dl/DownloadManager;->sLogFile:Lcom/google/android/music/log/LogFile;

    if-eqz v0, :cond_d

    .line 902
    sget-object v0, Lcom/google/android/music/dl/DownloadManager;->sLogFile:Lcom/google/android/music/log/LogFile;

    const-string v1, "MusicDL"

    const-string v2, "notifyQueueComplete"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/log/LogFile;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    :cond_d
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    monitor-enter v1

    .line 905
    :try_start_10
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 906
    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 907
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadOrder;->isKeeponOnly()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 908
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_16

    .line 911
    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_10 .. :try_end_2e} :catchall_2c

    throw v0

    :cond_2f
    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2c

    .line 912
    const/4 v0, 0x0

    .line 916
    invoke-virtual {p0}, Lcom/google/android/music/dl/DownloadManager;->isDownloading()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 917
    invoke-direct {p0}, Lcom/google/android/music/dl/DownloadManager;->updateQueueForRingtoneOrKeepon()I

    move-result v0

    .line 920
    :cond_3b
    if-nez v0, :cond_47

    .line 921
    invoke-virtual {p0}, Lcom/google/android/music/dl/DownloadManager;->isDownloading()Z

    move-result v0

    if-nez v0, :cond_46

    .line 923
    invoke-direct {p0}, Lcom/google/android/music/dl/DownloadManager;->requestStopService()V

    .line 940
    :cond_46
    :goto_46
    return-void

    .line 930
    :cond_47
    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadManager;->mServiceSelfStarted:Z

    if-nez v0, :cond_46

    .line 931
    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadManager;->LOGV:Z

    if-eqz v0, :cond_56

    .line 932
    const-string v0, "MusicDL"

    const-string v1, "Self start the service"

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    :cond_56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/dl/DownloadManager;->mServiceSelfStarted:Z

    .line 935
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mContext:Landroid/app/Service;

    const-class v2, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 936
    const-string v1, "com.google.android.music.SELF_START"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 937
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mContext:Landroid/app/Service;

    invoke-virtual {v1, v0}, Landroid/app/Service;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_46
.end method

.method protected onCreate()V
    .registers 8

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mStoreSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mContext:Landroid/app/Service;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.music.STORE_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/utils/SafeServiceConnection;->bindService(Landroid/content/Context;Landroid/content/Intent;I)Z

    .line 115
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mContext:Landroid/app/Service;

    invoke-static {v0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 116
    new-instance v0, Lcom/google/android/music/dl/BufferProgress;

    invoke-direct {v0, p0}, Lcom/google/android/music/dl/BufferProgress;-><init>(Lcom/google/android/music/dl/DownloadManager;)V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    .line 118
    new-instance v0, Lcom/google/android/music/dl/OrderHandlerCreator;

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mContext:Landroid/app/Service;

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/dl/OrderHandlerCreator;-><init>(Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;)V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mOrderHandlerCreator:Lcom/google/android/music/dl/OrderHandlerCreator;

    .line 119
    new-instance v0, Lcom/google/android/music/dl/cache/CacheManager;

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mContext:Landroid/app/Service;

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v3, p0, Lcom/google/android/music/dl/DownloadManager;->mDoNotDelete:Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/dl/cache/CacheManager;-><init>(Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;)V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;

    .line 120
    new-instance v0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mContext:Landroid/app/Service;

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v3, p0, Lcom/google/android/music/dl/DownloadManager;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;-><init>(Landroid/app/Service;Lcom/google/android/music/jumper/MusicPreferences;Lcom/google/android/music/dl/BufferProgress;)V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mKeepOnDeviceScheduler:Lcom/google/android/music/dl/KeepOnDeviceScheduler;

    .line 122
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mKeepOnDeviceScheduler:Lcom/google/android/music/dl/KeepOnDeviceScheduler;

    invoke-virtual {v0, p0}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->addStateChangedListener(Lcom/google/android/music/dl/KeepOnDeviceScheduler$KeepOnEnabledStateListener;)V

    .line 123
    new-instance v0, Lcom/google/android/music/dl/RingtoneScheduler;

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mContext:Landroid/app/Service;

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/dl/RingtoneScheduler;-><init>(Landroid/app/Service;Lcom/google/android/music/dl/BufferProgress;)V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mRingtoneScheduler:Lcom/google/android/music/dl/RingtoneScheduler;

    .line 124
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mRingtoneScheduler:Lcom/google/android/music/dl/RingtoneScheduler;

    invoke-virtual {v0, p0}, Lcom/google/android/music/dl/RingtoneScheduler;->addStateChangedListener(Lcom/google/android/music/dl/RingtoneScheduler$RingtoneDownloadEnabledStateListener;)V

    .line 125
    new-instance v0, Lcom/google/android/music/NetworkMonitorServiceConnection;

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    invoke-direct {v0, v1}, Lcom/google/android/music/NetworkMonitorServiceConnection;-><init>(Lcom/google/android/music/dl/IStreamabilityChangeListener;)V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    .line 127
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mContext:Landroid/app/Service;

    invoke-virtual {v0, v1}, Lcom/google/android/music/NetworkMonitorServiceConnection;->bindToService(Landroid/content/Context;)V

    .line 128
    new-instance v0, Lcom/google/android/music/dl/DownloadQueueManagerImpl;

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mContext:Landroid/app/Service;

    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager;->mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;

    iget-object v3, p0, Lcom/google/android/music/dl/DownloadManager;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    iget-object v4, p0, Lcom/google/android/music/dl/DownloadManager;->mDoNotDelete:Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;

    iget-object v5, p0, Lcom/google/android/music/dl/DownloadManager;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v6, p0, Lcom/google/android/music/dl/DownloadManager;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/dl/DownloadQueueManagerImpl;-><init>(Landroid/content/Context;Lcom/google/android/music/dl/cache/CacheManager;Lcom/google/android/music/dl/BufferProgress;Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;Lcom/google/android/music/jumper/MusicPreferences;Lcom/google/android/music/NetworkMonitorServiceConnection;)V

    iput-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloader:Lcom/google/android/music/dl/DownloadQueueManager;

    .line 131
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloader:Lcom/google/android/music/dl/DownloadQueueManager;

    invoke-interface {v0, p0}, Lcom/google/android/music/dl/DownloadQueueManager;->setEmptyQueueListener(Lcom/google/android/music/dl/DownloadQueueManager$OnEmptyQueueListener;)V

    .line 132
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloader:Lcom/google/android/music/dl/DownloadQueueManager;

    invoke-interface {v0}, Lcom/google/android/music/dl/DownloadQueueManager;->start()V

    .line 133
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/google/android/music/dl/DownloadManager;->LOGV:Z

    if-eqz v0, :cond_b

    .line 137
    const-string v0, "MusicDL"

    const-string v1, "DownloadManager.onDestroy"

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_b
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mDownloader:Lcom/google/android/music/dl/DownloadQueueManager;

    invoke-interface {v0}, Lcom/google/android/music/dl/DownloadQueueManager;->shutdown()V

    .line 143
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/dl/DownloadManager$1;

    invoke-direct {v1, p0}, Lcom/google/android/music/dl/DownloadManager$1;-><init>(Lcom/google/android/music/dl/DownloadManager;)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 157
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mStoreSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mContext:Landroid/app/Service;

    invoke-virtual {v0, v1}, Lcom/google/android/music/utils/SafeServiceConnection;->unbindService(Landroid/content/Context;)V

    .line 158
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mCacheManager:Lcom/google/android/music/dl/cache/CacheManager;

    invoke-virtual {v0}, Lcom/google/android/music/dl/cache/CacheManager;->onDestroy()V

    .line 160
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    invoke-virtual {v0}, Lcom/google/android/music/dl/BufferProgress;->onDestroy()V

    .line 162
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mKeepOnDeviceScheduler:Lcom/google/android/music/dl/KeepOnDeviceScheduler;

    invoke-virtual {v0}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->onDestroy()V

    .line 163
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mRingtoneScheduler:Lcom/google/android/music/dl/RingtoneScheduler;

    invoke-virtual {v0}, Lcom/google/android/music/dl/RingtoneScheduler;->onDestroy()V

    .line 165
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mContext:Landroid/app/Service;

    invoke-virtual {v0, v1}, Lcom/google/android/music/NetworkMonitorServiceConnection;->unbindFromService(Landroid/content/Context;)V

    .line 166
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 167
    return-void
.end method

.method public onEmptyQueue(Lcom/google/android/music/dl/DownloadQueueManager;)V
    .registers 2
    .parameter "downloader"

    .prologue
    .line 943
    invoke-virtual {p0}, Lcom/google/android/music/dl/DownloadManager;->notifyQueueComplete()V

    .line 944
    return-void
.end method

.method public removeDownloadProgressListener(Lcom/google/android/music/dl/IDownloadProgressListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 815
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager;->mBufferProgress:Lcom/google/android/music/dl/BufferProgress;

    invoke-virtual {v0, p1}, Lcom/google/android/music/dl/BufferProgress;->removeDownloadProgressListener(Lcom/google/android/music/dl/IDownloadProgressListener;)V

    .line 816
    return-void
.end method

.method protected startStreamer()V
    .registers 5

    .prologue
    .line 798
    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingServer:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v2

    .line 800
    :try_start_3
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingServer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_15

    .line 801
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mStreamingServer:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Lcom/google/android/music/dl/stream/StreamingHttpServer;

    invoke-direct {v3, p0}, Lcom/google/android/music/dl/stream/StreamingHttpServer;-><init>(Lcom/google/android/music/dl/DownloadManager;)V

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_22
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_15} :catch_17

    .line 806
    :cond_15
    :goto_15
    :try_start_15
    monitor-exit v2

    .line 807
    return-void

    .line 803
    :catch_17
    move-exception v0

    .line 804
    .local v0, e:Ljava/io/IOException;
    const-string v1, "MusicDL"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15

    .line 806
    .end local v0           #e:Ljava/io/IOException;
    :catchall_22
    move-exception v1

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public stop()V
    .registers 5

    .prologue
    .line 470
    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v2, Lcom/google/android/music/dl/DownloadManager$6;

    invoke-direct {v2, p0}, Lcom/google/android/music/dl/DownloadManager$6;-><init>(Lcom/google/android/music/dl/DownloadManager;)V

    invoke-static {v1, v2}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 476
    iget-object v2, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    monitor-enter v2

    .line 477
    :try_start_d
    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager;->mPredictiveSongList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 480
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/dl/DownloadOrder;>;"
    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 481
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v1}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v1

    sget-object v3, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->NOT_STARTED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne v1, v3, :cond_13

    .line 482
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_13

    .line 485
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/dl/DownloadOrder;>;"
    :catchall_2b
    move-exception v1

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_d .. :try_end_2d} :catchall_2b

    throw v1

    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/dl/DownloadOrder;>;"
    :cond_2e
    :try_start_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2b

    .line 487
    return-void
.end method

.method public streamSong(Lcom/google/android/music/dl/ContentIdentifier;[Lcom/google/android/music/dl/ContentIdentifier;)Lcom/google/android/music/dl/DownloadState;
    .registers 8
    .parameter "songId"
    .parameter "prefetchList"

    .prologue
    .line 314
    iget-boolean v2, p0, Lcom/google/android/music/dl/DownloadManager;->LOGV:Z

    if-eqz v2, :cond_2a

    .line 315
    const-string v2, "MusicDL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "streamSong: songId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " prefetchList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/google/android/music/dl/ContentIdentifier;->idsToString([Lcom/google/android/music/dl/ContentIdentifier;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :cond_2a
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/google/android/music/dl/DownloadManager;->makeOrder(Lcom/google/android/music/dl/ContentIdentifier;I)Lcom/google/android/music/dl/DownloadOrder;

    move-result-object v0

    .line 322
    .local v0, order:Lcom/google/android/music/dl/DownloadOrder;
    const/4 v2, 0x2

    invoke-direct {p0, p2, v2}, Lcom/google/android/music/dl/DownloadManager;->createOrders([Lcom/google/android/music/dl/ContentIdentifier;I)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/google/android/music/dl/DownloadManager;->streamSongImpl(Lcom/google/android/music/dl/DownloadOrder;Ljava/util/List;)Lcom/google/android/music/dl/DownloadState;

    move-result-object v1

    .line 323
    .local v1, state:Lcom/google/android/music/dl/DownloadState;
    return-object v1
.end method

.method public streamSongWithOrder(Lcom/google/android/music/dl/DownloadOrder;[Lcom/google/android/music/dl/DownloadOrder;)Lcom/google/android/music/dl/DownloadState;
    .registers 13
    .parameter "order"
    .parameter "prefetchList"

    .prologue
    .line 329
    :try_start_0
    iget-boolean v7, p0, Lcom/google/android/music/dl/DownloadManager;->LOGV:Z

    if-eqz v7, :cond_2a

    .line 330
    const-string v7, "MusicDL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "streamSongWithOrder: order="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " prefetchList="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Lcom/google/android/music/dl/DownloadOrder;->ordersToString([Lcom/google/android/music/dl/DownloadOrder;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_2a
    iget-object v7, p0, Lcom/google/android/music/dl/DownloadManager;->mOrderHandlerCreator:Lcom/google/android/music/dl/OrderHandlerCreator;

    invoke-virtual {v7, p1}, Lcom/google/android/music/dl/OrderHandlerCreator;->createHandler(Lcom/google/android/music/dl/DownloadOrder;)V

    .line 338
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getHandler()Lcom/google/android/music/dl/DownloadHandler;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/music/dl/DownloadManager;->mStoreService:Lcom/google/android/music/store/IStoreService;

    invoke-virtual {v7, p1, v8}, Lcom/google/android/music/dl/DownloadHandler;->setOrder(Lcom/google/android/music/dl/DownloadOrder;Lcom/google/android/music/store/IStoreService;)V

    .line 339
    const/4 v5, 0x0

    .line 340
    .local v5, prefetchArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/music/dl/DownloadOrder;>;"
    if-eqz p2, :cond_5c

    .line 341
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #prefetchArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/music/dl/DownloadOrder;>;"
    array-length v7, p2

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 342
    .restart local v5       #prefetchArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/music/dl/DownloadOrder;>;"
    move-object v0, p2

    .local v0, arr$:[Lcom/google/android/music/dl/DownloadOrder;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_44
    if-ge v2, v3, :cond_5c

    aget-object v4, v0, v2

    .line 343
    .local v4, o:Lcom/google/android/music/dl/DownloadOrder;
    iget-object v7, p0, Lcom/google/android/music/dl/DownloadManager;->mOrderHandlerCreator:Lcom/google/android/music/dl/OrderHandlerCreator;

    invoke-virtual {v7, v4}, Lcom/google/android/music/dl/OrderHandlerCreator;->createHandler(Lcom/google/android/music/dl/DownloadOrder;)V

    .line 344
    invoke-virtual {v4}, Lcom/google/android/music/dl/DownloadOrder;->getHandler()Lcom/google/android/music/dl/DownloadHandler;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/music/dl/DownloadManager;->mStoreService:Lcom/google/android/music/store/IStoreService;

    invoke-virtual {v7, v4, v8}, Lcom/google/android/music/dl/DownloadHandler;->setOrder(Lcom/google/android/music/dl/DownloadOrder;Lcom/google/android/music/store/IStoreService;)V

    .line 345
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 349
    .end local v0           #arr$:[Lcom/google/android/music/dl/DownloadOrder;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #o:Lcom/google/android/music/dl/DownloadOrder;
    :cond_5c
    invoke-direct {p0, p1, v5}, Lcom/google/android/music/dl/DownloadManager;->streamSongImpl(Lcom/google/android/music/dl/DownloadOrder;Ljava/util/List;)Lcom/google/android/music/dl/DownloadState;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5f} :catch_61

    move-result-object v6

    .line 353
    .end local v5           #prefetchArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/music/dl/DownloadOrder;>;"
    :goto_60
    return-object v6

    .line 351
    :catch_61
    move-exception v1

    .line 352
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "MusicDL"

    const-string v8, "streamSongWithOrder exception"

    invoke-static {v7, v8, v1}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 353
    const/4 v6, 0x0

    goto :goto_60
.end method
