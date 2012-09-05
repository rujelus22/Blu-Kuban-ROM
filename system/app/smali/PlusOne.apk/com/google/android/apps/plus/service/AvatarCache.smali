.class public Lcom/google/android/apps/plus/service/AvatarCache;
.super Ljava/lang/Object;
.source "AvatarCache.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;,
        Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;,
        Lcom/google/android/apps/plus/service/AvatarCache$AvatarConsumer;,
        Lcom/google/android/apps/plus/service/AvatarCache$OnAvatarRequestCompleteListener;,
        Lcom/google/android/apps/plus/service/AvatarCache$OnAvatarChangeListener;
    }
.end annotation


# static fields
.field private static final EMPTY_ARRAY:[B

.field private static mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/service/AvatarCache$OnAvatarChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mRequestCompleteListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/service/AvatarCache$OnAvatarRequestCompleteListener;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/google/android/apps/plus/service/AvatarCache;

.field private static sMediumAvatarEstimatedSize:I

.field private static sSmallAvatarEstimatedSize:I

.field private static sTinyAvatarEstimatedSize:I

.field private static sUseSoftReferences:Z


# instance fields
.field private final mBitmapCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Lcom/google/android/apps/plus/content/AvatarRequest;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mBitmapHolderCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Lcom/google/android/apps/plus/content/AvatarRequest;",
            "Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mBitmapHolderCacheRedZoneBytes:I

.field private final mContext:Landroid/content/Context;

.field private mLoaderThread:Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;

.field private mLoadingRequested:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mPaused:Z

.field private final mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/google/android/apps/plus/service/AvatarCache$AvatarConsumer;",
            "Lcom/google/android/apps/plus/content/AvatarRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 98
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/apps/plus/service/AvatarCache;->EMPTY_ARRAY:[B

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/service/AvatarCache;->mListeners:Ljava/util/ArrayList;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/service/AvatarCache;->mRequestCompleteListeners:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    const v6, 0x3e99999a

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 165
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mMainThreadHandler:Landroid/os/Handler;

    .line 198
    iput-object p1, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mContext:Landroid/content/Context;

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 201
    .local v1, resources:Landroid/content/res/Resources;
    new-instance v2, Landroid/support/v4/util/LruCache;

    const v3, 0x7f0a0001

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/support/v4/util/LruCache;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mBitmapCache:Landroid/support/v4/util/LruCache;

    .line 203
    const/high16 v2, 0x7f0a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 204
    .local v0, maxBytes:I
    new-instance v2, Lcom/google/android/apps/plus/service/AvatarCache$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/apps/plus/service/AvatarCache$1;-><init>(Lcom/google/android/apps/plus/service/AvatarCache;I)V

    iput-object v2, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mBitmapHolderCache:Landroid/support/v4/util/LruCache;

    .line 215
    int-to-double v2, v0

    const-wide v4, 0x3feccccccccccccdL

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mBitmapHolderCacheRedZoneBytes:I

    .line 217
    sget v2, Lcom/google/android/apps/plus/service/AvatarCache;->sTinyAvatarEstimatedSize:I

    if-nez v2, :cond_81

    .line 218
    invoke-static {p1}, Lcom/google/android/apps/plus/content/EsAvatarData;->getTinyAvatarSize(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    invoke-static {p1}, Lcom/google/android/apps/plus/content/EsAvatarData;->getTinyAvatarSize(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/google/android/apps/plus/service/AvatarCache;->sTinyAvatarEstimatedSize:I

    .line 221
    invoke-static {p1}, Lcom/google/android/apps/plus/content/EsAvatarData;->getSmallAvatarSize(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    invoke-static {p1}, Lcom/google/android/apps/plus/content/EsAvatarData;->getSmallAvatarSize(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/google/android/apps/plus/service/AvatarCache;->sSmallAvatarEstimatedSize:I

    .line 224
    invoke-static {p1}, Lcom/google/android/apps/plus/content/EsAvatarData;->getMediumAvatarSize(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    invoke-static {p1}, Lcom/google/android/apps/plus/content/EsAvatarData;->getMediumAvatarSize(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/google/android/apps/plus/service/AvatarCache;->sMediumAvatarEstimatedSize:I

    .line 228
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_82

    const/4 v2, 0x1

    :goto_7f
    sput-boolean v2, Lcom/google/android/apps/plus/service/AvatarCache;->sUseSoftReferences:Z

    .line 230
    :cond_81
    return-void

    .line 228
    :cond_82
    const/4 v2, 0x0

    goto :goto_7f
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/service/AvatarCache;)Landroid/support/v4/util/LruCache;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mBitmapHolderCache:Landroid/support/v4/util/LruCache;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/service/AvatarCache;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mBitmapHolderCacheRedZoneBytes:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/service/AvatarCache;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/service/AvatarCache;Ljava/util/HashSet;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/service/AvatarCache;->obtainRequestsToLoad(Ljava/util/HashSet;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/service/AvatarCache;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/service/AvatarCache;Lcom/google/android/apps/plus/content/AvatarRequest;[BZZ)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/service/AvatarCache;->deliverBitmap(Lcom/google/android/apps/plus/content/AvatarRequest;[BZZ)V

    return-void
.end method

.method private deliverBitmap(Lcom/google/android/apps/plus/content/AvatarRequest;[BZZ)V
    .registers 7
    .parameter "request"
    .parameter "bytes"
    .parameter "available"
    .parameter "preloading"

    .prologue
    .line 663
    new-instance v0, Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;

    invoke-direct {v0, p2, p3}, Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;-><init>([BZ)V

    .line 664
    .local v0, holder:Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;->fresh:Z

    .line 668
    if-eqz p3, :cond_f

    if-nez p4, :cond_f

    .line 669
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/service/AvatarCache;->inflateBitmap(Lcom/google/android/apps/plus/content/AvatarRequest;Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;)V

    .line 672
    :cond_f
    iget-object v1, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mBitmapHolderCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    return-void
.end method

.method private evictAvatar(Lcom/google/android/apps/plus/content/AvatarRequest;)V
    .registers 4
    .parameter "request"

    .prologue
    .line 612
    iget-object v1, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mBitmapCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    iget-object v1, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mBitmapHolderCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;

    .line 614
    .local v0, holder:Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;
    if-eqz v0, :cond_12

    .line 615
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;->fresh:Z

    .line 617
    :cond_12
    return-void
.end method

.method private getEstimatedSizeInBytes(Lcom/google/android/apps/plus/content/AvatarRequest;)I
    .registers 3
    .parameter "request"

    .prologue
    .line 236
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/AvatarRequest;->getSize()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 241
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 237
    :pswitch_9
    sget v0, Lcom/google/android/apps/plus/service/AvatarCache;->sTinyAvatarEstimatedSize:I

    goto :goto_8

    .line 238
    :pswitch_c
    sget v0, Lcom/google/android/apps/plus/service/AvatarCache;->sSmallAvatarEstimatedSize:I

    goto :goto_8

    .line 239
    :pswitch_f
    sget v0, Lcom/google/android/apps/plus/service/AvatarCache;->sMediumAvatarEstimatedSize:I

    goto :goto_8

    .line 236
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_9
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/AvatarCache;
    .registers 4
    .parameter "context"

    .prologue
    .line 191
    const-class v1, Lcom/google/android/apps/plus/service/AvatarCache;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/apps/plus/service/AvatarCache;->sInstance:Lcom/google/android/apps/plus/service/AvatarCache;

    if-nez v0, :cond_12

    .line 192
    new-instance v0, Lcom/google/android/apps/plus/service/AvatarCache;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/apps/plus/service/AvatarCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/apps/plus/service/AvatarCache;->sInstance:Lcom/google/android/apps/plus/service/AvatarCache;

    .line 194
    :cond_12
    sget-object v0, Lcom/google/android/apps/plus/service/AvatarCache;->sInstance:Lcom/google/android/apps/plus/service/AvatarCache;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v1

    return-object v0

    .line 191
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private inflateBitmap(Lcom/google/android/apps/plus/content/AvatarRequest;Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;)V
    .registers 8
    .parameter "request"
    .parameter "holder"

    .prologue
    .line 513
    iget-object v2, p2, Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5

    .line 547
    :cond_4
    :goto_4
    return-void

    .line 517
    :cond_5
    iget-object v1, p2, Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;->bytes:[B

    .line 518
    .local v1, bytes:[B
    if-eqz v1, :cond_4

    array-length v2, v1

    if-eqz v2, :cond_4

    .line 522
    iget-object v2, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mBitmapCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p2, Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 523
    iget-object v2, p2, Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_4

    .line 529
    iget-object v2, p2, Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;->bitmapRef:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_2c

    .line 530
    iget-object v2, p2, Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;->bitmapRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p2, Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 531
    iget-object v2, p2, Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_4

    .line 537
    :cond_2c
    const/4 v2, 0x0

    :try_start_2d
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 538
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iput-object v0, p2, Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 539
    if-nez v0, :cond_3d

    .line 540
    const/4 v2, 0x0

    iput-object v2, p2, Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;->bitmapRef:Ljava/lang/ref/SoftReference;

    goto :goto_4

    .line 544
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_3b
    move-exception v2

    goto :goto_4

    .line 541
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_3d
    sget-boolean v2, Lcom/google/android/apps/plus/service/AvatarCache;->sUseSoftReferences:Z

    if-eqz v2, :cond_4

    .line 542
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p2, Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;->bitmapRef:Ljava/lang/ref/SoftReference;
    :try_end_48
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2d .. :try_end_48} :catch_3b

    goto :goto_4
.end method

.method private loadAvatar(Lcom/google/android/apps/plus/service/AvatarCache$AvatarConsumer;Lcom/google/android/apps/plus/content/AvatarRequest;Z)V
    .registers 9
    .parameter "consumer"
    .parameter "request"
    .parameter "clearIfNotCached"

    .prologue
    .line 377
    invoke-virtual {p2}, Lcom/google/android/apps/plus/content/AvatarRequest;->getContactId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1e

    invoke-virtual {p2}, Lcom/google/android/apps/plus/content/AvatarRequest;->getContactLookupKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1e

    .line 379
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/google/android/apps/plus/service/AvatarCache$AvatarConsumer;->setAvatarBitmap(Landroid/graphics/Bitmap;Z)V

    .line 380
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/service/AvatarCache;->notifyRequestComplete(Lcom/google/android/apps/plus/content/AvatarRequest;)V

    .line 381
    iget-object v1, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    :cond_1d
    :goto_1d
    return-void

    .line 383
    :cond_1e
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/service/AvatarCache;->loadCachedAvatar(Lcom/google/android/apps/plus/service/AvatarCache$AvatarConsumer;Lcom/google/android/apps/plus/content/AvatarRequest;Z)Z

    move-result v0

    .line 384
    .local v0, loaded:Z
    if-eqz v0, :cond_2a

    .line 385
    iget-object v1, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    .line 387
    :cond_2a
    iget-object v1, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    iget-boolean v1, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mPaused:Z

    if-nez v1, :cond_1d

    .line 390
    invoke-direct {p0}, Lcom/google/android/apps/plus/service/AvatarCache;->requestLoading()V

    goto :goto_1d
.end method

.method private loadCachedAvatar(Lcom/google/android/apps/plus/service/AvatarCache$AvatarConsumer;Lcom/google/android/apps/plus/content/AvatarRequest;Z)Z
    .registers 9
    .parameter "consumer"
    .parameter "request"
    .parameter "clearIfNotCached"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 450
    iget-object v2, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mBitmapHolderCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v2, p2}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;

    .line 451
    .local v0, holder:Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;
    if-nez v0, :cond_13

    .line 452
    if-eqz p3, :cond_12

    .line 454
    invoke-interface {p1, v3, v4}, Lcom/google/android/apps/plus/service/AvatarCache$AvatarConsumer;->setAvatarBitmap(Landroid/graphics/Bitmap;Z)V

    .line 487
    :cond_12
    :goto_12
    return v1

    .line 460
    :cond_13
    iget-object v2, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mBitmapHolderCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v2, p2, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    iget-object v2, v0, Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;->bytes:[B

    if-nez v2, :cond_2d

    .line 463
    iget-boolean v2, v0, Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;->complete:Z

    if-eqz v2, :cond_29

    .line 464
    invoke-interface {p1, v3, v1}, Lcom/google/android/apps/plus/service/AvatarCache$AvatarConsumer;->setAvatarBitmap(Landroid/graphics/Bitmap;Z)V

    .line 465
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/service/AvatarCache;->notifyRequestComplete(Lcom/google/android/apps/plus/content/AvatarRequest;)V

    .line 470
    :goto_26
    iget-boolean v1, v0, Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;->fresh:Z

    goto :goto_12

    .line 468
    :cond_29
    invoke-interface {p1, v3, v4}, Lcom/google/android/apps/plus/service/AvatarCache$AvatarConsumer;->setAvatarBitmap(Landroid/graphics/Bitmap;Z)V

    goto :goto_26

    .line 474
    :cond_2d
    invoke-direct {p0, p2, v0}, Lcom/google/android/apps/plus/service/AvatarCache;->inflateBitmap(Lcom/google/android/apps/plus/content/AvatarRequest;Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;)V

    .line 476
    iget-object v2, v0, Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-interface {p1, v2, v1}, Lcom/google/android/apps/plus/service/AvatarCache$AvatarConsumer;->setAvatarBitmap(Landroid/graphics/Bitmap;Z)V

    .line 477
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/service/AvatarCache;->notifyRequestComplete(Lcom/google/android/apps/plus/content/AvatarRequest;)V

    .line 480
    iget-object v1, v0, Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_47

    iget-boolean v1, v0, Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;->fresh:Z

    if-eqz v1, :cond_47

    .line 481
    iget-object v1, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mBitmapCache:Landroid/support/v4/util/LruCache;

    iget-object v2, v0, Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p2, v2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    :cond_47
    iput-object v3, v0, Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 487
    iget-boolean v1, v0, Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;->fresh:Z

    goto :goto_12
.end method

.method private notifyRequestComplete(Lcom/google/android/apps/plus/content/AvatarRequest;)V
    .registers 4
    .parameter "request"

    .prologue
    .line 438
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/google/android/apps/plus/service/AvatarCache;->mRequestCompleteListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 439
    sget-object v1, Lcom/google/android/apps/plus/service/AvatarCache;->mRequestCompleteListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/service/AvatarCache$OnAvatarRequestCompleteListener;

    invoke-interface {v1, p1}, Lcom/google/android/apps/plus/service/AvatarCache$OnAvatarRequestCompleteListener;->onAvatarRequestComplete(Lcom/google/android/apps/plus/content/AvatarRequest;)V

    .line 438
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 441
    :cond_17
    return-void
.end method

.method private obtainRequestsToLoad(Ljava/util/HashSet;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/apps/plus/content/AvatarRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 679
    .local p1, requests:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/google/android/apps/plus/content/AvatarRequest;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 689
    iget-object v3, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 690
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/apps/plus/content/AvatarRequest;>;"
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 691
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/AvatarRequest;

    .line 692
    .local v2, key:Lcom/google/android/apps/plus/content/AvatarRequest;
    iget-object v3, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mBitmapHolderCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;

    .line 693
    .local v0, holder:Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;
    if-eqz v0, :cond_27

    iget-boolean v3, v0, Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;->fresh:Z

    if-nez v3, :cond_d

    .line 694
    :cond_27
    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 697
    .end local v0           #holder:Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;
    .end local v2           #key:Lcom/google/android/apps/plus/content/AvatarRequest;
    :cond_2b
    return-void
.end method

.method private processLoadedImages()V
    .registers 6

    .prologue
    .line 631
    iget-object v4, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 632
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/apps/plus/service/AvatarCache$AvatarConsumer;>;"
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 633
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/AvatarCache$AvatarConsumer;

    .line 634
    .local v0, consumer:Lcom/google/android/apps/plus/service/AvatarCache$AvatarConsumer;
    iget-object v4, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/content/AvatarRequest;

    .line 635
    .local v3, request:Lcom/google/android/apps/plus/content/AvatarRequest;
    const/4 v4, 0x0

    invoke-direct {p0, v0, v3, v4}, Lcom/google/android/apps/plus/service/AvatarCache;->loadCachedAvatar(Lcom/google/android/apps/plus/service/AvatarCache$AvatarConsumer;Lcom/google/android/apps/plus/content/AvatarRequest;Z)Z

    move-result v2

    .line 636
    .local v2, loaded:Z
    if-eqz v2, :cond_a

    .line 637
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    .line 641
    .end local v0           #consumer:Lcom/google/android/apps/plus/service/AvatarCache$AvatarConsumer;
    .end local v2           #loaded:Z
    .end local v3           #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :cond_29
    invoke-direct {p0}, Lcom/google/android/apps/plus/service/AvatarCache;->softenCache()V

    .line 643
    iget-object v4, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_37

    .line 644
    invoke-direct {p0}, Lcom/google/android/apps/plus/service/AvatarCache;->requestLoading()V

    .line 646
    :cond_37
    return-void
.end method

.method private requestLoading()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 567
    iget-boolean v0, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mLoadingRequested:Z

    if-nez v0, :cond_c

    .line 568
    iput-boolean v1, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mLoadingRequested:Z

    .line 569
    iget-object v0, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 571
    :cond_c
    return-void
.end method

.method private softenCache()V
    .registers 4

    .prologue
    .line 653
    iget-object v2, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mBitmapHolderCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v2}, Landroid/support/v4/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;

    .line 654
    .local v0, holder:Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_e

    .line 656
    .end local v0           #holder:Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;
    :cond_1e
    return-void
.end method

.method private touchRequestedEntries(Ljava/util/List;)Z
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/content/AvatarRequest;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 276
    .local p1, requests:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/content/AvatarRequest;>;"
    const/4 v0, 0x0

    .line 277
    .local v0, cacheMissed:Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_7
    if-ltz v2, :cond_23

    .line 278
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/content/AvatarRequest;

    .line 279
    .local v3, request:Lcom/google/android/apps/plus/content/AvatarRequest;
    iget-object v4, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mBitmapHolderCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v4, v3}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;

    .line 280
    .local v1, holder:Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;
    if-eqz v1, :cond_21

    .line 281
    iget-object v4, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mBitmapHolderCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v4, v3, v1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    :goto_1e
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    .line 283
    :cond_21
    const/4 v0, 0x1

    goto :goto_1e

    .line 287
    .end local v1           #holder:Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;
    .end local v3           #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :cond_23
    return v0
.end method

.method private touchTinyAvatars()I
    .registers 7

    .prologue
    .line 297
    const/4 v4, 0x0

    .line 299
    .local v4, totalSize:I
    iget-object v5, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mBitmapHolderCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v5}, Landroid/support/v4/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 301
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/google/android/apps/plus/content/AvatarRequest;Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;>;>;"
    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 302
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 303
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/android/apps/plus/content/AvatarRequest;Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/content/AvatarRequest;

    .line 304
    .local v3, request:Lcom/google/android/apps/plus/content/AvatarRequest;
    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/AvatarRequest;->getSize()I

    move-result v5

    if-nez v5, :cond_f

    .line 305
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;

    .line 306
    .local v1, holder:Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;
    iget-object v5, v1, Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;->bytes:[B

    if-eqz v5, :cond_35

    .line 307
    iget-object v5, v1, Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;->bytes:[B

    array-length v5, v5

    add-int/2addr v4, v5

    .line 310
    :cond_35
    iget-object v5, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mBitmapHolderCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v5, v3, v1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 314
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/android/apps/plus/content/AvatarRequest;Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;>;"
    .end local v1           #holder:Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;
    .end local v3           #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :cond_3b
    return v4
.end method

.method private trimCache(Ljava/util/List;I)Ljava/util/List;
    .registers 10
    .parameter
    .parameter "totalTinyAvatarSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/content/AvatarRequest;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/content/AvatarRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    .local p1, requests:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/content/AvatarRequest;>;"
    iget v4, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mBitmapHolderCacheRedZoneBytes:I

    .line 322
    .local v4, preferredCacheSize:I
    move v1, p2

    .line 323
    .local v1, estimatedMemoryUse:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_39

    .line 324
    iget v6, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mBitmapHolderCacheRedZoneBytes:I

    if-lt v1, v6, :cond_17

    .line 325
    invoke-direct {p0, v4}, Lcom/google/android/apps/plus/service/AvatarCache;->trimCache(I)V

    .line 326
    const/4 v6, 0x0

    invoke-interface {p1, v6, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 341
    .end local p1           #requests:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/content/AvatarRequest;>;"
    :goto_16
    return-object p1

    .line 329
    .restart local p1       #requests:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/content/AvatarRequest;>;"
    :cond_17
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/AvatarRequest;

    .line 330
    .local v5, request:Lcom/google/android/apps/plus/content/AvatarRequest;
    iget-object v6, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mBitmapHolderCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v6, v5}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;

    .line 331
    .local v2, holder:Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;
    if-eqz v2, :cond_32

    iget-object v6, v2, Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;->bytes:[B

    if-eqz v6, :cond_32

    .line 332
    iget-object v6, v2, Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;->bytes:[B

    array-length v6, v6

    add-int/2addr v1, v6

    .line 323
    :goto_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 334
    :cond_32
    invoke-direct {p0, v5}, Lcom/google/android/apps/plus/service/AvatarCache;->getEstimatedSizeInBytes(Lcom/google/android/apps/plus/content/AvatarRequest;)I

    move-result v0

    .line 335
    .local v0, bytes:I
    sub-int/2addr v4, v0

    .line 336
    add-int/2addr v1, v0

    goto :goto_2f

    .line 340
    .end local v0           #bytes:I
    .end local v2           #holder:Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;
    .end local v5           #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :cond_39
    invoke-direct {p0, v4}, Lcom/google/android/apps/plus/service/AvatarCache;->trimCache(I)V

    goto :goto_16
.end method

.method private trimCache(I)V
    .registers 5
    .parameter "size"

    .prologue
    .line 348
    iget-object v1, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mBitmapHolderCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1}, Landroid/support/v4/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 350
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/google/android/apps/plus/content/AvatarRequest;Lcom/google/android/apps/plus/service/AvatarCache$BitmapHolder;>;>;"
    :goto_e
    iget-object v1, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mBitmapHolderCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1}, Landroid/support/v4/util/LruCache;->size()I

    move-result v1

    if-le v1, p1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 351
    iget-object v2, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mBitmapHolderCache:Landroid/support/v4/util/LruCache;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 353
    :cond_2c
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mBitmapHolderCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 249
    iget-object v0, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mBitmapCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 250
    iget-object v0, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 251
    return-void
.end method

.method public ensureLoaderThread()V
    .registers 3

    .prologue
    .line 620
    iget-object v0, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mLoaderThread:Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;

    if-nez v0, :cond_16

    .line 621
    new-instance v0, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;

    iget-object v1, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;-><init>(Lcom/google/android/apps/plus/service/AvatarCache;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mLoaderThread:Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;

    .line 622
    iget-object v0, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mLoaderThread:Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->start()V

    .line 624
    :cond_16
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 578
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_5a

    :cond_7
    move v4, v6

    .line 608
    :goto_8
    return v4

    .line 580
    :pswitch_9
    iput-boolean v6, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mLoadingRequested:Z

    .line 581
    iget-boolean v4, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mPaused:Z

    if-nez v4, :cond_17

    .line 582
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/AvatarCache;->ensureLoaderThread()V

    .line 583
    iget-object v4, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mLoaderThread:Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->requestLoading()V

    :cond_17
    move v4, v5

    .line 585
    goto :goto_8

    .line 589
    :pswitch_19
    iget-boolean v4, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mPaused:Z

    if-nez v4, :cond_20

    .line 590
    invoke-direct {p0}, Lcom/google/android/apps/plus/service/AvatarCache;->processLoadedImages()V

    :cond_20
    move v4, v5

    .line 592
    goto :goto_8

    .line 596
    :pswitch_22
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 598
    .local v2, userId:J
    new-instance v4, Lcom/google/android/apps/plus/content/AvatarRequest;

    invoke-direct {v4, v2, v3, v6}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(JI)V

    invoke-direct {p0, v4}, Lcom/google/android/apps/plus/service/AvatarCache;->evictAvatar(Lcom/google/android/apps/plus/content/AvatarRequest;)V

    .line 599
    new-instance v4, Lcom/google/android/apps/plus/content/AvatarRequest;

    invoke-direct {v4, v2, v3, v5}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(JI)V

    invoke-direct {p0, v4}, Lcom/google/android/apps/plus/service/AvatarCache;->evictAvatar(Lcom/google/android/apps/plus/content/AvatarRequest;)V

    .line 600
    new-instance v4, Lcom/google/android/apps/plus/content/AvatarRequest;

    const/4 v5, 0x2

    invoke-direct {v4, v2, v3, v5}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(JI)V

    invoke-direct {p0, v4}, Lcom/google/android/apps/plus/service/AvatarCache;->evictAvatar(Lcom/google/android/apps/plus/content/AvatarRequest;)V

    .line 602
    sget-object v4, Lcom/google/android/apps/plus/service/AvatarCache;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 603
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4a
    if-ge v0, v1, :cond_7

    .line 604
    sget-object v4, Lcom/google/android/apps/plus/service/AvatarCache;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/service/AvatarCache$OnAvatarChangeListener;

    invoke-interface {v4, v2, v3}, Lcom/google/android/apps/plus/service/AvatarCache$OnAvatarChangeListener;->onAvatarChanged(J)V

    .line 603
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 578
    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_9
        :pswitch_19
        :pswitch_22
    .end packed-switch
.end method

.method public loadAvatar(Lcom/google/android/apps/plus/service/AvatarCache$AvatarConsumer;Lcom/google/android/apps/plus/content/AvatarRequest;)V
    .registers 4
    .parameter "consumer"
    .parameter "request"

    .prologue
    .line 362
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/plus/service/AvatarCache;->loadAvatar(Lcom/google/android/apps/plus/service/AvatarCache$AvatarConsumer;Lcom/google/android/apps/plus/content/AvatarRequest;Z)V

    .line 363
    return-void
.end method

.method public notifyChange(J)V
    .registers 5
    .parameter "userId"

    .prologue
    .line 415
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 421
    :goto_6
    return-void

    .line 419
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/AvatarCache;->ensureLoaderThread()V

    .line 420
    iget-object v0, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mLoaderThread:Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->notifyChange(J)V

    goto :goto_6
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 550
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mPaused:Z

    .line 551
    return-void
.end method

.method public preloadAvatarsInBackground(Ljava/util/List;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/content/AvatarRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p1, requests:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/content/AvatarRequest;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/AvatarCache;->ensureLoaderThread()V

    .line 259
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/service/AvatarCache;->touchRequestedEntries(Ljava/util/List;)Z

    move-result v0

    .line 260
    .local v0, preloadingNeeded:Z
    invoke-direct {p0}, Lcom/google/android/apps/plus/service/AvatarCache;->touchTinyAvatars()I

    move-result v1

    .line 262
    .local v1, totalTinyAvatarSize:I
    if-nez v0, :cond_e

    .line 269
    :goto_d
    return-void

    .line 266
    :cond_e
    invoke-direct {p0, p1, v1}, Lcom/google/android/apps/plus/service/AvatarCache;->trimCache(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 268
    iget-object v2, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mLoaderThread:Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/plus/service/AvatarCache$LoaderThread;->startPreloading(Ljava/util/List;)V

    goto :goto_d
.end method

.method public refreshAvatar(Lcom/google/android/apps/plus/service/AvatarCache$AvatarConsumer;Lcom/google/android/apps/plus/content/AvatarRequest;)V
    .registers 4
    .parameter "consumer"
    .parameter "request"

    .prologue
    .line 372
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/plus/service/AvatarCache;->loadAvatar(Lcom/google/android/apps/plus/service/AvatarCache$AvatarConsumer;Lcom/google/android/apps/plus/content/AvatarRequest;Z)V

    .line 373
    return-void
.end method

.method public registerListener(Lcom/google/android/apps/plus/service/AvatarCache$OnAvatarChangeListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 400
    sget-object v0, Lcom/google/android/apps/plus/service/AvatarCache;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    return-void
.end method

.method public registerRequestCompleteListener(Lcom/google/android/apps/plus/service/AvatarCache$OnAvatarRequestCompleteListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 427
    sget-object v0, Lcom/google/android/apps/plus/service/AvatarCache;->mRequestCompleteListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    return-void
.end method

.method public resume()V
    .registers 2

    .prologue
    .line 554
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mPaused:Z

    .line 555
    iget-object v0, p0, Lcom/google/android/apps/plus/service/AvatarCache;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 556
    invoke-direct {p0}, Lcom/google/android/apps/plus/service/AvatarCache;->requestLoading()V

    .line 558
    :cond_e
    return-void
.end method

.method public unregisterListener(Lcom/google/android/apps/plus/service/AvatarCache$OnAvatarChangeListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 407
    sget-object v0, Lcom/google/android/apps/plus/service/AvatarCache;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 408
    return-void
.end method

.method public unregisterRequestCompleteListener(Lcom/google/android/apps/plus/service/AvatarCache$OnAvatarRequestCompleteListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 434
    sget-object v0, Lcom/google/android/apps/plus/service/AvatarCache;->mRequestCompleteListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 435
    return-void
.end method
