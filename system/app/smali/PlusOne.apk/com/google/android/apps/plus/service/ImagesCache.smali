.class Lcom/google/android/apps/plus/service/ImagesCache;
.super Ljava/lang/Object;
.source "ImagesCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;,
        Lcom/google/android/apps/plus/service/ImagesCache$ImageLoader;,
        Lcom/google/android/apps/plus/service/ImagesCache$CacheListener;,
        Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;
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


# instance fields
.field private final mCacheList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/service/ImagesCache$ImageItem",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private final mImageLoader:Lcom/google/android/apps/plus/service/ImagesCache$ImageLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/plus/service/ImagesCache$ImageLoader",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final mImages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TE;",
            "Lcom/google/android/apps/plus/service/ImagesCache$ImageItem",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/google/android/apps/plus/service/ImagesCache$CacheListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/plus/service/ImagesCache$CacheListener",
            "<TE;>;"
        }
    .end annotation
.end field

.field private mLoaderThread:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/plus/service/ImagesCache",
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


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/service/ImagesCache$CacheListener;Lcom/google/android/apps/plus/service/ImagesCache$ImageLoader;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/plus/service/ImagesCache$CacheListener",
            "<TE;>;",
            "Lcom/google/android/apps/plus/service/ImagesCache$ImageLoader",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, this:Lcom/google/android/apps/plus/service/ImagesCache;,"Lcom/google/android/apps/plus/service/ImagesCache<TE;>;"
    .local p1, listener:Lcom/google/android/apps/plus/service/ImagesCache$CacheListener;,"Lcom/google/android/apps/plus/service/ImagesCache$CacheListener<TE;>;"
    .local p2, imageLoader:Lcom/google/android/apps/plus/service/ImagesCache$ImageLoader;,"Lcom/google/android/apps/plus/service/ImagesCache$ImageLoader<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache;->mImages:Ljava/util/Map;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache;->mCacheList:Ljava/util/List;

    .line 167
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache;->mPendingLoad:Ljava/util/Set;

    .line 168
    iput-object p1, p0, Lcom/google/android/apps/plus/service/ImagesCache;->mListener:Lcom/google/android/apps/plus/service/ImagesCache$CacheListener;

    .line 169
    iput-object p2, p0, Lcom/google/android/apps/plus/service/ImagesCache;->mImageLoader:Lcom/google/android/apps/plus/service/ImagesCache$ImageLoader;

    .line 171
    new-instance v0, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;-><init>(Lcom/google/android/apps/plus/service/ImagesCache;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache;->mLoaderThread:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;

    .line 172
    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/service/ImagesCache;Ljava/lang/Object;Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;Ljava/lang/Object;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/service/ImagesCache;->imageLoaded(Ljava/lang/Object;Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/service/ImagesCache;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache;->mImages:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/service/ImagesCache;)Lcom/google/android/apps/plus/service/ImagesCache$ImageLoader;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache;->mImageLoader:Lcom/google/android/apps/plus/service/ImagesCache$ImageLoader;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/service/ImagesCache;)Lcom/google/android/apps/plus/service/ImagesCache$CacheListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache;->mListener:Lcom/google/android/apps/plus/service/ImagesCache$CacheListener;

    return-object v0
.end method

.method private imageLoaded(Ljava/lang/Object;Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;Ljava/lang/Object;)V
    .registers 8
    .parameter
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/android/apps/plus/service/ImagesCache$ImageItem",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 326
    .local p0, this:Lcom/google/android/apps/plus/service/ImagesCache;,"Lcom/google/android/apps/plus/service/ImagesCache<TE;>;"
    .local p1, key:Ljava/lang/Object;,"TE;"
    .local p2, image:Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;,"Lcom/google/android/apps/plus/service/ImagesCache$ImageItem<TE;>;"
    if-eqz p2, :cond_3b

    .line 327
    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;->incrUsageCount()V

    .line 328
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache;->mImages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x4b

    cmp-long v0, v0, v2

    if-ltz v0, :cond_15

    .line 329
    invoke-direct {p0}, Lcom/google/android/apps/plus/service/ImagesCache;->makeRoom()V

    .line 332
    :cond_15
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache;->mImages:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string v0, "EsImagesCache"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 334
    const-string v0, "EsImagesCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_3b
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache;->mPendingLoad:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 338
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache;->mListener:Lcom/google/android/apps/plus/service/ImagesCache$CacheListener;

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, p1, v1, p3}, Lcom/google/android/apps/plus/service/ImagesCache$CacheListener;->onImageLoaded(Ljava/lang/Object;Landroid/graphics/Bitmap;Ljava/lang/Object;)V

    .line 339
    return-void
.end method

