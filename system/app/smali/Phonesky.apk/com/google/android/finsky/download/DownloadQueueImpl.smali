.class public Lcom/google/android/finsky/download/DownloadQueueImpl;
.super Ljava/lang/Object;
.source "DownloadQueueImpl.java"

# interfaces
.implements Lcom/google/android/finsky/download/DownloadQueue;
.implements Lcom/google/android/finsky/download/DownloadQueueListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/download/DownloadQueueImpl$8;,
        Lcom/google/android/finsky/download/DownloadQueueImpl$PurgeCacheCallback;,
        Lcom/google/android/finsky/download/DownloadQueueImpl$StartNextDownloadRunnable;,
        Lcom/google/android/finsky/download/DownloadQueueImpl$ListenerNotifier;,
        Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDownloadManager:Lcom/google/android/finsky/download/DownloadManager;

.field private mDownloadProgressManager:Lcom/google/android/finsky/download/DownloadProgressManager;

.field private mListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/finsky/download/DownloadQueueListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxConcurrent:I

.field private mPendingQueue:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/download/InternalDownload;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousContentUri:Landroid/net/Uri;

.field private mPreviousProgressStatus:I

.field private mRunningMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/download/InternalDownload;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/google/android/finsky/download/DownloadManager;)V
    .registers 5
    .parameter "context"
    .parameter "maxConcurrent"
    .parameter "downloadManager"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPreviousContentUri:Landroid/net/Uri;

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPreviousProgressStatus:I

    .line 91
    invoke-direct {p0}, Lcom/google/android/finsky/download/DownloadQueueImpl;->setupQueue()V

    .line 92
    iput p2, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mMaxConcurrent:I

    .line 93
    iput-object p3, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadManager:Lcom/google/android/finsky/download/DownloadManager;

    .line 94
    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mContext:Landroid/content/Context;

    .line 95
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mListeners:Ljava/util/LinkedList;

    .line 96
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/download/DownloadManager;)V
    .registers 4
    .parameter "context"
    .parameter "downloadManager"

    .prologue
    .line 100
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/finsky/download/DownloadQueueImpl;-><init>(Landroid/content/Context;ILcom/google/android/finsky/download/DownloadManager;)V

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/download/DownloadQueueImpl;)Ljava/util/LinkedList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mListeners:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/download/DownloadQueueImpl;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mRunningMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/download/DownloadQueueImpl;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mMaxConcurrent:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/download/DownloadQueueImpl;)Ljava/util/LinkedHashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPendingQueue:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/download/DownloadQueueImpl;)Lcom/google/android/finsky/download/DownloadProgressManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadProgressManager:Lcom/google/android/finsky/download/DownloadProgressManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/finsky/download/DownloadQueueImpl;Lcom/google/android/finsky/download/DownloadProgressManager;)Lcom/google/android/finsky/download/DownloadProgressManager;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadProgressManager:Lcom/google/android/finsky/download/DownloadProgressManager;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/android/finsky/download/DownloadQueueImpl;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/finsky/download/DownloadQueueImpl;)Lcom/google/android/finsky/download/DownloadManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadManager:Lcom/google/android/finsky/download/DownloadManager;

    return-object v0
.end method

.method private enqueueDownload(Lcom/google/android/finsky/download/InternalDownload;)V
    .registers 6
    .parameter

    .prologue
    .line 540
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    .line 541
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/android/finsky/download/DownloadBroadcastReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/google/android/finsky/download/InternalDownload;->createDownloadRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/download/DownloadRequest;

    move-result-object v1

    .line 545
    iget-object v2, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadManager:Lcom/google/android/finsky/download/DownloadManager;

    new-instance v3, Lcom/google/android/finsky/download/DownloadQueueImpl$7;

    invoke-direct {v3, p0, p1, v0}, Lcom/google/android/finsky/download/DownloadQueueImpl$7;-><init>(Lcom/google/android/finsky/download/DownloadQueueImpl;Lcom/google/android/finsky/download/InternalDownload;Landroid/content/Context;)V

    invoke-interface {v2, v1, v3}, Lcom/google/android/finsky/download/DownloadManager;->enqueue(Lcom/google/android/finsky/download/DownloadRequest;Lcom/google/android/finsky/utils/ParameterizedRunnable;)V

    .line 568
    return-void
