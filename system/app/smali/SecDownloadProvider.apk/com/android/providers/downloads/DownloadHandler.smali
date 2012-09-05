.class public Lcom/android/providers/downloads/DownloadHandler;
.super Ljava/lang/Object;
.source "DownloadHandler.java"


# static fields
.field private static final mDownloadHandler:Lcom/android/providers/downloads/DownloadHandler;


# instance fields
.field private final mDownloadsInProgress:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/downloads/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mDownloadsQueue:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/downloads/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxConcurrentDownloadsAllowed:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    new-instance v0, Lcom/android/providers/downloads/DownloadHandler;

    invoke-direct {v0}, Lcom/android/providers/downloads/DownloadHandler;-><init>()V

    sput-object v0, Lcom/android/providers/downloads/DownloadHandler;->mDownloadHandler:Lcom/android/providers/downloads/DownloadHandler;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadHandler;->mDownloadsQueue:Ljava/util/LinkedHashMap;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadHandler;->mDownloadsInProgress:Ljava/util/HashMap;

    .line 35
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/DownloadHandler;->mMaxConcurrentDownloadsAllowed:I

    return-void
.end method

.method static getInstance()Lcom/android/providers/downloads/DownloadHandler;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/providers/downloads/DownloadHandler;->mDownloadHandler:Lcom/android/providers/downloads/DownloadHandler;

    return-object v0
.end method

.method private declared-synchronized startDownloadThread()V
    .registers 9

    .prologue
    .line 53
    monitor-enter p0

    :try_start_1
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadHandler;->mDownloadsQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 54
    .local v4, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v2, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_10
    :goto_10
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadHandler;->mDownloadsInProgress:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    iget v6, p0, Lcom/android/providers/downloads/DownloadHandler;->mMaxConcurrentDownloadsAllowed:I

    if-ge v5, v6, :cond_5f

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 56
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 57
    .local v1, id:Ljava/lang/Long;
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadHandler;->mDownloadsQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/downloads/DownloadInfo;

    .line 58
    .local v3, info:Lcom/android/providers/downloads/DownloadInfo;
    invoke-virtual {v3}, Lcom/android/providers/downloads/DownloadInfo;->startDownloadThread()V

    .line 59
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadHandler;->mDownloadsInProgress:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/providers/downloads/DownloadHandler;->mDownloadsQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_10

    .line 62
    const-string v5, "DownloadHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "started download for : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_1 .. :try_end_5b} :catchall_5c

    goto :goto_10

    .line 53
    .end local v1           #id:Ljava/lang/Long;
    .end local v2           #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v3           #info:Lcom/android/providers/downloads/DownloadInfo;
    .end local v4           #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :catchall_5c
    move-exception v5

    monitor-exit p0

    throw v5

    .line 65
    .restart local v2       #ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v4       #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_5f
    :try_start_5f
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_63
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_75

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 66
    .restart local v1       #id:Ljava/lang/Long;
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadHandler;->mDownloadsQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_74
    .catchall {:try_start_5f .. :try_end_74} :catchall_5c

    goto :goto_63

    .line 68
    .end local v1           #id:Ljava/lang/Long;
    :cond_75
    monitor-exit p0

    return-void
.end method


# virtual methods
.method declared-synchronized dequeueDownload(J)V
    .registers 5
    .parameter "mId"

    .prologue
    .line 75
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadHandler;->mDownloadsInProgress:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadHandler;->startDownloadThread()V

    .line 77
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadHandler;->mDownloadsInProgress:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadHandler;->mDownloadsQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-nez v0, :cond_20

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 80
    :cond_20
    monitor-exit p0

    return-void

    .line 75
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized enqueueDownload(Lcom/android/providers/downloads/DownloadInfo;)V
    .registers 6
    .parameter "info"

    .prologue
    .line 43
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadHandler;->mDownloadsQueue:Ljava/util/LinkedHashMap;

    iget-wide v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 44
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v0, :cond_39

    .line 45
    const-string v0, "DownloadHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueued download. id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_39
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadHandler;->mDownloadsQueue:Ljava/util/LinkedHashMap;

    iget-wide v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadHandler;->startDownloadThread()V
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_49

    .line 50
    :cond_47
    monitor-exit p0

    return-void

    .line 43
    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized hasDownloadInQueue(J)Z
    .registers 5
    .parameter "id"

    .prologue
    .line 71
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadHandler;->mDownloadsQueue:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadHandler;->mDownloadsInProgress:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1e

    move-result v0

    if-eqz v0, :cond_1c

    :cond_19
    const/4 v0, 0x1

    :goto_1a
    monitor-exit p0

    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1a

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
