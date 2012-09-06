.class Lcom/google/android/imageloader/BitmapCache;
.super Ljava/util/LinkedHashMap;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap",
        "<TK;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final BYTES_PER_PIXEL:J = 0x4L

.field private static final INITIAL_CAPACITY:I = 0x20

.field private static final LOAD_FACTOR:F = 0.75f


# instance fields
.field private final mMaxSize:J


# direct methods
.method public constructor <init>(J)V
    .registers 6
    .parameter "maxSize"

    .prologue
    .line 44
    .local p0, this:Lcom/google/android/imageloader/BitmapCache;,"Lcom/google/android/imageloader/BitmapCache<TK;>;"
    const/16 v0, 0x20

    const/high16 v1, 0x3f40

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 45
    iput-wide p1, p0, Lcom/google/android/imageloader/BitmapCache;->mMaxSize:J

    .line 46
    return-void
.end method

.method private static sizeOf(Landroid/graphics/Bitmap;)J
    .registers 5
    .parameter "b"

    .prologue
    .line 58
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-long v0, v0

    const-wide/16 v2, 0x4

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private static sizeOf(Ljava/lang/Iterable;)J
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, bitmaps:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Landroid/graphics/Bitmap;>;"
    const-wide/16 v2, 0x0

    .line 63
    .local v2, total:J
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 64
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/google/android/imageloader/BitmapCache;->sizeOf(Landroid/graphics/Bitmap;)J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_6

    .line 66
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_18
    return-wide v2
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Landroid/graphics/Bitmap;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, this:Lcom/google/android/imageloader/BitmapCache;,"Lcom/google/android/imageloader/BitmapCache<TK;>;"
    .local p1, eldest:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;Landroid/graphics/Bitmap;>;"
    invoke-virtual {p0}, Lcom/google/android/imageloader/BitmapCache;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/imageloader/BitmapCache;->sizeOf(Ljava/lang/Iterable;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/imageloader/BitmapCache;->mMaxSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
