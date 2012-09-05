.class Lcom/google/android/apps/plus/service/PhotoCache;
.super Ljava/lang/Object;
.source "PhotoCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;,
        Lcom/google/android/apps/plus/service/PhotoCache$PhotoLoader;,
        Lcom/google/android/apps/plus/service/PhotoCache$CacheListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final MAX_CACHE_BYTES:I

.field private static final MAX_CACHE_ITEM_BYTES:I

.field private static final sCropPaint:Landroid/graphics/Paint;


# instance fields
.field private final mImageLoader:Lcom/google/android/apps/plus/service/PhotoCache$PhotoLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/plus/service/PhotoCache$PhotoLoader",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/google/android/apps/plus/service/PhotoCache$CacheListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/plus/service/PhotoCache$CacheListener",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final mLoaderThread:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/plus/service/PhotoCache",
            "<TE;>.",
            "LoaderThread;"
        }
    .end annotation
.end field

.field private final mPendingLoad:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final mPhotoHolderCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<TE;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 45
    sget v0, Lcom/google/android/apps/plus/phone/EsApplication;->sMemoryClass:I

    const/16 v1, 0x30

    if-lt v0, v1, :cond_26

    .line 47
    const/high16 v0, 0xf0

    sput v0, Lcom/google/android/apps/plus/service/PhotoCache;->MAX_CACHE_BYTES:I

    .line 48
    const/high16 v0, 0x10

    sput v0, Lcom/google/android/apps/plus/service/PhotoCache;->MAX_CACHE_ITEM_BYTES:I

    .line 55
    :goto_f
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/service/PhotoCache;->sCropPaint:Landroid/graphics/Paint;

    .line 56
    sget-object v0, Lcom/google/android/apps/plus/service/PhotoCache;->sCropPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    sget-object v0, Lcom/google/android/apps/plus/service/PhotoCache;->sCropPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 58
    sget-object v0, Lcom/google/android/apps/plus/service/PhotoCache;->sCropPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 59
    return-void

    .line 50
    :cond_26
    const/high16 v0, 0x20

    sput v0, Lcom/google/android/apps/plus/service/PhotoCache;->MAX_CACHE_BYTES:I

    .line 51
    const v0, 0x7d000

    sput v0, Lcom/google/android/apps/plus/service/PhotoCache;->MAX_CACHE_ITEM_BYTES:I

    goto :goto_f
.end method

.method constructor <init>(Lcom/google/android/apps/plus/service/PhotoCache$CacheListener;Lcom/google/android/apps/plus/service/PhotoCache$PhotoLoader;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/plus/service/PhotoCache$CacheListener",
            "<TE;>;",
            "Lcom/google/android/apps/plus/service/PhotoCache$PhotoLoader",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache;,"Lcom/google/android/apps/plus/service/PhotoCache<TE;>;"
    .local p1, listener:Lcom/google/android/apps/plus/service/PhotoCache$CacheListener;,"Lcom/google/android/apps/plus/service/PhotoCache$CacheListener<TE;>;"
    .local p2, imageLoader:Lcom/google/android/apps/plus/service/PhotoCache$PhotoLoader;,"Lcom/google/android/apps/plus/service/PhotoCache$PhotoLoader<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Lcom/google/android/apps/plus/service/PhotoCache$1;

    sget v1, Lcom/google/android/apps/plus/service/PhotoCache;->MAX_CACHE_BYTES:I

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/service/PhotoCache$1;-><init>(Lcom/google/android/apps/plus/service/PhotoCache;I)V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache;->mPhotoHolderCache:Landroid/support/v4/util/LruCache;

    .line 119
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache;->mPendingLoad:Ljava/util/Set;

    .line 120
    iput-object p1, p0, Lcom/google/android/apps/plus/service/PhotoCache;->mListener:Lcom/google/android/apps/plus/service/PhotoCache$CacheListener;

    .line 121
    iput-object p2, p0, Lcom/google/android/apps/plus/service/PhotoCache;->mImageLoader:Lcom/google/android/apps/plus/service/PhotoCache$PhotoLoader;

    .line 122
    new-instance v0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;-><init>(Lcom/google/android/apps/plus/service/PhotoCache;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache;->mLoaderThread:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;

    .line 123
    return-void
.end method

.method static synthetic access$1100()Landroid/graphics/Paint;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/android/apps/plus/service/PhotoCache;->sCropPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/service/PhotoCache;Ljava/lang/Object;Landroid/graphics/Bitmap;Ljava/lang/Object;III)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p6}, Lcom/google/android/apps/plus/service/PhotoCache;->imageLoaded(Ljava/lang/Object;Landroid/graphics/Bitmap;Ljava/lang/Object;III)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/service/PhotoCache;)Landroid/support/v4/util/LruCache;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache;->mPhotoHolderCache:Landroid/support/v4/util/LruCache;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/service/PhotoCache;)Lcom/google/android/apps/plus/service/PhotoCache$PhotoLoader;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache;->mImageLoader:Lcom/google/android/apps/plus/service/PhotoCache$PhotoLoader;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/service/PhotoCache;)Lcom/google/android/apps/plus/service/PhotoCache$CacheListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache;->mListener:Lcom/google/android/apps/plus/service/PhotoCache$CacheListener;

    return-object v0
