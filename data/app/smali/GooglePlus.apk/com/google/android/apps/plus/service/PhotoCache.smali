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
    .registers 2

    .prologue
    .line 34
    sget v0, Lcom/google/android/apps/plus/phone/EsApplication;->sMemoryClass:I

    const/16 v1, 0x30

    if-lt v0, v1, :cond_11

    .line 36
    const/high16 v0, 0xf0

    sput v0, Lcom/google/android/apps/plus/service/PhotoCache;->MAX_CACHE_BYTES:I

    .line 40
    :goto_a
    sget v0, Lcom/google/android/apps/plus/service/PhotoCache;->MAX_CACHE_BYTES:I

    div-int/lit8 v0, v0, 0x3

    sput v0, Lcom/google/android/apps/plus/service/PhotoCache;->MAX_CACHE_ITEM_BYTES:I

    .line 41
    return-void

    .line 38
    :cond_11
    const/high16 v0, 0x20

    sput v0, Lcom/google/android/apps/plus/service/PhotoCache;->MAX_CACHE_BYTES:I

    goto :goto_a
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
    .line 91
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache;,"Lcom/google/android/apps/plus/service/PhotoCache<TE;>;"
    .local p1, listener:Lcom/google/android/apps/plus/service/PhotoCache$CacheListener;,"Lcom/google/android/apps/plus/service/PhotoCache$CacheListener<TE;>;"
    .local p2, imageLoader:Lcom/google/android/apps/plus/service/PhotoCache$PhotoLoader;,"Lcom/google/android/apps/plus/service/PhotoCache$PhotoLoader<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/google/android/apps/plus/service/PhotoCache$1;

    sget v1, Lcom/google/android/apps/plus/service/PhotoCache;->MAX_CACHE_BYTES:I

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/service/PhotoCache$1;-><init>(Lcom/google/android/apps/plus/service/PhotoCache;I)V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache;->mPhotoHolderCache:Landroid/support/v4/util/LruCache;

    .line 99
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache;->mPendingLoad:Ljava/util/Set;

    .line 100
    iput-object p1, p0, Lcom/google/android/apps/plus/service/PhotoCache;->mListener:Lcom/google/android/apps/plus/service/PhotoCache$CacheListener;

    .line 101
    iput-object p2, p0, Lcom/google/android/apps/plus/service/PhotoCache;->mImageLoader:Lcom/google/android/apps/plus/service/PhotoCache$PhotoLoader;

    .line 102
    new-instance v0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;-><init>(Lcom/google/android/apps/plus/service/PhotoCache;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache;->mLoaderThread:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;

    .line 103
    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/service/PhotoCache;Ljava/lang/Object;Landroid/graphics/Bitmap;III)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 24
    invoke-direct/range {p0 .. p5}, Lcom/google/android/apps/plus/service/PhotoCache;->imageLoaded(Ljava/lang/Object;Landroid/graphics/Bitmap;III)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/service/PhotoCache;)Landroid/support/v4/util/LruCache;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache;->mPhotoHolderCache:Landroid/support/v4/util/LruCache;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/service/PhotoCache;)Lcom/google/android/apps/plus/service/PhotoCache$PhotoLoader;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache;->mImageLoader:Lcom/google/android/apps/plus/service/PhotoCache$PhotoLoader;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/service/PhotoCache;)Lcom/google/android/apps/plus/service/PhotoCache$CacheListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache;->mListener:Lcom/google/android/apps/plus/service/PhotoCache$CacheListener;

    return-object v0
.end method

.method private imageLoaded(Ljava/lang/Object;Landroid/graphics/Bitmap;III)V
    .registers 9
    .parameter
    .parameter "image"
    .parameter "width"
    .parameter "height"
    .parameter "cropType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Landroid/graphics/Bitmap;",
            "III)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache;,"Lcom/google/android/apps/plus/service/PhotoCache<TE;>;"
    .local p1, key:Ljava/lang/Object;,"TE;"
    if-nez p2, :cond_19

    const/4 v0, 0x0

    .line 187
    .local v0, byteCount:I
    :goto_3
    if-eqz p2, :cond_e

    sget v1, Lcom/google/android/apps/plus/service/PhotoCache;->MAX_CACHE_ITEM_BYTES:I

    if-ge v0, v1, :cond_e

    .line 188
    iget-object v1, p0, Lcom/google/android/apps/plus/service/PhotoCache;->mPhotoHolderCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_e
    iget-object v1, p0, Lcom/google/android/apps/plus/service/PhotoCache;->mPendingLoad:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 192
    iget-object v1, p0, Lcom/google/android/apps/plus/service/PhotoCache;->mListener:Lcom/google/android/apps/plus/service/PhotoCache$CacheListener;

    invoke-interface {v1, p1, p2, p5}, Lcom/google/android/apps/plus/service/PhotoCache$CacheListener;->onImageLoaded(Ljava/lang/Object;Landroid/graphics/Bitmap;I)V

    .line 193
    return-void

    .line 186
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
.method downloadComplete(Ljava/lang/Object;Landroid/graphics/Bitmap;III)V
    .registers 12
    .parameter
    .parameter "bitmap"
    .parameter "width"
    .parameter "height"
    .parameter "cropType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Landroid/graphics/Bitmap;",
            "III)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache;,"Lcom/google/android/apps/plus/service/PhotoCache<TE;>;"
    .local p1, imageKey:Ljava/lang/Object;,"TE;"
    if-nez p2, :cond_1b

    .line 160
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

    .line 165
    :goto_1a
    return-void

    .line 164
    :cond_1b
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache;->mLoaderThread:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    #calls: Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->put(Ljava/lang/Object;Landroid/graphics/Bitmap;III)V
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->access$100(Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;Ljava/lang/Object;Landroid/graphics/Bitmap;III)V

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
    .line 173
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache;,"Lcom/google/android/apps/plus/service/PhotoCache<TE;>;"
    .local p1, imageKey:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache;->mPendingLoad:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 174
    return-void
.end method

.method get(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Object;III)Landroid/graphics/Bitmap;
    .registers 15
    .parameter "context"
    .parameter "account"
    .parameter
    .parameter "width"
    .parameter "height"
    .parameter "cropType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "TE;III)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache;,"Lcom/google/android/apps/plus/service/PhotoCache<TE;>;"
    .local p3, key:Ljava/lang/Object;,"TE;"
    const-string v0, "EsPhotoCache"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 120
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

    .line 123
    :cond_21
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache;->mPhotoHolderCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p3}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 124
    .local v7, image:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_32

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_32

    .line 138
    .end local v7           #image:Landroid/graphics/Bitmap;
    :goto_31
    return-object v7

    .line 128
    .restart local v7       #image:Landroid/graphics/Bitmap;
    :cond_32
    if-eqz v7, :cond_39

    .line 129
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache;->mPhotoHolderCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p3}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_39
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache;->mPendingLoad:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 134
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache;->mPendingLoad:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache;->mLoaderThread:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    #calls: Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->load(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Object;III)V
    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->access$000(Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Object;III)V

    .line 138
    :cond_51
    const/4 v7, 0x0

    goto :goto_31
.end method
