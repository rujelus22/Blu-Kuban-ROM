.class public Lcom/google/android/finsky/download/DownloadQueueImpl;
.super Ljava/lang/Object;
.source "DownloadQueueImpl.java"

# interfaces
.implements Lcom/google/android/finsky/download/DownloadQueue;
.implements Lcom/google/android/finsky/download/DownloadQueueListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/download/DownloadQueueImpl$11;,
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

.field private mNotificationHelper:Lcom/google/android/finsky/utils/Notifier;

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

.field private mUriUrlMap:Lcom/google/android/finsky/download/DownloadUriUrlMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/utils/Notifier;ILcom/google/android/finsky/download/DownloadManager;Lcom/google/android/finsky/download/DownloadUriUrlMap;)V
    .registers 7
    .parameter "context"
    .parameter "notificationHelper"
    .parameter "i"
    .parameter "downloadManager"
    .parameter "uriUrlMap"

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPreviousContentUri:Landroid/net/Uri;

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPreviousProgressStatus:I

    .line 107
    invoke-direct {p0}, Lcom/google/android/finsky/download/DownloadQueueImpl;->setupQueue()V

    .line 108
    iput-object p2, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mNotificationHelper:Lcom/google/android/finsky/utils/Notifier;

    .line 109
    iput p3, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mMaxConcurrent:I

    .line 110
    iput-object p4, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadManager:Lcom/google/android/finsky/download/DownloadManager;

    .line 111
    iput-object p5, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mUriUrlMap:Lcom/google/android/finsky/download/DownloadUriUrlMap;

    .line 112
    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mContext:Landroid/content/Context;

    .line 113
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mListeners:Ljava/util/LinkedList;

    .line 114
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/utils/Notifier;Lcom/google/android/finsky/download/DownloadManager;Lcom/google/android/finsky/download/DownloadUriUrlMap;)V
    .registers 11
    .parameter "context"
    .parameter "notificationHelper"
    .parameter "downloadManager"
    .parameter "uriUrlMap"

    .prologue
    .line 119
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/download/DownloadQueueImpl;-><init>(Landroid/content/Context;Lcom/google/android/finsky/utils/Notifier;ILcom/google/android/finsky/download/DownloadManager;Lcom/google/android/finsky/download/DownloadUriUrlMap;)V

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/download/DownloadQueueImpl;)Ljava/util/LinkedList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mListeners:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/download/DownloadQueueImpl;)Lcom/google/android/finsky/download/DownloadUriUrlMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mUriUrlMap:Lcom/google/android/finsky/download/DownloadUriUrlMap;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/finsky/download/DownloadQueueImpl;)Lcom/google/android/finsky/download/DownloadManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadManager:Lcom/google/android/finsky/download/DownloadManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/download/DownloadQueueImpl;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mRunningMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/download/DownloadQueueImpl;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mMaxConcurrent:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/download/DownloadQueueImpl;)Ljava/util/LinkedHashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPendingQueue:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/download/DownloadQueueImpl;)Lcom/google/android/finsky/utils/Notifier;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mNotificationHelper:Lcom/google/android/finsky/utils/Notifier;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/download/DownloadQueueImpl;)Lcom/google/android/finsky/download/DownloadProgressManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadProgressManager:Lcom/google/android/finsky/download/DownloadProgressManager;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/finsky/download/DownloadQueueImpl;Lcom/google/android/finsky/download/DownloadProgressManager;)Lcom/google/android/finsky/download/DownloadProgressManager;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadProgressManager:Lcom/google/android/finsky/download/DownloadProgressManager;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/android/finsky/download/DownloadQueueImpl;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private deleteDownloadedObbs(Lcom/google/android/finsky/download/InternalDownload;)V
    .registers 10
    .parameter "download"

    .prologue
    .line 739
    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->isObb()Z

    move-result v4

    if-nez v4, :cond_40

    .line 740
    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->getActiveObbDownloads()Ljava/util/List;

    move-result-object v3

    .line 741
    .local v3, obbDownloads:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/download/InternalDownload;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/download/InternalDownload;

    .line 742
    .local v2, obbDownload:Lcom/google/android/finsky/download/InternalDownload;
    invoke-interface {v2}, Lcom/google/android/finsky/download/InternalDownload;->getState()Lcom/google/android/finsky/download/Download$DownloadState;

    move-result-object v4

    sget-object v5, Lcom/google/android/finsky/download/Download$DownloadState;->SUCCESS:Lcom/google/android/finsky/download/Download$DownloadState;

    if-ne v4, v5, :cond_e

    .line 744
    invoke-interface {p1, v2}, Lcom/google/android/finsky/download/InternalDownload;->getWrappedObb(Lcom/google/android/finsky/download/Download;)Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v0

    .line 745
    .local v0, downloadObb:Lcom/google/android/finsky/download/obb/Obb;
    if-eqz v0, :cond_e

    .line 746
    const-string v4, "Deleting already-downloaded OBB %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v0}, Lcom/google/android/finsky/download/obb/Obb;->getFile()Ljava/io/File;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 748
    sget-object v4, Lcom/google/android/finsky/download/obb/ObbState;->NOT_ON_STORAGE:Lcom/google/android/finsky/download/obb/ObbState;

    invoke-interface {v0, v4}, Lcom/google/android/finsky/download/obb/Obb;->setState(Lcom/google/android/finsky/download/obb/ObbState;)V

    .line 750
    invoke-interface {v0}, Lcom/google/android/finsky/download/obb/Obb;->delete()V

    goto :goto_e

    .line 755
    .end local v0           #downloadObb:Lcom/google/android/finsky/download/obb/Obb;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #obbDownload:Lcom/google/android/finsky/download/InternalDownload;
    .end local v3           #obbDownloads:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/download/InternalDownload;>;"
    :cond_40
    return-void
