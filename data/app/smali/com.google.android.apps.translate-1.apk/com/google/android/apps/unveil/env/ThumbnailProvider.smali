.class public Lcom/google/android/apps/unveil/env/ThumbnailProvider;
.super Ljava/lang/Object;
.source "ThumbnailProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/env/ThumbnailProvider$FetchResponseHandler;,
        Lcom/google/android/apps/unveil/env/ThumbnailProvider$BitmapPictureFactory;,
        Lcom/google/android/apps/unveil/env/ThumbnailProvider$ImageViewThumbnailListener;,
        Lcom/google/android/apps/unveil/env/ThumbnailProvider$ThumbnailListener;,
        Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_IN_DISK_PICTURES:I = 0x64

.field private static final DEFAULT_MAX_IN_MEMORY_PICTURES:I = 0x14

.field private static final DEFAULT_RECLAIM_RATIO:F = 0.3f

.field private static final FETCH_THREAD_KEEP_ALIVE_TIME_SECONDS:I = 0xa

.field private static final MAX_SIMULTANEOUS_FETCHES:I = 0x4

.field public static final SIZE_DIP:I = 0x50

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private final anonymousRequests:Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;

.field private final authenticatedRequests:Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;

.field private final cache:Lcom/google/android/apps/unveil/env/cache/AbstractCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/unveil/env/cache/AbstractCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/unveil/env/Picture;",
            ">;"
        }
    .end annotation
.end field

.field private final connector:Lcom/google/android/apps/unveil/network/AbstractConnector;

.field private final context:Landroid/content/Context;

.field private enabled:Z

.field private final pendingFetches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/env/ThumbnailProvider$ThumbnailListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final threadPool:Ljava/util/concurrent/ExecutorService;

.field private final uiThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/apps/unveil/env/cache/AbstractCache;Ljava/util/concurrent/ExecutorService;Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;Lcom/google/android/apps/unveil/network/AbstractConnector;Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;)V
    .registers 9
    .parameter "context"
    .parameter "uiThreadHandler"
    .parameter
    .parameter "threadPool"
    .parameter "authenticatedRequests"
    .parameter "connector"
    .parameter "anonymousRequests"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lcom/google/android/apps/unveil/env/cache/AbstractCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/unveil/env/Picture;",
            ">;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;",
            "Lcom/google/android/apps/unveil/network/AbstractConnector;",
            "Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 277
    .local p3, cache:Lcom/google/android/apps/unveil/env/cache/AbstractCache;,"Lcom/google/android/apps/unveil/env/cache/AbstractCache<Ljava/lang/String;Lcom/google/android/apps/unveil/env/Picture;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->pendingFetches:Ljava/util/Map;

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->enabled:Z

    .line 278
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->context:Landroid/content/Context;

    .line 279
    iput-object p4, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 280
    iput-object p2, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->uiThreadHandler:Landroid/os/Handler;

    .line 281
    iput-object p3, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->cache:Lcom/google/android/apps/unveil/env/cache/AbstractCache;

    .line 282
    iput-object p5, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->authenticatedRequests:Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;

    .line 283
    iput-object p7, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->anonymousRequests:Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;

    .line 284
    iput-object p6, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->connector:Lcom/google/android/apps/unveil/network/AbstractConnector;

    .line 285
    return-void
.end method

.method static synthetic access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-object v0
.end method

