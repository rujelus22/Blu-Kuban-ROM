.class public Lcom/google/android/finsky/utils/BitmapLoader;
.super Ljava/lang/Object;
.source "BitmapLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;,
        Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;,
        Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;,
        Lcom/google/android/finsky/utils/BitmapLoader$DebugImageRequest;,
        Lcom/google/android/finsky/utils/BitmapLoader$RemoteRequestCreator;
    }
.end annotation


# static fields
.field private static MAX_CACHE_SIZE_IN_BYTES:I


# instance fields
.field private final mBatchedResponses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mCachedRemoteImages:Lcom/google/android/finsky/utils/BitmapLruCache;

.field private final mHandler:Landroid/os/Handler;

.field private final mInFlightRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestQueue:Lcom/android/volley/RequestQueue;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const/high16 v0, 0x30

    sput v0, Lcom/google/android/finsky/utils/BitmapLoader;->MAX_CACHE_SIZE_IN_BYTES:I

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/RequestQueue;)V
    .registers 4
    .parameter "queue"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/google/android/finsky/utils/BitmapLruCache;

    sget v1, Lcom/google/android/finsky/utils/BitmapLoader;->MAX_CACHE_SIZE_IN_BYTES:I

    invoke-direct {v0, v1}, Lcom/google/android/finsky/utils/BitmapLruCache;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mCachedRemoteImages:Lcom/google/android/finsky/utils/BitmapLruCache;

    .line 51
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mInFlightRequests:Ljava/util/HashMap;

    .line 54
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mBatchedResponses:Ljava/util/HashMap;

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mHandler:Landroid/os/Handler;

    .line 67
    iput-object p1, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 68
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/utils/BitmapLoader;->onGetImageSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/finsky/utils/BitmapLoader;->onGetImageError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/finsky/utils/BitmapLoader;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mInFlightRequests:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/utils/BitmapLoader;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mBatchedResponses:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method private batchResponse(Ljava/lang/String;Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;)V
    .registers 7
    .parameter "cacheKey"
    .parameter "wrapper"

    .prologue
    .line 477
    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mBatchedResponses:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_19

    .line 480
    new-instance v0, Lcom/google/android/finsky/utils/BitmapLoader$2;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/utils/BitmapLoader$2;-><init>(Lcom/google/android/finsky/utils/BitmapLoader;)V

    iput-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mRunnable:Ljava/lang/Runnable;

    .line 495
    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 497
    :cond_19
    return-void
.end method

