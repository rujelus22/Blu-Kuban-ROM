.class public Lcom/swype/android/util/BitmapCache;
.super Ljava/lang/Object;
.source "BitmapCache.java"


# static fields
.field private static final HASH_MAP_CAPACITY:I = 0x8

.field private static final HASH_MAP_LOAD_FACTOR:F = 0.75f


# instance fields
.field private final bitmapCache:Ljava/util/Map;
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

.field private final capacity:I


# direct methods
.method public constructor <init>(I)V
    .registers 6
    .parameter "capacity"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x8

    const/high16 v2, 0x3f40

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/swype/android/util/BitmapCache;->bitmapCache:Ljava/util/Map;

    .line 27
    iput p1, p0, Lcom/swype/android/util/BitmapCache;->capacity:I

    .line 28
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()Z
    .registers 4

    .prologue
    .line 81
    monitor-enter p0

    const/4 v1, 0x0

    .line 82
    .local v1, wasAnythingEvicted:Z
    :try_start_2
    iget-object v2, p0, Lcom/swype/android/util/BitmapCache;->bitmapCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 84
    .local v0, mapIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;>;"
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 85
    const/4 v1, 0x1

    .line 86
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 87
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_25
    .catchall {:try_start_2 .. :try_end_25} :catchall_26

    goto :goto_c

    .line 81
    .end local v0           #mapIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;>;"
    :catchall_26
    move-exception v2

    monitor-exit p0

    throw v2

    .line 90
    .restart local v0       #mapIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;>;"
    :cond_29
    monitor-exit p0

    return v1
.end method

.method public declared-synchronized getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/swype/android/util/BitmapCache;->bitmapCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 34
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 37
    :cond_11
    iget-object v1, p0, Lcom/swype/android/util/BitmapCache;->bitmapCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget v2, p0, Lcom/swype/android/util/BitmapCache;->capacity:I

    if-ne v1, v2, :cond_3d

    .line 38
    iget-object v1, p0, Lcom/swype/android/util/BitmapCache;->bitmapCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 42
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 43
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 47
    :cond_3d
    iget-object v1, p0, Lcom/swype/android/util/BitmapCache;->bitmapCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget v2, p0, Lcom/swype/android/util/BitmapCache;->capacity:I
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_60

    if-eq v1, v2, :cond_6a

    .line 49
    const/4 v1, 0x0

    move v4, v1

    move-object v1, v0

    move v0, v4

    :goto_4b
    if-nez v1, :cond_64

    .line 51
    :try_start_4d
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_60
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4d .. :try_end_52} :catch_56

    move-result-object v1

    .line 49
    :cond_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    .line 52
    :catch_56
    move-exception v2

    .line 53
    if-gtz v0, :cond_63

    .line 59
    :try_start_59
    invoke-virtual {p0}, Lcom/swype/android/util/BitmapCache;->clear()Z

    move-result v3

    if-nez v3, :cond_53

    .line 60
    throw v2
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_60

    .line 31
    :catchall_60
    move-exception v0

    monitor-exit p0

    throw v0

    .line 63
    :cond_63
    :try_start_63
    throw v2

    .line 67
    :cond_64
    iget-object v0, p0, Lcom/swype/android/util/BitmapCache;->bitmapCache:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_69
    .catchall {:try_start_63 .. :try_end_69} :catchall_60

    move-object v0, v1

    .line 70
    :cond_6a
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getSize()I
    .registers 2

    .prologue
    .line 74
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/swype/android/util/BitmapCache;->bitmapCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