.end method

.method private enqueueDownload(Lcom/google/android/finsky/download/InternalDownload;)V
    .registers 6
    .parameter

    .prologue
    .line 673
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    .line 674
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/android/finsky/download/DownloadBroadcastReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/google/android/finsky/download/InternalDownload;->createDownloadRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/download/DownloadRequest;

    move-result-object v1

    .line 678
    iget-object v2, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadManager:Lcom/google/android/finsky/download/DownloadManager;

    new-instance v3, Lcom/google/android/finsky/download/DownloadQueueImpl$10;

    invoke-direct {v3, p0, v0, p1}, Lcom/google/android/finsky/download/DownloadQueueImpl$10;-><init>(Lcom/google/android/finsky/download/DownloadQueueImpl;Landroid/content/Context;Lcom/google/android/finsky/download/InternalDownload;)V

    invoke-interface {v2, v1, v3}, Lcom/google/android/finsky/download/DownloadManager;->enqueue(Lcom/google/android/finsky/download/DownloadRequest;Lcom/google/android/finsky/utils/ParameterizedRunnable;)V

    .line 701
    return-void
.end method

.method private getExisting(Ljava/lang/String;)Lcom/google/android/finsky/download/InternalDownload;
    .registers 3
    .parameter "url"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mRunningMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 373
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mRunningMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/download/InternalDownload;

    .line 378
    :goto_10
    return-object v0

    .line 375
    :cond_11
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPendingQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 376
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPendingQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/download/InternalDownload;

    goto :goto_10

    .line 378
    :cond_22
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private getExistingByFileUri(Landroid/net/Uri;)Lcom/google/android/finsky/download/InternalDownload;
    .registers 7
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 383
    if-nez p1, :cond_5

    move-object v1, v3

    .line 394
    :goto_4
    return-object v1

    .line 384
    :cond_5
    iget-object v4, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mRunningMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/download/InternalDownload;

    .line 385
    .local v1, checkRunning:Lcom/google/android/finsky/download/InternalDownload;
    invoke-interface {v1}, Lcom/google/android/finsky/download/InternalDownload;->getRequestedDestination()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_4

    .line 389
    .end local v1           #checkRunning:Lcom/google/android/finsky/download/InternalDownload;
    :cond_26
    iget-object v4, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPendingQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/download/InternalDownload;

    .line 390
    .local v0, checkPending:Lcom/google/android/finsky/download/InternalDownload;
    invoke-interface {v0}, Lcom/google/android/finsky/download/InternalDownload;->getRequestedDestination()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    move-object v1, v0

    .line 391
    goto :goto_4

    .end local v0           #checkPending:Lcom/google/android/finsky/download/InternalDownload;
    :cond_48
    move-object v1, v3

    .line 394
    goto :goto_4
.end method