.method static synthetic access$200([B)Lcom/google/android/apps/unveil/env/Picture;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    invoke-static {p0}, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->toPicture([B)Lcom/google/android/apps/unveil/env/Picture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/unveil/env/ThumbnailProvider;)Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->authenticatedRequests:Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/unveil/env/ThumbnailProvider;)Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->anonymousRequests:Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/unveil/env/ThumbnailProvider;)Lcom/google/android/apps/unveil/network/AbstractConnector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->connector:Lcom/google/android/apps/unveil/network/AbstractConnector;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/unveil/env/ThumbnailProvider;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->pendingFetches:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/unveil/env/ThumbnailProvider;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->uiThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private createAndPushFetcher(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/util/List;
    .registers 5
    .parameter "keyUrl"
    .parameter "callable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/env/ThumbnailProvider$ThumbnailListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 412
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 414
    .local v0, listeners:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/env/ThumbnailProvider$ThumbnailListener;>;"
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 416
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->pendingFetches:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    return-object v0
.end method

.method private get(Ljava/lang/String;)Lcom/google/android/apps/unveil/env/Picture;
    .registers 3
    .parameter "key"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->cache:Lcom/google/android/apps/unveil/env/cache/AbstractCache;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/env/cache/AbstractCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/env/Picture;

    return-object v0
.end method

.method public static final makeDefault(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/os/Handler;)Lcom/google/android/apps/unveil/env/ThumbnailProvider;
    .registers 13
    .parameter "context"
    .parameter "provider"
    .parameter "contentUri"
    .parameter "uiThreadHandler"

    .prologue
    const v6, 0x3e99999a

    .line 289
    new-instance v0, Lcom/google/android/apps/unveil/env/cache/MemoryCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1, v6}, Lcom/google/android/apps/unveil/env/cache/MemoryCache;-><init>(IF)V

    const/16 v1, 0x64

    new-instance v2, Lcom/google/android/apps/unveil/env/ThumbnailProvider$BitmapPictureFactory;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Lcom/google/android/apps/unveil/env/ThumbnailProvider$BitmapPictureFactory;-><init>(Lcom/google/android/apps/unveil/env/ThumbnailProvider$1;)V

    invoke-static {p1, p2, v1, v6, v2}, Lcom/google/android/apps/unveil/env/cache/DatabaseCache;->makeDefault(Landroid/content/ContentResolver;Landroid/net/Uri;IFLcom/google/android/apps/unveil/env/cache/DatabaseCache$PictureFactory;)Lcom/google/android/apps/unveil/env/cache/AbstractCache;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/unveil/env/cache/LayeredCache;->layer(Lcom/google/android/apps/unveil/env/cache/AbstractCache;Lcom/google/android/apps/unveil/env/cache/AbstractCache;)Lcom/google/android/apps/unveil/env/cache/AbstractCache;

    move-result-object v3

    .line 295
    .local v3, cache:Lcom/google/android/apps/unveil/env/cache/AbstractCache;,"Lcom/google/android/apps/unveil/env/cache/AbstractCache<Ljava/lang/String;Lcom/google/android/apps/unveil/env/Picture;>;"
    sget-object v0, Lcom/google/android/apps/unveil/env/ExecutorServiceFactory$Order;->LIFO:Lcom/google/android/apps/unveil/env/ExecutorServiceFactory$Order;

    const/4 v1, 0x4

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/unveil/env/ExecutorServiceFactory;->newLoggingExecutor(Lcom/google/android/apps/unveil/env/ExecutorServiceFactory$Order;II)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    .line 297
    .local v4, threadPool:Ljava/util/concurrent/ExecutorService;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/google/android/apps/unveil/UnveilContext;

    .line 299
    .local v8, unveilContext:Lcom/google/android/apps/unveil/UnveilContext;
    new-instance v0, Lcom/google/android/apps/unveil/env/ThumbnailProvider;

    invoke-static {v8}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;->newAuthenticatedRequestFactory(Lcom/google/android/apps/unveil/UnveilContext;)Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;

    move-result-object v5

    invoke-interface {v8}, Lcom/google/android/apps/unveil/UnveilContext;->getConnector()Lcom/google/android/apps/unveil/network/AbstractConnector;

    move-result-object v6

    invoke-static {v8}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;->newAnonymousRequestFactory(Lcom/google/android/apps/unveil/UnveilContext;)Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;

    move-result-object v7

    move-object v1, p0

    move-object v2, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/unveil/env/ThumbnailProvider;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/apps/unveil/env/cache/AbstractCache;Ljava/util/concurrent/ExecutorService;Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;Lcom/google/android/apps/unveil/network/AbstractConnector;Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;)V

    return-object v0
.end method