.end method

.method private remove(Lcom/google/android/finsky/download/InternalDownload;)V
    .registers 7
    .parameter "download"

    .prologue
    .line 312
    const-string v1, "Download %s removed from DownloadQueue"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, url:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPendingQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 316
    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPendingQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    :goto_20
    return-void

    .line 320
    :cond_21
    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mRunningMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    invoke-direct {p0}, Lcom/google/android/finsky/download/DownloadQueueImpl;->startNextDownload()V

    goto :goto_20
.end method

.method private removeFromDownloadManager(Lcom/google/android/finsky/download/InternalDownload;)V
    .registers 4
    .parameter "download"

    .prologue
    .line 626
    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 627
    .local v0, contentUri:Landroid/net/Uri;
    if-eqz v0, :cond_b

    .line 628
    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadManager:Lcom/google/android/finsky/download/DownloadManager;

    invoke-interface {v1, v0}, Lcom/google/android/finsky/download/DownloadManager;->remove(Landroid/net/Uri;)V

    .line 630
    :cond_b
    return-void
.end method

.method private setupQueue()V
    .registers 2

    .prologue
    .line 104
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPendingQueue:Ljava/util/LinkedHashMap;

    .line 105
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mRunningMap:Ljava/util/HashMap;

    .line 106
    return-void
.end method

.method private startNextDownload()V
    .registers 10

    .prologue
    .line 508
    iget-object v6, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mRunningMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    iget v7, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mMaxConcurrent:I

    if-lt v6, v7, :cond_b

    .line 524
    :goto_a
    return-void

    .line 512
    :cond_b
    const-wide/16 v2, 0x0

    .line 513
    .local v2, largestDownloadSize:J
    iget-object v6, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPendingQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 514
    .local v4, pendingDownloadKeyset:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 516
    .local v5, urls:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_34

    .line 517
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 518
    .local v1, key:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPendingQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/download/InternalDownload;

    .line 519
    .local v0, current:Lcom/google/android/finsky/download/InternalDownload;
    invoke-interface {v0}, Lcom/google/android/finsky/download/InternalDownload;->getMaximumSize()J

    move-result-wide v6

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 520
    goto :goto_17

    .line 521
    .end local v0           #current:Lcom/google/android/finsky/download/InternalDownload;
    .end local v1           #key:Ljava/lang/String;
    :cond_34
    iget-object v6, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/google/android/finsky/download/DownloadQueueImpl$PurgeCacheCallback;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/google/android/finsky/download/DownloadQueueImpl$PurgeCacheCallback;-><init>(Lcom/google/android/finsky/download/DownloadQueueImpl;Lcom/google/android/finsky/download/DownloadQueueImpl$1;)V

    invoke-static {v6, v2, v3, v7}, Lcom/google/android/finsky/utils/PackageManagerUtils;->freeStorageAndNotify(Landroid/content/Context;JLcom/google/android/finsky/utils/PackageManagerUtils$FreeSpaceListener;)V

    goto :goto_a
.end method


# virtual methods
.method public add(Lcom/google/android/finsky/download/InternalDownload;)V
    .registers 6
    .parameter "download"

    .prologue
    const/4 v3, 0x0

    .line 114
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 115
    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/download/DownloadQueueImpl;->getExisting(Ljava/lang/String;)Lcom/google/android/finsky/download/InternalDownload;

    move-result-object v0

    if-nez v0, :cond_1a

    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->getState()Lcom/google/android/finsky/download/Download$DownloadState;

    move-result-object v0

    sget-object v1, Lcom/google/android/finsky/download/Download$DownloadState;->UNQUEUED:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/download/Download$DownloadState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 117
    :cond_1a
    const-string v0, "Tried to add invalid download to DownloadQueue."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    :cond_21
    const-string v0, "Download %s added to DownloadQueue"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPendingQueue:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadProgressManager:Lcom/google/android/finsky/download/DownloadProgressManager;

    if-nez v0, :cond_43

    .line 124
    new-instance v0, Lcom/google/android/finsky/download/DownloadProgressManager;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/download/DownloadProgressManager;-><init>(Lcom/google/android/finsky/download/DownloadQueueImpl;)V

    iput-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadProgressManager:Lcom/google/android/finsky/download/DownloadProgressManager;

    .line 126
    :cond_43
    sget-object v0, Lcom/google/android/finsky/download/Download$DownloadState;->QUEUED:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/download/DownloadQueueImpl;->setDownloadState(Lcom/google/android/finsky/download/InternalDownload;Lcom/google/android/finsky/download/Download$DownloadState;)V

    .line 127
    invoke-direct {p0}, Lcom/google/android/finsky/download/DownloadQueueImpl;->startNextDownload()V

    .line 128
    return-void