.method private makeRoom()V
    .registers 10

    .prologue
    .local p0, this:Lcom/google/android/apps/plus/service/ImagesCache;,"Lcom/google/android/apps/plus/service/ImagesCache<TE;>;"
    const/4 v8, 0x2

    .line 283
    iget-object v5, p0, Lcom/google/android/apps/plus/service/ImagesCache;->mCacheList:Ljava/util/List;

    iget-object v6, p0, Lcom/google/android/apps/plus/service/ImagesCache;->mImages:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 285
    iget-object v5, p0, Lcom/google/android/apps/plus/service/ImagesCache;->mCacheList:Ljava/util/List;

    new-instance v6, Lcom/google/android/apps/plus/service/ImagesCache$1;

    invoke-direct {v6, p0}, Lcom/google/android/apps/plus/service/ImagesCache$1;-><init>(Lcom/google/android/apps/plus/service/ImagesCache;)V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 298
    const-string v5, "EsImagesCache"

    invoke-static {v5, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 299
    iget-object v5, p0, Lcom/google/android/apps/plus/service/ImagesCache;->mCacheList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;

    .line 300
    .local v4, ui:Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;,"Lcom/google/android/apps/plus/service/ImagesCache$ImageItem<TE;>;"
    const-string v5, "EsImagesCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sorted: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;->getUsageCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 304
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #ui:Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;,"Lcom/google/android/apps/plus/service/ImagesCache$ImageItem<TE;>;"
    :cond_5b
    iget-object v5, p0, Lcom/google/android/apps/plus/service/ImagesCache;->mCacheList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x5

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 305
    .local v0, ejectCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_67
    if-ge v1, v0, :cond_af

    .line 306
    iget-object v5, p0, Lcom/google/android/apps/plus/service/ImagesCache;->mCacheList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;

    .line 307
    .local v3, image:Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;,"Lcom/google/android/apps/plus/service/ImagesCache$ImageItem<TE;>;"
    const-string v5, "EsImagesCache"

    invoke-static {v5, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_a3

    .line 308
    const-string v5, "EsImagesCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;->getUsageCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_a3
    iget-object v5, p0, Lcom/google/android/apps/plus/service/ImagesCache;->mImages:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    add-int/lit8 v1, v1, 0x1

    goto :goto_67

    .line 315
    .end local v3           #image:Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;,"Lcom/google/android/apps/plus/service/ImagesCache$ImageItem<TE;>;"
    :cond_af
    iget-object v5, p0, Lcom/google/android/apps/plus/service/ImagesCache;->mCacheList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 316
    return-void
.end method


# virtual methods
.method clear()V
    .registers 2

    .prologue
    .line 178
    .local p0, this:Lcom/google/android/apps/plus/service/ImagesCache;,"Lcom/google/android/apps/plus/service/ImagesCache<TE;>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache;->mImages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 179
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache;->mPendingLoad:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 181
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache;->mLoaderThread:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;

    if-eqz v0, :cond_13

    .line 182
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache;->mLoaderThread:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;->clear()V

    .line 184
    :cond_13
    return-void
.end method

.method downloadComplete(Ljava/lang/Object;[BLjava/lang/Object;)V
    .registers 7
    .parameter
    .parameter "imageBytes"
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;[B",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 262
    .local p0, this:Lcom/google/android/apps/plus/service/ImagesCache;,"Lcom/google/android/apps/plus/service/ImagesCache<TE;>;"
    .local p1, imageKey:Ljava/lang/Object;,"TE;"
    if-nez p2, :cond_1b

    .line 263
    const-string v0, "EsImagesCache"

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

    .line 268
    :goto_1a
    return-void

    .line 267
    :cond_1b
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache;->mLoaderThread:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;

    #calls: Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;->put(Ljava/lang/Object;[BLjava/lang/Object;)V
    invoke-static {v0, p1, p2, p3}, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;->access$100(Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;Ljava/lang/Object;[BLjava/lang/Object;)V

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
    .line 276
    .local p0, this:Lcom/google/android/apps/plus/service/ImagesCache;,"Lcom/google/android/apps/plus/service/ImagesCache<TE;>;"
    .local p1, imageKey:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache;->mPendingLoad:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 277
    return-void
.end method

.method get(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Object;Ljava/lang/Object;II)Landroid/graphics/Bitmap;
    .registers 16
    .parameter "context"
    .parameter "account"
    .parameter
    .parameter "data"
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "TE;",
            "Ljava/lang/Object;",
            "II)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/android/apps/plus/service/ImagesCache;,"Lcom/google/android/apps/plus/service/ImagesCache<TE;>;"
    .local p3, key:Ljava/lang/Object;,"TE;"
    const/4 v3, 0x3

    .line 217
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache;->mImages:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;

    .line 220
    .local v8, image:Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;,"Lcom/google/android/apps/plus/service/ImagesCache$ImageItem<TE;>;"
    if-eqz v8, :cond_3f

    .line 221
    const-string v0, "EsImagesCache"

    invoke-static {v0, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 222
    const-string v0, "EsImagesCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Have memory image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_2f
    invoke-virtual {v8}, Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 230
    .local v7, bmp:Landroid/graphics/Bitmap;
    :goto_33
    if-eqz v7, :cond_41

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_41

    .line 231
    invoke-virtual {v8}, Lcom/google/android/apps/plus/service/ImagesCache$ImageItem;->incrUsageCount()V

    .line 251
    .end local v7           #bmp:Landroid/graphics/Bitmap;
    :goto_3e
    return-object v7

    .line 227
    :cond_3f
    const/4 v7, 0x0

    .restart local v7       #bmp:Landroid/graphics/Bitmap;
    goto :goto_33

    .line 235
    :cond_41
    if-eqz v7, :cond_48

    .line 236
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache;->mImages:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :cond_48
    const-string v0, "EsImagesCache"

    invoke-static {v0, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 241
    const-string v0, "EsImagesCache"

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

    .line 244
    :cond_68
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache;->mPendingLoad:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    .line 246
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache;->mPendingLoad:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ImagesCache;->mLoaderThread:Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    #calls: Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;->load(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Object;Ljava/lang/Object;II)V
    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;->access$000(Lcom/google/android/apps/plus/service/ImagesCache$LoaderThread;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 251
    :cond_80
    const/4 v7, 0x0

    goto :goto_3e
.end method
