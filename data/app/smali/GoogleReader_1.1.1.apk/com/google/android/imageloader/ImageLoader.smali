.class public final Lcom/google/android/imageloader/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/imageloader/ImageLoader$1;,
        Lcom/google/android/imageloader/ImageLoader$ImageError;,
        Lcom/google/android/imageloader/ImageLoader$ImageTask;,
        Lcom/google/android/imageloader/ImageLoader$ImageRequest;,
        Lcom/google/android/imageloader/ImageLoader$BindResult;,
        Lcom/google/android/imageloader/ImageLoader$Callback;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field public static final DEFAULT_CACHE_SIZE:J = 0x0L

.field public static final DEFAULT_TASK_LIMIT:I = 0x3

.field public static final IMAGE_LOADER_SERVICE:Ljava/lang/String; = "com.google.android.imageloader"

.field private static final TAG:Ljava/lang/String; = "ImageLoader"


# instance fields
.field private mActiveTaskCount:I

.field private final mBitmapContentHandler:Ljava/net/ContentHandler;

.field private final mBitmaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mErrors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/imageloader/ImageLoader$ImageError;",
            ">;"
        }
    .end annotation
.end field

.field private final mImageViewBinding:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxTaskCount:I

.field private final mPrefetchContentHandler:Ljava/net/ContentHandler;

.field private final mRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/imageloader/ImageLoader$ImageRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mStreamHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/net/URLStreamHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mURLStreamHandlerFactory:Ljava/net/URLStreamHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 71
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    const-wide/32 v2, 0x1000000

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/imageloader/ImageLoader;->DEFAULT_CACHE_SIZE:J

    return-void
.end method

.method public constructor <init>()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 283
    const/4 v1, 0x3

    sget-wide v5, Lcom/google/android/imageloader/ImageLoader;->DEFAULT_CACHE_SIZE:J

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/imageloader/ImageLoader;-><init>(ILjava/net/URLStreamHandlerFactory;Ljava/net/ContentHandler;Ljava/net/ContentHandler;JLandroid/os/Handler;)V

    .line 284
    return-void
.end method

.method public constructor <init>(I)V
    .registers 10
    .parameter "taskLimit"

    .prologue
    const/4 v2, 0x0

    .line 297
    sget-wide v5, Lcom/google/android/imageloader/ImageLoader;->DEFAULT_CACHE_SIZE:J

    move-object v0, p0

    move v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/imageloader/ImageLoader;-><init>(ILjava/net/URLStreamHandlerFactory;Ljava/net/ContentHandler;Ljava/net/ContentHandler;JLandroid/os/Handler;)V

    .line 298
    return-void
.end method

.method public constructor <init>(ILjava/net/URLStreamHandlerFactory;Ljava/net/ContentHandler;Ljava/net/ContentHandler;JLandroid/os/Handler;)V
    .registers 10
    .parameter "taskLimit"
    .parameter "streamFactory"
    .parameter "bitmapHandler"
    .parameter "prefetchHandler"
    .parameter "cacheSize"
    .parameter "handler"

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    const/4 v0, 0x1

    if-ge p1, v0, :cond_e

    .line 253
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Task limit must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_e
    const-wide/16 v0, 0x1

    cmp-long v0, p5, v0

    if-gez v0, :cond_1c

    .line 256
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cache size must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_1c
    iput p1, p0, Lcom/google/android/imageloader/ImageLoader;->mMaxTaskCount:I

    .line 259
    iput-object p2, p0, Lcom/google/android/imageloader/ImageLoader;->mURLStreamHandlerFactory:Ljava/net/URLStreamHandlerFactory;

    .line 260
    if-eqz p2, :cond_55

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_27
    iput-object v0, p0, Lcom/google/android/imageloader/ImageLoader;->mStreamHandlers:Ljava/util/HashMap;

    .line 261
    if-eqz p3, :cond_57

    move-object v0, p3

    :goto_2c
    iput-object v0, p0, Lcom/google/android/imageloader/ImageLoader;->mBitmapContentHandler:Ljava/net/ContentHandler;

    .line 262
    iput-object p4, p0, Lcom/google/android/imageloader/ImageLoader;->mPrefetchContentHandler:Ljava/net/ContentHandler;

    .line 264
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/imageloader/ImageLoader;->mImageViewBinding:Ljava/util/Map;

    .line 266
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/imageloader/ImageLoader;->mRequests:Ljava/util/LinkedList;

    .line 271
    new-instance v0, Lcom/google/android/imageloader/BitmapCache;

    invoke-direct {v0, p5, p6}, Lcom/google/android/imageloader/BitmapCache;-><init>(J)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/imageloader/ImageLoader;->mBitmaps:Ljava/util/Map;

    .line 272
    new-instance v0, Lcom/google/android/imageloader/LruCache;

    invoke-direct {v0}, Lcom/google/android/imageloader/LruCache;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/imageloader/ImageLoader;->mErrors:Ljava/util/Map;

    .line 273
    return-void

    .line 260
    :cond_55
    const/4 v0, 0x0

    goto :goto_27

    .line 261
    :cond_57
    new-instance v0, Lcom/google/android/imageloader/BitmapContentHandler;

    invoke-direct {v0}, Lcom/google/android/imageloader/BitmapContentHandler;-><init>()V

    goto :goto_2c