.end method

.method private imageLoaded(Ljava/lang/Object;Landroid/graphics/Bitmap;Ljava/lang/Object;III)V
    .registers 10
    .parameter
    .parameter "image"
    .parameter "data"
    .parameter "width"
    .parameter "height"
    .parameter "cropType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Object;",
            "III)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache;,"Lcom/google/android/apps/plus/service/PhotoCache<TE;>;"
    .local p1, key:Ljava/lang/Object;,"TE;"
    if-nez p2, :cond_19

    const/4 v0, 0x0

    .line 211
    .local v0, byteCount:I
    :goto_3
    if-eqz p2, :cond_e

    sget v1, Lcom/google/android/apps/plus/service/PhotoCache;->MAX_CACHE_ITEM_BYTES:I

    if-ge v0, v1, :cond_e

    .line 212
    iget-object v1, p0, Lcom/google/android/apps/plus/service/PhotoCache;->mPhotoHolderCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_e
    iget-object v1, p0, Lcom/google/android/apps/plus/service/PhotoCache;->mPendingLoad:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 216
    iget-object v1, p0, Lcom/google/android/apps/plus/service/PhotoCache;->mListener:Lcom/google/android/apps/plus/service/PhotoCache$CacheListener;

    invoke-interface {v1, p1, p2, p3, p6}, Lcom/google/android/apps/plus/service/PhotoCache$CacheListener;->onImageLoaded(Ljava/lang/Object;Landroid/graphics/Bitmap;Ljava/lang/Object;I)V

    .line 217
    return-void

    .line 210
    .end local v0           #byteCount:I
    :cond_19
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v0, v1, v2

    goto :goto_3
.end method


# virtual methods
.method downloadComplete(Ljava/lang/Object;[BLjava/lang/Object;III)V
    .registers 14
    .parameter
    .parameter "imageBytes"
    .parameter "data"
    .parameter "width"
    .parameter "height"
    .parameter "cropType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;[B",
            "Ljava/lang/Object;",
            "III)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache;,"Lcom/google/android/apps/plus/service/PhotoCache<TE;>;"
    .local p1, imageKey:Ljava/lang/Object;,"TE;"
    if-nez p2, :cond_1b

    .line 183
    const-string v0, "EsPhotoCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadCompleted without image bytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :goto_1a
    return-void

    .line 187
    :cond_1b
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache;->mLoaderThread:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    #calls: Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->put(Ljava/lang/Object;[BLjava/lang/Object;III)V
    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->access$100(Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;Ljava/lang/Object;[BLjava/lang/Object;III)V

    goto :goto_1a
.end method

.method downloadFailed(Ljava/lang/Object;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache;,"Lcom/google/android/apps/plus/service/PhotoCache<TE;>;"
    .local p1, imageKey:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache;->mPendingLoad:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 197
    return-void
.end method

.method get(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Object;Ljava/lang/Object;III)Landroid/graphics/Bitmap;
    .registers 17
    .parameter "context"
    .parameter "account"
    .parameter
    .parameter "data"
    .parameter "width"
    .parameter "height"
    .parameter "cropType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "TE;",
            "Ljava/lang/Object;",
            "III)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache;,"Lcom/google/android/apps/plus/service/PhotoCache<TE;>;"
    .local p3, key:Ljava/lang/Object;,"TE;"
    const-string v0, "EsPhotoCache"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 141
    const-string v0, "EsPhotoCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Looking in database for image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_21
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache;->mPhotoHolderCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p3}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    .line 145
    .local v8, image:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_32

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_32

    .line 159
    .end local v8           #image:Landroid/graphics/Bitmap;
    :goto_31
    return-object v8

    .line 149
    .restart local v8       #image:Landroid/graphics/Bitmap;
    :cond_32
    if-eqz v8, :cond_39

    .line 150
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache;->mPhotoHolderCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p3}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_39
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache;->mPendingLoad:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 155
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache;->mPendingLoad:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache;->mLoaderThread:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    #calls: Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->load(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Object;Ljava/lang/Object;III)V
    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->access$000(Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Object;Ljava/lang/Object;III)V

    .line 159
    :cond_53
    const/4 v8, 0x0

    goto :goto_31
.end method

.method public removePendingLoad(Ljava/lang/Object;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache;,"Lcom/google/android/apps/plus/service/PhotoCache<TE;>;"
    .local p1, imageKey:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache;->mPendingLoad:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 167
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache;->mLoaderThread:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->removeQueuedLoad(Ljava/lang/Object;)V

    .line 168
    return-void
.end method
