.class public Lcom/google/android/apps/plus/service/ImageCache;
.super Ljava/lang/Object;
.source "ImageCache.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;,
        Lcom/google/android/apps/plus/service/ImageCache$RemoteImageChangeNotification;,
        Lcom/google/android/apps/plus/service/ImageCache$MediaImageChangeNotification;,
        Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;,
        Lcom/google/android/apps/plus/service/ImageCache$DrawableConsumer;,
        Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;,
        Lcom/google/android/apps/plus/service/ImageCache$OnImageRequestCompleteListener;,
        Lcom/google/android/apps/plus/service/ImageCache$OnRemoteDrawableChangeListener;,
        Lcom/google/android/apps/plus/service/ImageCache$OnRemoteImageChangeListener;,
        Lcom/google/android/apps/plus/service/ImageCache$OnMediaImageChangeListener;,
        Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;
    }
.end annotation


# static fields
.field private static final EMPTY_ARRAY:[B

.field private static final FAILED_IMAGE:Ljava/lang/Object;

.field private static mAvatarListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mMediaImageListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/apps/plus/service/ImageCache$OnMediaImageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mRemoteImageListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/apps/plus/service/ImageCache$OnRemoteImageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mRequestCompleteListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/apps/plus/service/ImageCache$OnImageRequestCompleteListener;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/google/android/apps/plus/service/ImageCache;

.field private static sMediumAvatarEstimatedSize:I

.field private static sSmallAvatarEstimatedSize:I

.field private static sTinyAvatarEstimatedSize:I


# instance fields
.field private mBackgroundThreadBitmapCount:I

.field private final mContext:Landroid/content/Context;

.field private final mImageCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Lcom/google/android/apps/plus/content/ImageRequest;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mImageHolderCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Lcom/google/android/apps/plus/content/ImageRequest;",
            "Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mImageHolderCacheRedZoneBytes:I

.field private final mImageHolderQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaderThread:Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;

.field private mLoadingRequested:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mPaused:Z

.field private final mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;",
            "Lcom/google/android/apps/plus/content/ImageRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 160
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/apps/plus/service/ImageCache;->EMPTY_ARRAY:[B

    .line 162
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/service/ImageCache;->FAILED_IMAGE:Ljava/lang/Object;

    .line 218
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/service/ImageCache;->mAvatarListeners:Ljava/util/HashSet;

    .line 221
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/service/ImageCache;->mMediaImageListeners:Ljava/util/HashSet;

    .line 224
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/service/ImageCache;->mRemoteImageListeners:Ljava/util/HashSet;

    .line 227
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/service/ImageCache;->mRequestCompleteListeners:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 10
    .parameter "context"

    .prologue
    const v7, 0x3e99999a

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/android/apps/plus/service/ImageCache;->mImageHolderQueue:Ljava/util/ArrayList;

    .line 260
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lcom/google/android/apps/plus/service/ImageCache;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 266
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v3, p0, Lcom/google/android/apps/plus/service/ImageCache;->mMainThreadHandler:Landroid/os/Handler;

    .line 305
    iput-object p1, p0, Lcom/google/android/apps/plus/service/ImageCache;->mContext:Landroid/content/Context;

    .line 307
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 309
    .local v2, resources:Landroid/content/res/Resources;
    sget v3, Lcom/google/android/apps/plus/phone/EsApplication;->sMemoryClass:I

    const/16 v4, 0x30

    if-lt v3, v4, :cond_86

    .line 311
    const v3, 0x7f0b0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 318
    .local v0, maxBytesDecoded:I
    :goto_36
    new-instance v3, Lcom/google/android/apps/plus/service/ImageCache$1;

    invoke-direct {v3, p0, v0}, Lcom/google/android/apps/plus/service/ImageCache$1;-><init>(Lcom/google/android/apps/plus/service/ImageCache;I)V

    iput-object v3, p0, Lcom/google/android/apps/plus/service/ImageCache;->mImageCache:Landroid/support/v4/util/LruCache;

    .line 334
    const/high16 v3, 0x7f0b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 335
    .local v1, maxBytesEncoded:I
    new-instance v3, Lcom/google/android/apps/plus/service/ImageCache$2;

    invoke-direct {v3, p0, v1}, Lcom/google/android/apps/plus/service/ImageCache$2;-><init>(Lcom/google/android/apps/plus/service/ImageCache;I)V

    iput-object v3, p0, Lcom/google/android/apps/plus/service/ImageCache;->mImageHolderCache:Landroid/support/v4/util/LruCache;

    .line 343
    int-to-double v3, v1

    const-wide v5, 0x3feccccccccccccdL

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, p0, Lcom/google/android/apps/plus/service/ImageCache;->mImageHolderCacheRedZoneBytes:I

    .line 345
    sget v3, Lcom/google/android/apps/plus/service/ImageCache;->sTinyAvatarEstimatedSize:I

    if-nez v3, :cond_85

    .line 346
    invoke-static {p1}, Lcom/google/android/apps/plus/content/EsAvatarData;->getTinyAvatarSize(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {p1}, Lcom/google/android/apps/plus/content/EsAvatarData;->getTinyAvatarSize(Landroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcom/google/android/apps/plus/service/ImageCache;->sTinyAvatarEstimatedSize:I

    .line 349
    invoke-static {p1}, Lcom/google/android/apps/plus/content/EsAvatarData;->getSmallAvatarSize(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {p1}, Lcom/google/android/apps/plus/content/EsAvatarData;->getSmallAvatarSize(Landroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcom/google/android/apps/plus/service/ImageCache;->sSmallAvatarEstimatedSize:I

    .line 352
    invoke-static {p1}, Lcom/google/android/apps/plus/content/EsAvatarData;->getMediumAvatarSize(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-static {p1}, Lcom/google/android/apps/plus/content/EsAvatarData;->getMediumAvatarSize(Landroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcom/google/android/apps/plus/service/ImageCache;->sMediumAvatarEstimatedSize:I

    .line 356
    :cond_85
    return-void

    .line 314
    .end local v0           #maxBytesDecoded:I
    .end local v1           #maxBytesEncoded:I
    :cond_86
    const v3, 0x7f0b0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .restart local v0       #maxBytesDecoded:I
    goto :goto_36
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/service/ImageCache;)Landroid/support/v4/util/LruCache;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImageCache;->mImageHolderCache:Landroid/support/v4/util/LruCache;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/service/ImageCache;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/google/android/apps/plus/service/ImageCache;->mImageHolderCacheRedZoneBytes:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/service/ImageCache;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImageCache;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/service/ImageCache;Lcom/google/android/apps/plus/content/ImageRequest;[BZZ)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/service/ImageCache;->deliverImage(Lcom/google/android/apps/plus/content/ImageRequest;[BZZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/service/ImageCache;Ljava/util/HashSet;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/service/ImageCache;->obtainRequestsToDecode(Ljava/util/HashSet;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/service/ImageCache;Ljava/util/HashSet;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/service/ImageCache;->obtainRequestsToLoad(Ljava/util/HashSet;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/service/ImageCache;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImageCache;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/plus/service/ImageCache;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImageCache;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private clearTemporaryImageReferences()V
    .registers 5

    .prologue
    .line 939
    iget-object v3, p0, Lcom/google/android/apps/plus/service/ImageCache;->mImageHolderQueue:Ljava/util/ArrayList;

    monitor-enter v3

    .line 940
    :try_start_3
    iget-object v2, p0, Lcom/google/android/apps/plus/service/ImageCache;->mImageHolderQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;

    .line 941
    .local v0, holder:Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;->image:Ljava/lang/Object;

    goto :goto_9

    .line 945
    .end local v0           #holder:Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_19
    move-exception v2

    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v2

    .line 944
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1c
    :try_start_1c
    iget-object v2, p0, Lcom/google/android/apps/plus/service/ImageCache;->mImageHolderQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 945
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_19

    .line 946
    return-void
.end method

.method private decodeImage(Lcom/google/android/apps/plus/content/ImageRequest;Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;)V
    .registers 6
    .parameter "request"
    .parameter "holder"

    .prologue
    .line 744
    iget-object v1, p2, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;->image:Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 777
    :cond_4
    :goto_4
    return-void

    .line 748
    :cond_5
    iget-object v0, p2, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;->bytes:[B

    .line 749
    .local v0, bytes:[B
    if-eqz v0, :cond_4

    array-length v1, v0

    if-eqz v1, :cond_4

    .line 753
    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImageCache;->mImageCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p2, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;->image:Ljava/lang/Object;

    .line 754
    iget-object v1, p2, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;->image:Ljava/lang/Object;

    if-eqz v1, :cond_30

    .line 755
    iget-object v1, p2, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;->image:Ljava/lang/Object;

    instance-of v1, v1, Lcom/google/android/apps/plus/util/GifDrawable;

    if-eqz v1, :cond_4

    .line 758
    iget-object v1, p2, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;->image:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/apps/plus/util/GifDrawable;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/util/GifDrawable;->newDrawable()Lcom/google/android/apps/plus/util/GifDrawable;

    move-result-object v1

    iput-object v1, p2, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;->image:Ljava/lang/Object;

    .line 759
    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImageCache;->mImageCache:Landroid/support/v4/util/LruCache;

    iget-object v2, p2, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;->image:Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 764
    :cond_30
    invoke-static {v0}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeMedia([B)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p2, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;->image:Ljava/lang/Object;

    .line 765
    iget-object v1, p2, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;->image:Ljava/lang/Object;

    if-nez v1, :cond_3e

    .line 766
    sget-object v1, Lcom/google/android/apps/plus/service/ImageCache;->FAILED_IMAGE:Ljava/lang/Object;

    iput-object v1, p2, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;->image:Ljava/lang/Object;

    .line 770
    :cond_3e
    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImageCache;->mImageCache:Landroid/support/v4/util/LruCache;

    iget-object v2, p2, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;->image:Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImageCache;->mImageCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    .line 774
    sget-object v1, Lcom/google/android/apps/plus/service/ImageCache;->FAILED_IMAGE:Ljava/lang/Object;

    iput-object v1, p2, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;->image:Ljava/lang/Object;

    .line 775
    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImageCache;->mImageCache:Landroid/support/v4/util/LruCache;

    sget-object v2, Lcom/google/android/apps/plus/service/ImageCache;->FAILED_IMAGE:Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method private deliverImage(Lcom/google/android/apps/plus/content/ImageRequest;[BZZ)V
    .registers 9
    .parameter "request"
    .parameter "bytes"
    .parameter "available"
    .parameter "preloading"

    .prologue
    const/4 v3, 0x1

    .line 953
    new-instance v0, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;

    invoke-direct {v0, p2, p3}, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;-><init>([BZ)V

    .line 954
    .local v0, holder:Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;
    iput-boolean v3, v0, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;->fresh:Z

    .line 958
    if-eqz p3, :cond_22

    if-nez p4, :cond_22

    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImageCache;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    iget v1, p0, Lcom/google/android/apps/plus/service/ImageCache;->mBackgroundThreadBitmapCount:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_22

    .line 960
    iget v1, p0, Lcom/google/android/apps/plus/service/ImageCache;->mBackgroundThreadBitmapCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/apps/plus/service/ImageCache;->mBackgroundThreadBitmapCount:I

    .line 961
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/service/ImageCache;->decodeImage(Lcom/google/android/apps/plus/content/ImageRequest;Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;)V

    .line 964
    :cond_22
    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImageCache;->mImageHolderCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImageCache;->mImageHolderCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3a

    .line 968
    new-instance v0, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;

    .end local v0           #holder:Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;
    const/4 v1, 0x0

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;-><init>([BZ)V

    .line 969
    .restart local v0       #holder:Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;
    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImageCache;->mImageHolderCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    :cond_3a
    iget-object v2, p0, Lcom/google/android/apps/plus/service/ImageCache;->mImageHolderQueue:Ljava/util/ArrayList;

    monitor-enter v2

    .line 973
    :try_start_3d
    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImageCache;->mImageHolderQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 974
    monitor-exit v2

    .line 975
    return-void

    .line 974
    :catchall_44
    move-exception v1

    monitor-exit v2
    :try_end_46
    .catchall {:try_start_3d .. :try_end_46} :catchall_44

    throw v1
.end method

.method private evictImage(Lcom/google/android/apps/plus/content/ImageRequest;)V
    .registers 4
    .parameter "request"

    .prologue
    .line 889
    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImageCache;->mImageCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImageCache;->mImageHolderCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;

    .line 891
    .local v0, holder:Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;
    if-eqz v0, :cond_12

    .line 892
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;->fresh:Z

    .line 894
    :cond_12
    return-void
.end method

.method private getEstimatedSizeInBytes(Lcom/google/android/apps/plus/content/AvatarRequest;)I
    .registers 3
    .parameter "request"

    .prologue
    .line 362
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/AvatarRequest;->getSize()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 367
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 363
    :pswitch_9
    sget v0, Lcom/google/android/apps/plus/service/ImageCache;->sTinyAvatarEstimatedSize:I

    goto :goto_8

    .line 364
    :pswitch_c
    sget v0, Lcom/google/android/apps/plus/service/ImageCache;->sSmallAvatarEstimatedSize:I

    goto :goto_8

    .line 365
    :pswitch_f
    sget v0, Lcom/google/android/apps/plus/service/ImageCache;->sMediumAvatarEstimatedSize:I

    goto :goto_8

    .line 362
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_9
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/ImageCache;
    .registers 4
    .parameter "context"

    .prologue
    .line 298
    const-class v1, Lcom/google/android/apps/plus/service/ImageCache;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/apps/plus/service/ImageCache;->sInstance:Lcom/google/android/apps/plus/service/ImageCache;

    if-nez v0, :cond_12

    .line 299
    new-instance v0, Lcom/google/android/apps/plus/service/ImageCache;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/apps/plus/service/ImageCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/apps/plus/service/ImageCache;->sInstance:Lcom/google/android/apps/plus/service/ImageCache;

    .line 301
    :cond_12
    sget-object v0, Lcom/google/android/apps/plus/service/ImageCache;->sInstance:Lcom/google/android/apps/plus/service/ImageCache;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v1

    return-object v0

    .line 298
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private loadCachedImage(Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;Lcom/google/android/apps/plus/content/ImageRequest;Z)Z
    .registers 11
    .parameter "consumer"
    .parameter "request"
    .parameter "clearIfNotCached"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 656
    iget-object v3, p0, Lcom/google/android/apps/plus/service/ImageCache;->mImageHolderCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v3, p2}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;

    .line 657
    .local v0, holder:Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;
    if-eqz v0, :cond_2f

    iget-boolean v3, v0, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;->fresh:Z

    if-eqz v3, :cond_2f

    iget-boolean v3, v0, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;->complete:Z

    if-eqz v3, :cond_2f

    iget-object v3, v0, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;->image:Ljava/lang/Object;

    if-nez v3, :cond_2f

    iget-object v3, v0, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;->bytes:[B

    if-eqz v3, :cond_2f

    iget-object v3, v0, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;->bytes:[B

    array-length v3, v3

    const/16 v4, 0xfa0

    if-le v3, v4, :cond_2f

    iget-object v3, p0, Lcom/google/android/apps/plus/service/ImageCache;->mImageCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v3, p2}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2f

    .line 664
    iput-boolean v6, v0, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;->decodeInBackground:Z

    .line 718
    .end local p1
    :cond_2e
    :goto_2e
    return v2

    .line 668
    .restart local p1
    :cond_2f
    if-nez v0, :cond_37

    .line 669
    if-eqz p3, :cond_2e

    .line 671
    invoke-interface {p1, v5, v6}, Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;->setBitmap(Landroid/graphics/Bitmap;Z)V

    goto :goto_2e

    .line 677
    :cond_37
    iget-object v3, p0, Lcom/google/android/apps/plus/service/ImageCache;->mImageHolderCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v3, p2, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    iget-object v3, p0, Lcom/google/android/apps/plus/service/ImageCache;->mImageHolderCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v3, p2}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4e

    .line 681
    new-instance v0, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;

    .end local v0           #holder:Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;
    invoke-direct {v0, v5, v6}, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;-><init>([BZ)V

    .line 682
    .restart local v0       #holder:Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;
    iget-object v3, p0, Lcom/google/android/apps/plus/service/ImageCache;->mImageHolderCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v3, p2, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    :cond_4e
    iget-object v3, v0, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;->bytes:[B

    if-nez v3, :cond_63

    .line 686
    iget-boolean v3, v0, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;->complete:Z

    if-eqz v3, :cond_5f

    .line 687
    invoke-interface {p1, v5, v2}, Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 688
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/service/ImageCache;->notifyRequestComplete(Lcom/google/android/apps/plus/content/ImageRequest;)V

    .line 693
    :goto_5c
    iget-boolean v2, v0, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;->fresh:Z

    goto :goto_2e

    .line 691
    :cond_5f
    invoke-interface {p1, v5, v6}, Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;->setBitmap(Landroid/graphics/Bitmap;Z)V

    goto :goto_5c

    .line 697
    :cond_63
    invoke-direct {p0, p2, v0}, Lcom/google/android/apps/plus/service/ImageCache;->decodeImage(Lcom/google/android/apps/plus/content/ImageRequest;Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;)V

    .line 699
    iget-object v1, v0, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;->image:Ljava/lang/Object;

    .line 700
    .local v1, image:Ljava/lang/Object;
    instance-of v3, v1, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_79

    .line 701
    check-cast v1, Landroid/graphics/Bitmap;

    .end local v1           #image:Ljava/lang/Object;
    invoke-interface {p1, v1, v2}, Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 713
    .end local p1
    :cond_71
    :goto_71
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/service/ImageCache;->notifyRequestComplete(Lcom/google/android/apps/plus/content/ImageRequest;)V

    .line 716
    iput-object v5, v0, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;->image:Ljava/lang/Object;

    .line 718
    iget-boolean v2, v0, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;->fresh:Z

    goto :goto_2e

    .line 702
    .restart local v1       #image:Ljava/lang/Object;
    .restart local p1
    :cond_79
    instance-of v3, v1, Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_89

    instance-of v3, p1, Lcom/google/android/apps/plus/service/ImageCache$DrawableConsumer;

    if-eqz v3, :cond_89

    .line 703
    check-cast p1, Lcom/google/android/apps/plus/service/ImageCache$DrawableConsumer;

    .end local p1
    check-cast v1, Landroid/graphics/drawable/Drawable;

    .end local v1           #image:Ljava/lang/Object;
    invoke-interface {p1, v1, v2}, Lcom/google/android/apps/plus/service/ImageCache$DrawableConsumer;->setDrawable(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_71

    .line 704
    .restart local v1       #image:Ljava/lang/Object;
    .restart local p1
    :cond_89
    instance-of v3, v1, Lcom/google/android/apps/plus/util/GifDrawable;

    if-eqz v3, :cond_97

    .line 705
    check-cast v1, Lcom/google/android/apps/plus/util/GifDrawable;

    .end local v1           #image:Ljava/lang/Object;
    invoke-virtual {v1}, Lcom/google/android/apps/plus/util/GifDrawable;->getFirstFrame()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-interface {p1, v3, v2}, Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;->setBitmap(Landroid/graphics/Bitmap;Z)V

    goto :goto_71

    .line 706
    .restart local v1       #image:Ljava/lang/Object;
    :cond_97
    sget-object v3, Lcom/google/android/apps/plus/service/ImageCache;->FAILED_IMAGE:Ljava/lang/Object;

    if-ne v1, v3, :cond_9f

    .line 707
    invoke-interface {p1, v5, v2}, Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;->setBitmap(Landroid/graphics/Bitmap;Z)V

    goto :goto_71

    .line 708
    :cond_9f
    if-eqz v1, :cond_71

    .line 709
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot handle drawables of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private loadImage(Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;Lcom/google/android/apps/plus/content/ImageRequest;Z)V
    .registers 7
    .parameter "consumer"
    .parameter "request"
    .parameter "clearIfNotCached"

    .prologue
    .line 531
    invoke-virtual {p2}, Lcom/google/android/apps/plus/content/ImageRequest;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 533
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 534
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/service/ImageCache;->notifyRequestComplete(Lcom/google/android/apps/plus/content/ImageRequest;)V

    .line 535
    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImageCache;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    :cond_13
    :goto_13
    return-void

    .line 537
    :cond_14
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/service/ImageCache;->loadCachedImage(Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;Lcom/google/android/apps/plus/content/ImageRequest;Z)Z

    move-result v0

    .line 538
    .local v0, loaded:Z
    if-eqz v0, :cond_20

    .line 539
    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImageCache;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 541
    :cond_20
    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImageCache;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    iget-boolean v1, p0, Lcom/google/android/apps/plus/service/ImageCache;->mPaused:Z

    if-nez v1, :cond_13

    .line 544
    invoke-direct {p0}, Lcom/google/android/apps/plus/service/ImageCache;->requestLoading()V

    goto :goto_13
.end method

.method private notifyRequestComplete(Lcom/google/android/apps/plus/content/ImageRequest;)V
    .registers 5
    .parameter "request"

    .prologue
    .line 644
    sget-object v2, Lcom/google/android/apps/plus/service/ImageCache;->mRequestCompleteListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/service/ImageCache$OnImageRequestCompleteListener;

    .line 645
    .local v1, listener:Lcom/google/android/apps/plus/service/ImageCache$OnImageRequestCompleteListener;
    invoke-interface {v1, p1}, Lcom/google/android/apps/plus/service/ImageCache$OnImageRequestCompleteListener;->onImageRequestComplete(Lcom/google/android/apps/plus/content/ImageRequest;)V

    goto :goto_6

    .line 647
    .end local v1           #listener:Lcom/google/android/apps/plus/service/ImageCache$OnImageRequestCompleteListener;
    :cond_16
    return-void
.end method

.method private obtainRequestsToDecode(Ljava/util/HashSet;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/apps/plus/content/ImageRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 981
    .local p1, requests:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/google/android/apps/plus/content/ImageRequest;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 983
    iget-object v3, p0, Lcom/google/android/apps/plus/service/ImageCache;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 984
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/apps/plus/content/ImageRequest;>;"
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 985
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/ImageRequest;

    .line 986
    .local v2, key:Lcom/google/android/apps/plus/content/ImageRequest;
    iget-object v3, p0, Lcom/google/android/apps/plus/service/ImageCache;->mImageHolderCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;

    .line 987
    .local v0, holder:Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;
    if-eqz v0, :cond_d

    iget-boolean v3, v0, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;->decodeInBackground:Z

    if-eqz v3, :cond_d

    .line 988
    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 991
    .end local v0           #holder:Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;
    .end local v2           #key:Lcom/google/android/apps/plus/content/ImageRequest;
    :cond_2b
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
            "Lcom/google/android/apps/plus/content/ImageRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 997
    .local p1, requests:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/google/android/apps/plus/content/ImageRequest;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 1007
    iget-object v3, p0, Lcom/google/android/apps/plus/service/ImageCache;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1008
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/apps/plus/content/ImageRequest;>;"
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 1009
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/ImageRequest;

    .line 1010
    .local v2, key:Lcom/google/android/apps/plus/content/ImageRequest;
    iget-object v3, p0, Lcom/google/android/apps/plus/service/ImageCache;->mImageHolderCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;

    .line 1011
    .local v0, holder:Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;
    if-eqz v0, :cond_27

    iget-boolean v3, v0, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;->fresh:Z

    if-nez v3, :cond_d

    .line 1012
    :cond_27
    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1015
    .end local v0           #holder:Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;
    .end local v2           #key:Lcom/google/android/apps/plus/content/ImageRequest;
    :cond_2b
    return-void
.end method

.method private processLoadedImages()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 908
    iget-object v4, p0, Lcom/google/android/apps/plus/service/ImageCache;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 909
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;>;"
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 910
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;

    .line 911
    .local v0, consumer:Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;
    iget-object v4, p0, Lcom/google/android/apps/plus/service/ImageCache;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/content/ImageRequest;

    .line 915
    .local v3, request:Lcom/google/android/apps/plus/content/ImageRequest;
    if-eqz v3, :cond_b

    .line 919
    invoke-direct {p0, v0, v3, v5}, Lcom/google/android/apps/plus/service/ImageCache;->loadCachedImage(Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;Lcom/google/android/apps/plus/content/ImageRequest;Z)Z

    move-result v2

    .line 920
    .local v2, loaded:Z
    if-eqz v2, :cond_b

    .line 921
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_b

    .line 925
    .end local v0           #consumer:Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;
    .end local v2           #loaded:Z
    .end local v3           #request:Lcom/google/android/apps/plus/content/ImageRequest;
    :cond_2b
    invoke-direct {p0}, Lcom/google/android/apps/plus/service/ImageCache;->clearTemporaryImageReferences()V

    .line 927
    iput v5, p0, Lcom/google/android/apps/plus/service/ImageCache;->mBackgroundThreadBitmapCount:I

    .line 929
    iget-object v4, p0, Lcom/google/android/apps/plus/service/ImageCache;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3b

    .line 930
    invoke-direct {p0}, Lcom/google/android/apps/plus/service/ImageCache;->requestLoading()V

    .line 932
    :cond_3b
    return-void
.end method

.method private requestLoading()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 797
    iget-boolean v0, p0, Lcom/google/android/apps/plus/service/ImageCache;->mLoadingRequested:Z

    if-nez v0, :cond_c

    .line 798
    iput-boolean v1, p0, Lcom/google/android/apps/plus/service/ImageCache;->mLoadingRequested:Z

    .line 799
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImageCache;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 801
    :cond_c
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
    .line 402
    .local p1, requests:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/content/AvatarRequest;>;"
    const/4 v0, 0x0

    .line 403
    .local v0, cacheMissed:Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_7
    if-ltz v2, :cond_23

    .line 404
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/content/AvatarRequest;

    .line 405
    .local v3, request:Lcom/google/android/apps/plus/content/AvatarRequest;
    iget-object v4, p0, Lcom/google/android/apps/plus/service/ImageCache;->mImageHolderCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v4, v3}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;

    .line 406
    .local v1, holder:Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;
    if-eqz v1, :cond_21

    .line 407
    iget-object v4, p0, Lcom/google/android/apps/plus/service/ImageCache;->mImageHolderCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v4, v3, v1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    :goto_1e
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    .line 409
    :cond_21
    const/4 v0, 0x1

    goto :goto_1e

    .line 413
    .end local v1           #holder:Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;
    .end local v3           #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :cond_23
    return v0
.end method

.method private touchTinyAvatars()I
    .registers 7

    .prologue
    .line 423
    const/4 v4, 0x0

    .line 425
    .local v4, totalSize:I
    iget-object v5, p0, Lcom/google/android/apps/plus/service/ImageCache;->mImageHolderCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v5}, Landroid/support/v4/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 427
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/google/android/apps/plus/content/ImageRequest;Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;>;>;"
    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_42

    .line 428
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 429
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/android/apps/plus/content/ImageRequest;Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/content/ImageRequest;

    .line 430
    .local v3, request:Lcom/google/android/apps/plus/content/ImageRequest;
    instance-of v5, v3, Lcom/google/android/apps/plus/content/AvatarRequest;

    if-eqz v5, :cond_f

    move-object v5, v3

    check-cast v5, Lcom/google/android/apps/plus/content/AvatarRequest;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/content/AvatarRequest;->getSize()I

    move-result v5

    if-nez v5, :cond_f

    .line 432
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;

    .line 433
    .local v1, holder:Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;
    iget-object v5, v1, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;->bytes:[B

    if-eqz v5, :cond_3c

    .line 434
    iget-object v5, v1, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;->bytes:[B

    array-length v5, v5

    add-int/2addr v4, v5

    .line 437
    :cond_3c
    iget-object v5, p0, Lcom/google/android/apps/plus/service/ImageCache;->mImageHolderCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v5, v3, v1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 441
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/android/apps/plus/content/ImageRequest;Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;>;"
    .end local v1           #holder:Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;
    .end local v3           #request:Lcom/google/android/apps/plus/content/ImageRequest;
    :cond_42
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
    .line 448
    .local p1, requests:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/content/AvatarRequest;>;"
    iget v4, p0, Lcom/google/android/apps/plus/service/ImageCache;->mImageHolderCacheRedZoneBytes:I

    .line 449
    .local v4, preferredCacheSize:I
    move v1, p2

    .line 450
    .local v1, estimatedMemoryUse:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_39

    .line 451
    iget v6, p0, Lcom/google/android/apps/plus/service/ImageCache;->mImageHolderCacheRedZoneBytes:I

    if-lt v1, v6, :cond_17

    .line 452
    invoke-direct {p0, v4}, Lcom/google/android/apps/plus/service/ImageCache;->trimCache(I)V

    .line 453
    const/4 v6, 0x0

    invoke-interface {p1, v6, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 468
    .end local p1           #requests:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/content/AvatarRequest;>;"
    :goto_16
    return-object p1

    .line 456
    .restart local p1       #requests:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/content/AvatarRequest;>;"
    :cond_17
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/AvatarRequest;

    .line 457
    .local v5, request:Lcom/google/android/apps/plus/content/AvatarRequest;
    iget-object v6, p0, Lcom/google/android/apps/plus/service/ImageCache;->mImageHolderCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v6, v5}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;

    .line 458
    .local v2, holder:Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;
    if-eqz v2, :cond_32

    iget-object v6, v2, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;->bytes:[B

    if-eqz v6, :cond_32

    .line 459
    iget-object v6, v2, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;->bytes:[B

    array-length v6, v6

    add-int/2addr v1, v6

    .line 450
    :goto_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 461
    :cond_32
    invoke-direct {p0, v5}, Lcom/google/android/apps/plus/service/ImageCache;->getEstimatedSizeInBytes(Lcom/google/android/apps/plus/content/AvatarRequest;)I

    move-result v0

    .line 462
    .local v0, bytes:I
    sub-int/2addr v4, v0

    .line 463
    add-int/2addr v1, v0

    goto :goto_2f

    .line 467
    .end local v0           #bytes:I
    .end local v2           #holder:Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;
    .end local v5           #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :cond_39
    invoke-direct {p0, v4}, Lcom/google/android/apps/plus/service/ImageCache;->trimCache(I)V

    goto :goto_16
.end method

.method private trimCache(I)V
    .registers 5
    .parameter "size"

    .prologue
    .line 475
    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImageCache;->mImageHolderCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1}, Landroid/support/v4/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 477
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/google/android/apps/plus/content/ImageRequest;Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;>;>;"
    :goto_e
    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImageCache;->mImageHolderCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1}, Landroid/support/v4/util/LruCache;->size()I

    move-result v1

    if-le v1, p1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 478
    iget-object v2, p0, Lcom/google/android/apps/plus/service/ImageCache;->mImageHolderCache:Landroid/support/v4/util/LruCache;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 480
    :cond_2c
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImageCache;->mImageHolderCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 375
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImageCache;->mImageCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 376
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImageCache;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 377
    return-void
.end method

.method public clearFailedRequests()V
    .registers 6

    .prologue
    .line 507
    iget-object v4, p0, Lcom/google/android/apps/plus/service/ImageCache;->mImageHolderCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v4}, Landroid/support/v4/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 508
    .local v2, iterator:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/apps/plus/content/ImageRequest;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/content/ImageRequest;

    .line 509
    .local v3, request:Lcom/google/android/apps/plus/content/ImageRequest;
    iget-object v4, p0, Lcom/google/android/apps/plus/service/ImageCache;->mImageHolderCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v4, v3}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;

    .line 510
    .local v0, holder:Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;
    if-eqz v0, :cond_e

    iget-boolean v4, v0, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;->fresh:Z

    if-eqz v4, :cond_e

    iget-object v4, v0, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;->bytes:[B

    if-nez v4, :cond_e

    .line 511
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;->fresh:Z

    goto :goto_e

    .line 514
    .end local v0           #holder:Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;
    .end local v3           #request:Lcom/google/android/apps/plus/content/ImageRequest;
    :cond_30
    return-void
.end method

.method public ensureLoaderThread()V
    .registers 3

    .prologue
    .line 897
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImageCache;->mLoaderThread:Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;

    if-nez v0, :cond_16

    .line 898
    new-instance v0, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;

    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImageCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;-><init>(Lcom/google/android/apps/plus/service/ImageCache;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/ImageCache;->mLoaderThread:Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;

    .line 899
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImageCache;->mLoaderThread:Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->start()V

    .line 901
    :cond_16
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 16
    .parameter "msg"

    .prologue
    const/4 v13, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 808
    iget v12, p1, Landroid/os/Message;->what:I

    packed-switch v12, :pswitch_data_134

    .line 885
    :goto_8
    return v10

    .line 810
    :pswitch_9
    iput-boolean v10, p0, Lcom/google/android/apps/plus/service/ImageCache;->mLoadingRequested:Z

    .line 811
    iget-boolean v10, p0, Lcom/google/android/apps/plus/service/ImageCache;->mPaused:Z

    if-nez v10, :cond_17

    .line 812
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/ImageCache;->ensureLoaderThread()V

    .line 813
    iget-object v10, p0, Lcom/google/android/apps/plus/service/ImageCache;->mLoaderThread:Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->requestLoading()V

    :cond_17
    move v10, v11

    .line 815
    goto :goto_8

    .line 819
    :pswitch_19
    iget-boolean v10, p0, Lcom/google/android/apps/plus/service/ImageCache;->mPaused:Z

    if-nez v10, :cond_20

    .line 820
    invoke-direct {p0}, Lcom/google/android/apps/plus/service/ImageCache;->processLoadedImages()V

    :cond_20
    move v10, v11

    .line 822
    goto :goto_8

    .line 826
    :pswitch_22
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 828
    .local v1, gaiaId:Ljava/lang/String;
    new-instance v12, Lcom/google/android/apps/plus/content/AvatarRequest;

    invoke-direct {v12, v1, v10}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v12}, Lcom/google/android/apps/plus/service/ImageCache;->evictImage(Lcom/google/android/apps/plus/content/ImageRequest;)V

    .line 829
    new-instance v12, Lcom/google/android/apps/plus/content/AvatarRequest;

    invoke-direct {v12, v1, v10, v11}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(Ljava/lang/String;IZ)V

    invoke-direct {p0, v12}, Lcom/google/android/apps/plus/service/ImageCache;->evictImage(Lcom/google/android/apps/plus/content/ImageRequest;)V

    .line 830
    new-instance v10, Lcom/google/android/apps/plus/content/AvatarRequest;

    invoke-direct {v10, v1, v11}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v10}, Lcom/google/android/apps/plus/service/ImageCache;->evictImage(Lcom/google/android/apps/plus/content/ImageRequest;)V

    .line 831
    new-instance v10, Lcom/google/android/apps/plus/content/AvatarRequest;

    invoke-direct {v10, v1, v11, v11}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(Ljava/lang/String;IZ)V

    invoke-direct {p0, v10}, Lcom/google/android/apps/plus/service/ImageCache;->evictImage(Lcom/google/android/apps/plus/content/ImageRequest;)V

    .line 832
    new-instance v10, Lcom/google/android/apps/plus/content/AvatarRequest;

    invoke-direct {v10, v1, v13}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v10}, Lcom/google/android/apps/plus/service/ImageCache;->evictImage(Lcom/google/android/apps/plus/content/ImageRequest;)V

    .line 833
    new-instance v10, Lcom/google/android/apps/plus/content/AvatarRequest;

    invoke-direct {v10, v1, v13, v11}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(Ljava/lang/String;IZ)V

    invoke-direct {p0, v10}, Lcom/google/android/apps/plus/service/ImageCache;->evictImage(Lcom/google/android/apps/plus/content/ImageRequest;)V

    .line 835
    sget-object v10, Lcom/google/android/apps/plus/service/ImageCache;->mAvatarListeners:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_5c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;

    .line 836
    .local v5, listener:Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;
    invoke-interface {v5, v1}, Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;->onAvatarChanged(Ljava/lang/String;)V

    goto :goto_5c

    .end local v5           #listener:Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;
    :cond_6c
    move v10, v11

    .line 838
    goto :goto_8

    .line 842
    .end local v1           #gaiaId:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    :pswitch_6e
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/apps/plus/service/ImageCache$MediaImageChangeNotification;

    .line 843
    .local v6, notification:Lcom/google/android/apps/plus/service/ImageCache$MediaImageChangeNotification;
    iget-object v10, v6, Lcom/google/android/apps/plus/service/ImageCache$MediaImageChangeNotification;->request:Lcom/google/android/apps/plus/content/MediaImageRequest;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/content/MediaImageRequest;->getUrl()Ljava/lang/String;

    move-result-object v9

    .line 844
    .local v9, url:Ljava/lang/String;
    iget-object v10, p0, Lcom/google/android/apps/plus/service/ImageCache;->mImageHolderCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v10}, Landroid/support/v4/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_86
    :goto_86
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_af

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/apps/plus/content/ImageRequest;

    .line 845
    .local v8, request:Lcom/google/android/apps/plus/content/ImageRequest;
    iget-object v10, v6, Lcom/google/android/apps/plus/service/ImageCache$MediaImageChangeNotification;->request:Lcom/google/android/apps/plus/content/MediaImageRequest;

    invoke-virtual {v8, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_86

    instance-of v10, v8, Lcom/google/android/apps/plus/content/MediaImageRequest;

    if-eqz v10, :cond_86

    move-object v10, v8

    check-cast v10, Lcom/google/android/apps/plus/content/MediaImageRequest;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/content/MediaImageRequest;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_86

    .line 848
    invoke-direct {p0, v8}, Lcom/google/android/apps/plus/service/ImageCache;->evictImage(Lcom/google/android/apps/plus/content/ImageRequest;)V

    goto :goto_86

    .line 852
    .end local v8           #request:Lcom/google/android/apps/plus/content/ImageRequest;
    :cond_af
    sget-object v10, Lcom/google/android/apps/plus/service/ImageCache;->mMediaImageListeners:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/service/ImageCache$OnMediaImageChangeListener;

    .line 853
    .local v5, listener:Lcom/google/android/apps/plus/service/ImageCache$OnMediaImageChangeListener;
    invoke-interface {v5, v9}, Lcom/google/android/apps/plus/service/ImageCache$OnMediaImageChangeListener;->onMediaImageChanged(Ljava/lang/String;)V

    goto :goto_b5

    .end local v5           #listener:Lcom/google/android/apps/plus/service/ImageCache$OnMediaImageChangeListener;
    :cond_c5
    move v10, v11

    .line 855
    goto/16 :goto_8

    .line 859
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #notification:Lcom/google/android/apps/plus/service/ImageCache$MediaImageChangeNotification;
    .end local v9           #url:Ljava/lang/String;
    :pswitch_c8
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/apps/plus/service/ImageCache$RemoteImageChangeNotification;

    .line 861
    .local v6, notification:Lcom/google/android/apps/plus/service/ImageCache$RemoteImageChangeNotification;
    iget-object v7, v6, Lcom/google/android/apps/plus/service/ImageCache$RemoteImageChangeNotification;->request:Lcom/google/android/apps/plus/content/ImageRequest;

    .line 862
    .local v7, notificationRequest:Lcom/google/android/apps/plus/content/ImageRequest;
    iget-object v10, p0, Lcom/google/android/apps/plus/service/ImageCache;->mImageHolderCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v10, v7}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;

    .line 863
    .local v2, holder:Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;
    if-eqz v2, :cond_f9

    iget-object v4, v2, Lcom/google/android/apps/plus/service/ImageCache$ImageHolder;->image:Ljava/lang/Object;

    .line 865
    .local v4, image:Ljava/lang/Object;
    :goto_da
    sget-object v10, Lcom/google/android/apps/plus/service/ImageCache;->mRemoteImageListeners:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_e0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_131

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/service/ImageCache$OnRemoteImageChangeListener;

    .line 866
    .local v5, listener:Lcom/google/android/apps/plus/service/ImageCache$OnRemoteImageChangeListener;
    instance-of v10, v4, Landroid/graphics/Bitmap;

    if-nez v10, :cond_f2

    if-nez v4, :cond_fb

    :cond_f2
    move-object v10, v4

    .line 867
    check-cast v10, Landroid/graphics/Bitmap;

    invoke-interface {v5, v7, v10}, Lcom/google/android/apps/plus/service/ImageCache$OnRemoteImageChangeListener;->onRemoteImageChanged(Lcom/google/android/apps/plus/content/ImageRequest;Landroid/graphics/Bitmap;)V

    goto :goto_e0

    .line 863
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #image:Ljava/lang/Object;
    .end local v5           #listener:Lcom/google/android/apps/plus/service/ImageCache$OnRemoteImageChangeListener;
    :cond_f9
    const/4 v4, 0x0

    goto :goto_da

    .line 868
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #image:Ljava/lang/Object;
    .restart local v5       #listener:Lcom/google/android/apps/plus/service/ImageCache$OnRemoteImageChangeListener;
    :cond_fb
    instance-of v10, v4, Lcom/google/android/apps/plus/util/GifDrawable;

    if-eqz v10, :cond_114

    move-object v0, v4

    .line 869
    check-cast v0, Lcom/google/android/apps/plus/util/GifDrawable;

    .line 870
    .local v0, drawable:Lcom/google/android/apps/plus/util/GifDrawable;
    instance-of v10, v5, Lcom/google/android/apps/plus/service/ImageCache$OnRemoteDrawableChangeListener;

    if-eqz v10, :cond_10c

    .line 871
    check-cast v5, Lcom/google/android/apps/plus/service/ImageCache$OnRemoteDrawableChangeListener;

    .end local v5           #listener:Lcom/google/android/apps/plus/service/ImageCache$OnRemoteImageChangeListener;
    invoke-interface {v5, v7, v0}, Lcom/google/android/apps/plus/service/ImageCache$OnRemoteDrawableChangeListener;->onRemoteImageChanged(Lcom/google/android/apps/plus/content/ImageRequest;Landroid/graphics/drawable/Drawable;)V

    goto :goto_e0

    .line 874
    .restart local v5       #listener:Lcom/google/android/apps/plus/service/ImageCache$OnRemoteImageChangeListener;
    :cond_10c
    invoke-virtual {v0}, Lcom/google/android/apps/plus/util/GifDrawable;->getFirstFrame()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-interface {v5, v7, v10}, Lcom/google/android/apps/plus/service/ImageCache$OnRemoteImageChangeListener;->onRemoteImageChanged(Lcom/google/android/apps/plus/content/ImageRequest;Landroid/graphics/Bitmap;)V

    goto :goto_e0

    .line 878
    .end local v0           #drawable:Lcom/google/android/apps/plus/util/GifDrawable;
    :cond_114
    new-instance v10, Ljava/lang/UnsupportedOperationException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unsupported remote image type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v10

    .end local v5           #listener:Lcom/google/android/apps/plus/service/ImageCache$OnRemoteImageChangeListener;
    :cond_131
    move v10, v11

    .line 882
    goto/16 :goto_8

    .line 808
    :pswitch_data_134
    .packed-switch 0x1
        :pswitch_9
        :pswitch_19
        :pswitch_22
        :pswitch_6e
        :pswitch_c8
    .end packed-switch
.end method

.method public loadImage(Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;Lcom/google/android/apps/plus/content/ImageRequest;)V
    .registers 4
    .parameter "consumer"
    .parameter "request"

    .prologue
    .line 489
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/plus/service/ImageCache;->loadImage(Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;Lcom/google/android/apps/plus/content/ImageRequest;Z)V

    .line 490
    return-void
.end method

.method public notifyAvatarChange(Ljava/lang/String;)V
    .registers 3
    .parameter "gaiaId"

    .prologue
    .line 569
    if-nez p1, :cond_3

    .line 575
    :goto_2
    return-void

    .line 573
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/ImageCache;->ensureLoaderThread()V

    .line 574
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImageCache;->mLoaderThread:Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->notifyAvatarChange(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public notifyMediaImageChange(Lcom/google/android/apps/plus/content/MediaImageRequest;[B)V
    .registers 5
    .parameter "request"
    .parameter "imageBytes"

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/ImageCache;->ensureLoaderThread()V

    .line 597
    new-instance v0, Lcom/google/android/apps/plus/service/ImageCache$MediaImageChangeNotification;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/service/ImageCache$MediaImageChangeNotification;-><init>(Lcom/google/android/apps/plus/service/ImageCache$1;)V

    .line 598
    .local v0, notification:Lcom/google/android/apps/plus/service/ImageCache$MediaImageChangeNotification;
    iput-object p1, v0, Lcom/google/android/apps/plus/service/ImageCache$MediaImageChangeNotification;->request:Lcom/google/android/apps/plus/content/MediaImageRequest;

    .line 599
    iput-object p2, v0, Lcom/google/android/apps/plus/service/ImageCache$MediaImageChangeNotification;->imageBytes:[B

    .line 600
    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImageCache;->mLoaderThread:Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->notifyMediaImageChange(Lcom/google/android/apps/plus/service/ImageCache$MediaImageChangeNotification;)V

    .line 601
    return-void
.end method

.method public notifyRemoteImageChange(Lcom/google/android/apps/plus/content/ImageRequest;[B)V
    .registers 5
    .parameter "request"
    .parameter "imageBytes"

    .prologue
    .line 622
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/ImageCache;->ensureLoaderThread()V

    .line 623
    new-instance v0, Lcom/google/android/apps/plus/service/ImageCache$RemoteImageChangeNotification;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/service/ImageCache$RemoteImageChangeNotification;-><init>(Lcom/google/android/apps/plus/service/ImageCache$1;)V

    .line 624
    .local v0, notification:Lcom/google/android/apps/plus/service/ImageCache$RemoteImageChangeNotification;
    iput-object p1, v0, Lcom/google/android/apps/plus/service/ImageCache$RemoteImageChangeNotification;->request:Lcom/google/android/apps/plus/content/ImageRequest;

    .line 625
    iput-object p2, v0, Lcom/google/android/apps/plus/service/ImageCache$RemoteImageChangeNotification;->imageBytes:[B

    .line 626
    iget-object v1, p0, Lcom/google/android/apps/plus/service/ImageCache;->mLoaderThread:Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->notifyRemoteImageChange(Lcom/google/android/apps/plus/service/ImageCache$RemoteImageChangeNotification;)V

    .line 627
    return-void
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 780
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/service/ImageCache;->mPaused:Z

    .line 781
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
    .line 383
    .local p1, requests:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/content/AvatarRequest;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/ImageCache;->ensureLoaderThread()V

    .line 385
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/service/ImageCache;->touchRequestedEntries(Ljava/util/List;)Z

    move-result v0

    .line 386
    .local v0, preloadingNeeded:Z
    invoke-direct {p0}, Lcom/google/android/apps/plus/service/ImageCache;->touchTinyAvatars()I

    move-result v1

    .line 388
    .local v1, totalTinyAvatarSize:I
    if-nez v0, :cond_e

    .line 395
    :goto_d
    return-void

    .line 392
    :cond_e
    invoke-direct {p0, p1, v1}, Lcom/google/android/apps/plus/service/ImageCache;->trimCache(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 394
    iget-object v2, p0, Lcom/google/android/apps/plus/service/ImageCache;->mLoaderThread:Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/plus/service/ImageCache$LoaderThread;->startPreloading(Ljava/util/List;)V

    goto :goto_d
.end method

.method public refreshImage(Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;Lcom/google/android/apps/plus/content/ImageRequest;)V
    .registers 4
    .parameter "consumer"
    .parameter "request"

    .prologue
    .line 499
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/plus/service/ImageCache;->loadImage(Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;Lcom/google/android/apps/plus/content/ImageRequest;Z)V

    .line 500
    return-void
.end method

.method public registerAvatarChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 554
    sget-object v0, Lcom/google/android/apps/plus/service/ImageCache;->mAvatarListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 555
    return-void
.end method

.method public registerMediaImageChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnMediaImageChangeListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 581
    sget-object v0, Lcom/google/android/apps/plus/service/ImageCache;->mMediaImageListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 582
    return-void
.end method

.method public registerRemoteImageChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnRemoteImageChangeListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 607
    sget-object v0, Lcom/google/android/apps/plus/service/ImageCache;->mRemoteImageListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 608
    return-void
.end method

.method public resume()V
    .registers 2

    .prologue
    .line 784
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/service/ImageCache;->mPaused:Z

    .line 785
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImageCache;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 786
    invoke-direct {p0}, Lcom/google/android/apps/plus/service/ImageCache;->requestLoading()V

    .line 788
    :cond_e
    return-void
.end method

.method public unregisterAvatarChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnAvatarChangeListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 561
    sget-object v0, Lcom/google/android/apps/plus/service/ImageCache;->mAvatarListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 562
    return-void
.end method

.method public unregisterMediaImageChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnMediaImageChangeListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 588
    sget-object v0, Lcom/google/android/apps/plus/service/ImageCache;->mMediaImageListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 589
    return-void
.end method

.method public unregisterRemoteImageChangeListener(Lcom/google/android/apps/plus/service/ImageCache$OnRemoteImageChangeListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 614
    sget-object v0, Lcom/google/android/apps/plus/service/ImageCache;->mRemoteImageListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 615
    return-void
.end method