.end method

.method public constructor <init>(J)V
    .registers 11
    .parameter "cacheSize"

    .prologue
    const/4 v2, 0x0

    .line 310
    const/4 v1, 0x3

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-wide v5, p1

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/imageloader/ImageLoader;-><init>(ILjava/net/URLStreamHandlerFactory;Ljava/net/ContentHandler;Ljava/net/ContentHandler;JLandroid/os/Handler;)V

    .line 311
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .registers 10
    .parameter "resolver"

    .prologue
    const/4 v3, 0x0

    .line 339
    const/4 v1, 0x3

    new-instance v2, Lcom/google/android/imageloader/ContentURLStreamHandlerFactory;

    invoke-direct {v2, p1}, Lcom/google/android/imageloader/ContentURLStreamHandlerFactory;-><init>(Landroid/content/ContentResolver;)V

    sget-wide v5, Lcom/google/android/imageloader/ImageLoader;->DEFAULT_CACHE_SIZE:J

    move-object v0, p0

    move-object v4, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/imageloader/ImageLoader;-><init>(ILjava/net/URLStreamHandlerFactory;Ljava/net/ContentHandler;Ljava/net/ContentHandler;JLandroid/os/Handler;)V

    .line 341
    return-void
.end method

.method public constructor <init>(Ljava/net/ContentHandler;Ljava/net/ContentHandler;)V
    .registers 11
    .parameter "bitmapHandler"
    .parameter "prefetchHandler"

    .prologue
    const/4 v2, 0x0

    .line 327
    const/4 v1, 0x3

    sget-wide v5, Lcom/google/android/imageloader/ImageLoader;->DEFAULT_CACHE_SIZE:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/imageloader/ImageLoader;-><init>(ILjava/net/URLStreamHandlerFactory;Ljava/net/ContentHandler;Ljava/net/ContentHandler;JLandroid/os/Handler;)V

    .line 328
    return-void
.end method