.method private makeFetchRunnable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;
    .registers 4
    .parameter "keyUrl"
    .parameter "urlWithSize"

    .prologue
    .line 421
    new-instance v0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/apps/unveil/env/ThumbnailProvider$1;-><init>(Lcom/google/android/apps/unveil/env/ThumbnailProvider;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static makeImageViewThumbnailListener(Landroid/widget/ImageView;Ljava/lang/String;)Lcom/google/android/apps/unveil/env/ThumbnailProvider$ThumbnailListener;
    .registers 3
    .parameter "imageView"
    .parameter "url"

    .prologue
    .line 502
    new-instance v0, Lcom/google/android/apps/unveil/env/ThumbnailProvider$ImageViewThumbnailListener;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/unveil/env/ThumbnailProvider$ImageViewThumbnailListener;-><init>(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-object v0
.end method

.method private maybeAddAuxillaryListener(Lcom/google/android/apps/unveil/env/ThumbnailProvider$ThumbnailListener;Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .parameter "listener"
    .parameter "keyUrl"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/unveil/env/ThumbnailProvider$ThumbnailListener;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/env/ThumbnailProvider$ThumbnailListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 397
    .local p3, listeners:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/env/ThumbnailProvider$ThumbnailListener;>;"
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->cache:Lcom/google/android/apps/unveil/env/cache/AbstractCache;

    invoke-virtual {v1, p2}, Lcom/google/android/apps/unveil/env/cache/AbstractCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/env/Picture;

    .line 398
    .local v0, cachedThumbnail:Lcom/google/android/apps/unveil/env/Picture;
    if-eqz v0, :cond_e

    .line 399
    invoke-virtual {p1, v0}, Lcom/google/android/apps/unveil/env/ThumbnailProvider$ThumbnailListener;->onThumbnailReady(Lcom/google/android/apps/unveil/env/Picture;)V

    .line 403
    :goto_d
    return-void

    .line 401
    :cond_e
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d
.end method

.method private static toPicture([B)Lcom/google/android/apps/unveil/env/Picture;
    .registers 4
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 313
    array-length v1, p0

    invoke-static {p0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 314
    .local v0, decodedBitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_d

    .line 315
    invoke-static {v0, v2}, Lcom/google/android/apps/unveil/env/PictureFactory;->createBitmap(Landroid/graphics/Bitmap;I)Lcom/google/android/apps/unveil/env/Picture;

    move-result-object v1

    .line 317
    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method


# virtual methods
.method public fetch(Ljava/lang/String;Lcom/google/android/apps/unveil/env/ThumbnailProvider$ThumbnailListener;Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec;)V
    .registers 10
    .parameter "keyUrl"
    .parameter "listener"
    .parameter "size"

    .prologue
    .line 355
    iget-boolean v4, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->enabled:Z

    if-nez v4, :cond_5

    .line 386
    :goto_4
    return-void

    .line 359
    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 360
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "keyUrl must not be empty."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 363
    :cond_13
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    if-eq v4, v5, :cond_23

    .line 364
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 367
    :cond_23
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->get(Ljava/lang/String;)Lcom/google/android/apps/unveil/env/Picture;

    move-result-object v0

    .line 368
    .local v0, cachedPicture:Lcom/google/android/apps/unveil/env/Picture;
    if-eqz v0, :cond_2d

    .line 369
    invoke-virtual {p2, v0}, Lcom/google/android/apps/unveil/env/ThumbnailProvider$ThumbnailListener;->onThumbnailReady(Lcom/google/android/apps/unveil/env/Picture;)V

    goto :goto_4

    .line 372
    :cond_2d
    invoke-virtual {p2}, Lcom/google/android/apps/unveil/env/ThumbnailProvider$ThumbnailListener;->onThumbnailLoading()V

    .line 375
    iget-object v4, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->context:Landroid/content/Context;

    invoke-virtual {p3, v4, p1}, Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec;->getSizedUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 377
    .local v3, urlWithSize:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->pendingFetches:Ljava/util/Map;

    monitor-enter v5

    .line 378
    :try_start_39
    iget-object v4, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->pendingFetches:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 379
    .local v1, existingListeners:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/env/ThumbnailProvider$ThumbnailListener;>;"
    if-nez v1, :cond_4b

    .line 380
    invoke-direct {p0, p1, v3}, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->makeFetchRunnable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v2

    .line 381
    .local v2, fetchRunnable:Ljava/lang/Runnable;
    invoke-direct {p0, p1, v2}, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->createAndPushFetcher(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/util/List;

    move-result-object v1

    .line 384
    .end local v2           #fetchRunnable:Ljava/lang/Runnable;
    :cond_4b
    invoke-direct {p0, p2, p1, v1}, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->maybeAddAuxillaryListener(Lcom/google/android/apps/unveil/env/ThumbnailProvider$ThumbnailListener;Ljava/lang/String;Ljava/util/List;)V

    .line 385
    monitor-exit v5

    goto :goto_4

    .end local v1           #existingListeners:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/env/ThumbnailProvider$ThumbnailListener;>;"
    :catchall_50
    move-exception v4

    monitor-exit v5
    :try_end_52
    .catchall {:try_start_39 .. :try_end_52} :catchall_50

    throw v4
.end method

.method protected isGoogleUrl(Ljava/lang/String;)Z
    .registers 3
    .parameter "urlWithSize"

    .prologue
    .line 451
    invoke-static {p1}, Lcom/google/android/apps/unveil/env/ThumbnailProvider$SizeSpec$FifeSpec;->isFifeUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/UnveilContext;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/UnveilContext;->getFrontendUrl()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "^((http(s)?):)?\\/\\/(www\\.)google\\.com\\/"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "gstatic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    :cond_34
    const/4 v0, 0x1

    :goto_35
    return v0

    :cond_36
    const/4 v0, 0x0

    goto :goto_35
.end method

.method put(Ljava/lang/String;[B)Lcom/google/android/apps/unveil/env/Picture;
    .registers 8
    .parameter "key"
    .parameter "data"

    .prologue
    .line 333
    invoke-static {p2}, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->toPicture([B)Lcom/google/android/apps/unveil/env/Picture;

    move-result-object v0

    .line 334
    .local v0, picture:Lcom/google/android/apps/unveil/env/Picture;
    if-nez v0, :cond_15

    .line 335
    sget-object v1, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Could not cache picture for key %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    const/4 v0, 0x0

    .line 341
    .end local v0           #picture:Lcom/google/android/apps/unveil/env/Picture;
    :goto_14
    return-object v0

    .line 339
    .restart local v0       #picture:Lcom/google/android/apps/unveil/env/Picture;
    :cond_15
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->cache:Lcom/google/android/apps/unveil/env/cache/AbstractCache;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/apps/unveil/env/cache/AbstractCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_14
.end method

.method public setFetchEnabled(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 506
    if-nez p1, :cond_c

    .line 507
    sget-object v0, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Thumbnail fetching is disabled! Please make sure this only happens in tests."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 509
    :cond_c
    iput-boolean p1, p0, Lcom/google/android/apps/unveil/env/ThumbnailProvider;->enabled:Z

    .line 510
    return-void
.end method
