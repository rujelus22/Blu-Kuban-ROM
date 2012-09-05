.class Lcom/google/android/apps/books/service/SyncAdapter;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "SyncService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/service/SyncAdapter$Ensurer;,
        Lcom/google/android/apps/books/service/SyncAdapter$ResourcesQuery;,
        Lcom/google/android/apps/books/service/SyncAdapter$PagesQuery;,
        Lcom/google/android/apps/books/service/SyncAdapter$SectionsQuery;,
        Lcom/google/android/apps/books/service/SyncAdapter$CollectionVolumesQuery;,
        Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;,
        Lcom/google/android/apps/books/service/SyncAdapter$SyncContextChangedException;,
        Lcom/google/android/apps/books/service/SyncAdapter$BackgroundThreadFactory;
    }
.end annotation


# instance fields
.field private final mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mExecService:Lcom/google/android/apps/books/service/DrainableExecutor;

.field private mFetchService:Lcom/google/android/apps/books/service/ContentFetchService;

.field private final mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;

.field private final mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

.field private final mServiceSemaphore:Ljava/util/concurrent/Semaphore;

.field private final mSyncAccountsState:Lcom/google/android/apps/books/sync/SyncAccountsState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 434
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 326
    invoke-static {}, Lcom/google/android/apps/books/service/SyncAdapter;->createDrainableExecutor()Lcom/google/android/apps/books/service/DrainableExecutor;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mExecService:Lcom/google/android/apps/books/service/DrainableExecutor;

    .line 328
    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mServiceSemaphore:Ljava/util/concurrent/Semaphore;

    .line 340
    new-instance v1, Lcom/google/android/apps/books/service/SyncAdapter$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/books/service/SyncAdapter$1;-><init>(Lcom/google/android/apps/books/service/SyncAdapter;)V

    iput-object v1, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mConnection:Landroid/content/ServiceConnection;

    .line 435
    new-instance v1, Lcom/google/android/apps/books/sync/SyncAccountsState;

    invoke-direct {v1, p1}, Lcom/google/android/apps/books/sync/SyncAccountsState;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mSyncAccountsState:Lcom/google/android/apps/books/sync/SyncAccountsState;

    .line 436
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/books/app/BooksApplication;

    invoke-virtual {v1}, Lcom/google/android/apps/books/app/BooksApplication;->getFileStorageManager()Lcom/google/android/apps/books/common/FileStorageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;

    .line 439
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/common/BooksContext;

    .line 440
    .local v0, appContext:Lcom/google/android/apps/books/common/BooksContext;
    invoke-interface {v0}, Lcom/google/android/apps/books/common/BooksContext;->getResponseGetter()Lcom/google/android/apps/books/net/ResponseGetter;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    .line 441
    invoke-interface {v0}, Lcom/google/android/apps/books/common/BooksContext;->getApiaryClient()Lcom/google/android/apps/books/api/ApiaryClient;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

    .line 442
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/service/SyncAdapter;)Lcom/google/android/apps/books/service/ContentFetchService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mFetchService:Lcom/google/android/apps/books/service/ContentFetchService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/apps/books/service/SyncAdapter;Lcom/google/android/apps/books/service/ContentFetchService;)Lcom/google/android/apps/books/service/ContentFetchService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mFetchService:Lcom/google/android/apps/books/service/ContentFetchService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/apps/books/service/SyncAdapter;)Ljava/util/concurrent/Semaphore;
    .registers 2
    .parameter "x0"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mServiceSemaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/books/service/SyncAdapter;)Lcom/google/android/apps/books/common/FileStorageManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/books/service/SyncAdapter;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;ILcom/google/android/apps/books/service/SyncAdapter$SyncContext;Landroid/content/SyncResult;)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 281
    invoke-direct/range {p0 .. p6}, Lcom/google/android/apps/books/service/SyncAdapter;->enqueueSegmentResources(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;ILcom/google/android/apps/books/service/SyncAdapter$SyncContext;Landroid/content/SyncResult;)V

    return-void
.end method

.method private buildCoverEnsurer(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;Landroid/content/SyncResult;)Lcom/google/android/apps/books/service/SyncAdapter$Ensurer;
    .registers 11
    .parameter "account"
    .parameter "volumeId"
    .parameter "syncContext"
    .parameter "syncResult"

    .prologue
    .line 798
    new-instance v0, Lcom/google/android/apps/books/service/SyncAdapter$2;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/books/service/SyncAdapter$2;-><init>(Lcom/google/android/apps/books/service/SyncAdapter;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;Landroid/content/SyncResult;Ljava/lang/String;Landroid/accounts/Account;)V

    return-object v0
.end method

.method private checkVolumesDownloaded(Landroid/accounts/Account;Ljava/util/Collection;)V
    .registers 3
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/books/service/SyncAdapter$SyncContextChangedException;,
            Lcom/google/android/apps/books/provider/ExternalStorageUnavailableException;,
            Lcom/google/android/apps/books/provider/ExternalStorageInconsistentException;
        }
    .end annotation

    .prologue
    .line 1073
    .local p2, volumeIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    return-void
.end method

.method private static createDrainableExecutor()Lcom/google/android/apps/books/service/DrainableExecutor;
    .registers 9

    .prologue
    const/4 v1, 0x3

    .line 371
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 372
    .local v6, queue:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Ljava/lang/Runnable;>;"
    const/4 v8, 0x3

    .line 373
    .local v8, poolSize:I
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Lcom/google/android/apps/books/service/SyncAdapter$BackgroundThreadFactory;

    const/4 v2, 0x0

    invoke-direct {v7, v2}, Lcom/google/android/apps/books/service/SyncAdapter$BackgroundThreadFactory;-><init>(Lcom/google/android/apps/books/service/SyncAdapter$1;)V

    move v2, v1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 375
    .local v0, poolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    new-instance v1, Lcom/google/android/apps/books/service/DrainableExecutor;

    invoke-direct {v1, v0}, Lcom/google/android/apps/books/service/DrainableExecutor;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v1
.end method