.method private remove(Lcom/google/android/finsky/download/InternalDownload;)V
    .registers 7
    .parameter "download"

    .prologue
    .line 398
    const-string v1, "Download %s removed from DownloadQueue"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 400
    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, url:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPendingQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 402
    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPendingQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    :goto_20
    return-void

    .line 406
    :cond_21
    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mRunningMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/google/android/finsky/download/DownloadQueueImpl$9;

    invoke-direct {v2, p0, p1}, Lcom/google/android/finsky/download/DownloadQueueImpl$9;-><init>(Lcom/google/android/finsky/download/DownloadQueueImpl;Lcom/google/android/finsky/download/InternalDownload;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 419
    invoke-direct {p0}, Lcom/google/android/finsky/download/DownloadQueueImpl;->startNextDownload()V

    goto :goto_20
.end method

.method private removeFromDownloadManager(Lcom/google/android/finsky/download/InternalDownload;)V
    .registers 4
    .parameter "download"

    .prologue
    .line 799
    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->internalGetContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 800
    .local v0, contentUri:Landroid/net/Uri;
    if-eqz v0, :cond_b

    .line 801
    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadManager:Lcom/google/android/finsky/download/DownloadManager;

    invoke-interface {v1, v0}, Lcom/google/android/finsky/download/DownloadManager;->remove(Landroid/net/Uri;)V

    .line 803
    :cond_b
    return-void
.end method

.method private setupQueue()V
    .registers 2

    .prologue
    .line 124
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPendingQueue:Ljava/util/LinkedHashMap;

    .line 125
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mRunningMap:Ljava/util/HashMap;

    .line 126
    return-void
.end method

.method private startNextDownload()V
    .registers 10

    .prologue
    .line 641
    iget-object v6, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mRunningMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    iget v7, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mMaxConcurrent:I

    if-lt v6, v7, :cond_b

    .line 657
    :goto_a
    return-void

    .line 645
    :cond_b
    const-wide/16 v2, 0x0

    .line 646
    .local v2, largestDownloadSize:J
    iget-object v6, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPendingQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 647
    .local v4, pendingDownloadKeyset:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 649
    .local v5, urls:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_34

    .line 650
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 651
    .local v1, key:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPendingQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/download/InternalDownload;

    .line 652
    .local v0, current:Lcom/google/android/finsky/download/InternalDownload;
    invoke-interface {v0}, Lcom/google/android/finsky/download/InternalDownload;->getSize()J

    move-result-wide v6

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 653
    goto :goto_17

    .line 654
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
    .registers 9
    .parameter "download"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 134
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 135
    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/finsky/download/DownloadQueueImpl;->getExisting(Ljava/lang/String;)Lcom/google/android/finsky/download/InternalDownload;

    move-result-object v3

    if-nez v3, :cond_1b

    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->getState()Lcom/google/android/finsky/download/Download$DownloadState;

    move-result-object v3

    sget-object v4, Lcom/google/android/finsky/download/Download$DownloadState;->UNQUEUED:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/download/Download$DownloadState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 137
    :cond_1b
    const-string v3, "Tried to add invalid download to DownloadQueue."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    :cond_22
    invoke-static {}, Lcom/google/android/finsky/download/Storage;->externalStorageAvailable()Z

    move-result v3

    if-nez v3, :cond_5d

    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->getPackageProperties()Lcom/google/android/finsky/download/Download$PackageProperties;

    move-result-object v3

    if-eqz v3, :cond_5d

    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->getPackageProperties()Lcom/google/android/finsky/download/Download$PackageProperties;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/finsky/download/Download$PackageProperties;->mainObb:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v3}, Lcom/google/android/finsky/download/obb/Obb;->getState()Lcom/google/android/finsky/download/obb/ObbState;

    move-result-object v3

    sget-object v4, Lcom/google/android/finsky/download/obb/ObbState;->NOT_APPLICABLE:Lcom/google/android/finsky/download/obb/ObbState;

    if-ne v3, v4, :cond_4a

    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->getPackageProperties()Lcom/google/android/finsky/download/Download$PackageProperties;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/finsky/download/Download$PackageProperties;->patchObb:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v3}, Lcom/google/android/finsky/download/obb/Obb;->getState()Lcom/google/android/finsky/download/obb/ObbState;

    move-result-object v3

    sget-object v4, Lcom/google/android/finsky/download/obb/ObbState;->NOT_APPLICABLE:Lcom/google/android/finsky/download/obb/ObbState;

    if-eq v3, v4, :cond_5d

    .line 145
    :cond_4a
    const-string v3, "Missing external storage"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    sget-object v3, Lcom/google/android/finsky/download/Download$DownloadState;->ERROR:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-virtual {p0, p1, v3}, Lcom/google/android/finsky/download/DownloadQueueImpl;->setDownloadState(Lcom/google/android/finsky/download/InternalDownload;Lcom/google/android/finsky/download/Download$DownloadState;)V

    .line 147
    sget-object v3, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->UPDATE:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/google/android/finsky/download/DownloadQueueImpl;->notifyListeners(Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;)V

    .line 176
    :goto_5c
    return-void

    .line 150
    :cond_5d
    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->getWrappedObbDownloads()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_65
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_90

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/download/InternalDownload;

    .line 151
    .local v1, obb:Lcom/google/android/finsky/download/InternalDownload;
    invoke-interface {v1}, Lcom/google/android/finsky/download/InternalDownload;->getRequestedDestination()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/finsky/download/DownloadQueueImpl;->getExistingByFileUri(Landroid/net/Uri;)Lcom/google/android/finsky/download/InternalDownload;

    move-result-object v2

    .line 152
    .local v2, runningObb:Lcom/google/android/finsky/download/InternalDownload;
    if-eqz v2, :cond_8c

    .line 159
    invoke-interface {v1}, Lcom/google/android/finsky/download/InternalDownload;->getNext()Lcom/google/android/finsky/download/InternalDownload;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/finsky/download/InternalDownload;->setNext(Lcom/google/android/finsky/download/InternalDownload;)V

    .line 160
    const-string v3, "Skipping add OBB for already-running %s"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_65

    .line 163
    :cond_8c
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/download/DownloadQueueImpl;->add(Lcom/google/android/finsky/download/InternalDownload;)V

    goto :goto_65

    .line 167
    .end local v1           #obb:Lcom/google/android/finsky/download/InternalDownload;
    .end local v2           #runningObb:Lcom/google/android/finsky/download/InternalDownload;
    :cond_90
    const-string v3, "Download %s added to DownloadQueue"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    iget-object v3, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPendingQueue:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v3, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadProgressManager:Lcom/google/android/finsky/download/DownloadProgressManager;

    if-nez v3, :cond_b1

    .line 171
    new-instance v3, Lcom/google/android/finsky/download/DownloadProgressManager;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/download/DownloadProgressManager;-><init>(Lcom/google/android/finsky/download/DownloadQueueImpl;)V

    iput-object v3, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadProgressManager:Lcom/google/android/finsky/download/DownloadProgressManager;

    .line 173
    :cond_b1
    sget-object v3, Lcom/google/android/finsky/download/Download$DownloadState;->QUEUED:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-virtual {p0, p1, v3}, Lcom/google/android/finsky/download/DownloadQueueImpl;->setDownloadState(Lcom/google/android/finsky/download/InternalDownload;Lcom/google/android/finsky/download/Download$DownloadState;)V

    .line 174
    sget-object v3, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->ADD:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    invoke-virtual {p0, v3, p1}, Lcom/google/android/finsky/download/DownloadQueueImpl;->notifyListeners(Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;)V

    .line 175
    invoke-direct {p0}, Lcom/google/android/finsky/download/DownloadQueueImpl;->startNextDownload()V

    goto :goto_5c