.end method

.method public addListener(Lcom/google/android/finsky/download/DownloadQueueListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 269
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 270
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 271
    return-void
.end method

.method public addRecoveredDownload(Lcom/google/android/finsky/download/InternalDownload;)V
    .registers 6
    .parameter "download"

    .prologue
    .line 132
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 134
    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, url:Ljava/lang/String;
    const-string v1, "Download queue recovering download %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    sget-object v1, Lcom/google/android/finsky/download/Download$DownloadState;->DOWNLOADING:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/finsky/download/DownloadQueueImpl;->setDownloadState(Lcom/google/android/finsky/download/InternalDownload;Lcom/google/android/finsky/download/Download$DownloadState;)V

    .line 139
    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mRunningMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadProgressManager:Lcom/google/android/finsky/download/DownloadProgressManager;

    if-nez v1, :cond_27

    .line 142
    new-instance v1, Lcom/google/android/finsky/download/DownloadProgressManager;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/download/DownloadProgressManager;-><init>(Lcom/google/android/finsky/download/DownloadQueueImpl;)V

    iput-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadProgressManager:Lcom/google/android/finsky/download/DownloadProgressManager;

    .line 144
    :cond_27
    return-void
.end method

.method public cancel(Lcom/google/android/finsky/download/Download;)V
    .registers 5
    .parameter "download"

    .prologue
    .line 327
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    move-object v0, p1

    .line 328
    check-cast v0, Lcom/google/android/finsky/download/InternalDownload;

    .line 332
    .local v0, internalDownload:Lcom/google/android/finsky/download/InternalDownload;
    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/google/android/finsky/download/InternalDownload;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 339
    :cond_e
    :goto_e
    return-void

    .line 335
    :cond_f
    invoke-interface {v0}, Lcom/google/android/finsky/download/InternalDownload;->getState()Lcom/google/android/finsky/download/Download$DownloadState;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/download/Download$DownloadState;->DOWNLOADING:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/download/Download$DownloadState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 336
    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadManager:Lcom/google/android/finsky/download/DownloadManager;

    invoke-interface {v0}, Lcom/google/android/finsky/download/InternalDownload;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/finsky/download/DownloadManager;->remove(Landroid/net/Uri;)V

    .line 338
    :cond_24
    sget-object v1, Lcom/google/android/finsky/download/Download$DownloadState;->CANCELLED:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/download/DownloadQueueImpl;->setDownloadState(Lcom/google/android/finsky/download/InternalDownload;Lcom/google/android/finsky/download/Download$DownloadState;)V

    goto :goto_e
.end method

.method public getByPackageName(Ljava/lang/String;)Lcom/google/android/finsky/download/Download;
    .registers 9
    .parameter "packageName"

    .prologue
    .line 157
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 159
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "empty packageName"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 162
    :cond_11
    iget-object v5, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPendingQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/download/InternalDownload;

    .line 163
    .local v1, pending:Lcom/google/android/finsky/download/InternalDownload;
    invoke-interface {v1}, Lcom/google/android/finsky/download/InternalDownload;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, pendingPackageName:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 174
    .end local v1           #pending:Lcom/google/android/finsky/download/InternalDownload;
    .end local v2           #pendingPackageName:Ljava/lang/String;
    :goto_31
    return-object v1

    .line 168
    :cond_32
    iget-object v5, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mRunningMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/download/InternalDownload;

    .line 169
    .local v3, running:Lcom/google/android/finsky/download/InternalDownload;
    invoke-interface {v3}, Lcom/google/android/finsky/download/InternalDownload;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 170
    .local v4, runningPackageName:Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    move-object v1, v3

    .line 171
    goto :goto_31

    .line 174
    .end local v3           #running:Lcom/google/android/finsky/download/InternalDownload;
    .end local v4           #runningPackageName:Ljava/lang/String;
    :cond_54
    const/4 v1, 0x0

    goto :goto_31
.end method

.method public getDownloadByContentUri(Landroid/net/Uri;)Lcom/google/android/finsky/download/Download;
    .registers 7
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 284
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 285
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, uriString:Ljava/lang/String;
    :goto_a
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 294
    :cond_10
    :goto_10
    return-object v3

    .end local v2           #uriString:Ljava/lang/String;
    :cond_11
    move-object v2, v3

    .line 285
    goto :goto_a

    .line 289
    .restart local v2       #uriString:Ljava/lang/String;
    :cond_13
    iget-object v4, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mRunningMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/download/InternalDownload;

    .line 290
    .local v0, checkRunning:Lcom/google/android/finsky/download/InternalDownload;
    invoke-interface {v0}, Lcom/google/android/finsky/download/InternalDownload;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    move-object v3, v0

    .line 291
    goto :goto_10
.end method

.method public getDownloadManager()Lcom/google/android/finsky/download/DownloadManager;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadManager:Lcom/google/android/finsky/download/DownloadManager;

    return-object v0
.end method

.method getExisting(Ljava/lang/String;)Lcom/google/android/finsky/download/InternalDownload;
    .registers 3
    .parameter "url"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mRunningMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 303
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mRunningMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/download/InternalDownload;

    .line 308
    :goto_10
    return-object v0

    .line 305
    :cond_11
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPendingQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 306
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPendingQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/download/InternalDownload;

    goto :goto_10

    .line 308
    :cond_22
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getRunningUris()Ljava/util/Collection;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v8, -0x1

    .line 648
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureNotOnMainThread()V

    .line 649
    const/4 v3, 0x0

    .line 651
    .local v3, cursor:Landroid/database/Cursor;
    :try_start_6
    iget-object v7, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadManager:Lcom/google/android/finsky/download/DownloadManager;

    invoke-interface {v7}, Lcom/google/android/finsky/download/DownloadManager;->queryAllDownloads()Landroid/database/Cursor;

    move-result-object v3

    .line 652
    if-eqz v3, :cond_14

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_5b

    move-result v7

    if-nez v7, :cond_1a

    .line 670
    :cond_14
    if-eqz v3, :cond_19

    .line 671
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_19
    :goto_19
    return-object v5

    .line 655
    :cond_1a
    :try_start_1a
    const-string v7, "_id"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 656
    .local v0, columnId:I
    const-string v7, "status"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 657
    .local v1, columnStatus:I
    if-eq v0, v8, :cond_2a

    if-ne v1, v8, :cond_38

    .line 658
    :cond_2a
    const-string v7, "Missing column(s) in download mgr cursor"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_32
    .catchall {:try_start_1a .. :try_end_32} :catchall_5b

    .line 670
    if-eqz v3, :cond_19

    .line 671
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_19

    .line 661
    :cond_38
    :try_start_38
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/finsky/utils/Lists;->newArrayList(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 662
    .local v5, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;>;"
    :goto_40
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_62

    .line 663
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 664
    .local v4, id:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/finsky/download/DownloadManagerConstants;->getContentUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 665
    .local v2, contentUri:Ljava/lang/String;
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 666
    .local v6, status:I
    new-instance v7, Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;

    invoke-direct {v7, v2, v6}, Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5a
    .catchall {:try_start_38 .. :try_end_5a} :catchall_5b

    goto :goto_40

    .line 670
    .end local v0           #columnId:I
    .end local v1           #columnStatus:I
    .end local v2           #contentUri:Ljava/lang/String;
    .end local v4           #id:Ljava/lang/String;
    .end local v5           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;>;"
    .end local v6           #status:I
    :catchall_5b
    move-exception v7

    if-eqz v3, :cond_61

    .line 671
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_61
    throw v7

    .line 670
    .restart local v0       #columnId:I
    .restart local v1       #columnStatus:I
    .restart local v5       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/finsky/download/DownloadQueue$RunningDownload;>;"
    :cond_62
    if-eqz v3, :cond_19

    .line 671
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_19
.end method

.method public notifyClicked(Lcom/google/android/finsky/download/InternalDownload;)V
    .registers 6
    .parameter "download"

    .prologue
    .line 348
    const-string v0, "%s: onNotificationClicked"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    sget-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->NOTIFICATION_CLICKED:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/finsky/download/DownloadQueueImpl;->notifyListeners(Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;)V

    .line 350
    return-void
.end method

.method notifyListeners(Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;)V
    .registers 9
    .parameter "type"
    .parameter "download"

    .prologue
    .line 203
    move-object v2, p2

    check-cast v2, Lcom/google/android/finsky/download/InternalDownload;

    .line 204
    .local v2, internal:Lcom/google/android/finsky/download/InternalDownload;
    if-nez p2, :cond_1c

    const/4 v1, 0x0

    .line 205
    .local v1, currentProgress:Lcom/google/android/finsky/download/DownloadProgress;
    :goto_6
    if-nez p2, :cond_21

    const/4 v0, -0x1

    .line 208
    .local v0, currentHttpStatus:I
    :goto_9
    sget-object v4, Lcom/google/android/finsky/download/DownloadQueueImpl$8;->$SwitchMap$com$google$android$finsky$download$DownloadQueueImpl$UpdateListenerType:[I

    invoke-virtual {p1}, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_56

    .line 258
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Bad listener type."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 204
    .end local v0           #currentHttpStatus:I
    .end local v1           #currentProgress:Lcom/google/android/finsky/download/DownloadProgress;
    :cond_1c
    invoke-interface {v2}, Lcom/google/android/finsky/download/InternalDownload;->getProgress()Lcom/google/android/finsky/download/DownloadProgress;

    move-result-object v1

    goto :goto_6

    .line 205
    .restart local v1       #currentProgress:Lcom/google/android/finsky/download/DownloadProgress;
    :cond_21
    invoke-interface {v2}, Lcom/google/android/finsky/download/InternalDownload;->getHttpStatus()I

    move-result v0

    goto :goto_9

    .line 210
    .restart local v0       #currentHttpStatus:I
    :pswitch_26
    new-instance v3, Lcom/google/android/finsky/download/DownloadQueueImpl$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/google/android/finsky/download/DownloadQueueImpl$1;-><init>(Lcom/google/android/finsky/download/DownloadQueueImpl;Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;)V

    .line 260
    .local v3, r:Ljava/lang/Runnable;
    :goto_2b
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 261
    return-void

    .line 218
    .end local v3           #r:Ljava/lang/Runnable;
    :pswitch_38
    new-instance v3, Lcom/google/android/finsky/download/DownloadQueueImpl$2;

    invoke-direct {v3, p0, p1, p2}, Lcom/google/android/finsky/download/DownloadQueueImpl$2;-><init>(Lcom/google/android/finsky/download/DownloadQueueImpl;Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;)V

    .line 224
    .restart local v3       #r:Ljava/lang/Runnable;
    goto :goto_2b

    .line 226
    .end local v3           #r:Ljava/lang/Runnable;
    :pswitch_3e
    new-instance v3, Lcom/google/android/finsky/download/DownloadQueueImpl$3;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/google/android/finsky/download/DownloadQueueImpl$3;-><init>(Lcom/google/android/finsky/download/DownloadQueueImpl;Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;Lcom/google/android/finsky/download/DownloadProgress;)V

    .line 232
    .restart local v3       #r:Ljava/lang/Runnable;
    goto :goto_2b

    .line 234
    .end local v3           #r:Ljava/lang/Runnable;
    :pswitch_44
    new-instance v3, Lcom/google/android/finsky/download/DownloadQueueImpl$4;

    invoke-direct {v3, p0, p1, p2}, Lcom/google/android/finsky/download/DownloadQueueImpl$4;-><init>(Lcom/google/android/finsky/download/DownloadQueueImpl;Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;)V

    .line 240
    .restart local v3       #r:Ljava/lang/Runnable;
    goto :goto_2b

    .line 242
    .end local v3           #r:Ljava/lang/Runnable;
    :pswitch_4a
    new-instance v3, Lcom/google/android/finsky/download/DownloadQueueImpl$5;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/google/android/finsky/download/DownloadQueueImpl$5;-><init>(Lcom/google/android/finsky/download/DownloadQueueImpl;Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;I)V

    .line 248
    .restart local v3       #r:Ljava/lang/Runnable;
    goto :goto_2b

    .line 250
    .end local v3           #r:Ljava/lang/Runnable;
    :pswitch_50
    new-instance v3, Lcom/google/android/finsky/download/DownloadQueueImpl$6;

    invoke-direct {v3, p0, p1, p2}, Lcom/google/android/finsky/download/DownloadQueueImpl$6;-><init>(Lcom/google/android/finsky/download/DownloadQueueImpl;Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;)V

    .line 256
    .restart local v3       #r:Ljava/lang/Runnable;
    goto :goto_2b

    .line 208
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_26
        :pswitch_38
        :pswitch_3e
        :pswitch_44
        :pswitch_4a
        :pswitch_50
    .end packed-switch
.end method

.method public notifyProgress(Lcom/google/android/finsky/download/InternalDownload;Lcom/google/android/finsky/download/DownloadProgress;)V
    .registers 8
    .parameter "download"
    .parameter "progress"

    .prologue
    .line 358
    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->getProgress()Lcom/google/android/finsky/download/DownloadProgress;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/android/finsky/download/DownloadProgress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 380
    :goto_a
    return-void

    .line 361
    :cond_b
    invoke-interface {p1, p2}, Lcom/google/android/finsky/download/InternalDownload;->setProgress(Lcom/google/android/finsky/download/DownloadProgress;)V

    .line 365
    const/4 v0, 0x0

    .line 366
    .local v0, logProgress:Z
    iget v1, p2, Lcom/google/android/finsky/download/DownloadProgress;->statusCode:I

    iget v2, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPreviousProgressStatus:I

    if-eq v1, v2, :cond_3e

    .line 367
    const/4 v0, 0x1

    .line 372
    :cond_16
    :goto_16
    if-eqz v0, :cond_38

    .line 373
    const-string v1, "%s: onProgress %s."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcom/google/android/finsky/download/DownloadProgress;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPreviousContentUri:Landroid/net/Uri;

    .line 375
    iget v1, p2, Lcom/google/android/finsky/download/DownloadProgress;->statusCode:I

    iput v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPreviousProgressStatus:I

    .line 379
    :cond_38
    sget-object v1, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->PROGRESS:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    invoke-virtual {p0, v1, p1}, Lcom/google/android/finsky/download/DownloadQueueImpl;->notifyListeners(Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;)V

    goto :goto_a

    .line 368
    :cond_3e
    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPreviousContentUri:Landroid/net/Uri;

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPreviousContentUri:Landroid/net/Uri;

    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 370
    :cond_4e
    const/4 v0, 0x1

    goto :goto_16
.end method

.method public onCancel(Lcom/google/android/finsky/download/Download;)V
    .registers 7
    .parameter "download"

    .prologue
    .line 591
    move-object v0, p1

    check-cast v0, Lcom/google/android/finsky/download/InternalDownload;

    .line 592
    .local v0, internal:Lcom/google/android/finsky/download/InternalDownload;
    const-string v1, "%s: onCancel"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 593
    invoke-direct {p0, v0}, Lcom/google/android/finsky/download/DownloadQueueImpl;->remove(Lcom/google/android/finsky/download/InternalDownload;)V

    .line 594
    invoke-direct {p0, v0}, Lcom/google/android/finsky/download/DownloadQueueImpl;->removeFromDownloadManager(Lcom/google/android/finsky/download/InternalDownload;)V

    .line 595
    return-void
.end method

.method public onComplete(Lcom/google/android/finsky/download/Download;)V
    .registers 6
    .parameter "download"

    .prologue
    .line 581
    const-string v0, "%s: onComplete"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 582
    check-cast p1, Lcom/google/android/finsky/download/InternalDownload;

    .end local p1
    invoke-direct {p0, p1}, Lcom/google/android/finsky/download/DownloadQueueImpl;->remove(Lcom/google/android/finsky/download/InternalDownload;)V

    .line 583
    return-void
.end method

.method public onError(Lcom/google/android/finsky/download/Download;I)V
    .registers 9
    .parameter "download"
    .parameter "httpStatus"

    .prologue
    const/4 v5, 0x1

    .line 603
    move-object v0, p1

    check-cast v0, Lcom/google/android/finsky/download/InternalDownload;

    .line 604
    .local v0, internal:Lcom/google/android/finsky/download/InternalDownload;
    const-string v1, "%s: onError %d."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 605
    const/16 v1, 0x193

    if-eq p2, v1, :cond_21

    const/16 v1, 0x191

    if-ne p2, v1, :cond_30

    .line 607
    :cond_21
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getVendingApi()Lcom/google/android/vending/remoting/api/VendingApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/vending/remoting/api/VendingApi;->getApiContext()Lcom/google/android/vending/remoting/api/VendingApiContext;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/google/android/vending/remoting/api/VendingApiContext;->scheduleReauthentication(Z)V

    .line 612
    :cond_30
    invoke-direct {p0, v0}, Lcom/google/android/finsky/download/DownloadQueueImpl;->remove(Lcom/google/android/finsky/download/InternalDownload;)V

    .line 613
    invoke-direct {p0, v0}, Lcom/google/android/finsky/download/DownloadQueueImpl;->removeFromDownloadManager(Lcom/google/android/finsky/download/InternalDownload;)V

    .line 614
    return-void
.end method

.method public onNotificationClicked(Lcom/google/android/finsky/download/Download;)V
    .registers 2
    .parameter "download"

    .prologue
    .line 637
    return-void
.end method

.method public onProgress(Lcom/google/android/finsky/download/Download;Lcom/google/android/finsky/download/DownloadProgress;)V
    .registers 3
    .parameter "download"
    .parameter "progress"

    .prologue
    .line 644
    return-void
.end method

.method public onStart(Lcom/google/android/finsky/download/Download;)V
    .registers 6
    .parameter "download"

    .prologue
    .line 622
    const-string v0, "%s: onStart"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 623
    return-void
.end method

.method public release(Landroid/net/Uri;)V
    .registers 3
    .parameter "contentUri"

    .prologue
    .line 678
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadManager:Lcom/google/android/finsky/download/DownloadManager;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/download/DownloadManager;->remove(Landroid/net/Uri;)V

    .line 679
    return-void
.end method

.method public setDownloadState(Lcom/google/android/finsky/download/InternalDownload;Lcom/google/android/finsky/download/Download$DownloadState;)V
    .registers 5
    .parameter "download"
    .parameter "state"

    .prologue
    .line 395
    invoke-interface {p1, p2}, Lcom/google/android/finsky/download/InternalDownload;->setState(Lcom/google/android/finsky/download/Download$DownloadState;)V

    .line 397
    sget-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$8;->$SwitchMap$com$google$android$finsky$download$Download$DownloadState:[I

    invoke-virtual {p2}, Lcom/google/android/finsky/download/Download$DownloadState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_28

    .line 414
    :goto_e
    return-void

    .line 399
    :pswitch_f
    sget-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->START:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/finsky/download/DownloadQueueImpl;->notifyListeners(Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;)V

    goto :goto_e

    .line 402
    :pswitch_15
    sget-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->CANCEL:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/finsky/download/DownloadQueueImpl;->notifyListeners(Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;)V

    goto :goto_e

    .line 405
    :pswitch_1b
    sget-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->ERROR:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/finsky/download/DownloadQueueImpl;->notifyListeners(Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;)V

    goto :goto_e

    .line 408
    :pswitch_21
    sget-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->COMPLETE:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/finsky/download/DownloadQueueImpl;->notifyListeners(Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;)V

    goto :goto_e

    .line 397
    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_f
        :pswitch_15
        :pswitch_1b
        :pswitch_21
    .end packed-switch
.end method

.method startDownload(Lcom/google/android/finsky/download/InternalDownload;)V
    .registers 6
    .parameter "download"

    .prologue
    .line 527
    if-nez p1, :cond_3

    .line 533
    :goto_2
    return-void

    .line 530
    :cond_3
    const-string v0, "Download %s starting"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 531
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mRunningMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    invoke-direct {p0, p1}, Lcom/google/android/finsky/download/DownloadQueueImpl;->enqueueDownload(Lcom/google/android/finsky/download/InternalDownload;)V

    goto :goto_2
.end method
