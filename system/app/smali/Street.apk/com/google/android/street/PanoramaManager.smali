.class public Lcom/google/android/street/PanoramaManager;
.super Ljava/lang/Object;
.source "PanoramaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/street/PanoramaManager$ServerRequestListener;,
        Lcom/google/android/street/PanoramaManager$AsyncCacheRequest;,
        Lcom/google/android/street/PanoramaManager$PanoFetchListener;,
        Lcom/google/android/street/PanoramaManager$ConfigFetchListener;
    }
.end annotation


# instance fields
.field private final mHttpCache:Lcom/google/android/street/HttpCache;

.field private final mRetrieving:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/street/HttpCache;)V
    .registers 3
    .parameter "httpCache"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/street/PanoramaManager;->mRetrieving:Ljava/util/HashSet;

    .line 68
    iput-object p1, p0, Lcom/google/android/street/PanoramaManager;->mHttpCache:Lcom/google/android/street/HttpCache;

    .line 69
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-static {p0, p1}, Lcom/google/android/street/PanoramaManager;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/street/PanoramaManager;)Lcom/google/android/street/HttpCache;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/street/PanoramaManager;->mHttpCache:Lcom/google/android/street/HttpCache;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/street/PanoramaManager;Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/street/PanoramaManager;->doneRetrieving(Ljava/lang/Object;)V

    return-void
.end method

.method private static assertNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3
    .parameter "o"
    .parameter "name"

    .prologue
    .line 72
    if-nez p0, :cond_8

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_8
    return-void
.end method

.method private declared-synchronized doneRetrieving(Ljava/lang/Object;)V
    .registers 3
    .parameter "key"

    .prologue
    .line 278
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/street/PanoramaManager;->mRetrieving:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 279
    monitor-exit p0

    return-void

    .line 278
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isRetrieving(Ljava/lang/Object;)Z
    .registers 3
    .parameter "key"

    .prologue
    .line 262
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/street/PanoramaManager;->mRetrieving:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_13

    move-result v0

    if-eqz v0, :cond_c

    .line 263
    const/4 v0, 0x1

    .line 267
    :goto_a
    monitor-exit p0

    return v0

    .line 266
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/google/android/street/PanoramaManager;->mRetrieving:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_13

    .line 267
    const/4 v0, 0x0

    goto :goto_a

    .line 262
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public requestPanoramaConfiguration(Lcom/google/android/street/PanoramaManager$ConfigFetchListener;Lcom/google/android/street/MapPoint;Z)Z
    .registers 7
    .parameter "listener"
    .parameter "mapPoint"
    .parameter "isImmediate"

    .prologue
    .line 347
    const-string v2, "listener"

    invoke-static {p1, v2}, Lcom/google/android/street/PanoramaManager;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    const-string v2, "mapPoint"

    invoke-static {p2, v2}, Lcom/google/android/street/PanoramaManager;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    invoke-direct {p0, p2}, Lcom/google/android/street/PanoramaManager;->isRetrieving(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 354
    const/4 v2, 0x0

    .line 367
    :goto_11
    return v2

    .line 361
    :cond_12
    new-instance v1, Lcom/google/android/street/PanoramaManager$ServerRequestListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2, p2}, Lcom/google/android/street/PanoramaManager$ServerRequestListener;-><init>(Lcom/google/android/street/PanoramaManager;Lcom/google/android/street/PanoramaManager$ConfigFetchListener;Lcom/google/android/street/PanoramaManager$PanoFetchListener;Ljava/lang/Object;)V

    .line 363
    .local v1, srl:Lcom/google/android/street/PanoramaManager$ServerRequestListener;
    new-instance v2, Lcom/google/android/street/PanoramaRequest;

    invoke-direct {v2, v1, p2}, Lcom/google/android/street/PanoramaRequest;-><init>(Lcom/google/android/street/PanoramaRequest$Listener;Lcom/google/android/street/MapPoint;)V

    invoke-virtual {v2}, Lcom/google/android/street/PanoramaRequest;->addConfigRequest()Lcom/google/android/street/PanoramaRequest;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/google/android/street/PanoramaRequest;->setImmediate(Z)Lcom/google/android/street/PanoramaRequest;

    move-result-object v0

    .line 366
    .local v0, panoramaRequest:Lcom/google/android/street/PanoramaRequest;
    invoke-virtual {v0}, Lcom/google/android/street/PanoramaRequest;->send()V

    .line 367
    const/4 v2, 0x1

    goto :goto_11