.end method

.method public addListener(Lcom/google/android/finsky/download/DownloadQueueListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 344
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 345
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 346
    return-void
.end method

.method public addRecoveredDownload(Lcom/google/android/finsky/download/InternalDownload;)V
    .registers 6
    .parameter "download"

    .prologue
    .line 180
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 182
    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, url:Ljava/lang/String;
    const-string v1, "Download queue recovering download %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    sget-object v1, Lcom/google/android/finsky/download/Download$DownloadState;->DOWNLOADING:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/finsky/download/DownloadQueueImpl;->setDownloadState(Lcom/google/android/finsky/download/InternalDownload;Lcom/google/android/finsky/download/Download$DownloadState;)V

    .line 187
    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mRunningMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mUriUrlMap:Lcom/google/android/finsky/download/DownloadUriUrlMap;

    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/finsky/download/DownloadUriUrlMap;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadProgressManager:Lcom/google/android/finsky/download/DownloadProgressManager;

    if-nez v1, :cond_34

    .line 192
    new-instance v1, Lcom/google/android/finsky/download/DownloadProgressManager;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/download/DownloadProgressManager;-><init>(Lcom/google/android/finsky/download/DownloadQueueImpl;)V

    iput-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadProgressManager:Lcom/google/android/finsky/download/DownloadProgressManager;

    .line 194
    :cond_34
    return-void
.end method

.method public cancel(Lcom/google/android/finsky/download/Download;)V
    .registers 7
    .parameter "download"

    .prologue
    .line 424
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    move-object v1, p1

    .line 425
    check-cast v1, Lcom/google/android/finsky/download/InternalDownload;

    .line 429
    .local v1, internalDownload:Lcom/google/android/finsky/download/InternalDownload;
    if-eqz v1, :cond_e

    invoke-interface {v1}, Lcom/google/android/finsky/download/InternalDownload;->isCompleted()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 439
    :cond_e
    return-void

    .line 432
    :cond_f
    invoke-interface {v1}, Lcom/google/android/finsky/download/InternalDownload;->getState()Lcom/google/android/finsky/download/Download$DownloadState;

    move-result-object v3

    sget-object v4, Lcom/google/android/finsky/download/Download$DownloadState;->DOWNLOADING:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/download/Download$DownloadState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 433
    iget-object v3, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadManager:Lcom/google/android/finsky/download/DownloadManager;

    invoke-interface {v1}, Lcom/google/android/finsky/download/InternalDownload;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/finsky/download/DownloadManager;->remove(Landroid/net/Uri;)V

    .line 435
    :cond_24
    sget-object v3, Lcom/google/android/finsky/download/Download$DownloadState;->CANCELLED:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-virtual {p0, v1, v3}, Lcom/google/android/finsky/download/DownloadQueueImpl;->setDownloadState(Lcom/google/android/finsky/download/InternalDownload;Lcom/google/android/finsky/download/Download$DownloadState;)V

    .line 436
    invoke-interface {v1}, Lcom/google/android/finsky/download/InternalDownload;->getActiveObbDownloads()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/download/InternalDownload;

    .line 437
    .local v2, obbDownload:Lcom/google/android/finsky/download/InternalDownload;
    invoke-virtual {p0, v2}, Lcom/google/android/finsky/download/DownloadQueueImpl;->cancel(Lcom/google/android/finsky/download/Download;)V

    goto :goto_31
.end method

.method public cancelAll()V
    .registers 5

    .prologue
    .line 444
    const-string v2, "Cancelling all downloads."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 445
    iget-object v2, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPendingQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/download/InternalDownload;

    .line 446
    .local v0, download:Lcom/google/android/finsky/download/InternalDownload;
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/download/DownloadQueueImpl;->cancel(Lcom/google/android/finsky/download/Download;)V

    goto :goto_12

    .line 448
    .end local v0           #download:Lcom/google/android/finsky/download/InternalDownload;
    :cond_22
    iget-object v2, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mRunningMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/download/InternalDownload;

    .line 449
    .restart local v0       #download:Lcom/google/android/finsky/download/InternalDownload;
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/download/DownloadQueueImpl;->cancel(Lcom/google/android/finsky/download/Download;)V

    goto :goto_2c

    .line 451
    .end local v0           #download:Lcom/google/android/finsky/download/InternalDownload;
    :cond_3c
    return-void
.end method

.method public getAllDownloads()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/download/Download;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 208
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 209
    .local v0, downloadList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/finsky/download/Download;>;"
    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mRunningMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 210
    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPendingQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 211
    return-object v0
.end method

.method public getByPackageName(Ljava/lang/String;)Lcom/google/android/finsky/download/Download;
    .registers 8
    .parameter "packageName"

    .prologue
    .line 216
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 217
    if-eqz p1, :cond_b

    invoke-static {p1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 218
    :cond_b
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Bad url"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 221
    :cond_13
    iget-object v4, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPendingQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/download/InternalDownload;

    .line 222
    .local v1, pending:Lcom/google/android/finsky/download/Download;
    invoke-interface {v1}, Lcom/google/android/finsky/download/Download;->getPackageProperties()Lcom/google/android/finsky/download/Download$PackageProperties;

    move-result-object v2

    .line 223
    .local v2, properties:Lcom/google/android/finsky/download/Download$PackageProperties;
    if-eqz v2, :cond_1d

    iget-object v4, v2, Lcom/google/android/finsky/download/Download$PackageProperties;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 233
    .end local v1           #pending:Lcom/google/android/finsky/download/Download;
    .end local v2           #properties:Lcom/google/android/finsky/download/Download$PackageProperties;
    :goto_37
    return-object v1

    .line 227
    :cond_38
    iget-object v4, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mRunningMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_42
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/download/InternalDownload;

    .line 228
    .local v3, running:Lcom/google/android/finsky/download/Download;
    invoke-interface {v3}, Lcom/google/android/finsky/download/Download;->getPackageProperties()Lcom/google/android/finsky/download/Download$PackageProperties;

    move-result-object v2

    .line 229
    .restart local v2       #properties:Lcom/google/android/finsky/download/Download$PackageProperties;
    if-eqz v2, :cond_42

    iget-object v4, v2, Lcom/google/android/finsky/download/Download$PackageProperties;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    move-object v1, v3

    .line 230
    goto :goto_37

    .line 233
    .end local v2           #properties:Lcom/google/android/finsky/download/Download$PackageProperties;
    .end local v3           #running:Lcom/google/android/finsky/download/Download;
    :cond_5e
    const/4 v1, 0x0

    goto :goto_37
.end method

.method public getDownloadByUrl(Ljava/lang/String;)Lcom/google/android/finsky/download/Download;
    .registers 4
    .parameter "url"

    .prologue
    .line 198
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 199
    if-eqz p1, :cond_b

    invoke-static {p1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 200
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bad url"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_13
    invoke-direct {p0, p1}, Lcom/google/android/finsky/download/DownloadQueueImpl;->getExisting(Ljava/lang/String;)Lcom/google/android/finsky/download/InternalDownload;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadManager()Lcom/google/android/finsky/download/DownloadManager;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadManager:Lcom/google/android/finsky/download/DownloadManager;

    return-object v0
.end method

.method getExisting(Landroid/net/Uri;)Lcom/google/android/finsky/download/InternalDownload;
    .registers 5
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 363
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 364
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, uriString:Ljava/lang/String;
    :goto_a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 368
    :goto_10
    return-object v1

    .end local v0           #uriString:Ljava/lang/String;
    :cond_11
    move-object v0, v1

    .line 364
    goto :goto_a

    .line 368
    .restart local v0       #uriString:Ljava/lang/String;
    :cond_13
    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mUriUrlMap:Lcom/google/android/finsky/download/DownloadUriUrlMap;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/download/DownloadUriUrlMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/finsky/download/DownloadQueueImpl;->getExisting(Ljava/lang/String;)Lcom/google/android/finsky/download/InternalDownload;

    move-result-object v1

    goto :goto_10
.end method

.method public getNotificationHelper()Lcom/google/android/finsky/utils/Notifier;
    .registers 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mNotificationHelper:Lcom/google/android/finsky/utils/Notifier;

    return-object v0
.end method

.method public getUriUrlMap()Lcom/google/android/finsky/download/DownloadUriUrlMap;
    .registers 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mUriUrlMap:Lcom/google/android/finsky/download/DownloadUriUrlMap;

    return-object v0
.end method

.method public notifyClicked(Lcom/google/android/finsky/download/InternalDownload;)V
    .registers 7
    .parameter "download"

    .prologue
    .line 460
    const-string v1, "%s: onNotificationClicked"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 462
    :goto_f
    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->getNext()Lcom/google/android/finsky/download/InternalDownload;

    move-result-object v0

    .line 463
    .local v0, next:Lcom/google/android/finsky/download/InternalDownload;
    if-nez v0, :cond_1b

    .line 468
    sget-object v1, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->NOTIFICATION_CLICKED:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    invoke-virtual {p0, v1, p1}, Lcom/google/android/finsky/download/DownloadQueueImpl;->notifyListeners(Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;)V

    .line 469
    return-void

    .line 466
    :cond_1b
    move-object p1, v0

    .line 467
    goto :goto_f
.end method

.method notifyListeners(Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;)V
    .registers 9
    .parameter "type"
    .parameter "download"

    .prologue
    .line 262
    move-object v2, p2

    check-cast v2, Lcom/google/android/finsky/download/InternalDownload;

    .line 263
    .local v2, internal:Lcom/google/android/finsky/download/InternalDownload;
    if-nez p2, :cond_1c

    const/4 v1, 0x0

    .line 264
    .local v1, currentProgress:Lcom/google/android/finsky/download/DownloadProgress;
    :goto_6
    if-nez p2, :cond_21

    const/4 v0, -0x1

    .line 267
    .local v0, currentHttpStatus:I
    :goto_9
    sget-object v4, Lcom/google/android/finsky/download/DownloadQueueImpl$11;->$SwitchMap$com$google$android$finsky$download$DownloadQueueImpl$UpdateListenerType:[I

    invoke-virtual {p1}, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_62

    .line 333
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Bad listener type."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 263
    .end local v0           #currentHttpStatus:I
    .end local v1           #currentProgress:Lcom/google/android/finsky/download/DownloadProgress;
    :cond_1c
    invoke-interface {v2}, Lcom/google/android/finsky/download/InternalDownload;->getProgress()Lcom/google/android/finsky/download/DownloadProgress;

    move-result-object v1

    goto :goto_6

    .line 264
    .restart local v1       #currentProgress:Lcom/google/android/finsky/download/DownloadProgress;
    :cond_21
    invoke-interface {v2}, Lcom/google/android/finsky/download/InternalDownload;->getHttpStatus()I

    move-result v0

    goto :goto_9

    .line 269
    .restart local v0       #currentHttpStatus:I
    :pswitch_26
    new-instance v3, Lcom/google/android/finsky/download/DownloadQueueImpl$1;

    invoke-direct {v3, p0, p1}, Lcom/google/android/finsky/download/DownloadQueueImpl$1;-><init>(Lcom/google/android/finsky/download/DownloadQueueImpl;Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;)V

    .line 335
    .local v3, r:Ljava/lang/Runnable;
    :goto_2b
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 336
    return-void

    .line 277
    .end local v3           #r:Ljava/lang/Runnable;
    :pswitch_38
    new-instance v3, Lcom/google/android/finsky/download/DownloadQueueImpl$2;

    invoke-direct {v3, p0, p1, p2}, Lcom/google/android/finsky/download/DownloadQueueImpl$2;-><init>(Lcom/google/android/finsky/download/DownloadQueueImpl;Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;)V

    .line 283
    .restart local v3       #r:Ljava/lang/Runnable;
    goto :goto_2b

    .line 285
    .end local v3           #r:Ljava/lang/Runnable;
    :pswitch_3e
    new-instance v3, Lcom/google/android/finsky/download/DownloadQueueImpl$3;

    invoke-direct {v3, p0, p1, p2}, Lcom/google/android/finsky/download/DownloadQueueImpl$3;-><init>(Lcom/google/android/finsky/download/DownloadQueueImpl;Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;)V

    .line 291
    .restart local v3       #r:Ljava/lang/Runnable;
    goto :goto_2b

    .line 293
    .end local v3           #r:Ljava/lang/Runnable;
    :pswitch_44
    new-instance v3, Lcom/google/android/finsky/download/DownloadQueueImpl$4;

    invoke-direct {v3, p0, p1, p2}, Lcom/google/android/finsky/download/DownloadQueueImpl$4;-><init>(Lcom/google/android/finsky/download/DownloadQueueImpl;Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;)V

    .line 299
    .restart local v3       #r:Ljava/lang/Runnable;
    goto :goto_2b

    .line 301
    .end local v3           #r:Ljava/lang/Runnable;
    :pswitch_4a
    new-instance v3, Lcom/google/android/finsky/download/DownloadQueueImpl$5;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/google/android/finsky/download/DownloadQueueImpl$5;-><init>(Lcom/google/android/finsky/download/DownloadQueueImpl;Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;Lcom/google/android/finsky/download/DownloadProgress;)V

    .line 307
    .restart local v3       #r:Ljava/lang/Runnable;
    goto :goto_2b

    .line 309
    .end local v3           #r:Ljava/lang/Runnable;
    :pswitch_50
    new-instance v3, Lcom/google/android/finsky/download/DownloadQueueImpl$6;

    invoke-direct {v3, p0, p1, p2}, Lcom/google/android/finsky/download/DownloadQueueImpl$6;-><init>(Lcom/google/android/finsky/download/DownloadQueueImpl;Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;)V

    .line 315
    .restart local v3       #r:Ljava/lang/Runnable;
    goto :goto_2b

    .line 317
    .end local v3           #r:Ljava/lang/Runnable;
    :pswitch_56
    new-instance v3, Lcom/google/android/finsky/download/DownloadQueueImpl$7;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/google/android/finsky/download/DownloadQueueImpl$7;-><init>(Lcom/google/android/finsky/download/DownloadQueueImpl;Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;I)V

    .line 323
    .restart local v3       #r:Ljava/lang/Runnable;
    goto :goto_2b

    .line 325
    .end local v3           #r:Ljava/lang/Runnable;
    :pswitch_5c
    new-instance v3, Lcom/google/android/finsky/download/DownloadQueueImpl$8;

    invoke-direct {v3, p0, p1, p2}, Lcom/google/android/finsky/download/DownloadQueueImpl$8;-><init>(Lcom/google/android/finsky/download/DownloadQueueImpl;Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;)V

    .line 331
    .restart local v3       #r:Ljava/lang/Runnable;
    goto :goto_2b

    .line 267
    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_26
        :pswitch_38
        :pswitch_3e
        :pswitch_44
        :pswitch_4a
        :pswitch_50
        :pswitch_56
        :pswitch_5c
    .end packed-switch
.end method

.method public notifyProgress(Lcom/google/android/finsky/download/InternalDownload;Lcom/google/android/finsky/download/DownloadProgress;)V
    .registers 8
    .parameter "download"
    .parameter "progress"

    .prologue
    .line 477
    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->getProgress()Lcom/google/android/finsky/download/DownloadProgress;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/android/finsky/download/DownloadProgress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 503
    :goto_a
    return-void

    .line 480
    :cond_b
    invoke-interface {p1, p2}, Lcom/google/android/finsky/download/InternalDownload;->setProgress(Lcom/google/android/finsky/download/DownloadProgress;)V

    .line 487
    const/4 v0, 0x0

    .line 488
    .local v0, logProgress:Z
    iget v1, p2, Lcom/google/android/finsky/download/DownloadProgress;->mStatusId:I

    iget v2, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPreviousProgressStatus:I

    if-eq v1, v2, :cond_3f

    .line 489
    const/4 v0, 0x1

    .line 494
    :cond_16
    :goto_16
    if-eqz v0, :cond_38

    .line 495
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

    .line 496
    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->internalGetContentUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPreviousContentUri:Landroid/net/Uri;

    .line 497
    iget v1, p2, Lcom/google/android/finsky/download/DownloadProgress;->mStatusId:I

    iput v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPreviousProgressStatus:I

    .line 501
    :cond_38
    sget-object v1, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->UPDATE:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/download/DownloadQueueImpl;->notifyListeners(Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;)V

    goto :goto_a

    .line 490
    :cond_3f
    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPreviousContentUri:Landroid/net/Uri;

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mPreviousContentUri:Landroid/net/Uri;

    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->internalGetContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 492
    :cond_4f
    const/4 v0, 0x1

    goto :goto_16
.end method

.method public onAdd(Lcom/google/android/finsky/download/Download;)V
    .registers 2
    .parameter "download"

    .prologue
    .line 817
    return-void
.end method

.method public onCancel(Lcom/google/android/finsky/download/Download;)V
    .registers 7
    .parameter "download"

    .prologue
    .line 725
    move-object v0, p1

    check-cast v0, Lcom/google/android/finsky/download/InternalDownload;

    .line 726
    .local v0, internal:Lcom/google/android/finsky/download/InternalDownload;
    const-string v1, "%s: onCancel"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 727
    invoke-direct {p0, v0}, Lcom/google/android/finsky/download/DownloadQueueImpl;->remove(Lcom/google/android/finsky/download/InternalDownload;)V

    .line 728
    sget-object v1, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->UPDATE:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/download/DownloadQueueImpl;->notifyListeners(Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;)V

    .line 729
    invoke-direct {p0, v0}, Lcom/google/android/finsky/download/DownloadQueueImpl;->removeFromDownloadManager(Lcom/google/android/finsky/download/InternalDownload;)V

    .line 730
    invoke-direct {p0, v0}, Lcom/google/android/finsky/download/DownloadQueueImpl;->deleteDownloadedObbs(Lcom/google/android/finsky/download/InternalDownload;)V

    .line 731
    return-void
.end method

.method public onComplete(Lcom/google/android/finsky/download/Download;)V
    .registers 6
    .parameter "download"

    .prologue
    .line 714
    const-string v0, "%s: onComplete"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 715
    check-cast p1, Lcom/google/android/finsky/download/InternalDownload;

    .end local p1
    invoke-direct {p0, p1}, Lcom/google/android/finsky/download/DownloadQueueImpl;->remove(Lcom/google/android/finsky/download/InternalDownload;)V

    .line 716
    sget-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->UPDATE:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/download/DownloadQueueImpl;->notifyListeners(Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;)V

    .line 717
    return-void
.end method

.method public onError(Lcom/google/android/finsky/download/Download;I)V
    .registers 9
    .parameter "download"
    .parameter "httpStatus"

    .prologue
    const/4 v5, 0x1

    .line 763
    move-object v0, p1

    check-cast v0, Lcom/google/android/finsky/download/InternalDownload;

    .line 764
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

    .line 765
    const/16 v1, 0x193

    if-eq p2, v1, :cond_21

    const/16 v1, 0x191

    if-ne p2, v1, :cond_30

    .line 767
    :cond_21
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getVendingApi()Lcom/google/android/vending/remoting/api/VendingApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/vending/remoting/api/VendingApi;->getApiContext()Lcom/google/android/vending/remoting/api/VendingApiContext;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/google/android/vending/remoting/api/VendingApiContext;->scheduleReauthentication(Z)V

    .line 772
    :cond_30
    invoke-direct {p0, v0}, Lcom/google/android/finsky/download/DownloadQueueImpl;->remove(Lcom/google/android/finsky/download/InternalDownload;)V

    .line 773
    sget-object v1, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->UPDATE:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/download/DownloadQueueImpl;->notifyListeners(Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;)V

    .line 774
    invoke-interface {v0}, Lcom/google/android/finsky/download/InternalDownload;->getPackageProperties()Lcom/google/android/finsky/download/Download$PackageProperties;

    move-result-object v1

    if-eqz v1, :cond_52

    .line 776
    const/16 v1, 0x1f2

    if-ne p2, v1, :cond_59

    .line 777
    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mNotificationHelper:Lcom/google/android/finsky/utils/Notifier;

    invoke-interface {v0}, Lcom/google/android/finsky/download/InternalDownload;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/android/finsky/download/InternalDownload;->getPackageProperties()Lcom/google/android/finsky/download/Download$PackageProperties;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/finsky/download/Download$PackageProperties;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/google/android/finsky/utils/Notifier;->showInternalStorageFull(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    :cond_52
    :goto_52
    invoke-direct {p0, v0}, Lcom/google/android/finsky/download/DownloadQueueImpl;->removeFromDownloadManager(Lcom/google/android/finsky/download/InternalDownload;)V

    .line 786
    invoke-direct {p0, v0}, Lcom/google/android/finsky/download/DownloadQueueImpl;->deleteDownloadedObbs(Lcom/google/android/finsky/download/InternalDownload;)V

    .line 787
    return-void

    .line 781
    :cond_59
    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mNotificationHelper:Lcom/google/android/finsky/utils/Notifier;

    invoke-interface {v0}, Lcom/google/android/finsky/download/InternalDownload;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/android/finsky/download/InternalDownload;->getPackageProperties()Lcom/google/android/finsky/download/Download$PackageProperties;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/finsky/download/Download$PackageProperties;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p2}, Lcom/google/android/finsky/utils/Notifier;->showDownloadErrorMessage(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_52
.end method

.method public onNotificationClicked(Lcom/google/android/finsky/download/Download;)V
    .registers 2
    .parameter "download"

    .prologue
    .line 824
    return-void
.end method

.method public onProgress(Lcom/google/android/finsky/download/Download;Lcom/google/android/finsky/download/DownloadProgress;)V
    .registers 3
    .parameter "download"
    .parameter "progress"

    .prologue
    .line 831
    return-void
.end method

.method public onStart(Lcom/google/android/finsky/download/Download;)V
    .registers 6
    .parameter "download"

    .prologue
    .line 795
    const-string v0, "%s: onStart"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 796
    return-void
.end method

.method public onUpdate()V
    .registers 1

    .prologue
    .line 810
    return-void
.end method

.method public removeListener(Lcom/google/android/finsky/download/DownloadQueueListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 353
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 354
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 355
    return-void
.end method

.method public setDownloadState(Lcom/google/android/finsky/download/InternalDownload;Lcom/google/android/finsky/download/Download$DownloadState;)V
    .registers 5
    .parameter "download"
    .parameter "state"

    .prologue
    .line 518
    invoke-interface {p1, p2}, Lcom/google/android/finsky/download/InternalDownload;->setState(Lcom/google/android/finsky/download/Download$DownloadState;)V

    .line 520
    sget-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$11;->$SwitchMap$com$google$android$finsky$download$Download$DownloadState:[I

    invoke-virtual {p2}, Lcom/google/android/finsky/download/Download$DownloadState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_28

    .line 537
    :goto_e
    return-void

    .line 522
    :pswitch_f
    sget-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->START:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/finsky/download/DownloadQueueImpl;->notifyListeners(Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;)V

    goto :goto_e

    .line 525
    :pswitch_15
    sget-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->CANCEL:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/finsky/download/DownloadQueueImpl;->notifyListeners(Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;)V

    goto :goto_e

    .line 528
    :pswitch_1b
    sget-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->ERROR:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/finsky/download/DownloadQueueImpl;->notifyListeners(Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;)V

    goto :goto_e

    .line 531
    :pswitch_21
    sget-object v0, Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;->COMPLETE:Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/finsky/download/DownloadQueueImpl;->notifyListeners(Lcom/google/android/finsky/download/DownloadQueueImpl$UpdateListenerType;Lcom/google/android/finsky/download/Download;)V

    goto :goto_e

    .line 520
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
    .line 660
    if-nez p1, :cond_3

    .line 666
    :goto_2
    return-void

    .line 663
    :cond_3
    const-string v0, "Download %s starting"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 664
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl;->mRunningMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/google/android/finsky/download/InternalDownload;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    invoke-direct {p0, p1}, Lcom/google/android/finsky/download/DownloadQueueImpl;->enqueueDownload(Lcom/google/android/finsky/download/InternalDownload;)V

    goto :goto_2
.end method