.method private downloadVolumeContent(Landroid/accounts/Account;Landroid/database/Cursor;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;Lcom/google/android/apps/books/service/SyncService$SyncUi;Landroid/content/SyncResult;)V
    .registers 34
    .parameter "account"
    .parameter "cursor"
    .parameter "syncContext"
    .parameter "syncUi"
    .parameter "syncResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/books/service/SyncAdapter$SyncContextChangedException;,
            Lcom/google/android/apps/books/provider/ExternalStorageUnavailableException;,
            Lcom/google/android/apps/books/provider/ExternalStorageInconsistentException;
        }
    .end annotation

    .prologue
    .line 991
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 993
    .local v5, volumeId:Ljava/lang/String;
    const/4 v4, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 995
    .local v27, volumeMode:I
    const/4 v4, 0x5

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 996
    .local v26, userLastMode:I
    move/from16 v0, v27

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->computeMode(II)I

    move-result v16

    .line 997
    .local v16, mode:I
    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_169

    const/4 v12, 0x1

    .line 998
    .local v12, hasImageMode:Z
    :goto_27
    const/4 v4, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_16c

    const/4 v13, 0x1

    .line 999
    .local v13, hasTextMode:Z
    :goto_31
    const/4 v4, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 1001
    .local v25, title:Ljava/lang/String;
    const/4 v4, 0x6

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/google/android/apps/books/util/CursorUtils;->getDoubleObject(Landroid/database/Cursor;I)Ljava/lang/Double;

    move-result-object v21

    .line 1003
    .local v21, sectionFraction:Ljava/lang/Double;
    const/4 v4, 0x7

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/google/android/apps/books/util/CursorUtils;->getDoubleObject(Landroid/database/Cursor;I)Ljava/lang/Double;

    move-result-object v20

    .line 1005
    .local v20, resourceFraction:Ljava/lang/Double;
    const/16 v4, 0x8

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/google/android/apps/books/util/CursorUtils;->getDoubleObject(Landroid/database/Cursor;I)Ljava/lang/Double;

    move-result-object v19

    .line 1008
    .local v19, pageFraction:Ljava/lang/Double;
    move-object/from16 v0, p5

    iget-object v4, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v4, Landroid/content/SyncStats;->numIoExceptions:J

    move-wide/from16 v17, v0

    .line 1011
    .local v17, numIoExceptionsBefore:J
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/google/android/apps/books/service/SyncAdapter;->enqueueVolumeCover(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;Landroid/content/SyncResult;)V

    .line 1012
    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/google/android/apps/books/service/SyncAdapter;->enqueueAnonymousResources(Ljava/lang/String;Landroid/accounts/Account;ILcom/google/android/apps/books/service/SyncAdapter$SyncContext;Landroid/content/SyncResult;)V

    .line 1014
    const/4 v11, 0x0

    .line 1015
    .local v11, foundContent:Z
    const/16 v22, 0x0

    .line 1016
    .local v22, somethingToDownload:Z
    if-eqz v13, :cond_c4

    .line 1017
    const-string v4, "BooksSync"

    const/4 v6, 0x3

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_a5

    .line 1018
    const-string v4, "BooksSync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ensuring text for volume "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    :cond_a5
    const/4 v11, 0x1

    .line 1021
    const/4 v4, 0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v4, v0, v1, v2}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getDownloadedFraction(ILjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)D

    move-result-wide v23

    .line 1023
    .local v23, textFraction:D
    invoke-static/range {v23 .. v24}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->isFullyDownloaded(D)Z

    move-result v4

    if-nez v4, :cond_c4

    .line 1024
    const/16 v22, 0x1

    .line 1025
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/google/android/apps/books/service/SyncAdapter;->enqueueVolumeSections(Ljava/lang/String;Landroid/accounts/Account;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;Landroid/content/SyncResult;)V

    .line 1028
    .end local v23           #textFraction:D
    :cond_c4
    if-eqz v12, :cond_11d

    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_11d

    .line 1029
    const-string v4, "BooksSync"

    const/4 v6, 0x3

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_fe

    .line 1030
    const-string v4, "BooksSync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ensuring pages of volume "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    :cond_fe
    const/4 v11, 0x1

    .line 1033
    const/4 v4, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v4, v0, v1, v2}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getDownloadedFraction(ILjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)D

    move-result-wide v14

    .line 1035
    .local v14, imageFraction:D
    invoke-static {v14, v15}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->isFullyDownloaded(D)Z

    move-result v4

    if-nez v4, :cond_11d

    .line 1036
    const/16 v22, 0x1

    .line 1037
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/google/android/apps/books/service/SyncAdapter;->enqueueVolumePages(Ljava/lang/String;Landroid/accounts/Account;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;Landroid/content/SyncResult;)V

    .line 1040
    .end local v14           #imageFraction:D
    :cond_11d
    if-nez v11, :cond_149

    .line 1041
    const-string v4, "BooksSync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "no content modes available for fetching "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    :cond_149
    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/google/android/apps/books/service/SyncAdapter;->enqueueStragglingResources(Ljava/lang/String;Landroid/accounts/Account;ILcom/google/android/apps/books/service/SyncAdapter$SyncContext;Landroid/content/SyncResult;)V

    .line 1046
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mExecService:Lcom/google/android/apps/books/service/DrainableExecutor;

    invoke-virtual {v4}, Lcom/google/android/apps/books/service/DrainableExecutor;->drain()Ljava/util/List;

    move-result-object v10

    .line 1047
    .local v10, exceptions:Ljava/util/List;,"Ljava/util/List<Ljava/util/concurrent/ExecutionException;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_16f

    .line 1048
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/google/android/apps/books/service/SyncAdapter;->throwAnySystemicException(Ljava/lang/Iterable;)V

    .line 1061
    :cond_168
    :goto_168
    return-void

    .line 997
    .end local v10           #exceptions:Ljava/util/List;,"Ljava/util/List<Ljava/util/concurrent/ExecutionException;>;"
    .end local v11           #foundContent:Z
    .end local v12           #hasImageMode:Z
    .end local v13           #hasTextMode:Z
    .end local v17           #numIoExceptionsBefore:J
    .end local v19           #pageFraction:Ljava/lang/Double;
    .end local v20           #resourceFraction:Ljava/lang/Double;
    .end local v21           #sectionFraction:Ljava/lang/Double;
    .end local v22           #somethingToDownload:Z
    .end local v25           #title:Ljava/lang/String;
    :cond_169
    const/4 v12, 0x0

    goto/16 :goto_27

    .line 998
    .restart local v12       #hasImageMode:Z
    :cond_16c
    const/4 v13, 0x0

    goto/16 :goto_31

    .line 1049
    .restart local v10       #exceptions:Ljava/util/List;,"Ljava/util/List<Ljava/util/concurrent/ExecutionException;>;"
    .restart local v11       #foundContent:Z
    .restart local v13       #hasTextMode:Z
    .restart local v17       #numIoExceptionsBefore:J
    .restart local v19       #pageFraction:Ljava/lang/Double;
    .restart local v20       #resourceFraction:Ljava/lang/Double;
    .restart local v21       #sectionFraction:Ljava/lang/Double;
    .restart local v22       #somethingToDownload:Z
    .restart local v25       #title:Ljava/lang/String;
    :cond_16f
    if-eqz v22, :cond_168

    move-object/from16 v0, p5

    iget-object v4, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v4, Landroid/content/SyncStats;->numIoExceptions:J

    cmp-long v4, v6, v17

    if-nez v4, :cond_168

    .line 1055
    const-string v4, "BooksSync"

    const/4 v6, 0x3

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1a8

    .line 1056
    const-string v4, "BooksSync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending download complete notification for volume "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    :cond_1a8
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v5, v2}, Lcom/google/android/apps/books/service/SyncService$SyncUi;->finishedVolumeDownload(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_168
.end method

.method private downloadVolumeContent(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;Lcom/google/android/apps/books/service/SyncService$SyncUi;Landroid/content/SyncResult;)V
    .registers 18
    .parameter "account"
    .parameter "volumeId"
    .parameter "syncContext"
    .parameter "syncUi"
    .parameter "syncResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;,
            Lcom/google/android/apps/books/service/SyncAdapter$SyncContextChangedException;
        }
    .end annotation

    .prologue
    .line 958
    move-object/from16 v0, p5

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/apps/books/service/SyncAdapter;->buildCoverEnsurer(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;Landroid/content/SyncResult;)Lcom/google/android/apps/books/service/SyncAdapter$Ensurer;

    move-result-object v9

    .line 959
    .local v9, ensurer:Lcom/google/android/apps/books/service/SyncAdapter$Ensurer;
    invoke-virtual {v9}, Lcom/google/android/apps/books/service/SyncAdapter$Ensurer;->ensure()V

    .line 960
    iget-object v3, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mFetchService:Lcom/google/android/apps/books/service/ContentFetchService;

    invoke-virtual {v3, p2, p1}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeManifest(Ljava/lang/String;Landroid/accounts/Account;)V

    .line 962
    invoke-virtual {p0}, Lcom/google/android/apps/books/service/SyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 963
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v11

    .line 964
    .local v11, volumeIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-wide/16 v6, 0x7

    invoke-static {v3, v6, v7, p2}, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->itemUri(Ljava/lang/String;JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 966
    .local v2, volumeUri:Landroid/net/Uri;
    sget-object v3, Lcom/google/android/apps/books/service/SyncAdapter$CollectionVolumesQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 969
    .local v5, cursor:Landroid/database/Cursor;
    :try_start_2b
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    .line 970
    .local v10, moved:Z
    if-eqz v10, :cond_42

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    .line 971
    invoke-direct/range {v3 .. v8}, Lcom/google/android/apps/books/service/SyncAdapter;->downloadVolumeContent(Landroid/accounts/Account;Landroid/database/Cursor;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;Lcom/google/android/apps/books/service/SyncService$SyncUi;Landroid/content/SyncResult;)V

    .line 972
    invoke-direct {p0, p1, v11}, Lcom/google/android/apps/books/service/SyncAdapter;->checkVolumesDownloaded(Landroid/accounts/Account;Ljava/util/Collection;)V
    :try_end_3e
    .catchall {:try_start_2b .. :try_end_3e} :catchall_67

    .line 978
    :goto_3e
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 980
    return-void

    .line 974
    :cond_42
    :try_start_42
    const-string v3, "BooksSync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping download--could not find volume "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " in my Ebooks collection of account "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catchall {:try_start_42 .. :try_end_66} :catchall_67

    goto :goto_3e

    .line 978
    .end local v10           #moved:Z
    :catchall_67
    move-exception v3

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method private downloadVolumes(Landroid/accounts/Account;[Ljava/lang/String;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;Lcom/google/android/apps/books/service/SyncService$SyncUi;Landroid/content/SyncResult;)V
    .registers 17
    .parameter "account"
    .parameter "volumeIds"
    .parameter "syncContext"
    .parameter "syncUi"
    .parameter "syncResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;,
            Lcom/google/android/apps/books/service/SyncAdapter$SyncContextChangedException;
        }
    .end annotation

    .prologue
    .line 931
    const/4 v10, 0x0

    .line 932
    .local v10, volumePosition:I
    move-object v6, p2

    .local v6, arr$:[Ljava/lang/String;
    array-length v9, v6

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_4
    if-ge v8, v9, :cond_23

    aget-object v2, v6, v8

    .line 934
    .local v2, volumeId:Ljava/lang/String;
    array-length v0, p2

    invoke-interface {p4, v10, v0}, Lcom/google/android/apps/books/service/SyncService$SyncUi;->startingVolumeDownload(II)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    .line 936
    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/books/service/SyncAdapter;->downloadVolumeContent(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;Lcom/google/android/apps/books/service/SyncService$SyncUi;Landroid/content/SyncResult;)V

    .line 940
    iget-object v0, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mExecService:Lcom/google/android/apps/books/service/DrainableExecutor;

    invoke-virtual {v0}, Lcom/google/android/apps/books/service/DrainableExecutor;->drain()Ljava/util/List;

    move-result-object v7

    .line 941
    .local v7, exceptions:Ljava/util/List;,"Ljava/util/List<Ljava/util/concurrent/ExecutionException;>;"
    invoke-direct {p0, v7}, Lcom/google/android/apps/books/service/SyncAdapter;->throwAnySystemicException(Ljava/lang/Iterable;)V

    .line 943
    add-int/lit8 v10, v10, 0x1

    .line 932
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 946
    .end local v2           #volumeId:Ljava/lang/String;
    .end local v7           #exceptions:Ljava/util/List;,"Ljava/util/List<Ljava/util/concurrent/ExecutionException;>;"
    :cond_23
    invoke-interface {p4}, Lcom/google/android/apps/books/service/SyncService$SyncUi;->finishedAllVolumeDownloads()V

    .line 947
    return-void
.end method

.method private enqueueAnonymousResources(Ljava/lang/String;Landroid/accounts/Account;ILcom/google/android/apps/books/service/SyncAdapter$SyncContext;Landroid/content/SyncResult;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1255
    const-string v0, "related_section_id IS NULL AND content_status!=3 AND content_status!=1"

    .line 1258
    const-string v2, "related_section_id IS NULL AND content_status!=3 AND content_status!=1"

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/books/service/SyncAdapter;->enqueueMatchingResources(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/Account;ILcom/google/android/apps/books/service/SyncAdapter$SyncContext;Landroid/content/SyncResult;)V

    .line 1260
    return-void
.end method

.method private enqueueMatchingResources(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/Account;ILcom/google/android/apps/books/service/SyncAdapter$SyncContext;Landroid/content/SyncResult;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1288
    invoke-virtual {p0}, Lcom/google/android/apps/books/service/SyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1289
    invoke-static {p4, p1}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->buildResourceDirUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1290
    sget-object v2, Lcom/google/android/apps/books/service/SyncAdapter$ResourcesQuery;->PROJECTION:[Ljava/lang/String;

    const-string v5, "related_section_id ASC, resource_order ASC, resource_id ASC"

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1293
    :try_start_16
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1294
    if-lez v0, :cond_43

    const-string v1, "BooksSync"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 1295
    const-string v1, "BooksSync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetching "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " non-local resources"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    :cond_43
    :goto_43
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 1299
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 1300
    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/books/service/SyncAdapter;->enqueueResource(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;ILcom/google/android/apps/books/service/SyncAdapter$SyncContext;Landroid/content/SyncResult;)V
    :try_end_57
    .catchall {:try_start_16 .. :try_end_57} :catchall_58

    goto :goto_43

    .line 1303
    :catchall_58
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_5d
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1305
    return-void
.end method

.method private enqueuePage(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;ILcom/google/android/apps/books/service/SyncAdapter$SyncContext;Landroid/content/SyncResult;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1223
    const-string v0, "BooksSync"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1224
    const-string v0, "BooksSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueuePage() vid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", p="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    :cond_35
    new-instance v0, Lcom/google/android/apps/books/service/SyncAdapter$5;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/books/service/SyncAdapter$5;-><init>(Lcom/google/android/apps/books/service/SyncAdapter;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;Landroid/content/SyncResult;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V

    .line 1232
    iget-object v1, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mExecService:Lcom/google/android/apps/books/service/DrainableExecutor;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/books/service/DrainableExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 1233
    return-void
.end method

.method private enqueueResource(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;ILcom/google/android/apps/books/service/SyncAdapter$SyncContext;Landroid/content/SyncResult;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1208
    const-string v0, "BooksSync"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1209
    const-string v0, "BooksSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueResource() vid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->shortenId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", p="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    :cond_39
    new-instance v0, Lcom/google/android/apps/books/service/SyncAdapter$4;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/books/service/SyncAdapter$4;-><init>(Lcom/google/android/apps/books/service/SyncAdapter;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;Landroid/content/SyncResult;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V

    .line 1218
    iget-object v1, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mExecService:Lcom/google/android/apps/books/service/DrainableExecutor;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/books/service/DrainableExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 1219
    return-void
.end method

.method private enqueueSection(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;ILcom/google/android/apps/books/service/SyncAdapter$SyncContext;Landroid/content/SyncResult;)V
    .registers 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1188
    const-string v0, "BooksSync"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1189
    const-string v0, "BooksSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueSection() vid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", p="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    :cond_35
    new-instance v0, Lcom/google/android/apps/books/service/SyncAdapter$3;

    move-object v1, p0

    move-object v2, p5

    move-object/from16 v3, p6

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/google/android/apps/books/service/SyncAdapter$3;-><init>(Lcom/google/android/apps/books/service/SyncAdapter;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;Landroid/content/SyncResult;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;ILcom/google/android/apps/books/service/SyncAdapter$SyncContext;Landroid/content/SyncResult;)V

    .line 1203
    iget-object v1, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mExecService:Lcom/google/android/apps/books/service/DrainableExecutor;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/books/service/DrainableExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 1204
    return-void
.end method

.method private enqueueSegmentResources(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;ILcom/google/android/apps/books/service/SyncAdapter$SyncContext;Landroid/content/SyncResult;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1241
    const-string v0, "related_section_id=? AND content_status!=3 AND content_status!=1"

    .line 1244
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v3, v0

    .line 1245
    const-string v2, "related_section_id=? AND content_status!=3 AND content_status!=1"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/books/service/SyncAdapter;->enqueueMatchingResources(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/Account;ILcom/google/android/apps/books/service/SyncAdapter$SyncContext;Landroid/content/SyncResult;)V

    .line 1247
    return-void
.end method

.method private enqueueStragglingResources(Ljava/lang/String;Landroid/accounts/Account;ILcom/google/android/apps/books/service/SyncAdapter$SyncContext;Landroid/content/SyncResult;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1272
    const-string v0, "BooksSync"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1273
    const-string v0, "BooksSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncStragglingResources for vid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    :cond_21
    const-string v0, "content_status!=3 AND content_status!=1"

    .line 1278
    const-string v2, "content_status!=3 AND content_status!=1"

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/books/service/SyncAdapter;->enqueueMatchingResources(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/Account;ILcom/google/android/apps/books/service/SyncAdapter$SyncContext;Landroid/content/SyncResult;)V

    .line 1280
    return-void
.end method

.method private enqueueVolumeCover(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;Landroid/content/SyncResult;)V
    .registers 9
    .parameter "account"
    .parameter "volumeId"
    .parameter "syncContext"
    .parameter "syncResult"

    .prologue
    .line 785
    const-string v1, "BooksSync"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 786
    const-string v1, "BooksSync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enqueueVolumeCover vid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :cond_21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/books/service/SyncAdapter;->buildCoverEnsurer(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;Landroid/content/SyncResult;)Lcom/google/android/apps/books/service/SyncAdapter$Ensurer;

    move-result-object v0

    .line 789
    .local v0, ensurer:Lcom/google/android/apps/books/service/SyncAdapter$Ensurer;
    iget-object v1, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mExecService:Lcom/google/android/apps/books/service/DrainableExecutor;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/books/service/DrainableExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 790
    return-void
.end method

.method private enqueueVolumePages(Ljava/lang/String;Landroid/accounts/Account;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;Landroid/content/SyncResult;)V
    .registers 17
    .parameter "volumeId"
    .parameter "account"
    .parameter "syncContext"
    .parameter "syncResult"

    .prologue
    .line 1161
    invoke-virtual {p0}, Lcom/google/android/apps/books/service/SyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1163
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {p2, p1}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->buildPageDirUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1164
    .local v1, pageDirUri:Landroid/net/Uri;
    const-string v2, "MAX(page_order)"

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForInt(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1167
    .local v10, maxOrder:I
    sget-object v2, Lcom/google/android/apps/books/service/SyncAdapter$PagesQuery;->PROJECTION:[Ljava/lang/String;

    const-string v3, "content_status!=3 AND content_status!=1"

    const/4 v4, 0x0

    const-string v5, "page_order ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1172
    .local v9, cursor:Landroid/database/Cursor;
    :goto_21
    :try_start_21
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1173
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1175
    .local v4, pageId:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1176
    .local v11, order:I
    mul-int/lit8 v2, v11, 0x14

    div-int/2addr v2, v10

    rsub-int/lit8 v6, v2, 0x14

    .local v6, priority:I
    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v7, p3

    move-object/from16 v8, p4

    .line 1178
    invoke-direct/range {v2 .. v8}, Lcom/google/android/apps/books/service/SyncAdapter;->enqueuePage(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;ILcom/google/android/apps/books/service/SyncAdapter$SyncContext;Landroid/content/SyncResult;)V
    :try_end_3f
    .catchall {:try_start_21 .. :try_end_3f} :catchall_40

    goto :goto_21

    .line 1181
    .end local v4           #pageId:Ljava/lang/String;
    .end local v6           #priority:I
    .end local v11           #order:I
    :catchall_40
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_45
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1183
    return-void
.end method

.method private enqueueVolumeSections(Ljava/lang/String;Landroid/accounts/Account;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;Landroid/content/SyncResult;)V
    .registers 17
    .parameter "volumeId"
    .parameter "account"
    .parameter "syncContext"
    .parameter "syncResult"

    .prologue
    .line 1135
    invoke-virtual {p0}, Lcom/google/android/apps/books/service/SyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1137
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {p2, p1}, Lcom/google/android/apps/books/provider/BooksContract$Segments;->buildSectionDirUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1138
    .local v1, sectionDirUri:Landroid/net/Uri;
    const-string v2, "MAX(segment_order)"

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForInt(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1141
    .local v10, maxOrder:I
    sget-object v2, Lcom/google/android/apps/books/service/SyncAdapter$SectionsQuery;->PROJECTION:[Ljava/lang/String;

    const-string v3, "content_status!=3 AND content_status!=1"

    const/4 v4, 0x0

    const-string v5, "segment_order COLLATE NOCASE ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1146
    .local v9, cursor:Landroid/database/Cursor;
    :goto_21
    :try_start_21
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1147
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1149
    .local v4, sectionId:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1150
    .local v11, order:I
    mul-int/lit8 v2, v11, 0x14

    div-int/2addr v2, v10

    rsub-int/lit8 v6, v2, 0x14

    .local v6, priority:I
    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v7, p3

    move-object/from16 v8, p4

    .line 1152
    invoke-direct/range {v2 .. v8}, Lcom/google/android/apps/books/service/SyncAdapter;->enqueueSection(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;ILcom/google/android/apps/books/service/SyncAdapter$SyncContext;Landroid/content/SyncResult;)V
    :try_end_3f
    .catchall {:try_start_21 .. :try_end_3f} :catchall_40

    goto :goto_21

    .line 1155
    .end local v4           #sectionId:Ljava/lang/String;
    .end local v6           #priority:I
    .end local v11           #order:I
    :catchall_40
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_45
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1157
    return-void
.end method

.method private findFirstExternalStorageException(Ljava/lang/Iterable;)Ljava/io/FileNotFoundException;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/util/concurrent/ExecutionException;",
            ">;)",
            "Ljava/io/FileNotFoundException;"
        }
    .end annotation

    .prologue
    .line 621
    .local p1, exceptions:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/util/concurrent/ExecutionException;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ExecutionException;

    .line 622
    .local v1, exception:Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 623
    .local v0, cause:Ljava/lang/Throwable;
    instance-of v3, v0, Lcom/google/android/apps/books/provider/ExternalStorageInconsistentException;

    if-eqz v3, :cond_1b

    .line 624
    check-cast v0, Lcom/google/android/apps/books/provider/ExternalStorageInconsistentException;

    .line 629
    .end local v0           #cause:Ljava/lang/Throwable;
    .end local v1           #exception:Ljava/util/concurrent/ExecutionException;
    :goto_1a
    return-object v0

    .line 625
    .restart local v0       #cause:Ljava/lang/Throwable;
    .restart local v1       #exception:Ljava/util/concurrent/ExecutionException;
    :cond_1b
    instance-of v3, v0, Lcom/google/android/apps/books/provider/ExternalStorageUnavailableException;

    if-eqz v3, :cond_4

    .line 626
    check-cast v0, Lcom/google/android/apps/books/provider/ExternalStorageUnavailableException;

    goto :goto_1a

    .line 629
    .end local v0           #cause:Ljava/lang/Throwable;
    .end local v1           #exception:Ljava/util/concurrent/ExecutionException;
    :cond_22
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private static getVolumesForAccount(Landroid/content/ContentResolver;Ljava/lang/String;)[Ljava/lang/String;
    .registers 12
    .parameter "resolver"
    .parameter "accountName"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 748
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->myEBooksDirUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 749
    .local v1, libraryUri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "volume_id"

    aput-object v0, v2, v4

    const-string v5, "last_local_access DESC, last_access DESC, timestamp DESC"

    move-object v0, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 752
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_15
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 753
    .local v6, count:I
    new-array v9, v6, [Ljava/lang/String;

    .line 754
    .local v9, volumeIds:[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1c
    if-ge v8, v6, :cond_2b

    .line 755
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 756
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v8
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_2f

    .line 754
    add-int/lit8 v8, v8, 0x1

    goto :goto_1c

    .line 760
    :cond_2b
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return-object v9

    .end local v6           #count:I
    .end local v8           #i:I
    .end local v9           #volumeIds:[Ljava/lang/String;
    :catchall_2f
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private maybeUpdateSubscribedFeeds(Landroid/accounts/Account;)V
    .registers 12
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 1317
    const-wide/16 v0, 0x7

    invoke-static {v0, v1}, Lcom/google/android/apps/books/util/OceanUris;->getCollectionVolumesUrl(J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1321
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v7

    .line 1322
    invoke-virtual {p0}, Lcom/google/android/apps/books/service/SyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1323
    new-array v2, v9, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v2, v3

    const-string v1, "feed"

    aput-object v1, v2, v8

    .line 1324
    const-string v1, "_sync_account=? AND _sync_account_type=? AND authority=?"

    .line 1327
    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v1, v4, v3

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v1, v4, v8

    const-string v1, "com.google.android.apps.books"

    aput-object v1, v4, v9

    .line 1328
    sget-object v1, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_sync_account=? AND _sync_account_type=? AND authority=?"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1331
    :goto_3d
    :try_start_3d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 1332
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1333
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1334
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_54
    .catchall {:try_start_3d .. :try_end_54} :catchall_55

    goto :goto_3d

    .line 1337
    :catchall_55
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_5a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1341
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b6

    .line 1343
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1344
    const-string v2, "_sync_account"

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    const-string v2, "_sync_account_type"

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    const-string v2, "feed"

    invoke-virtual {v1, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    const-string v2, "service"

    const-string v3, "print"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    const-string v2, "authority"

    const-string v3, "com.google.android.apps.books"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    sget-object v2, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1357
    :goto_8e
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_96
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ba

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1358
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1359
    sget-object v1, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_96

    .line 1353
    :cond_b6
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8e

    .line 1362
    :cond_ba
    return-void
.end method

.method private registerHardError(Landroid/content/SyncResult;Ljava/lang/Exception;)V
    .registers 8
    .parameter "syncResult"
    .parameter "exception"

    .prologue
    .line 584
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 585
    .local v0, stats:Landroid/content/SyncStats;
    monitor-enter v0

    .line 587
    :try_start_3
    iget-wide v1, v0, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/content/SyncStats;->numParseExceptions:J

    .line 588
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1c

    .line 589
    const-string v1, "BooksSync"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 590
    const-string v1, "BooksSync"

    const-string v2, "Hard error"

    invoke-static {v1, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 592
    :cond_1b
    return-void

    .line 588
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private syncContent(Landroid/accounts/Account;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;Lcom/google/android/apps/books/service/SyncService$SyncUi;Landroid/content/SyncResult;)V
    .registers 34
    .parameter "account"
    .parameter "syncContext"
    .parameter "syncUi"
    .parameter "syncResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/books/service/SyncAdapter$SyncContextChangedException;,
            Lcom/google/android/apps/books/provider/ExternalStorageUnavailableException;,
            Lcom/google/android/apps/books/provider/ExternalStorageInconsistentException;
        }
    .end annotation

    .prologue
    .line 840
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mExecService:Lcom/google/android/apps/books/service/DrainableExecutor;

    invoke-virtual {v5}, Lcom/google/android/apps/books/service/DrainableExecutor;->drain()Ljava/util/List;

    move-result-object v19

    .line 841
    .local v19, exceptions:Ljava/util/List;,"Ljava/util/List<Ljava/util/concurrent/ExecutionException;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/service/SyncAdapter;->throwAnySystemicException(Ljava/lang/Iterable;)V

    .line 843
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/books/service/SyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 844
    .local v3, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v8, 0xf731400

    sub-long v16, v5, v8

    .line 850
    .local v16, cutoffTime:J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mSyncAccountsState:Lcom/google/android/apps/books/sync/SyncAccountsState;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-wide v8, 0x7fffffffffffffffL

    invoke-virtual {v5, v6, v8, v9}, Lcom/google/android/apps/books/sync/SyncAccountsState;->getLastSyncTime(Ljava/lang/String;J)J

    move-result-wide v21

    .line 852
    .local v21, lastSync:J
    const-string v23, " BETWEEN CAST(? AS FLOAT) AND CAST(? AS FLOAT)"

    .line 853
    .local v23, partialFract:Ljava/lang/String;
    const-string v24, "segment_fraction BETWEEN CAST(? AS FLOAT) AND CAST(? AS FLOAT) OR resource_fraction BETWEEN CAST(? AS FLOAT) AND CAST(? AS FLOAT) OR page_fraction BETWEEN CAST(? AS FLOAT) AND CAST(? AS FLOAT)"

    .line 858
    .local v24, partiallyDownloaded:Ljava/lang/String;
    const-string v14, "(license_action IS NULL OR license_action!= ?)"

    .line 861
    .local v14, contentsNotRemovedRecently:Ljava/lang/String;
    const-string v25, "pinned!=0 "

    .line 862
    .local v25, pinned:Ljava/lang/String;
    const-string v20, "last_local_access > CAST(? AS INTEGER)"

    .line 863
    .local v20, hasBeenRead:Ljava/lang/String;
    const-string v26, "timestamp > CAST(? AS INTEGER)"

    .line 864
    .local v26, recentlyAddedToAccount:Ljava/lang/String;
    const-string v27, "segment_fraction BETWEEN CAST(? AS FLOAT) AND CAST(? AS FLOAT) OR resource_fraction BETWEEN CAST(? AS FLOAT) AND CAST(? AS FLOAT) OR page_fraction BETWEEN CAST(? AS FLOAT) AND CAST(? AS FLOAT) OR ( (license_action IS NULL OR license_action!= ?) AND (pinned!=0  OR last_local_access > CAST(? AS INTEGER) OR timestamp > CAST(? AS INTEGER)))"

    .line 871
    .local v27, selection:Ljava/lang/String;
    const/16 v5, 0x9

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-wide v8, 0x3e7ad7f29abcaf48L

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v5

    const/4 v5, 0x1

    const-wide v8, 0x3fefffffca501acbL

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v5

    const/4 v5, 0x2

    const-wide v8, 0x3e7ad7f29abcaf48L

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v5

    const/4 v5, 0x3

    const-wide v8, 0x3fefffffca501acbL

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v5

    const/4 v5, 0x4

    const-wide v8, 0x3e7ad7f29abcaf48L

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v5

    const/4 v5, 0x5

    const-wide v8, 0x3fefffffca501acbL

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v5

    const/4 v5, 0x6

    sget-object v6, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$LicenseAction;->RELEASE:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$LicenseAction;

    invoke-virtual {v6}, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$LicenseAction;->getDbValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v5

    const/4 v5, 0x7

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v5

    const/16 v5, 0x8

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v5

    .line 881
    .local v7, args:[Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->myEBooksDirUri(Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v4

    .line 887
    .local v4, dirUri:Landroid/net/Uri;
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v28

    .line 889
    .local v28, volumeIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v5, Lcom/google/android/apps/books/service/SyncAdapter$CollectionVolumesQuery;->PROJECTION:[Ljava/lang/String;

    const-string v6, "segment_fraction BETWEEN CAST(? AS FLOAT) AND CAST(? AS FLOAT) OR resource_fraction BETWEEN CAST(? AS FLOAT) AND CAST(? AS FLOAT) OR page_fraction BETWEEN CAST(? AS FLOAT) AND CAST(? AS FLOAT) OR ( (license_action IS NULL OR license_action!= ?) AND (pinned!=0  OR last_local_access > CAST(? AS INTEGER) OR timestamp > CAST(? AS INTEGER)))"

    const-string v8, "last_local_access DESC, last_access DESC, timestamp DESC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 893
    .local v15, cursor:Landroid/database/Cursor;
    :cond_b9
    :goto_b9
    :try_start_b9
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_105

    .line 894
    const/4 v5, 0x0

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 895
    .local v10, volumeId:Ljava/lang/String;
    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_c9
    .catchall {:try_start_b9 .. :try_end_c9} :catchall_d9

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    .line 897
    :try_start_d3
    invoke-direct/range {v8 .. v13}, Lcom/google/android/apps/books/service/SyncAdapter;->downloadVolumeContent(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;Lcom/google/android/apps/books/service/SyncService$SyncUi;Landroid/content/SyncResult;)V
    :try_end_d6
    .catchall {:try_start_d3 .. :try_end_d6} :catchall_d9
    .catch Lcom/google/android/apps/books/provider/ExternalStorageInconsistentException; {:try_start_d3 .. :try_end_d6} :catch_d7
    .catch Lcom/google/android/apps/books/provider/ExternalStorageUnavailableException; {:try_start_d3 .. :try_end_d6} :catch_de
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_d6} :catch_e0

    goto :goto_b9

    .line 898
    :catch_d7
    move-exception v18

    .line 899
    .local v18, e:Lcom/google/android/apps/books/provider/ExternalStorageInconsistentException;
    :try_start_d8
    throw v18
    :try_end_d9
    .catchall {:try_start_d8 .. :try_end_d9} :catchall_d9

    .line 911
    .end local v10           #volumeId:Ljava/lang/String;
    .end local v18           #e:Lcom/google/android/apps/books/provider/ExternalStorageInconsistentException;
    :catchall_d9
    move-exception v5

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v5

    .line 900
    .restart local v10       #volumeId:Ljava/lang/String;
    :catch_de
    move-exception v18

    .line 901
    .local v18, e:Lcom/google/android/apps/books/provider/ExternalStorageUnavailableException;
    :try_start_df
    throw v18

    .line 902
    .end local v18           #e:Lcom/google/android/apps/books/provider/ExternalStorageUnavailableException;
    :catch_e0
    move-exception v18

    .line 903
    .local v18, e:Ljava/io/IOException;
    const-string v5, "BooksSync"

    const/4 v6, 0x6

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_b9

    .line 904
    const-string v5, "BooksSync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Problem downloading content for "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b9

    .line 909
    .end local v10           #volumeId:Ljava/lang/String;
    .end local v18           #e:Ljava/io/IOException;
    :cond_105
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/service/SyncAdapter;->checkVolumesDownloaded(Landroid/accounts/Account;Ljava/util/Collection;)V
    :try_end_10e
    .catchall {:try_start_df .. :try_end_10e} :catchall_d9

    .line 911
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 919
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mExecService:Lcom/google/android/apps/books/service/DrainableExecutor;

    invoke-virtual {v5}, Lcom/google/android/apps/books/service/DrainableExecutor;->drain()Ljava/util/List;

    .line 920
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mSyncAccountsState:Lcom/google/android/apps/books/sync/SyncAccountsState;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v5, v6, v8, v9}, Lcom/google/android/apps/books/sync/SyncAccountsState;->setLastSyncTime(Ljava/lang/String;J)V

    .line 922
    const-string v5, "BooksSync"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_137

    .line 923
    const-string v5, "BooksSync"

    const-string v6, "finished syncContent()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    :cond_137
    return-void
.end method

.method private syncCoversAndContent(Landroid/accounts/Account;ZLcom/google/android/apps/books/service/SyncAdapter$SyncContext;Lcom/google/android/apps/books/service/SyncService$SyncUi;Landroid/content/SyncResult;)V
    .registers 15
    .parameter "account"
    .parameter "download"
    .parameter "syncContext"
    .parameter "syncUi"
    .parameter "syncResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/books/service/SyncAdapter$SyncContextChangedException;,
            Lcom/google/android/apps/books/provider/ExternalStorageUnavailableException;,
            Lcom/google/android/apps/books/provider/ExternalStorageInconsistentException;
        }
    .end annotation

    .prologue
    .line 648
    invoke-virtual {p0}, Lcom/google/android/apps/books/service/SyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 649
    .local v1, contentResolver:Landroid/content/ContentResolver;
    const-string v5, "BooksLazySync"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    .line 651
    .local v3, lazySync:Z
    invoke-direct {p0, p1, p3, p5}, Lcom/google/android/apps/books/service/SyncAdapter;->syncVolumeCovers(Landroid/accounts/Account;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;Landroid/content/SyncResult;)V

    .line 655
    iget-object v5, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;

    invoke-virtual {v5}, Lcom/google/android/apps/books/common/FileStorageManager;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    .line 656
    .local v4, lock:Ljava/util/concurrent/locks/Lock;
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 658
    :try_start_1b
    invoke-static {v1}, Lcom/google/android/apps/books/provider/BooksProvider;->getFileStorageDirectory(Landroid/content/ContentResolver;)Ljava/io/File;

    move-result-object v0

    .line 659
    .local v0, baseDir:Ljava/io/File;
    invoke-static {v0}, Lcom/google/android/apps/books/util/FileUtils;->freeBytesOnFilesystem(Ljava/io/File;)J

    move-result-wide v5

    const-wide/32 v7, 0x3938700

    cmp-long v5, v5, v7

    if-gez v5, :cond_32

    .line 660
    const-wide v5, 0x9a7ec800L

    invoke-static {v1, p1, v5, v6}, Lcom/google/android/apps/books/provider/StaleContentDeleter;->deleteStaleContentLocked(Landroid/content/ContentResolver;Landroid/accounts/Account;J)V
    :try_end_32
    .catchall {:try_start_1b .. :try_end_32} :catchall_52
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_32} :catch_46

    .line 666
    :cond_32
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 669
    .end local v0           #baseDir:Ljava/io/File;
    :goto_35
    if-eqz p2, :cond_3c

    .line 670
    if-nez v3, :cond_57

    .line 671
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/google/android/apps/books/service/SyncAdapter;->syncContent(Landroid/accounts/Account;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;Lcom/google/android/apps/books/service/SyncService$SyncUi;Landroid/content/SyncResult;)V

    .line 683
    :cond_3c
    :goto_3c
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->myEBooksDirUri(Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 684
    return-void

    .line 663
    :catch_46
    move-exception v2

    .line 664
    .local v2, e:Ljava/io/IOException;
    :try_start_47
    const-string v5, "BooksSync"

    const-string v6, "Failure in best-effort deletion of stale content"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_52

    .line 666
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_35

    .end local v2           #e:Ljava/io/IOException;
    :catchall_52
    move-exception v5

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5

    .line 673
    :cond_57
    const-string v5, "BooksSync"

    const-string v6, "======== Skipping syncContent() due to lazy flag"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c
.end method

.method private syncPlusOnes(Landroid/accounts/Account;)V
    .registers 6
    .parameter

    .prologue
    .line 1371
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 1372
    new-instance v1, Lcom/google/android/apps/books/service/SyncAdapter$6;

    invoke-direct {v1, p0, v0}, Lcom/google/android/apps/books/service/SyncAdapter$6;-><init>(Lcom/google/android/apps/books/service/SyncAdapter;Ljava/util/concurrent/Semaphore;)V

    .line 1381
    invoke-static {}, Lcom/google/android/apps/books/util/HandlerExecutor;->getUiThreadExecutor()Lcom/google/android/apps/books/util/HandlerExecutor;

    move-result-object v2

    new-instance v3, Lcom/google/android/apps/books/service/SyncAdapter$7;

    invoke-direct {v3, p0, p1, v1}, Lcom/google/android/apps/books/service/SyncAdapter$7;-><init>(Lcom/google/android/apps/books/service/SyncAdapter;Landroid/accounts/Account;Lcom/google/android/plus1/PlusOneController$SyncCompletionCallback;)V

    invoke-virtual {v2, v3}, Lcom/google/android/apps/books/util/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1390
    :try_start_17
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1a} :catch_1b

    .line 1396
    :cond_1a
    :goto_1a
    return-void

    .line 1391
    :catch_1b
    move-exception v0

    .line 1392
    const-string v1, "BooksSync"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1393
    const-string v1, "BooksSync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interrupted while waiting for +1 sync: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method private syncVolumeCovers(Landroid/accounts/Account;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;Landroid/content/SyncResult;)V
    .registers 14
    .parameter "account"
    .parameter "syncContext"
    .parameter "syncResult"

    .prologue
    const/4 v9, 0x3

    .line 765
    invoke-virtual {p0}, Lcom/google/android/apps/books/service/SyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 766
    .local v3, resolver:Landroid/content/ContentResolver;
    iget-object v6, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/google/android/apps/books/service/SyncAdapter;->getVolumesForAccount(Landroid/content/ContentResolver;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 768
    .local v5, volumeIds:[Ljava/lang/String;
    const-string v6, "BooksSync"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 769
    const-string v6, "BooksSync"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "syncVolumeCovers() touching covers for count="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_30
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_33
    if-ge v1, v2, :cond_3d

    aget-object v4, v0, v1

    .line 772
    .local v4, volumeId:Ljava/lang/String;
    invoke-direct {p0, p1, v4, p2, p3}, Lcom/google/android/apps/books/service/SyncAdapter;->enqueueVolumeCover(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;Landroid/content/SyncResult;)V

    .line 771
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 774
    .end local v4           #volumeId:Ljava/lang/String;
    :cond_3d
    const-string v6, "BooksSync"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 775
    const-string v6, "BooksSync"

    const-string v7, "finished syncVolumeCovers()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_4c
    return-void
.end method

.method private throwAnySystemicException(Ljava/lang/Iterable;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/util/concurrent/ExecutionException;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/books/service/SyncAdapter$SyncContextChangedException;,
            Lcom/google/android/apps/books/provider/ExternalStorageInconsistentException;,
            Lcom/google/android/apps/books/provider/ExternalStorageUnavailableException;
        }
    .end annotation

    .prologue
    .line 603
    .local p1, exceptions:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/util/concurrent/ExecutionException;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ExecutionException;

    .line 604
    .local v1, exception:Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 605
    .local v0, cause:Ljava/lang/Throwable;
    instance-of v3, v0, Lcom/google/android/apps/books/service/SyncAdapter$SyncContextChangedException;

    if-eqz v3, :cond_1b

    .line 606
    check-cast v0, Lcom/google/android/apps/books/service/SyncAdapter$SyncContextChangedException;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 607
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_1b
    instance-of v3, v0, Lcom/google/android/apps/books/provider/ExternalStorageInconsistentException;

    if-eqz v3, :cond_22

    .line 608
    check-cast v0, Lcom/google/android/apps/books/provider/ExternalStorageInconsistentException;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 609
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_22
    instance-of v3, v0, Lcom/google/android/apps/books/provider/ExternalStorageUnavailableException;

    if-eqz v3, :cond_4

    .line 610
    check-cast v0, Lcom/google/android/apps/books/provider/ExternalStorageUnavailableException;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 613
    .end local v1           #exception:Ljava/util/concurrent/ExecutionException;
    :cond_29
    return-void
.end method

.method private tryEnsureMyEbooksVolumes(Landroid/accounts/Account;Z)V
    .registers 6
    .parameter "account"
    .parameter "fetchBooks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/books/net/HttpHelper$OfflineIoException;
        }
    .end annotation

    .prologue
    .line 635
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mFetchService:Lcom/google/android/apps/books/service/ContentFetchService;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureMyEbooksVolumes(Landroid/accounts/Account;Z)V
    :try_end_5
    .catch Lcom/google/android/apps/books/net/HttpHelper$OfflineIoException; {:try_start_0 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_8

    .line 641
    :goto_5
    return-void

    .line 636
    :catch_6
    move-exception v0

    .line 637
    .local v0, e:Lcom/google/android/apps/books/net/HttpHelper$OfflineIoException;
    throw v0

    .line 638
    .end local v0           #e:Lcom/google/android/apps/books/net/HttpHelper$OfflineIoException;
    :catch_8
    move-exception v0

    .line 639
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BooksSync"

    const-string v2, "ensureMyEbooksVolumes error. Device is online, continuing."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method private upSyncCollectionVolumes(Landroid/accounts/Account;J)V
    .registers 15
    .parameter "account"
    .parameter "collectionId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    .line 691
    const-string v2, "BooksSync"

    invoke-static {v2, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 692
    const-string v2, "BooksSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "started upSyncCollectionVolumes() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_2d
    :try_start_2d
    invoke-virtual {p0}, Lcom/google/android/apps/books/service/SyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 698
    .local v9, resolver:Landroid/content/ContentResolver;
    new-instance v1, Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v1, v9, v2, p2, p3}, Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 700
    .local v1, synchronizable:Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;
    invoke-virtual {p0}, Lcom/google/android/apps/books/service/SyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/books/app/BooksApplication;->getSessionKeyFactory(Landroid/content/Context;)Lcom/google/android/apps/books/util/SessionKeyFactory;

    move-result-object v8

    .line 701
    .local v8, factory:Lcom/google/android/apps/books/util/SessionKeyFactory;
    new-instance v0, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;

    iget-object v2, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    iget-object v3, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;-><init>(Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;Lcom/google/android/apps/books/net/ResponseGetter;Lcom/google/android/apps/books/api/ApiaryClient;Landroid/accounts/Account;J)V

    .line 704
    .local v0, upSyncher:Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;
    invoke-virtual {v0}, Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;->upsync()V
    :try_end_52
    .catch Lcom/google/android/apps/books/net/HttpHelper$OfflineIoException; {:try_start_2d .. :try_end_52} :catch_62
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_52} :catch_64

    .line 711
    .end local v0           #upSyncher:Lcom/google/android/apps/books/sync/CollectionVolumesTableUpSynchronizer;
    .end local v1           #synchronizable:Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;
    .end local v8           #factory:Lcom/google/android/apps/books/util/SessionKeyFactory;
    .end local v9           #resolver:Landroid/content/ContentResolver;
    :goto_52
    const-string v2, "BooksSync"

    invoke-static {v2, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 712
    const-string v2, "BooksSync"

    const-string v3, "finished upSyncCollectionVolumes()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_61
    return-void

    .line 705
    :catch_62
    move-exception v7

    .line 706
    .local v7, e:Lcom/google/android/apps/books/net/HttpHelper$OfflineIoException;
    throw v7

    .line 707
    .end local v7           #e:Lcom/google/android/apps/books/net/HttpHelper$OfflineIoException;
    :catch_64
    move-exception v7

    .line 708
    .local v7, e:Ljava/io/IOException;
    const-string v2, "BooksSync"

    const-string v3, "Collection volumes upsync error. Device is still online, continuing."

    invoke-static {v2, v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_52
.end method

.method private upSyncReadingPositions(Landroid/accounts/Account;)V
    .registers 12
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    .line 720
    const-string v3, "BooksSync"

    invoke-static {v3, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 721
    const-string v3, "BooksSync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "started syncReadingPositions() for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_23
    :try_start_23
    invoke-virtual {p0}, Lcom/google/android/apps/books/service/SyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 726
    .local v6, context:Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 727
    .local v8, resolver:Landroid/content/ContentResolver;
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 728
    .local v2, appName:Ljava/lang/String;
    new-instance v1, Lcom/google/android/apps/books/sync/StatesServerSynchronizable;

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v1, v8, v3}, Lcom/google/android/apps/books/sync/StatesServerSynchronizable;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 732
    .local v1, synchronizable:Lcom/google/android/apps/books/sync/StatesServerSynchronizable;
    new-instance v0, Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;

    iget-object v3, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    iget-object v4, p0, Lcom/google/android/apps/books/service/SyncAdapter;->mApiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;-><init>(Lcom/google/android/apps/books/sync/StatesServerSynchronizable;Ljava/lang/String;Lcom/google/android/apps/books/net/ResponseGetter;Lcom/google/android/apps/books/api/ApiaryClient;Landroid/accounts/Account;)V

    .line 734
    .local v0, upSyncher:Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;
    invoke-virtual {v0}, Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;->upsync()V
    :try_end_43
    .catch Lcom/google/android/apps/books/net/HttpHelper$OfflineIoException; {:try_start_23 .. :try_end_43} :catch_53
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_43} :catch_55

    .line 741
    .end local v0           #upSyncher:Lcom/google/android/apps/books/sync/StatesTableUpSynchronizer;
    .end local v1           #synchronizable:Lcom/google/android/apps/books/sync/StatesServerSynchronizable;
    .end local v2           #appName:Ljava/lang/String;
    .end local v6           #context:Landroid/content/Context;
    .end local v8           #resolver:Landroid/content/ContentResolver;
    :goto_43
    const-string v3, "BooksSync"

    invoke-static {v3, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 742
    const-string v3, "BooksSync"

    const-string v4, "finished upSyncReadingPositions()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_52
    return-void

    .line 735
    :catch_53
    move-exception v7

    .line 736
    .local v7, e:Lcom/google/android/apps/books/net/HttpHelper$OfflineIoException;
    throw v7

    .line 737
    .end local v7           #e:Lcom/google/android/apps/books/net/HttpHelper$OfflineIoException;
    :catch_55
    move-exception v7

    .line 738
    .local v7, e:Ljava/io/IOException;
    const-string v3, "BooksSync"

    const-string v4, "Reading positions upsync error. Device is still online, continuing."

    invoke-static {v3, v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .registers 23
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 448
    const-string v2, "BooksSync"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 449
    const-string v2, "BooksSync"

    const-string v3, "Starting books sync"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/books/service/SyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 454
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 455
    const-string v2, "SyncService.VOLUME_IDS"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 457
    if-eqz v2, :cond_177

    .line 458
    invoke-static/range {p2 .. p2}, Lcom/google/android/apps/books/service/SyncService;->getVolumeIds(Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object v4

    .line 462
    :goto_26
    const-string v2, "upload"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 463
    const-string v2, "SyncService.DOWNLOAD"

    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 464
    const-string v2, "SyncService.DISPLAY_PROGRESS"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 465
    const-string v2, "SyncService.FETCH_BOOKS"

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 466
    const-string v2, "BooksSync"

    const/4 v6, 0x3

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 467
    const-string v2, "BooksSync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sync extras: volumeIds="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", uploadOnly="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", download="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", fetchBooks="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_89
    const/4 v8, 0x0

    .line 472
    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/books/common/BooksContext;

    invoke-interface {v2}, Lcom/google/android/apps/books/common/BooksContext;->getSyncUi()Lcom/google/android/apps/books/service/SyncService$SyncUi;

    move-result-object v6

    .line 473
    if-nez v5, :cond_a1

    invoke-interface {v6}, Lcom/google/android/apps/books/service/SyncService$SyncUi;->shouldNotifyByDefault()Z

    move-result v2

    if-nez v2, :cond_a1

    .line 474
    new-instance v6, Lcom/google/android/apps/books/service/SyncService$StubSyncUi;

    invoke-direct {v6}, Lcom/google/android/apps/books/service/SyncService$StubSyncUi;-><init>()V

    .line 477
    :cond_a1
    const-string v2, "BooksLazySync"

    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    .line 480
    :try_start_a8
    new-instance v5, Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;-><init>(Lcom/google/android/apps/books/service/SyncAdapter;)V

    .line 483
    new-instance v13, Landroid/content/Intent;

    const-class v14, Lcom/google/android/apps/books/service/ContentFetchService;

    invoke-direct {v13, v9, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mConnection:Landroid/content/ServiceConnection;

    const/4 v15, 0x1

    invoke-virtual {v9, v13, v14, v15}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 485
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mServiceSemaphore:Ljava/util/concurrent/Semaphore;

    const-wide/16 v14, 0xf

    sget-object v16, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v13 .. v16}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v13

    if-eqz v13, :cond_1d8

    .line 486
    sget-object v13, Lcom/google/android/apps/books/service/SyncService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_cf
    .catchall {:try_start_a8 .. :try_end_cf} :catchall_1eb
    .catch Ljava/lang/InterruptedException; {:try_start_a8 .. :try_end_cf} :catch_1e1
    .catch Lcom/google/android/apps/books/provider/ExternalStorageInconsistentException; {:try_start_a8 .. :try_end_cf} :catch_201
    .catch Lcom/google/android/apps/books/provider/ExternalStorageUnavailableException; {:try_start_a8 .. :try_end_cf} :catch_21f
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_cf} :catch_23d

    .line 488
    :try_start_cf
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mFetchService:Lcom/google/android/apps/books/service/ContentFetchService;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureMyEbooksCollection(Landroid/accounts/Account;)V

    .line 490
    invoke-direct/range {p0 .. p1}, Lcom/google/android/apps/books/service/SyncAdapter;->upSyncReadingPositions(Landroid/accounts/Account;)V

    .line 491
    const-wide/16 v14, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v15}, Lcom/google/android/apps/books/service/SyncAdapter;->upSyncCollectionVolumes(Landroid/accounts/Account;J)V

    .line 493
    if-eqz v4, :cond_1be

    .line 494
    if-nez v2, :cond_17a

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p5

    .line 495
    invoke-direct/range {v2 .. v7}, Lcom/google/android/apps/books/service/SyncAdapter;->downloadVolumes(Landroid/accounts/Account;[Ljava/lang/String;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;Lcom/google/android/apps/books/service/SyncService$SyncUi;Landroid/content/SyncResult;)V
    :try_end_f1
    .catchall {:try_start_cf .. :try_end_f1} :catchall_183

    .line 499
    :goto_f1
    const/4 v3, 0x1

    .line 510
    :goto_f2
    :try_start_f2
    const-string v2, "BooksSync"

    const/4 v4, 0x3

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_102

    .line 511
    const-string v2, "BooksSync"

    const-string v4, "marking executor for shutdown when finished..."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mExecService:Lcom/google/android/apps/books/service/DrainableExecutor;

    invoke-virtual {v2}, Lcom/google/android/apps/books/service/DrainableExecutor;->drain()Ljava/util/List;

    .line 514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mExecService:Lcom/google/android/apps/books/service/DrainableExecutor;

    invoke-virtual {v2}, Lcom/google/android/apps/books/service/DrainableExecutor;->shutdown()V

    .line 515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mExecService:Lcom/google/android/apps/books/service/DrainableExecutor;

    const-wide/32 v4, 0x1b7740

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v6}, Lcom/google/android/apps/books/service/DrainableExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 517
    const-string v2, "BooksSync"

    const/4 v4, 0x3

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_12c

    .line 518
    const-string v2, "BooksSync"

    const-string v4, "...and executor finally shutdown!"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_12c
    invoke-direct/range {p0 .. p1}, Lcom/google/android/apps/books/service/SyncAdapter;->maybeUpdateSubscribedFeeds(Landroid/accounts/Account;)V

    .line 524
    monitor-exit v13
    :try_end_130
    .catchall {:try_start_f2 .. :try_end_130} :catchall_264

    .line 558
    :goto_130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mExecService:Lcom/google/android/apps/books/service/DrainableExecutor;

    invoke-virtual {v2}, Lcom/google/android/apps/books/service/DrainableExecutor;->shutdown()V

    .line 561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mFetchService:Lcom/google/android/apps/books/service/ContentFetchService;

    if-eqz v2, :cond_144

    .line 562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v9, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 567
    :cond_144
    :goto_144
    invoke-direct/range {p0 .. p1}, Lcom/google/android/apps/books/service/SyncAdapter;->syncPlusOnes(Landroid/accounts/Account;)V

    .line 569
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 570
    sub-long/2addr v2, v10

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 571
    const-string v4, "BooksSync"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_176

    .line 572
    const-string v4, "BooksSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPerformSync() took "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_176
    return-void

    .line 460
    :cond_177
    const/4 v4, 0x0

    goto/16 :goto_26

    .line 497
    :cond_17a
    :try_start_17a
    const-string v2, "BooksSync"

    const-string v3, "======== Skipping downloadVolumes() due to lazy flag"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_181
    .catchall {:try_start_17a .. :try_end_181} :catchall_183

    goto/16 :goto_f1

    .line 524
    :catchall_183
    move-exception v2

    move v3, v8

    :goto_185
    :try_start_185
    monitor-exit v13
    :try_end_186
    .catchall {:try_start_185 .. :try_end_186} :catchall_264

    :try_start_186
    throw v2
    :try_end_187
    .catchall {:try_start_186 .. :try_end_187} :catchall_1eb
    .catch Ljava/lang/InterruptedException; {:try_start_186 .. :try_end_187} :catch_187
    .catch Lcom/google/android/apps/books/provider/ExternalStorageInconsistentException; {:try_start_186 .. :try_end_187} :catch_201
    .catch Lcom/google/android/apps/books/provider/ExternalStorageUnavailableException; {:try_start_186 .. :try_end_187} :catch_21f
    .catch Ljava/lang/Exception; {:try_start_186 .. :try_end_187} :catch_23d

    .line 529
    :catch_187
    move-exception v2

    move v8, v3

    .line 531
    :goto_189
    :try_start_189
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mExecService:Lcom/google/android/apps/books/service/DrainableExecutor;

    invoke-virtual {v3}, Lcom/google/android/apps/books/service/DrainableExecutor;->getExceptions()Ljava/util/List;

    move-result-object v3

    .line 532
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/apps/books/service/SyncAdapter;->findFirstExternalStorageException(Ljava/lang/Iterable;)Ljava/io/FileNotFoundException;

    move-result-object v3

    .line 534
    if-eqz v3, :cond_1a0

    .line 535
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/books/service/SyncAdapter;->registerHardError(Landroid/content/SyncResult;Ljava/lang/Exception;)V

    .line 538
    :cond_1a0
    if-eqz v8, :cond_1e3

    .line 542
    const-string v2, "BooksSync"

    const-string v3, "SyncManager interrupted sync, will pick up later"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a9
    .catchall {:try_start_189 .. :try_end_1a9} :catchall_1eb

    .line 558
    :goto_1a9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mExecService:Lcom/google/android/apps/books/service/DrainableExecutor;

    invoke-virtual {v2}, Lcom/google/android/apps/books/service/DrainableExecutor;->shutdown()V

    .line 561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mFetchService:Lcom/google/android/apps/books/service/ContentFetchService;

    if-eqz v2, :cond_144

    .line 562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v9, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_144

    .line 500
    :cond_1be
    if-eqz v3, :cond_1c3

    .line 501
    const/4 v3, 0x1

    goto/16 :goto_f2

    .line 505
    :cond_1c3
    :try_start_1c3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/google/android/apps/books/service/SyncAdapter;->tryEnsureMyEbooksVolumes(Landroid/accounts/Account;Z)V

    .line 506
    const/4 v8, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move v4, v7

    move-object/from16 v7, p5

    .line 507
    invoke-direct/range {v2 .. v7}, Lcom/google/android/apps/books/service/SyncAdapter;->syncCoversAndContent(Landroid/accounts/Account;ZLcom/google/android/apps/books/service/SyncAdapter$SyncContext;Lcom/google/android/apps/books/service/SyncService$SyncUi;Landroid/content/SyncResult;)V
    :try_end_1d5
    .catchall {:try_start_1c3 .. :try_end_1d5} :catchall_183

    move v3, v8

    goto/16 :goto_f2

    .line 526
    :cond_1d8
    :try_start_1d8
    const-string v2, "BooksSync"

    const-string v3, "Unable to acquire service connection"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1df
    .catchall {:try_start_1d8 .. :try_end_1df} :catchall_1eb
    .catch Ljava/lang/InterruptedException; {:try_start_1d8 .. :try_end_1df} :catch_1e1
    .catch Lcom/google/android/apps/books/provider/ExternalStorageInconsistentException; {:try_start_1d8 .. :try_end_1df} :catch_201
    .catch Lcom/google/android/apps/books/provider/ExternalStorageUnavailableException; {:try_start_1d8 .. :try_end_1df} :catch_21f
    .catch Ljava/lang/Exception; {:try_start_1d8 .. :try_end_1df} :catch_23d

    goto/16 :goto_130

    .line 529
    :catch_1e1
    move-exception v2

    goto :goto_189

    .line 546
    :cond_1e3
    :try_start_1e3
    const-string v3, "BooksSync"

    const-string v4, "SyncManager interrupted sync prematurely: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1ea
    .catchall {:try_start_1e3 .. :try_end_1ea} :catchall_1eb

    goto :goto_1a9

    .line 558
    :catchall_1eb
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mExecService:Lcom/google/android/apps/books/service/DrainableExecutor;

    invoke-virtual {v3}, Lcom/google/android/apps/books/service/DrainableExecutor;->shutdown()V

    .line 561
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mFetchService:Lcom/google/android/apps/books/service/ContentFetchService;

    if-eqz v3, :cond_200

    .line 562
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v9, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_200
    throw v2

    .line 548
    :catch_201
    move-exception v2

    .line 549
    :try_start_202
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/service/SyncAdapter;->registerHardError(Landroid/content/SyncResult;Ljava/lang/Exception;)V
    :try_end_209
    .catchall {:try_start_202 .. :try_end_209} :catchall_1eb

    .line 558
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mExecService:Lcom/google/android/apps/books/service/DrainableExecutor;

    invoke-virtual {v2}, Lcom/google/android/apps/books/service/DrainableExecutor;->shutdown()V

    .line 561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mFetchService:Lcom/google/android/apps/books/service/ContentFetchService;

    if-eqz v2, :cond_144

    .line 562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v9, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto/16 :goto_144

    .line 550
    :catch_21f
    move-exception v2

    .line 551
    :try_start_220
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/service/SyncAdapter;->registerHardError(Landroid/content/SyncResult;Ljava/lang/Exception;)V
    :try_end_227
    .catchall {:try_start_220 .. :try_end_227} :catchall_1eb

    .line 558
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mExecService:Lcom/google/android/apps/books/service/DrainableExecutor;

    invoke-virtual {v2}, Lcom/google/android/apps/books/service/DrainableExecutor;->shutdown()V

    .line 561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mFetchService:Lcom/google/android/apps/books/service/ContentFetchService;

    if-eqz v2, :cond_144

    .line 562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v9, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto/16 :goto_144

    .line 552
    :catch_23d
    move-exception v2

    .line 553
    :try_start_23e
    const-string v3, "BooksSync"

    const/4 v4, 0x6

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_24e

    .line 554
    const-string v3, "BooksSync"

    const-string v4, "Sync error"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_24e
    .catchall {:try_start_23e .. :try_end_24e} :catchall_1eb

    .line 558
    :cond_24e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mExecService:Lcom/google/android/apps/books/service/DrainableExecutor;

    invoke-virtual {v2}, Lcom/google/android/apps/books/service/DrainableExecutor;->shutdown()V

    .line 561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mFetchService:Lcom/google/android/apps/books/service/ContentFetchService;

    if-eqz v2, :cond_144

    .line 562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/service/SyncAdapter;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v9, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto/16 :goto_144

    .line 524
    :catchall_264
    move-exception v2

    goto/16 :goto_185
.end method