.end method

.method public requestPanoramaConfiguration(Lcom/google/android/street/PanoramaManager$ConfigFetchListener;Ljava/lang/String;Lcom/google/android/street/MapPoint;Z)Z
    .registers 6
    .parameter "listener"
    .parameter "panoId"
    .parameter "mapPoint"
    .parameter "isImmediate"

    .prologue
    .line 394
    if-eqz p2, :cond_7

    .line 395
    invoke-virtual {p0, p1, p2, p4}, Lcom/google/android/street/PanoramaManager;->requestPanoramaConfiguration(Lcom/google/android/street/PanoramaManager$ConfigFetchListener;Ljava/lang/String;Z)Z

    move-result v0

    .line 397
    :goto_6
    return v0

    :cond_7
    invoke-virtual {p0, p1, p3, p4}, Lcom/google/android/street/PanoramaManager;->requestPanoramaConfiguration(Lcom/google/android/street/PanoramaManager$ConfigFetchListener;Lcom/google/android/street/MapPoint;Z)Z

    move-result v0

    goto :goto_6
.end method

.method public requestPanoramaConfiguration(Lcom/google/android/street/PanoramaManager$ConfigFetchListener;Ljava/lang/String;Z)Z
    .registers 12
    .parameter "listener"
    .parameter "panoId"
    .parameter "isImmediate"

    .prologue
    const/4 v7, 0x1

    .line 295
    const-string v4, "listener"

    invoke-static {p1, v4}, Lcom/google/android/street/PanoramaManager;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    const-string v4, "panoId"

    invoke-static {p2, v4}, Lcom/google/android/street/PanoramaManager;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    invoke-static {p2}, Lcom/google/android/street/PanoramaConfig;->persistentKeyForPanoId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, persistentKey:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/google/android/street/PanoramaManager;->isRetrieving(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 303
    const/4 v4, 0x0

    .line 328
    :goto_16
    return v4

    .line 308
    :cond_17
    iget-object v4, p0, Lcom/google/android/street/PanoramaManager;->mHttpCache:Lcom/google/android/street/HttpCache;

    const-wide/32 v5, 0x6db5f0

    invoke-virtual {v4, v1, v5, v6}, Lcom/google/android/street/HttpCache;->isInCache(Ljava/lang/String;J)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 312
    new-instance v2, Lcom/google/android/street/PanoramaManager$AsyncCacheRequest;

    invoke-direct {v2, p0, p1, v1}, Lcom/google/android/street/PanoramaManager$AsyncCacheRequest;-><init>(Lcom/google/android/street/PanoramaManager;Lcom/google/android/street/PanoramaManager$ConfigFetchListener;Ljava/lang/String;)V

    .line 314
    .local v2, request:Lcom/google/android/street/PanoramaManager$AsyncCacheRequest;
    new-instance v4, Ljava/lang/Thread;

    const-string v5, "Config-loader"

    invoke-direct {v4, v2, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    move v4, v7

    .line 315
    goto :goto_16

    .line 322
    .end local v2           #request:Lcom/google/android/street/PanoramaManager$AsyncCacheRequest;
    :cond_33
    new-instance v3, Lcom/google/android/street/PanoramaManager$ServerRequestListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v4, p2}, Lcom/google/android/street/PanoramaManager$ServerRequestListener;-><init>(Lcom/google/android/street/PanoramaManager;Lcom/google/android/street/PanoramaManager$ConfigFetchListener;Lcom/google/android/street/PanoramaManager$PanoFetchListener;Ljava/lang/Object;)V

    .line 324
    .local v3, srl:Lcom/google/android/street/PanoramaManager$ServerRequestListener;
    new-instance v4, Lcom/google/android/street/PanoramaRequest;

    invoke-direct {v4, v3, p2}, Lcom/google/android/street/PanoramaRequest;-><init>(Lcom/google/android/street/PanoramaRequest$Listener;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/google/android/street/PanoramaRequest;->addConfigRequest()Lcom/google/android/street/PanoramaRequest;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/google/android/street/PanoramaRequest;->setImmediate(Z)Lcom/google/android/street/PanoramaRequest;

    move-result-object v0

    .line 327
    .local v0, panoramaRequest:Lcom/google/android/street/PanoramaRequest;
    invoke-virtual {v0}, Lcom/google/android/street/PanoramaRequest;->send()V

    move v4, v7

    .line 328
    goto :goto_16
.end method

.method public requestPanoramaTile(Lcom/google/android/street/PanoramaManager$PanoFetchListener;Lcom/google/android/street/PanoramaImageKey;Z)Z
    .registers 10
    .parameter "listener"
    .parameter "key"
    .parameter "isImmediate"

    .prologue
    .line 414
    invoke-direct {p0, p2}, Lcom/google/android/street/PanoramaManager;->isRetrieving(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 418
    const/4 v2, 0x0

    .line 431
    :goto_7
    return v2

    .line 424
    :cond_8
    new-instance v1, Lcom/google/android/street/PanoramaManager$ServerRequestListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/google/android/street/PanoramaManager$ServerRequestListener;-><init>(Lcom/google/android/street/PanoramaManager;Lcom/google/android/street/PanoramaManager$ConfigFetchListener;Lcom/google/android/street/PanoramaManager$PanoFetchListener;Ljava/lang/Object;)V

    .line 425
    .local v1, srl:Lcom/google/android/street/PanoramaManager$ServerRequestListener;
    new-instance v2, Lcom/google/android/street/PanoramaRequest;

    invoke-virtual {p2}, Lcom/google/android/street/PanoramaImageKey;->getPanoramaId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/google/android/street/PanoramaRequest;-><init>(Lcom/google/android/street/PanoramaRequest$Listener;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/street/PanoramaImageKey;->getZoom()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/street/PanoramaRequest;->addTilesRequest(I)Lcom/google/android/street/PanoramaRequest;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/street/PanoramaImageKey;->getX()I

    move-result v3

    invoke-virtual {p2}, Lcom/google/android/street/PanoramaImageKey;->getY()I

    move-result v4

    invoke-virtual {p2}, Lcom/google/android/street/PanoramaImageKey;->getFace()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/street/PanoramaRequest;->addTile(III)Lcom/google/android/street/PanoramaRequest;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/google/android/street/PanoramaRequest;->setImmediate(Z)Lcom/google/android/street/PanoramaRequest;

    move-result-object v0

    .line 430
    .local v0, panoramaRequest:Lcom/google/android/street/PanoramaRequest;
    invoke-virtual {v0}, Lcom/google/android/street/PanoramaRequest;->send()V

    .line 431
    const/4 v2, 0x1

    goto :goto_7
.end method

.method public requestPanoramaTile(Lcom/google/android/street/PanoramaManager$PanoFetchListener;Ljava/lang/String;IIIIZ)Z
    .registers 14
    .parameter "listener"
    .parameter "panoId"
    .parameter "zoom"
    .parameter "x"
    .parameter "y"
    .parameter "face"
    .parameter "isImmediate"

    .prologue
    .line 440
    const-string v1, "listener"

    invoke-static {p1, v1}, Lcom/google/android/street/PanoramaManager;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 441
    const-string v1, "panoId"

    invoke-static {p2, v1}, Lcom/google/android/street/PanoramaManager;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    new-instance v0, Lcom/google/android/street/PanoramaImageKey;

    move-object v1, p2

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/street/PanoramaImageKey;-><init>(Ljava/lang/String;IIII)V

    .line 445
    .local v0, key:Lcom/google/android/street/PanoramaImageKey;
    invoke-virtual {p0, p1, v0, p7}, Lcom/google/android/street/PanoramaManager;->requestPanoramaTile(Lcom/google/android/street/PanoramaManager$PanoFetchListener;Lcom/google/android/street/PanoramaImageKey;Z)Z

    move-result v1

    return v1
.end method