.method private get(Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$RemoteRequestCreator;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    .registers 18
    .parameter "requestUrl"
    .parameter "canHaveEmptyUrl"
    .parameter "cacheKey"
    .parameter "defaultImage"
    .parameter "remoteRequestCreator"
    .parameter "bitmapLoadedHandler"

    .prologue
    .line 144
    if-nez p2, :cond_13

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 145
    new-instance v0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;-><init>(Lcom/google/android/finsky/utils/BitmapLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;)V

    .line 177
    :goto_12
    return-object v0

    .line 149
    :cond_13
    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mCachedRemoteImages:Lcom/google/android/finsky/utils/BitmapLruCache;

    invoke-virtual {v0, p3}, Lcom/google/android/finsky/utils/BitmapLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 150
    .local v2, cachedBitmap:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_27

    .line 152
    new-instance v0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;-><init>(Lcom/google/android/finsky/utils/BitmapLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;)V

    goto :goto_12

    .line 156
    :cond_27
    new-instance v3, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-object v4, p0

    move-object v5, p4

    move-object v6, p1

    move-object v7, p3

    move-object/from16 v8, p6

    invoke-direct/range {v3 .. v8}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;-><init>(Lcom/google/android/finsky/utils/BitmapLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;)V

    .line 160
    .local v3, bitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;

    .line 161
    .local v10, wrapper:Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;
    if-eqz v10, :cond_41

    .line 163
    invoke-virtual {v10, v3}, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->addHandler(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    move-object v0, v3

    .line 164
    goto :goto_12

    .line 168
    :cond_41
    invoke-interface/range {p5 .. p5}, Lcom/google/android/finsky/utils/BitmapLoader$RemoteRequestCreator;->create()Lcom/android/volley/Request;

    move-result-object v9

    .line 170
    .local v9, newRequest:Lcom/android/volley/Request;,"Lcom/android/volley/Request<*>;"
    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, v9}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 173
    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mInFlightRequests:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;

    invoke-direct {v1, p0, v9, v3}, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;-><init>(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/android/volley/Request;Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v3

    .line 177
    goto :goto_12
.end method

.method private static getCacheKey(Ljava/lang/String;II)Ljava/lang/String;
    .registers 5
    .parameter "url"
    .parameter "maxWidth"
    .parameter "maxHeight"

    .prologue
    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "#W"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#H"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onGetImageError(Ljava/lang/String;)V
    .registers 7
    .parameter "cacheKey"

    .prologue
    .line 328
    iget-object v1, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;

    .line 330
    .local v0, wrapper:Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;
    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/utils/BitmapLoader;->batchResponse(Ljava/lang/String;Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;)V

    .line 331
    const-string v1, "Bitmap error %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    #getter for: Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->request:Lcom/android/volley/Request;
    invoke-static {v0}, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->access$000(Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;)Lcom/android/volley/Request;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->logTiming(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    return-void
.end method

.method private onGetImageSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 8
    .parameter "cacheKey"
    .parameter "response"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 301
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v2

    mul-int/2addr v1, v2

    const v2, 0x7d000

    if-gt v1, v2, :cond_2e

    .line 302
    iget-object v1, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mCachedRemoteImages:Lcom/google/android/finsky/utils/BitmapLruCache;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/finsky/utils/BitmapLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    :goto_15
    iget-object v1, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;

    .line 311
    .local v0, wrapper:Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;
    sget-object v1, Lcom/google/android/finsky/config/G;->explorerEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 312
    if-nez v0, :cond_38

    .line 323
    :goto_2d
    return-void

    .line 304
    .end local v0           #wrapper:Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;
    :cond_2e
    const-string v1, "%s is too large to cache"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_15

    .line 318
    .restart local v0       #wrapper:Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;
    :cond_38
    #setter for: Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->responseBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, p2}, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->access$302(Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 321
    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/utils/BitmapLoader;->batchResponse(Ljava/lang/String;Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;)V

    .line 322
    const-string v1, "Loaded bitmap %s"

    new-array v2, v3, [Ljava/lang/Object;

    #getter for: Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->request:Lcom/android/volley/Request;
    invoke-static {v0}, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->access$000(Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;)Lcom/android/volley/Request;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->logTiming(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2d
.end method


# virtual methods
.method public drain(I)V
    .registers 6
    .parameter "sequenceNumber"

    .prologue
    .line 76
    iget-object v3, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-static {v3, p1}, Lcom/google/android/finsky/FinskyApp;->drain(Lcom/android/volley/RequestQueue;I)V

    .line 77
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 78
    .local v2, wrappersToRemove:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 82
    .local v1, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;

    #getter for: Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->request:Lcom/android/volley/Request;
    invoke-static {v3}, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->access$000(Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;)Lcom/android/volley/Request;

    move-result-object v3

    if-eqz v3, :cond_3f

    iget-object v3, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;

    #getter for: Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->request:Lcom/android/volley/Request;
    invoke-static {v3}, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->access$000(Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;)Lcom/android/volley/Request;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/volley/Request;->getSequence()I

    move-result v3

    if-ge v3, p1, :cond_13

    .line 84
    :cond_3f
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 87
    .end local v1           #key:Ljava/lang/String;
    :cond_43
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_47
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 88
    .restart local v1       #key:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_47

    .line 90
    .end local v1           #key:Ljava/lang/String;
    :cond_59
    return-void
.end method

.method public evictCache()V
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mCachedRemoteImages:Lcom/google/android/finsky/utils/BitmapLruCache;

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/BitmapLruCache;->evictAll()V

    .line 97
    return-void
.end method

.method public get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    .registers 10
    .parameter "requestUrl"
    .parameter "defaultImage"
    .parameter "bitmapLoadedHandler"

    .prologue
    const/4 v4, 0x0

    .line 105
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    .registers 19
    .parameter "requestUrl"
    .parameter "defaultImage"
    .parameter "bitmapLoadedHandler"
    .parameter "maxWidth"
    .parameter "maxHeight"

    .prologue
    .line 276
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {p1, v0, v1}, Lcom/google/android/finsky/utils/BitmapLoader;->getCacheKey(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    .line 277
    .local v5, cacheKey:Ljava/lang/String;
    const/4 v8, 0x0

    new-instance v2, Lcom/google/android/finsky/utils/BitmapLoader$1;

    move-object v3, p0

    move-object v4, p1

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/google/android/finsky/utils/BitmapLoader$1;-><init>(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;Ljava/lang/String;II)V

    move-object v6, p0

    move-object v7, p1

    move-object v9, v5

    move-object v10, p2

    move-object v11, v2

    move-object/from16 v12, p3

    invoke-direct/range {v6 .. v12}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$RemoteRequestCreator;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v2

    return-object v2
.end method