.method public constructor <init>(Ljava/net/URLStreamHandlerFactory;)V
    .registers 10
    .parameter "factory"

    .prologue
    const/4 v3, 0x0

    .line 357
    const/4 v1, 0x3

    sget-wide v5, Lcom/google/android/imageloader/ImageLoader;->DEFAULT_CACHE_SIZE:J

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/imageloader/ImageLoader;-><init>(ILjava/net/URLStreamHandlerFactory;Ljava/net/ContentHandler;Ljava/net/ContentHandler;JLandroid/os/Handler;)V

    .line 358
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/imageloader/ImageLoader;)Ljava/net/ContentHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader;->mBitmapContentHandler:Ljava/net/ContentHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/imageloader/ImageLoader;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader;->mImageViewBinding:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1108(Lcom/google/android/imageloader/ImageLoader;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/google/android/imageloader/ImageLoader;->mActiveTaskCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/imageloader/ImageLoader;->mActiveTaskCount:I

    return v0
.end method

.method static synthetic access$1110(Lcom/google/android/imageloader/ImageLoader;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/google/android/imageloader/ImageLoader;->mActiveTaskCount:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/google/android/imageloader/ImageLoader;->mActiveTaskCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/imageloader/ImageLoader;Ljava/lang/String;)Lcom/google/android/imageloader/ImageLoader$ImageError;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/imageloader/ImageLoader;->getError(Ljava/lang/String;)Lcom/google/android/imageloader/ImageLoader$ImageError;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/imageloader/ImageLoader;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/imageloader/ImageLoader;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    invoke-static {p0}, Lcom/google/android/imageloader/ImageLoader;->getProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/imageloader/ImageLoader;Ljava/lang/String;)Ljava/net/URLStreamHandler;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/imageloader/ImageLoader;->getURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/imageloader/ImageLoader;)Ljava/net/ContentHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader;->mPrefetchContentHandler:Ljava/net/ContentHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/imageloader/ImageLoader;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/google/android/imageloader/ImageLoader;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/imageloader/ImageLoader;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/imageloader/ImageLoader;->hasError(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/imageloader/ImageLoader;Ljava/lang/String;Lcom/google/android/imageloader/ImageLoader$ImageError;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/google/android/imageloader/ImageLoader;->putError(Ljava/lang/String;Lcom/google/android/imageloader/ImageLoader$ImageError;)V

    return-void
.end method

.method private enqueueRequest(Lcom/google/android/imageloader/ImageLoader$ImageRequest;)V
    .registers 3
    .parameter

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 390
    invoke-virtual {p0}, Lcom/google/android/imageloader/ImageLoader;->flushRequests()V

    .line 391
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/google/android/imageloader/ImageLoader;
    .registers 4
    .parameter "context"

    .prologue
    .line 96
    const-string v1, "com.google.android.imageloader"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/imageloader/ImageLoader;

    .line 97
    .local v0, loader:Lcom/google/android/imageloader/ImageLoader;
    if-nez v0, :cond_16

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 99
    const-string v1, "com.google.android.imageloader"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #loader:Lcom/google/android/imageloader/ImageLoader;
    check-cast v0, Lcom/google/android/imageloader/ImageLoader;

    .line 101
    .restart local v0       #loader:Lcom/google/android/imageloader/ImageLoader;
    :cond_16
    if-nez v0, :cond_20

    .line 102
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ImageLoader not available"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    :cond_20
    return-object v0
.end method

.method private getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3
    .parameter "url"

    .prologue
    .line 641
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader;->mBitmaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private getError(Ljava/lang/String;)Lcom/google/android/imageloader/ImageLoader$ImageError;
    .registers 4
    .parameter "url"

    .prologue
    .line 645
    iget-object v1, p0, Lcom/google/android/imageloader/ImageLoader;->mErrors:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/imageloader/ImageLoader$ImageError;

    .line 646
    .local v0, error:Lcom/google/android/imageloader/ImageLoader$ImageError;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/google/android/imageloader/ImageLoader$ImageError;->isExpired()Z

    move-result v1

    if-nez v1, :cond_12

    move-object v1, v0

    :goto_11
    return-object v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private static getProtocol(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "url"

    .prologue
    .line 165
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 166
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
    .registers 4
    .parameter

    .prologue
    .line 361
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader;->mURLStreamHandlerFactory:Ljava/net/URLStreamHandlerFactory;

    .line 362
    if-nez v0, :cond_6

    .line 363
    const/4 v0, 0x0

    .line 374
    :goto_5
    return-object v0

    .line 365
    :cond_6
    iget-object v1, p0, Lcom/google/android/imageloader/ImageLoader;->mStreamHandlers:Ljava/util/HashMap;

    .line 366
    monitor-enter v1

    .line 367
    :try_start_9
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/URLStreamHandler;

    .line 368
    if-nez p0, :cond_1f

    .line 369
    invoke-interface {v0, p1}, Ljava/net/URLStreamHandlerFactory;->createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    move-result-object v0

    .line 370
    if-eqz v0, :cond_1a

    .line 371
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    :cond_1a
    :goto_1a
    monitor-exit v1

    goto :goto_5

    .line 375
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_1c

    throw v0

    :cond_1f
    move-object v0, p0

    goto :goto_1a
.end method

.method private hasError(Ljava/lang/String;)Z
    .registers 3
    .parameter "url"

    .prologue
    .line 654
    invoke-direct {p0, p1}, Lcom/google/android/imageloader/ImageLoader;->getError(Ljava/lang/String;)Lcom/google/android/imageloader/ImageLoader$ImageError;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private insertRequestAtFrontOfQueue(Lcom/google/android/imageloader/ImageLoader$ImageRequest;)V
    .registers 4
    .parameter "request"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader;->mRequests:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 395
    invoke-virtual {p0}, Lcom/google/android/imageloader/ImageLoader;->flushRequests()V

    .line 396
    return-void
.end method

.method private putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 633
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader;->mBitmaps:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    return-void
.end method

.method private putError(Ljava/lang/String;Lcom/google/android/imageloader/ImageLoader$ImageError;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 637
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader;->mErrors:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    return-void
.end method


# virtual methods
.method public bind(Landroid/widget/BaseAdapter;Landroid/widget/ImageView;Ljava/lang/String;)Lcom/google/android/imageloader/ImageLoader$BindResult;
    .registers 8
    .parameter "adapter"
    .parameter "view"
    .parameter "url"

    .prologue
    .line 408
    if-nez p1, :cond_8

    .line 409
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 411
    :cond_8
    if-nez p2, :cond_10

    .line 412
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 414
    :cond_10
    if-nez p3, :cond_18

    .line 415
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 417
    :cond_18
    invoke-direct {p0, p3}, Lcom/google/android/imageloader/ImageLoader;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 418
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-direct {p0, p3}, Lcom/google/android/imageloader/ImageLoader;->getError(Ljava/lang/String;)Lcom/google/android/imageloader/ImageLoader$ImageError;

    move-result-object v1

    .line 419
    .local v1, error:Lcom/google/android/imageloader/ImageLoader$ImageError;
    if-eqz v0, :cond_28

    .line 420
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 421
    sget-object v3, Lcom/google/android/imageloader/ImageLoader$BindResult;->OK:Lcom/google/android/imageloader/ImageLoader$BindResult;

    .line 439
    :goto_27
    return-object v3

    .line 426
    :cond_28
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 428
    if-eqz v1, :cond_31

    .line 429
    sget-object v3, Lcom/google/android/imageloader/ImageLoader$BindResult;->ERROR:Lcom/google/android/imageloader/ImageLoader$BindResult;

    goto :goto_27

    .line 431
    :cond_31
    new-instance v2, Lcom/google/android/imageloader/ImageLoader$ImageRequest;

    invoke-direct {v2, p0, p1, p3}, Lcom/google/android/imageloader/ImageLoader$ImageRequest;-><init>(Lcom/google/android/imageloader/ImageLoader;Landroid/widget/BaseAdapter;Ljava/lang/String;)V

    .line 437
    .local v2, request:Lcom/google/android/imageloader/ImageLoader$ImageRequest;
    invoke-direct {p0, v2}, Lcom/google/android/imageloader/ImageLoader;->insertRequestAtFrontOfQueue(Lcom/google/android/imageloader/ImageLoader$ImageRequest;)V

    .line 439
    sget-object v3, Lcom/google/android/imageloader/ImageLoader$BindResult;->LOADING:Lcom/google/android/imageloader/ImageLoader$BindResult;

    goto :goto_27
.end method

.method public bind(Landroid/widget/ImageView;Ljava/lang/String;Lcom/google/android/imageloader/ImageLoader$Callback;)Lcom/google/android/imageloader/ImageLoader$BindResult;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 466
    if-nez p1, :cond_8

    .line 467
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 469
    :cond_8
    if-nez p2, :cond_10

    .line 470
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 472
    :cond_10
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader;->mImageViewBinding:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    invoke-direct {p0, p2}, Lcom/google/android/imageloader/ImageLoader;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 474
    invoke-direct {p0, p2}, Lcom/google/android/imageloader/ImageLoader;->getError(Ljava/lang/String;)Lcom/google/android/imageloader/ImageLoader$ImageError;

    move-result-object v1

    .line 475
    if-eqz v0, :cond_25

    .line 476
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 477
    sget-object v0, Lcom/google/android/imageloader/ImageLoader$BindResult;->OK:Lcom/google/android/imageloader/ImageLoader$BindResult;

    .line 489
    :goto_24
    return-object v0

    .line 482
    :cond_25
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 484
    if-eqz v1, :cond_2e

    .line 485
    sget-object v0, Lcom/google/android/imageloader/ImageLoader$BindResult;->ERROR:Lcom/google/android/imageloader/ImageLoader$BindResult;

    goto :goto_24

    .line 487
    :cond_2e
    new-instance v0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/imageloader/ImageLoader$ImageRequest;-><init>(Lcom/google/android/imageloader/ImageLoader;Landroid/widget/ImageView;Ljava/lang/String;Lcom/google/android/imageloader/ImageLoader$Callback;)V

    .line 488
    invoke-direct {p0, v0}, Lcom/google/android/imageloader/ImageLoader;->enqueueRequest(Lcom/google/android/imageloader/ImageLoader$ImageRequest;)V

    .line 489
    sget-object v0, Lcom/google/android/imageloader/ImageLoader$BindResult;->LOADING:Lcom/google/android/imageloader/ImageLoader$BindResult;

    goto :goto_24
.end method

.method public clearErrors()V
    .registers 2

    .prologue
    .line 516
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader;->mErrors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 517
    return-void
.end method

.method flushRequests()V
    .registers 5

    .prologue
    .line 383
    :goto_0
    iget v0, p0, Lcom/google/android/imageloader/ImageLoader;->mActiveTaskCount:I

    iget v1, p0, Lcom/google/android/imageloader/ImageLoader;->mMaxTaskCount:I

    if-ge v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 384
    new-instance v1, Lcom/google/android/imageloader/ImageLoader$ImageTask;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/google/android/imageloader/ImageLoader$ImageTask;-><init>(Lcom/google/android/imageloader/ImageLoader;Lcom/google/android/imageloader/ImageLoader$1;)V

    const/4 v0, 0x1

    new-array v2, v0, [Lcom/google/android/imageloader/ImageLoader$ImageRequest;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/imageloader/ImageLoader$ImageRequest;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/android/imageloader/ImageLoader$ImageTask;->executeOnThreadPool([Lcom/google/android/imageloader/ImageLoader$ImageRequest;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 386
    :cond_26
    return-void
.end method

.method public prefetch(Landroid/database/Cursor;I)V
    .registers 6
    .parameter "cursor"
    .parameter "columnIndex"

    .prologue
    .line 624
    const/4 v0, 0x0

    .local v0, position:I
    :goto_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 625
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 626
    .local v1, url:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 627
    invoke-virtual {p0, v1}, Lcom/google/android/imageloader/ImageLoader;->prefetch(Ljava/lang/String;)V

    .line 624
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 630
    .end local v1           #url:Ljava/lang/String;
    :cond_17
    return-void
.end method

.method public prefetch(Ljava/lang/String;)V
    .registers 5
    .parameter "url"

    .prologue
    .line 588
    if-nez p1, :cond_8

    .line 589
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 591
    :cond_8
    invoke-direct {p0, p1}, Lcom/google/android/imageloader/ImageLoader;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 604
    :cond_e
    :goto_e
    return-void

    .line 596
    :cond_f
    invoke-direct {p0, p1}, Lcom/google/android/imageloader/ImageLoader;->getError(Ljava/lang/String;)Lcom/google/android/imageloader/ImageLoader$ImageError;

    move-result-object v2

    if-nez v2, :cond_e

    .line 601
    const/4 v0, 0x0

    .line 602
    .local v0, loadBitmap:Z
    new-instance v1, Lcom/google/android/imageloader/ImageLoader$ImageRequest;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/imageloader/ImageLoader$ImageRequest;-><init>(Lcom/google/android/imageloader/ImageLoader;Ljava/lang/String;Z)V

    .line 603
    .local v1, request:Lcom/google/android/imageloader/ImageLoader$ImageRequest;
    invoke-direct {p0, v1}, Lcom/google/android/imageloader/ImageLoader;->enqueueRequest(Lcom/google/android/imageloader/ImageLoader$ImageRequest;)V

    goto :goto_e
.end method

.method public preload(Landroid/database/Cursor;III)V
    .registers 8
    .parameter "cursor"
    .parameter "columnIndex"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 566
    move v0, p3

    .local v0, position:I
    :goto_1
    if-ge v0, p4, :cond_19

    .line 567
    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 568
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 569
    .local v1, url:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 570
    invoke-virtual {p0, v1}, Lcom/google/android/imageloader/ImageLoader;->preload(Ljava/lang/String;)V

    .line 566
    .end local v1           #url:Ljava/lang/String;
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 574
    :cond_19
    return-void
.end method

.method public preload(Ljava/lang/String;)V
    .registers 5
    .parameter "url"

    .prologue
    .line 529
    if-nez p1, :cond_8

    .line 530
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 532
    :cond_8
    invoke-direct {p0, p1}, Lcom/google/android/imageloader/ImageLoader;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 544
    :cond_e
    :goto_e
    return-void

    .line 536
    :cond_f
    invoke-direct {p0, p1}, Lcom/google/android/imageloader/ImageLoader;->getError(Ljava/lang/String;)Lcom/google/android/imageloader/ImageLoader$ImageError;

    move-result-object v2

    if-nez v2, :cond_e

    .line 541
    const/4 v0, 0x1

    .line 542
    .local v0, loadBitmap:Z
    new-instance v1, Lcom/google/android/imageloader/ImageLoader$ImageRequest;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/imageloader/ImageLoader$ImageRequest;-><init>(Lcom/google/android/imageloader/ImageLoader;Ljava/lang/String;Z)V

    .line 543
    .local v1, task:Lcom/google/android/imageloader/ImageLoader$ImageRequest;
    invoke-direct {p0, v1}, Lcom/google/android/imageloader/ImageLoader;->enqueueRequest(Lcom/google/android/imageloader/ImageLoader$ImageRequest;)V

    goto :goto_e
.end method

.method public unbind(Landroid/widget/ImageView;)V
    .registers 3
    .parameter

    .prologue
    .line 501
    iget-object v0, p0, Lcom/google/android/imageloader/ImageLoader;->mImageViewBinding:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 507
    return-void
.end method
